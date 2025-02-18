.class public abstract Lsun/security/provider/certpath/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# static fields
.field static final USE_AIA:Z

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field final buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

.field private matchingPolicies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final targetCertConstraints:Ljava/security/cert/X509CertSelector;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 56
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    .line 67
    new-instance v0, Lsun/security/action/GetBooleanAction;

    const-string/jumbo v1, "com.sun.security.enableAIAcaIssuers"

    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    .line 54
    return-void
.end method

.method constructor <init>(Lsun/security/provider/certpath/PKIX$BuilderParams;)V
    .registers 3
    .param p1, "buildParams"    # Lsun/security/provider/certpath/PKIX$BuilderParams;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 77
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CertSelector;

    .line 76
    iput-object v0, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    .line 78
    return-void
.end method

.method static distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I
    .registers 5
    .param p0, "base"    # Lsun/security/x509/GeneralNameInterface;
    .param p1, "test"    # Lsun/security/x509/GeneralNameInterface;
    .param p2, "incomparable"    # I

    .prologue
    .line 146
    invoke-interface {p0, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 165
    return p2

    .line 148
    :pswitch_8
    sget-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_14

    .line 149
    sget-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "Builder.distance(): Names are different types"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 151
    :cond_14
    return p2

    .line 153
    :pswitch_15
    sget-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_21

    .line 154
    sget-object v0, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "Builder.distance(): Names are same type but in different subtrees"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 157
    :cond_21
    return p2

    .line 159
    :pswitch_22
    const/4 v0, 0x0

    return v0

    .line 169
    :pswitch_24
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    move-result v0

    invoke-interface {p0}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 146
    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_8
        :pswitch_22
        :pswitch_24
        :pswitch_24
        :pswitch_15
    .end packed-switch
.end method

.method static hops(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I
    .registers 12
    .param p0, "base"    # Lsun/security/x509/GeneralNameInterface;
    .param p1, "test"    # Lsun/security/x509/GeneralNameInterface;
    .param p2, "incomparable"    # I

    .prologue
    .line 192
    invoke-interface {p0, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v2

    .line 193
    .local v2, "baseRtest":I
    packed-switch v2, :pswitch_data_6a

    .line 212
    return p2

    .line 195
    :pswitch_8
    sget-object v7, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_14

    .line 196
    sget-object v7, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v8, "Builder.hops(): Names are different types"

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 198
    :cond_14
    return p2

    .line 204
    :pswitch_15
    const/4 v7, 0x0

    return v7

    .line 207
    :pswitch_17
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    move-result v7

    invoke-interface {p0}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    move-result v8

    sub-int/2addr v7, v8

    return v7

    .line 210
    :pswitch_21
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    move-result v7

    invoke-interface {p0}, Lsun/security/x509/GeneralNameInterface;->subtreeDepth()I

    move-result v8

    sub-int/2addr v7, v8

    return v7

    .line 216
    :pswitch_2b
    invoke-interface {p0}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3f

    .line 217
    sget-object v7, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_3e

    .line 218
    sget-object v7, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v8, "Builder.hops(): hopDistance not implemented for this name type"

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 221
    :cond_3e
    return p2

    :cond_3f
    move-object v1, p0

    .line 223
    check-cast v1, Lsun/security/x509/X500Name;

    .local v1, "baseName":Lsun/security/x509/X500Name;
    move-object v6, p1

    .line 224
    check-cast v6, Lsun/security/x509/X500Name;

    .line 225
    .local v6, "testName":Lsun/security/x509/X500Name;
    invoke-virtual {v1, v6}, Lsun/security/x509/X500Name;->commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;

    move-result-object v4

    .line 226
    .local v4, "commonName":Lsun/security/x509/X500Name;
    if-nez v4, :cond_58

    .line 227
    sget-object v7, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_57

    .line 228
    sget-object v7, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v8, "Builder.hops(): Names are in different namespaces"

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 231
    :cond_57
    return p2

    .line 233
    :cond_58
    invoke-virtual {v4}, Lsun/security/x509/X500Name;->subtreeDepth()I

    move-result v3

    .line 234
    .local v3, "commonDistance":I
    invoke-virtual {v1}, Lsun/security/x509/X500Name;->subtreeDepth()I

    move-result v0

    .line 235
    .local v0, "baseDistance":I
    invoke-virtual {v6}, Lsun/security/x509/X500Name;->subtreeDepth()I

    move-result v5

    .line 236
    .local v5, "testDistance":I
    add-int v7, v0, v5

    mul-int/lit8 v8, v3, 0x2

    sub-int/2addr v7, v8

    return v7

    .line 193
    :pswitch_data_6a
    .packed-switch -0x1
        :pswitch_8
        :pswitch_15
        :pswitch_21
        :pswitch_17
        :pswitch_2b
    .end packed-switch
.end method

.method static targetDistance(Lsun/security/x509/NameConstraintsExtension;Ljava/security/cert/X509Certificate;Lsun/security/x509/GeneralNameInterface;)I
    .registers 22
    .param p0, "constraints"    # Lsun/security/x509/NameConstraintsExtension;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "target"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    if-eqz p0, :cond_13

    invoke-virtual/range {p0 .. p1}, Lsun/security/x509/NameConstraintsExtension;->verify(Ljava/security/cert/X509Certificate;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_13

    .line 286
    new-instance v16, Ljava/io/IOException;

    const-string/jumbo v17, "certificate does not satisfy existing name constraints"

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 292
    :cond_13
    :try_start_13
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_16
    .catch Ljava/security/cert/CertificateException; {:try_start_13 .. :try_end_16} :catch_2a

    move-result-object v5

    .line 297
    .local v5, "certImpl":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v5}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v15

    .line 298
    .local v15, "subject":Lsun/security/x509/X500Name;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_38

    .line 300
    const/16 v16, 0x0

    return v16

    .line 293
    .end local v5    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v15    # "subject":Lsun/security/x509/X500Name;
    :catch_2a
    move-exception v7

    .line 294
    .local v7, "e":Ljava/security/cert/CertificateException;
    new-instance v16, Ljava/io/IOException;

    const-string/jumbo v17, "Invalid certificate"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 304
    .end local v7    # "e":Ljava/security/cert/CertificateException;
    .restart local v5    # "certImpl":Lsun/security/x509/X509CertImpl;
    .restart local v15    # "subject":Lsun/security/x509/X500Name;
    :cond_38
    invoke-virtual {v5}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    move-result-object v3

    .line 305
    .local v3, "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-eqz v3, :cond_66

    .line 307
    const-string/jumbo v16, "subject_name"

    .line 306
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v4

    .line 309
    .local v4, "altNames":Lsun/security/x509/GeneralNames;
    if-eqz v4, :cond_66

    .line 310
    const/4 v10, 0x0

    .local v10, "j":I
    invoke-virtual {v4}, Lsun/security/x509/GeneralNames;->size()I

    move-result v11

    .local v11, "n":I
    :goto_4e
    if-ge v10, v11, :cond_66

    .line 311
    invoke-virtual {v4, v10}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v2

    .line 312
    .local v2, "altName":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_63

    .line 313
    const/16 v16, 0x0

    return v16

    .line 310
    :cond_63
    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    .line 323
    .end local v2    # "altName":Lsun/security/x509/GeneralNameInterface;
    .end local v4    # "altNames":Lsun/security/x509/GeneralNames;
    .end local v10    # "j":I
    .end local v11    # "n":I
    :cond_66
    invoke-virtual {v5}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    move-result-object v12

    .line 324
    .local v12, "ncExt":Lsun/security/x509/NameConstraintsExtension;
    if-nez v12, :cond_6f

    .line 325
    const/16 v16, -0x1

    return v16

    .line 329
    :cond_6f
    if-eqz p0, :cond_e4

    .line 330
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lsun/security/x509/NameConstraintsExtension;->merge(Lsun/security/x509/NameConstraintsExtension;)V

    .line 338
    :goto_76
    sget-object v16, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_97

    .line 339
    sget-object v16, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Builder.targetDistance() merged constraints: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 340
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 339
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 344
    :cond_97
    const-string/jumbo v16, "permitted_subtrees"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v14

    .line 346
    .local v14, "permitted":Lsun/security/x509/GeneralSubtrees;
    const-string/jumbo v16, "excluded_subtrees"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v8

    .line 347
    .local v8, "excluded":Lsun/security/x509/GeneralSubtrees;
    if-eqz v14, :cond_b2

    .line 348
    invoke-virtual {v14, v8}, Lsun/security/x509/GeneralSubtrees;->reduce(Lsun/security/x509/GeneralSubtrees;)V

    .line 350
    :cond_b2
    sget-object v16, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_d1

    .line 351
    sget-object v16, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Builder.targetDistance() reduced constraints: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 355
    :cond_d1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    move-result v16

    if-nez v16, :cond_eb

    .line 356
    new-instance v16, Ljava/io/IOException;

    const-string/jumbo v17, "New certificate not allowed to sign certificate for target"

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 335
    .end local v8    # "excluded":Lsun/security/x509/GeneralSubtrees;
    .end local v14    # "permitted":Lsun/security/x509/GeneralSubtrees;
    :cond_e4
    invoke-virtual {v12}, Lsun/security/x509/NameConstraintsExtension;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "constraints":Lsun/security/x509/NameConstraintsExtension;
    check-cast p0, Lsun/security/x509/NameConstraintsExtension;

    .restart local p0    # "constraints":Lsun/security/x509/NameConstraintsExtension;
    goto :goto_76

    .line 360
    .restart local v8    # "excluded":Lsun/security/x509/GeneralSubtrees;
    .restart local v14    # "permitted":Lsun/security/x509/GeneralSubtrees;
    :cond_eb
    if-nez v14, :cond_f0

    .line 362
    const/16 v16, -0x1

    return v16

    .line 364
    :cond_f0
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual {v14}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v11

    .restart local v11    # "n":I
    :goto_f5
    if-ge v9, v11, :cond_115

    .line 365
    invoke-virtual {v14, v9}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v13

    .line 366
    .local v13, "perName":Lsun/security/x509/GeneralNameInterface;
    const/16 v16, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v13, v0, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v6

    .line 367
    .local v6, "distance":I
    if-ltz v6, :cond_112

    .line 368
    add-int/lit8 v16, v6, 0x1

    return v16

    .line 364
    :cond_112
    add-int/lit8 v9, v9, 0x1

    goto :goto_f5

    .line 372
    .end local v6    # "distance":I
    .end local v13    # "perName":Lsun/security/x509/GeneralNameInterface;
    :cond_115
    const/16 v16, -0x1

    return v16
.end method


# virtual methods
.method abstract addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation
.end method

.method addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z
    .registers 17
    .param p1, "selector"    # Ljava/security/cert/X509CertSelector;
    .param p4, "checkAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CertSelector;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 432
    .local p2, "certStores":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/CertStore;>;"
    .local p3, "resultCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    .line 433
    .local v8, "targetCert":Ljava/security/cert/X509Certificate;
    if-eqz v8, :cond_64

    .line 435
    invoke-virtual {p1, v8}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 436
    iget-object v9, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v9}, Lsun/security/provider/certpath/PKIX$BuilderParams;->sigProvider()Ljava/lang/String;

    move-result-object v9

    .line 435
    invoke-static {v8, v9}, Lsun/security/x509/X509CertImpl;->isSelfSigned(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_62

    .line 437
    sget-object v9, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_5d

    .line 438
    sget-object v9, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Builder.addMatchingCerts: adding target cert\n  SN: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 441
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v11

    .line 440
    invoke-static {v11}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v11

    .line 438
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 442
    const-string/jumbo v11, "\n  Subject: "

    .line 438
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 442
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    .line 438
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 443
    const-string/jumbo v11, "\n  Issuer: "

    .line 438
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 443
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    .line 438
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 445
    :cond_5d
    invoke-interface {p3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v9

    return v9

    .line 447
    :cond_62
    const/4 v9, 0x0

    return v9

    .line 449
    :cond_64
    const/4 v1, 0x0

    .line 450
    .local v1, "add":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "store$iterator":Ljava/util/Iterator;
    :cond_69
    :goto_69
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_cb

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/CertStore;

    .line 453
    .local v6, "store":Ljava/security/cert/CertStore;
    :try_start_75
    invoke-virtual {v6, p1}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v4

    .line 454
    .local v4, "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cert$iterator":Ljava/util/Iterator;
    :cond_7d
    :goto_7d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 456
    .local v2, "cert":Ljava/security/cert/Certificate;
    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v9, v0

    iget-object v10, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v10}, Lsun/security/provider/certpath/PKIX$BuilderParams;->sigProvider()Ljava/lang/String;

    move-result-object v10

    .line 455
    invoke-static {v9, v10}, Lsun/security/x509/X509CertImpl;->isSelfSigned(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7d

    .line 457
    check-cast v2, Ljava/security/cert/X509Certificate;

    .end local v2    # "cert":Ljava/security/cert/Certificate;
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_9e
    .catch Ljava/security/cert/CertStoreException; {:try_start_75 .. :try_end_9e} :catch_a9

    move-result v9

    if-eqz v9, :cond_7d

    .line 458
    const/4 v1, 0x1

    goto :goto_7d

    .line 462
    :cond_a3
    if-nez p4, :cond_69

    if-eqz v1, :cond_69

    .line 463
    const/4 v9, 0x1

    return v9

    .line 465
    .end local v3    # "cert$iterator":Ljava/util/Iterator;
    .end local v4    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    :catch_a9
    move-exception v5

    .line 468
    .local v5, "cse":Ljava/security/cert/CertStoreException;
    sget-object v9, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_69

    .line 469
    sget-object v9, Lsun/security/provider/certpath/Builder;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Builder.addMatchingCerts, non-fatal exception retrieving certs: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v5}, Ljava/security/cert/CertStoreException;->printStackTrace()V

    goto :goto_69

    .line 475
    .end local v5    # "cse":Ljava/security/cert/CertStoreException;
    .end local v6    # "store":Ljava/security/cert/CertStore;
    :cond_cb
    return v1
.end method

.method abstract getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method getMatchingPolicies()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    if-eqz v1, :cond_32

    .line 397
    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->initialPolicies()Ljava/util/Set;

    move-result-object v0

    .line 398
    .local v0, "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 399
    const-string/jumbo v1, "2.5.29.32.0"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 398
    if-eqz v1, :cond_35

    .line 400
    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->policyMappingInhibited()Z

    move-result v1

    .line 398
    if-eqz v1, :cond_35

    .line 402
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    .line 403
    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    const-string/jumbo v2, "2.5.29.32.0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v0    # "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_32
    :goto_32
    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    return-object v1

    .line 407
    .restart local v0    # "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_35
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/Builder;->matchingPolicies:Ljava/util/Set;

    goto :goto_32
.end method

.method abstract isPathCompleted(Ljava/security/cert/X509Certificate;)Z
.end method

.method abstract removeFinalCertFromPath(Ljava/util/LinkedList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
