.class public Lsun/security/provider/certpath/DistributionPointFetcher;
.super Ljava/lang/Object;
.source "DistributionPointFetcher.java"


# static fields
.field private static final blacklist ALL_REASONS:[Z

.field private static final blacklist debug:Lsun/security/util/Debug;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_12

    sput-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->ALL_REASONS:[Z

    return-void

    :array_12
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getCRL(Lsun/security/x509/URIName;)Ljava/security/cert/X509CRL;
    .registers 8
    .param p0, "name"    # Lsun/security/x509/URIName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 230
    .local v0, "uri":Ljava/net/URI;
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1c

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to fetch CRL from DP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 233
    :cond_1c
    const/4 v1, 0x0

    .line 235
    .local v1, "ucs":Ljava/security/cert/CertStore;
    const/4 v2, 0x0

    :try_start_1e
    new-instance v3, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    invoke-direct {v3, v0}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;-><init>(Ljava/net/URI;)V

    .line 236
    invoke-static {v3}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v3
    :try_end_27
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1e .. :try_end_27} :catch_3f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e .. :try_end_27} :catch_3f

    move-object v1, v3

    .line 243
    nop

    .line 245
    invoke-virtual {v1, v2}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v3

    .line 246
    .local v3, "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 247
    return-object v2

    .line 249
    :cond_34
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    return-object v2

    .line 237
    .end local v3    # "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    :catch_3f
    move-exception v3

    .line 239
    .local v3, "e":Ljava/security/GeneralSecurityException;
    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_5c

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t create URICertStore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 242
    :cond_5c
    return-object v2
.end method

.method private static blacklist getCRLs(Ljava/security/cert/X509CRLSelector;Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .registers 30
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;
    .param p1, "certImpl"    # Lsun/security/x509/X509CertImpl;
    .param p2, "point"    # Lsun/security/x509/DistributionPoint;
    .param p3, "reasonsMask"    # [Z
    .param p4, "signFlag"    # Z
    .param p5, "prevKey"    # Ljava/security/PublicKey;
    .param p6, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p7, "provider"    # Ljava/lang/String;
    .param p10, "validity"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRLSelector;",
            "Lsun/security/x509/X509CertImpl;",
            "Lsun/security/x509/DistributionPoint;",
            "[ZZ",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 152
    .local p8, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p9, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v2

    .line 153
    .local v2, "fullName":Lsun/security/x509/GeneralNames;
    if-nez v2, :cond_49

    .line 155
    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v3

    .line 156
    .local v3, "relativeName":Lsun/security/x509/RDN;
    if-nez v3, :cond_13

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 160
    :cond_13
    :try_start_13
    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getCRLIssuer()Lsun/security/x509/GeneralNames;

    move-result-object v0

    .line 161
    .local v0, "crlIssuers":Lsun/security/x509/GeneralNames;
    if-nez v0, :cond_26

    .line 162
    nop

    .line 163
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    check-cast v4, Lsun/security/x509/X500Name;

    invoke-static {v4, v3}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v4

    move-object v2, v4

    goto :goto_42

    .line 166
    :cond_26
    invoke-virtual {v0}, Lsun/security/x509/GeneralNames;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_32

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 169
    :cond_32
    const/4 v4, 0x0

    .line 170
    invoke-virtual {v0, v4}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    move-result-object v4

    invoke-virtual {v4}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    check-cast v4, Lsun/security/x509/X500Name;

    invoke-static {v4, v3}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v4
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_41} :catch_43

    move-object v2, v4

    .line 175
    .end local v0    # "crlIssuers":Lsun/security/x509/GeneralNames;
    :goto_42
    goto :goto_49

    .line 173
    :catch_43
    move-exception v0

    .line 174
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 177
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v3    # "relativeName":Lsun/security/x509/RDN;
    :cond_49
    :goto_49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 178
    .local v3, "possibleCRLs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    const/4 v0, 0x0

    .line 179
    .local v0, "savedCSE":Ljava/security/cert/CertStoreException;
    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v0

    .end local v0    # "savedCSE":Ljava/security/cert/CertStoreException;
    .local v4, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .local v5, "savedCSE":Ljava/security/cert/CertStoreException;
    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 181
    :try_start_5b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/GeneralName;

    .line 182
    .local v0, "name":Lsun/security/x509/GeneralName;
    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7e

    .line 183
    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v6

    check-cast v6, Lsun/security/x509/X500Name;

    .line 184
    .local v6, "x500Name":Lsun/security/x509/X500Name;
    nop

    .line 185
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7
    :try_end_73
    .catch Ljava/security/cert/CertStoreException; {:try_start_5b .. :try_end_73} :catch_99

    move-object/from16 v15, p8

    :try_start_75
    invoke-static {v6, v7, v15}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Lsun/security/x509/X500Name;Ljavax/security/auth/x500/X500Principal;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    .line 184
    invoke-interface {v3, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 187
    nop

    .end local v6    # "x500Name":Lsun/security/x509/X500Name;
    goto :goto_9d

    :cond_7e
    move-object/from16 v15, p8

    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getType()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_9d

    .line 188
    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v6

    check-cast v6, Lsun/security/x509/URIName;

    .line 189
    .local v6, "uriName":Lsun/security/x509/URIName;
    invoke-static {v6}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRL(Lsun/security/x509/URIName;)Ljava/security/cert/X509CRL;

    move-result-object v7

    .line 190
    .local v7, "crl":Ljava/security/cert/X509CRL;
    if-eqz v7, :cond_9d

    .line 191
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catch Ljava/security/cert/CertStoreException; {:try_start_75 .. :try_end_96} :catch_97

    goto :goto_9d

    .line 194
    .end local v0    # "name":Lsun/security/x509/GeneralName;
    .end local v6    # "uriName":Lsun/security/x509/URIName;
    .end local v7    # "crl":Ljava/security/cert/X509CRL;
    :catch_97
    move-exception v0

    goto :goto_9c

    :catch_99
    move-exception v0

    move-object/from16 v15, p8

    .line 195
    .local v0, "cse":Ljava/security/cert/CertStoreException;
    :goto_9c
    move-object v5, v0

    .line 196
    .end local v0    # "cse":Ljava/security/cert/CertStoreException;
    :cond_9d
    :goto_9d
    goto :goto_55

    .line 179
    :cond_9e
    move-object/from16 v15, p8

    .line 199
    .end local v4    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_aa

    if-nez v5, :cond_a9

    goto :goto_aa

    .line 200
    :cond_a9
    throw v5

    .line 203
    :cond_aa
    :goto_aa
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 204
    .local v4, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/security/cert/X509CRL;

    .line 208
    .restart local v7    # "crl":Ljava/security/cert/X509CRL;
    const/4 v0, 0x0

    :try_start_c3
    invoke-virtual {v1, v0}, Ljava/security/cert/X509CRLSelector;->setIssuerNames(Ljava/util/Collection;)V

    .line 209
    invoke-virtual {v1, v7}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    if-eqz v0, :cond_ea

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v10, v7

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p9

    move-object/from16 v17, p8

    move-object/from16 v18, p10

    invoke-static/range {v8 .. v18}, Lsun/security/provider/certpath/DistributionPointFetcher;->verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 212
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_ea} :catch_eb
    .catch Ljava/security/cert/CRLException; {:try_start_c3 .. :try_end_ea} :catch_eb

    .line 220
    :cond_ea
    goto :goto_10b

    .line 214
    :catch_eb
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_10b

    .line 217
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception verifying CRL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "crl":Ljava/security/cert/X509CRL;
    :cond_10b
    :goto_10b
    move-object/from16 v15, p8

    goto :goto_b5

    .line 222
    :cond_10e
    return-object v4
.end method

.method public static blacklist getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .registers 17
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;
    .param p1, "signFlag"    # Z
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "provider"    # Ljava/lang/String;
    .param p5, "reasonsMask"    # [Z
    .param p7, "validity"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRLSelector;",
            "Z",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;[Z",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 78
    .local p4, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p6, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .registers 25
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;
    .param p1, "signFlag"    # Z
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "provider"    # Ljava/lang/String;
    .param p6, "reasonsMask"    # [Z
    .param p8, "validity"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRLSelector;",
            "Z",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;[Z",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 97
    .local p5, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p7, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 98
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_b

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 102
    :cond_b
    :try_start_b
    invoke-static {v1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v3

    .line 103
    .local v3, "certImpl":Lsun/security/x509/X509CertImpl;
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_2d

    .line 104
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DistributionPointFetcher.getCRLs: Checking CRLDPs for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 107
    :cond_2d
    nop

    .line 108
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;

    move-result-object v0

    .line 109
    .local v0, "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    if-nez v0, :cond_44

    .line 110
    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_3f

    .line 111
    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string v4, "No CRLDP ext"

    invoke-virtual {v2, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 113
    :cond_3f
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 115
    :cond_44
    const-string v2, "points"

    .line 116
    invoke-virtual {v0, v2}, Lsun/security/x509/CRLDistributionPointsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v13, v2

    .line 117
    .local v13, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v14, v2

    .line 118
    .local v14, "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v15, v2

    .line 119
    .local v15, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/DistributionPoint;>;"
    :goto_56
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->ALL_REASONS:[Z

    move-object/from16 v12, p6

    invoke-static {v12, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-nez v2, :cond_88

    .line 120
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lsun/security/x509/DistributionPoint;

    .line 121
    .local v4, "point":Lsun/security/x509/DistributionPoint;
    move-object/from16 v2, p0

    move-object/from16 v5, p6

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-static/range {v2 .. v12}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    move-result-object v2

    .line 124
    .local v2, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    invoke-interface {v14, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 125
    nop

    .end local v2    # "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    .end local v4    # "point":Lsun/security/x509/DistributionPoint;
    goto :goto_56

    .line 126
    .end local v15    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/DistributionPoint;>;"
    :cond_88
    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_ab

    .line 127
    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " CRLs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_ab} :catch_ac
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_ab} :catch_ac

    .line 129
    :cond_ab
    return-object v14

    .line 130
    .end local v0    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .end local v3    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v13    # "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    .end local v14    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    :catch_ac
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getCRLs(Lsun/security/x509/X500Name;Ljavax/security/auth/x500/X500Principal;Ljava/util/List;)Ljava/util/Collection;
    .registers 12
    .param p0, "name"    # Lsun/security/x509/X500Name;
    .param p1, "certIssuer"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/X500Name;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 266
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_18

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to fetch CRL from DP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 269
    :cond_18
    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 270
    .local v0, "xcs":Ljava/security/cert/X509CRLSelector;
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    .line 271
    invoke-virtual {v0, p1}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v1, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    const/4 v2, 0x0

    .line 274
    .local v2, "savedCSE":Ljava/security/cert/CertStoreException;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/CertStore;

    .line 276
    .local v4, "store":Ljava/security/cert/CertStore;
    :try_start_3d
    invoke-virtual {v4, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_45
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/CRL;

    .line 277
    .local v6, "crl":Ljava/security/cert/CRL;
    move-object v7, v6

    check-cast v7, Ljava/security/cert/X509CRL;

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/security/cert/CertStoreException; {:try_start_3d .. :try_end_57} :catch_5a

    .line 278
    nop

    .end local v6    # "crl":Ljava/security/cert/CRL;
    goto :goto_45

    .line 286
    :cond_59
    goto :goto_80

    .line 279
    :catch_5a
    move-exception v5

    .line 280
    .local v5, "cse":Ljava/security/cert/CertStoreException;
    sget-object v6, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_76

    .line 281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while retrieving CRLs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v5}, Ljava/security/cert/CertStoreException;->printStackTrace()V

    .line 285
    :cond_76
    new-instance v6, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    invoke-virtual {v4}, Ljava/security/cert/CertStore;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    move-object v2, v6

    .line 287
    .end local v4    # "store":Ljava/security/cert/CertStore;
    .end local v5    # "cse":Ljava/security/cert/CertStoreException;
    :goto_80
    goto :goto_31

    .line 289
    :cond_81
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8b

    if-nez v2, :cond_8a

    goto :goto_8b

    .line 290
    :cond_8a
    throw v2

    .line 292
    :cond_8b
    :goto_8b
    return-object v1
.end method

.method private static blacklist getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;
    .registers 6
    .param p0, "issuer"    # Lsun/security/x509/X500Name;
    .param p1, "rdn"    # Lsun/security/x509/RDN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lsun/security/x509/X500Name;->rdns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 718
    .local v0, "rdns":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    new-instance v1, Lsun/security/x509/X500Name;

    const/4 v2, 0x0

    new-array v2, v2, [Lsun/security/x509/RDN;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lsun/security/x509/RDN;

    invoke-direct {v1, v2}, Lsun/security/x509/X500Name;-><init>([Lsun/security/x509/RDN;)V

    .line 720
    .local v1, "fullName":Lsun/security/x509/X500Name;
    new-instance v2, Lsun/security/x509/GeneralNames;

    invoke-direct {v2}, Lsun/security/x509/GeneralNames;-><init>()V

    .line 721
    .local v2, "fullNames":Lsun/security/x509/GeneralNames;
    new-instance v3, Lsun/security/x509/GeneralName;

    invoke-direct {v3, v1}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    invoke-virtual {v2, v3}, Lsun/security/x509/GeneralNames;->add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;

    .line 722
    return-object v2
.end method

.method private static blacklist issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z
    .registers 9
    .param p0, "cert"    # Lsun/security/x509/X509CertImpl;
    .param p1, "crl"    # Lsun/security/x509/X509CRLImpl;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 735
    const/4 v0, 0x0

    .line 737
    .local v0, "matched":Z
    new-instance v1, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-direct {v1}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    .line 741
    .local v1, "issuerSelector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getKeyUsage()[Z

    move-result-object v2

    .line 742
    .local v2, "usages":[Z
    if-eqz v2, :cond_13

    .line 743
    const/4 v3, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 744
    invoke-virtual {v1, v2}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setKeyUsage([Z)V

    .line 748
    :cond_13
    invoke-virtual {p1}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 749
    .local v3, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1, v3}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 759
    invoke-virtual {p1}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v4

    .line 760
    .local v4, "crlAKID":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    invoke-virtual {v1, v4}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSkiAndSerialNumber(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V

    .line 762
    invoke-virtual {v1, p0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    .line 765
    if-eqz v0, :cond_3a

    if-eqz v4, :cond_2f

    .line 766
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v5

    if-nez v5, :cond_3a

    .line 768
    :cond_2f
    :try_start_2f
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lsun/security/x509/X509CRLImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/security/GeneralSecurityException; {:try_start_2f .. :try_end_36} :catch_38

    .line 769
    const/4 v0, 0x1

    .line 772
    goto :goto_3a

    .line 770
    :catch_38
    move-exception v5

    .line 771
    .local v5, "e":Ljava/security/GeneralSecurityException;
    const/4 v0, 0x0

    .line 775
    .end local v5    # "e":Ljava/security/GeneralSecurityException;
    :cond_3a
    :goto_3a
    return v0
.end method

.method static blacklist verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z
    .registers 36
    .param p0, "certImpl"    # Lsun/security/x509/X509CertImpl;
    .param p1, "point"    # Lsun/security/x509/DistributionPoint;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .param p3, "reasonsMask"    # [Z
    .param p4, "signFlag"    # Z
    .param p5, "prevKey"    # Ljava/security/PublicKey;
    .param p6, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p7, "provider"    # Ljava/lang/String;
    .param p10, "validity"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/X509CertImpl;",
            "Lsun/security/x509/DistributionPoint;",
            "Ljava/security/cert/X509CRL;",
            "[ZZ",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Date;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    .local p8, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p9, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_42

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DistributionPointFetcher.verifyCRL: checking revocation status for\n  SN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n  Subject: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n  Issuer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 323
    invoke-virtual {v0, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 330
    :cond_42
    const/4 v0, 0x0

    .line 331
    .local v0, "indirectCRL":Z
    invoke-static/range {p2 .. p2}, Lsun/security/x509/X509CRLImpl;->toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;

    move-result-object v6

    .line 332
    .local v6, "crlImpl":Lsun/security/x509/X509CRLImpl;
    nop

    .line 333
    invoke-virtual {v6}, Lsun/security/x509/X509CRLImpl;->getIssuingDistributionPointExtension()Lsun/security/x509/IssuingDistributionPointExtension;

    move-result-object v7

    .line 334
    .local v7, "idpExt":Lsun/security/x509/IssuingDistributionPointExtension;
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    check-cast v8, Lsun/security/x509/X500Name;

    .line 335
    .local v8, "certIssuer":Lsun/security/x509/X500Name;
    invoke-virtual {v6}, Lsun/security/x509/X509CRLImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    check-cast v9, Lsun/security/x509/X500Name;

    .line 341
    .local v9, "crlIssuer":Lsun/security/x509/X500Name;
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getCRLIssuer()Lsun/security/x509/GeneralNames;

    move-result-object v10

    .line 342
    .local v10, "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    const/4 v11, 0x0

    .line 343
    .local v11, "pointCrlIssuer":Lsun/security/x509/X500Name;
    const/4 v12, 0x1

    if-eqz v10, :cond_b9

    .line 344
    if-eqz v7, :cond_b5

    .line 346
    const-string v14, "indirect_crl"

    invoke-virtual {v7, v14}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 347
    invoke-virtual {v14, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_75

    move/from16 v16, v0

    goto :goto_b7

    .line 350
    :cond_75
    const/4 v14, 0x0

    .line 351
    .local v14, "match":Z
    invoke-virtual {v10}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 352
    .local v15, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_7a
    if-nez v14, :cond_9d

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9d

    .line 353
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v16 .. v16}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v13

    .line 354
    .local v13, "name":Lsun/security/x509/GeneralNameInterface;
    move/from16 v16, v0

    .end local v0    # "indirectCRL":Z
    .local v16, "indirectCRL":Z
    invoke-virtual {v9, v13}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v12, :cond_9a

    .line 355
    move-object v0, v13

    check-cast v0, Lsun/security/x509/X500Name;

    .line 356
    .end local v11    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .local v0, "pointCrlIssuer":Lsun/security/x509/X500Name;
    const/4 v11, 0x1

    move v14, v11

    move-object v11, v0

    .line 358
    .end local v0    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .end local v13    # "name":Lsun/security/x509/GeneralNameInterface;
    .restart local v11    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_9a
    move/from16 v0, v16

    goto :goto_7a

    .line 352
    .end local v16    # "indirectCRL":Z
    .local v0, "indirectCRL":Z
    :cond_9d
    move/from16 v16, v0

    .line 359
    .end local v0    # "indirectCRL":Z
    .end local v15    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .restart local v16    # "indirectCRL":Z
    if-nez v14, :cond_a3

    .line 360
    const/4 v12, 0x0

    return v12

    .line 365
    :cond_a3
    invoke-static {v1, v6, v5}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 367
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .end local p5    # "prevKey":Ljava/security/PublicKey;
    .local v0, "prevKey":Ljava/security/PublicKey;
    goto :goto_b3

    .line 369
    .end local v0    # "prevKey":Ljava/security/PublicKey;
    .restart local p5    # "prevKey":Ljava/security/PublicKey;
    :cond_ae
    const/4 v0, 0x1

    move/from16 v16, v0

    move-object/from16 v0, p5

    .line 371
    .end local v14    # "match":Z
    .end local p5    # "prevKey":Ljava/security/PublicKey;
    .restart local v0    # "prevKey":Ljava/security/PublicKey;
    :goto_b3
    move-object v14, v0

    goto :goto_114

    .line 344
    .end local v16    # "indirectCRL":Z
    .local v0, "indirectCRL":Z
    .restart local p5    # "prevKey":Ljava/security/PublicKey;
    :cond_b5
    move/from16 v16, v0

    .line 348
    .end local v0    # "indirectCRL":Z
    .restart local v16    # "indirectCRL":Z
    :goto_b7
    const/4 v12, 0x0

    return v12

    .line 371
    .end local v16    # "indirectCRL":Z
    .restart local v0    # "indirectCRL":Z
    :cond_b9
    move/from16 v16, v0

    .end local v0    # "indirectCRL":Z
    .restart local v16    # "indirectCRL":Z
    invoke-virtual {v9, v8}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e3

    .line 372
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_e1

    .line 373
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "crl issuer does not equal cert issuer.\ncrl issuer: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "\ncert issuer: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 377
    :cond_e1
    const/4 v12, 0x0

    return v12

    .line 380
    :cond_e3
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getAuthKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v0

    .line 381
    .local v0, "certAKID":Lsun/security/x509/KeyIdentifier;
    invoke-virtual {v6}, Lsun/security/x509/X509CRLImpl;->getAuthKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v13

    .line 383
    .local v13, "crlAKID":Lsun/security/x509/KeyIdentifier;
    if-eqz v0, :cond_107

    if-nez v13, :cond_f0

    goto :goto_107

    .line 392
    :cond_f0
    invoke-virtual {v0, v13}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_112

    .line 395
    invoke-static {v1, v6, v5}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_101

    .line 397
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    .end local p5    # "prevKey":Ljava/security/PublicKey;
    .local v14, "prevKey":Ljava/security/PublicKey;
    goto :goto_114

    .line 399
    .end local v14    # "prevKey":Ljava/security/PublicKey;
    .restart local p5    # "prevKey":Ljava/security/PublicKey;
    :cond_101
    const/4 v14, 0x1

    move/from16 v16, v14

    move-object/from16 v14, p5

    .end local v16    # "indirectCRL":Z
    .local v14, "indirectCRL":Z
    goto :goto_114

    .line 388
    .end local v14    # "indirectCRL":Z
    .restart local v16    # "indirectCRL":Z
    :cond_107
    :goto_107
    invoke-static {v1, v6, v5}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_112

    .line 390
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    .end local p5    # "prevKey":Ljava/security/PublicKey;
    .local v14, "prevKey":Ljava/security/PublicKey;
    goto :goto_114

    .line 404
    .end local v0    # "certAKID":Lsun/security/x509/KeyIdentifier;
    .end local v13    # "crlAKID":Lsun/security/x509/KeyIdentifier;
    .end local v14    # "prevKey":Ljava/security/PublicKey;
    .restart local p5    # "prevKey":Ljava/security/PublicKey;
    :cond_112
    move-object/from16 v14, p5

    .end local p5    # "prevKey":Ljava/security/PublicKey;
    .restart local v14    # "prevKey":Ljava/security/PublicKey;
    :goto_114
    if-nez v16, :cond_11a

    if-nez p4, :cond_11a

    .line 406
    const/4 v12, 0x0

    return v12

    .line 409
    :cond_11a
    if-eqz v7, :cond_314

    .line 410
    nop

    .line 411
    const-string v0, "point"

    invoke-virtual {v7, v0}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/DistributionPointName;

    .line 412
    .local v0, "idpPoint":Lsun/security/x509/DistributionPointName;
    if-eqz v0, :cond_2a9

    .line 413
    invoke-virtual {v0}, Lsun/security/x509/DistributionPointName;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v13

    .line 414
    .local v13, "idpNames":Lsun/security/x509/GeneralNames;
    if-nez v13, :cond_162

    .line 415
    invoke-virtual {v0}, Lsun/security/x509/DistributionPointName;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v15

    .line 416
    .local v15, "relativeName":Lsun/security/x509/RDN;
    if-nez v15, :cond_143

    .line 417
    sget-object v12, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_13f

    .line 418
    move-object/from16 p5, v0

    .end local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .local p5, "idpPoint":Lsun/security/x509/DistributionPointName;
    const-string v0, "IDP must be relative or full DN"

    invoke-virtual {v12, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_141

    .line 417
    .end local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :cond_13f
    move-object/from16 p5, v0

    .line 420
    .end local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :goto_141
    const/4 v12, 0x0

    return v12

    .line 422
    .end local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :cond_143
    move-object/from16 p5, v0

    .end local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_15d

    .line 423
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IDP relativeName:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 425
    :cond_15d
    invoke-static {v9, v15}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v13

    goto :goto_164

    .line 414
    .end local v15    # "relativeName":Lsun/security/x509/RDN;
    .end local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :cond_162
    move-object/from16 p5, v0

    .line 430
    .end local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :goto_164
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v0

    if-nez v0, :cond_1b6

    .line 431
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v0

    if-eqz v0, :cond_171

    goto :goto_1b6

    .line 489
    :cond_171
    const/4 v0, 0x0

    .line 490
    .local v0, "match":Z
    invoke-virtual {v10}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 491
    .local v1, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_176
    if-nez v0, :cond_1aa

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1aa

    .line 492
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/security/x509/GeneralName;

    invoke-virtual {v12}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v12

    .line 493
    .local v12, "crlIssuerName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v13}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 494
    .local v15, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_18c
    if-nez v0, :cond_1a5

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1a5

    .line 495
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lsun/security/x509/GeneralName;

    move/from16 v18, v0

    .end local v0    # "match":Z
    .local v18, "match":Z
    invoke-virtual/range {v17 .. v17}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 496
    .local v0, "idpName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 497
    .end local v18    # "match":Z
    .local v0, "match":Z
    goto :goto_18c

    .line 494
    :cond_1a5
    move/from16 v18, v0

    .line 498
    .end local v0    # "match":Z
    .end local v12    # "crlIssuerName":Lsun/security/x509/GeneralNameInterface;
    .end local v15    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .restart local v18    # "match":Z
    move/from16 v0, v18

    goto :goto_176

    .line 499
    .end local v1    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v18    # "match":Z
    .restart local v0    # "match":Z
    :cond_1aa
    if-nez v0, :cond_1ae

    .line 500
    const/4 v1, 0x0

    return v1

    .line 499
    :cond_1ae
    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    goto/16 :goto_2b1

    .line 432
    .end local v0    # "match":Z
    :cond_1b6
    :goto_1b6
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v0

    .line 433
    .local v0, "pointNames":Lsun/security/x509/GeneralNames;
    if-nez v0, :cond_209

    .line 434
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v1

    .line 435
    .local v1, "relativeName":Lsun/security/x509/RDN;
    if-nez v1, :cond_1cd

    .line 436
    sget-object v12, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_1cb

    .line 437
    const-string v15, "DP must be relative or full DN"

    invoke-virtual {v12, v15}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 439
    :cond_1cb
    const/4 v12, 0x0

    return v12

    .line 441
    :cond_1cd
    sget-object v12, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_1e8

    .line 442
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .local v17, "pointNames":Lsun/security/x509/GeneralNames;
    const-string v0, "DP relativeName:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_1ea

    .line 441
    .end local v17    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    :cond_1e8
    move-object/from16 v17, v0

    .line 444
    .end local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v17    # "pointNames":Lsun/security/x509/GeneralNames;
    :goto_1ea
    if-eqz v16, :cond_204

    .line 445
    invoke-virtual {v10}, Lsun/security/x509/GeneralNames;->size()I

    move-result v0

    const/4 v12, 0x1

    if-eq v0, v12, :cond_1fe

    .line 448
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1fc

    .line 449
    const-string v12, "must only be one CRL issuer when relative name present"

    invoke-virtual {v0, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 452
    :cond_1fc
    const/4 v12, 0x0

    return v12

    .line 454
    :cond_1fe
    nop

    .line 455
    invoke-static {v11, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v0

    .end local v17    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    goto :goto_20b

    .line 457
    .end local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v17    # "pointNames":Lsun/security/x509/GeneralNames;
    :cond_204
    invoke-static {v8, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v0

    .end local v17    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    goto :goto_20b

    .line 433
    .end local v1    # "relativeName":Lsun/security/x509/RDN;
    :cond_209
    move-object/from16 v17, v0

    .line 460
    :goto_20b
    const/4 v1, 0x0

    .line 461
    .local v1, "match":Z
    invoke-virtual {v13}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 462
    .local v12, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_210
    if-nez v1, :cond_293

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_293

    .line 463
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lsun/security/x509/GeneralName;

    invoke-virtual {v15}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v15

    .line 464
    .local v15, "idpName":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v17, v8

    .end local v8    # "certIssuer":Lsun/security/x509/X500Name;
    .local v17, "certIssuer":Lsun/security/x509/X500Name;
    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_241

    .line 465
    move-object/from16 v18, v10

    .end local v10    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .local v18, "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v11

    .end local v11    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .local v19, "pointCrlIssuer":Lsun/security/x509/X500Name;
    const-string v11, "idpName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_245

    .line 464
    .end local v18    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .end local v19    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .restart local v10    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .restart local v11    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_241
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 467
    .end local v10    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .end local v11    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .restart local v18    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .restart local v19    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    :goto_245
    invoke-virtual {v0}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 468
    .local v8, "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_249
    if-nez v1, :cond_283

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_283

    .line 469
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/security/x509/GeneralName;

    invoke-virtual {v10}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v10

    .line 470
    .local v10, "pointName":Lsun/security/x509/GeneralNameInterface;
    sget-object v11, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v11, :cond_278

    .line 471
    move-object/from16 v20, v0

    .end local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .local v20, "pointNames":Lsun/security/x509/GeneralNames;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v1

    .end local v1    # "match":Z
    .local v21, "match":Z
    const-string v1, "pointName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_27c

    .line 470
    .end local v20    # "pointNames":Lsun/security/x509/GeneralNames;
    .end local v21    # "match":Z
    .restart local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v1    # "match":Z
    :cond_278
    move-object/from16 v20, v0

    move/from16 v21, v1

    .line 473
    .end local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .end local v1    # "match":Z
    .restart local v20    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v21    # "match":Z
    :goto_27c
    invoke-virtual {v15, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 474
    .end local v10    # "pointName":Lsun/security/x509/GeneralNameInterface;
    .end local v21    # "match":Z
    .restart local v1    # "match":Z
    move-object/from16 v0, v20

    goto :goto_249

    .line 468
    .end local v20    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    :cond_283
    move-object/from16 v20, v0

    move/from16 v21, v1

    .line 475
    .end local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .end local v1    # "match":Z
    .end local v8    # "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v15    # "idpName":Lsun/security/x509/GeneralNameInterface;
    .restart local v20    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v21    # "match":Z
    move-object/from16 v8, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v0, v20

    move/from16 v1, v21

    goto/16 :goto_210

    .line 462
    .end local v17    # "certIssuer":Lsun/security/x509/X500Name;
    .end local v18    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .end local v19    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .end local v20    # "pointNames":Lsun/security/x509/GeneralNames;
    .end local v21    # "match":Z
    .restart local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v1    # "match":Z
    .local v8, "certIssuer":Lsun/security/x509/X500Name;
    .local v10, "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .restart local v11    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_293
    move-object/from16 v20, v0

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 476
    .end local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .end local v8    # "certIssuer":Lsun/security/x509/X500Name;
    .end local v10    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .end local v11    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .end local v12    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .restart local v17    # "certIssuer":Lsun/security/x509/X500Name;
    .restart local v18    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .restart local v19    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .restart local v20    # "pointNames":Lsun/security/x509/GeneralNames;
    if-nez v1, :cond_2a8

    .line 477
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_2a6

    .line 478
    const-string v8, "IDP name does not match DP name"

    invoke-virtual {v0, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 480
    :cond_2a6
    const/4 v8, 0x0

    return v8

    .line 486
    .end local v1    # "match":Z
    .end local v20    # "pointNames":Lsun/security/x509/GeneralNames;
    :cond_2a8
    goto :goto_2b1

    .line 412
    .end local v13    # "idpNames":Lsun/security/x509/GeneralNames;
    .end local v17    # "certIssuer":Lsun/security/x509/X500Name;
    .end local v18    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .end local v19    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .end local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .local v0, "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local v8    # "certIssuer":Lsun/security/x509/X500Name;
    .restart local v10    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .restart local v11    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_2a9
    move-object/from16 p5, v0

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 507
    .end local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .end local v8    # "certIssuer":Lsun/security/x509/X500Name;
    .end local v10    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .end local v11    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .restart local v17    # "certIssuer":Lsun/security/x509/X500Name;
    .restart local v18    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .restart local v19    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .restart local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :goto_2b1
    nop

    .line 508
    const-string v0, "only_user_certs"

    invoke-virtual {v7, v0}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 509
    .local v0, "b":Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, -0x1

    if-eqz v1, :cond_2d4

    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getBasicConstraints()I

    move-result v1

    if-eq v1, v8, :cond_2d4

    .line 510
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_2d2

    .line 511
    const-string v8, "cert must be a EE cert"

    invoke-virtual {v1, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 513
    :cond_2d2
    const/4 v1, 0x0

    return v1

    .line 518
    :cond_2d4
    nop

    .line 519
    const-string v1, "only_ca_certs"

    invoke-virtual {v7, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    .line 520
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f7

    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getBasicConstraints()I

    move-result v1

    if-ne v1, v8, :cond_2f7

    .line 521
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_2f5

    .line 522
    const-string v8, "cert must be a CA cert"

    invoke-virtual {v1, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 524
    :cond_2f5
    const/4 v1, 0x0

    return v1

    .line 529
    :cond_2f7
    nop

    .line 530
    const-string v1, "only_attribute_certs"

    invoke-virtual {v7, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    .line 531
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31a

    .line 532
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_312

    .line 533
    const-string v8, "cert must not be an AA cert"

    invoke-virtual {v1, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 535
    :cond_312
    const/4 v1, 0x0

    return v1

    .line 409
    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v17    # "certIssuer":Lsun/security/x509/X500Name;
    .end local v18    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .end local v19    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .end local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local v8    # "certIssuer":Lsun/security/x509/X500Name;
    .restart local v10    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .restart local v11    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_314
    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 540
    .end local v8    # "certIssuer":Lsun/security/x509/X500Name;
    .end local v10    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .end local v11    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .restart local v17    # "certIssuer":Lsun/security/x509/X500Name;
    .restart local v18    # "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    .restart local v19    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_31a
    const/16 v0, 0x9

    new-array v0, v0, [Z

    .line 541
    .local v0, "interimReasonsMask":[Z
    const/4 v1, 0x0

    .line 542
    .local v1, "reasons":Lsun/security/x509/ReasonFlags;
    if-eqz v7, :cond_32b

    .line 543
    nop

    .line 544
    const-string v8, "reasons"

    invoke-virtual {v7, v8}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Lsun/security/x509/ReasonFlags;

    .line 547
    :cond_32b
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getReasonFlags()[Z

    move-result-object v8

    .line 548
    .local v8, "pointReasonFlags":[Z
    if-eqz v1, :cond_35f

    .line 549
    if-eqz v8, :cond_352

    .line 552
    invoke-virtual {v1}, Lsun/security/x509/ReasonFlags;->getFlags()[Z

    move-result-object v10

    .line 553
    .local v10, "idpReasonFlags":[Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_338
    array-length v12, v0

    if-ge v11, v12, :cond_351

    .line 554
    array-length v12, v10

    if-ge v11, v12, :cond_34b

    aget-boolean v12, v10, v11

    if-eqz v12, :cond_34b

    array-length v12, v8

    if-ge v11, v12, :cond_34b

    aget-boolean v12, v8, v11

    if-eqz v12, :cond_34b

    const/4 v12, 0x1

    goto :goto_34c

    :cond_34b
    const/4 v12, 0x0

    :goto_34c
    aput-boolean v12, v0, v11

    .line 553
    add-int/lit8 v11, v11, 0x1

    goto :goto_338

    .line 558
    .end local v10    # "idpReasonFlags":[Z
    .end local v11    # "i":I
    :cond_351
    goto :goto_372

    .line 562
    :cond_352
    invoke-virtual {v1}, Lsun/security/x509/ReasonFlags;->getFlags()[Z

    move-result-object v10

    invoke-virtual {v10}, [Z->clone()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Z

    move-object v10, v0

    goto :goto_373

    .line 564
    :cond_35f
    if-eqz v7, :cond_363

    if-nez v1, :cond_372

    .line 565
    :cond_363
    if-eqz v8, :cond_36e

    .line 567
    invoke-virtual {v8}, [Z->clone()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Z

    move-object v10, v0

    goto :goto_373

    .line 570
    :cond_36e
    const/4 v10, 0x1

    invoke-static {v0, v10}, Ljava/util/Arrays;->fill([ZZ)V

    .line 576
    :cond_372
    :goto_372
    move-object v10, v0

    .end local v0    # "interimReasonsMask":[Z
    .local v10, "interimReasonsMask":[Z
    :goto_373
    const/4 v0, 0x0

    .line 577
    .local v0, "oneOrMore":Z
    const/4 v11, 0x0

    move/from16 v24, v11

    move v11, v0

    move/from16 v0, v24

    .local v0, "i":I
    .local v11, "oneOrMore":Z
    :goto_37a
    array-length v12, v10

    if-ge v0, v12, :cond_38e

    if-nez v11, :cond_38e

    .line 578
    aget-boolean v12, v10, v0

    if-eqz v12, :cond_38b

    array-length v12, v3

    if-ge v0, v12, :cond_38a

    aget-boolean v12, v3, v0

    if-nez v12, :cond_38b

    .line 581
    :cond_38a
    const/4 v11, 0x1

    .line 577
    :cond_38b
    add-int/lit8 v0, v0, 0x1

    goto :goto_37a

    .line 584
    .end local v0    # "i":I
    :cond_38e
    if-nez v11, :cond_392

    .line 585
    const/4 v12, 0x0

    return v12

    .line 591
    :cond_392
    if-eqz v16, :cond_438

    .line 592
    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    move-object v12, v0

    .line 593
    .local v12, "certSel":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v9}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 594
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_4cc

    move-object v13, v0

    .line 595
    .local v13, "crlSign":[Z
    invoke-virtual {v12, v13}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    .line 607
    nop

    .line 608
    invoke-virtual {v6}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v15

    .line 609
    .local v15, "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v15, :cond_3d4

    .line 610
    invoke-virtual {v15}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->getEncodedKeyIdentifier()[B

    move-result-object v0

    .line 611
    .local v0, "kid":[B
    if-eqz v0, :cond_3bb

    .line 612
    invoke-virtual {v12, v0}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V

    .line 615
    :cond_3bb
    move-object/from16 p5, v0

    .end local v0    # "kid":[B
    .local p5, "kid":[B
    const-string v0, "serial_number"

    invoke-virtual {v15, v0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/SerialNumber;

    .line 617
    .local v0, "asn":Lsun/security/x509/SerialNumber;
    if-eqz v0, :cond_3d1

    .line 618
    move-object/from16 v20, v1

    .end local v1    # "reasons":Lsun/security/x509/ReasonFlags;
    .local v20, "reasons":Lsun/security/x509/ReasonFlags;
    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    goto :goto_3d6

    .line 617
    .end local v20    # "reasons":Lsun/security/x509/ReasonFlags;
    .restart local v1    # "reasons":Lsun/security/x509/ReasonFlags;
    :cond_3d1
    move-object/from16 v20, v1

    .end local v1    # "reasons":Lsun/security/x509/ReasonFlags;
    .restart local v20    # "reasons":Lsun/security/x509/ReasonFlags;
    goto :goto_3d6

    .line 609
    .end local v0    # "asn":Lsun/security/x509/SerialNumber;
    .end local v20    # "reasons":Lsun/security/x509/ReasonFlags;
    .end local p5    # "kid":[B
    .restart local v1    # "reasons":Lsun/security/x509/ReasonFlags;
    :cond_3d4
    move-object/from16 v20, v1

    .line 628
    .end local v1    # "reasons":Lsun/security/x509/ReasonFlags;
    .restart local v20    # "reasons":Lsun/security/x509/ReasonFlags;
    :goto_3d6
    new-instance v0, Ljava/util/HashSet;

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 p5, v0

    .line 630
    .local p5, "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    if-eqz v14, :cond_3fb

    .line 637
    const/4 v0, 0x0

    if-eqz v4, :cond_3eb

    .line 638
    new-instance v1, Ljava/security/cert/TrustAnchor;

    invoke-direct {v1, v4, v0}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object v0, v1

    .local v0, "temporary":Ljava/security/cert/TrustAnchor;
    goto :goto_3f5

    .line 640
    .end local v0    # "temporary":Ljava/security/cert/TrustAnchor;
    :cond_3eb
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 641
    .local v1, "principal":Ljavax/security/auth/x500/X500Principal;
    new-instance v4, Ljava/security/cert/TrustAnchor;

    invoke-direct {v4, v1, v14, v0}, Ljava/security/cert/TrustAnchor;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V

    move-object v0, v4

    .line 643
    .end local v1    # "principal":Ljavax/security/auth/x500/X500Principal;
    .restart local v0    # "temporary":Ljava/security/cert/TrustAnchor;
    :goto_3f5
    move-object/from16 v1, p5

    .end local p5    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local v1, "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3fd

    .line 630
    .end local v0    # "temporary":Ljava/security/cert/TrustAnchor;
    .end local v1    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .restart local p5    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :cond_3fb
    move-object/from16 v1, p5

    .line 646
    .end local p5    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .restart local v1    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :goto_3fd
    const/4 v4, 0x0

    .line 648
    .local v4, "params":Ljava/security/cert/PKIXBuilderParameters;
    :try_start_3fe
    new-instance v0, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v0, v1, v12}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    :try_end_403
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3fe .. :try_end_403} :catch_42f

    move-object v4, v0

    .line 651
    nop

    .line 652
    move-object/from16 v21, v1

    move-object/from16 v1, p9

    .end local v1    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local v21, "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual {v4, v1}, Ljava/security/cert/PKIXBuilderParameters;->setCertStores(Ljava/util/List;)V

    .line 653
    invoke-virtual {v4, v5}, Ljava/security/cert/PKIXBuilderParameters;->setSigProvider(Ljava/lang/String;)V

    .line 654
    move-object/from16 v1, p10

    invoke-virtual {v4, v1}, Ljava/security/cert/PKIXBuilderParameters;->setDate(Ljava/util/Date;)V

    .line 656
    :try_start_414
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v0

    .line 657
    .local v0, "builder":Ljava/security/cert/CertPathBuilder;
    nop

    .line 658
    invoke-virtual {v0, v4}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v22

    check-cast v22, Ljava/security/cert/PKIXCertPathBuilderResult;

    .line 659
    .local v22, "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/PKIXCertPathBuilderResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v23
    :try_end_425
    .catch Ljava/security/GeneralSecurityException; {:try_start_414 .. :try_end_425} :catch_428

    move-object/from16 v14, v23

    .line 662
    .end local v0    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v22    # "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    goto :goto_43a

    .line 660
    :catch_428
    move-exception v0

    .line 661
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 649
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v21    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .restart local v1    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :catch_42f
    move-exception v0

    move-object/from16 v21, v1

    .line 650
    .end local v1    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local v0, "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v21    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 591
    .end local v0    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .end local v4    # "params":Ljava/security/cert/PKIXBuilderParameters;
    .end local v12    # "certSel":Ljava/security/cert/X509CertSelector;
    .end local v13    # "crlSign":[Z
    .end local v15    # "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .end local v20    # "reasons":Lsun/security/x509/ReasonFlags;
    .end local v21    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local v1, "reasons":Lsun/security/x509/ReasonFlags;
    :cond_438
    move-object/from16 v20, v1

    .line 667
    .end local v1    # "reasons":Lsun/security/x509/ReasonFlags;
    .restart local v20    # "reasons":Lsun/security/x509/ReasonFlags;
    :goto_43a
    :try_start_43a
    invoke-static {v14, v2}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Ljava/security/cert/X509CRL;)V
    :try_end_43d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_43a .. :try_end_43d} :catch_4af

    .line 673
    nop

    .line 677
    :try_start_43e
    invoke-virtual {v2, v14, v5}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_441
    .catch Ljava/security/GeneralSecurityException; {:try_start_43e .. :try_end_441} :catch_4a1

    .line 683
    nop

    .line 686
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 688
    .local v0, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_487

    .line 689
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 690
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_487

    .line 691
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_485

    .line 692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unrecognized critical extension(s) in CRL: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 694
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_473
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_485

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 695
    .local v4, "ext":Ljava/lang/String;
    sget-object v12, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    invoke-virtual {v12, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 696
    .end local v4    # "ext":Ljava/lang/String;
    goto :goto_473

    .line 698
    :cond_485
    const/4 v1, 0x0

    return v1

    .line 703
    :cond_487
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_488
    array-length v4, v3

    if-ge v1, v4, :cond_49f

    .line 704
    aget-boolean v4, v3, v1

    if-nez v4, :cond_499

    array-length v4, v10

    if-ge v1, v4, :cond_497

    aget-boolean v4, v10, v1

    if-eqz v4, :cond_497

    goto :goto_499

    :cond_497
    const/4 v4, 0x0

    goto :goto_49a

    :cond_499
    :goto_499
    const/4 v4, 0x1

    :goto_49a
    aput-boolean v4, v3, v1

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_488

    .line 707
    .end local v1    # "i":I
    :cond_49f
    const/4 v1, 0x1

    return v1

    .line 678
    .end local v0    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_4a1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 679
    .local v0, "e":Ljava/security/GeneralSecurityException;
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_4ad

    .line 680
    const-string v4, "CRL signature failed to verify"

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 682
    :cond_4ad
    const/4 v1, 0x0

    return v1

    .line 668
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_4af
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 669
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_4ca

    .line 670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CRL signature algorithm check failed: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 672
    :cond_4ca
    const/4 v1, 0x0

    return v1

    :array_4cc
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method
