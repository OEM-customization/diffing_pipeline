.class public final Lsun/security/provider/certpath/SunCertPathBuilder;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "SunCertPathBuilder.java"


# static fields
.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private blacklist buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

.field private blacklist cf:Ljava/security/cert/CertificateFactory;

.field private blacklist finalPublicKey:Ljava/security/PublicKey;

.field private blacklist pathCompleted:Z

.field private blacklist policyTreeResult:Ljava/security/cert/PolicyNode;

.field private blacklist trustAnchor:Ljava/security/cert/TrustAnchor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    .line 88
    :try_start_6
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->cf:Ljava/security/cert/CertificateFactory;
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_e} :catch_10

    .line 91
    nop

    .line 92
    return-void

    .line 89
    :catch_10
    move-exception v0

    .line 90
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/security/cert/CertPathBuilderException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist addVertices(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;)",
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;"
        }
    .end annotation

    .line 558
    .local p0, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .local p1, "adjList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 560
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 561
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v3, Lsun/security/provider/certpath/Vertex;

    invoke-direct {v3, v2}, Lsun/security/provider/certpath/Vertex;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 562
    .local v3, "v":Lsun/security/provider/certpath/Vertex;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "v":Lsun/security/provider/certpath/Vertex;
    goto :goto_10

    .line 565
    :cond_25
    return-object v0
.end method

.method private static blacklist anchorIsTarget(Ljava/security/cert/TrustAnchor;Ljava/security/cert/CertSelector;)Z
    .registers 4
    .param p0, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p1, "sel"    # Ljava/security/cert/CertSelector;

    .line 575
    invoke-virtual {p0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 576
    .local v0, "anchorCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_b

    .line 577
    invoke-interface {p1, v0}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v1

    return v1

    .line 579
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist build()Ljava/security/cert/PKIXCertPathBuilderResult;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "adjList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lsun/security/provider/certpath/SunCertPathBuilder;->buildCertPath(ZLjava/util/List;)Ljava/security/cert/PKIXCertPathBuilderResult;

    move-result-object v1

    .line 132
    .local v1, "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    if-nez v1, :cond_2d

    .line 133
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_15

    .line 134
    const-string v3, "SunCertPathBuilder.engineBuild: 2nd pass; try building again searching all certstores"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 138
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lsun/security/provider/certpath/SunCertPathBuilder;->buildCertPath(ZLjava/util/List;)Ljava/security/cert/PKIXCertPathBuilderResult;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_20

    goto :goto_2d

    .line 141
    :cond_20
    new-instance v2, Lsun/security/provider/certpath/SunCertPathBuilderException;

    new-instance v3, Lsun/security/provider/certpath/AdjacencyList;

    invoke-direct {v3, v0}, Lsun/security/provider/certpath/AdjacencyList;-><init>(Ljava/util/List;)V

    const-string v4, "unable to find valid certification path to requested target"

    invoke-direct {v2, v4, v3}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;Lsun/security/provider/certpath/AdjacencyList;)V

    throw v2

    .line 146
    :cond_2d
    :goto_2d
    return-object v1
.end method

.method private blacklist buildCertPath(ZLjava/util/List;)Ljava/security/cert/PKIXCertPathBuilderResult;
    .registers 12
    .param p1, "searchAllCertStores"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;)",
            "Ljava/security/cert/PKIXCertPathBuilderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;
        }
    .end annotation

    .line 154
    .local p2, "adjList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    const-string v0, "unable to find valid certification path to requested target"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 156
    iput-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    .line 157
    iput-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    .line 158
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 160
    .local v2, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    :try_start_11
    invoke-direct {p0, p2, v2, p1}, Lsun/security/provider/certpath/SunCertPathBuilder;->buildForward(Ljava/util/List;Ljava/util/LinkedList;Z)V
    :try_end_14
    .catch Ljava/security/GeneralSecurityException; {:try_start_11 .. :try_end_14} :catch_59
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_59

    .line 170
    nop

    .line 174
    :try_start_15
    iget-boolean v3, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    if-eqz v3, :cond_3f

    .line 175
    sget-object v1, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_24

    .line 176
    sget-object v1, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    const-string v3, "SunCertPathBuilder.engineBuild() pathCompleted"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 182
    :cond_24
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 184
    new-instance v1, Lsun/security/provider/certpath/SunCertPathBuilderResult;

    iget-object v3, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->cf:Ljava/security/cert/CertificateFactory;

    .line 185
    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v4

    iget-object v5, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    iget-object v6, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    iget-object v7, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    new-instance v8, Lsun/security/provider/certpath/AdjacencyList;

    invoke-direct {v8, p2}, Lsun/security/provider/certpath/AdjacencyList;-><init>(Ljava/util/List;)V

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lsun/security/provider/certpath/SunCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;Lsun/security/provider/certpath/AdjacencyList;)V
    :try_end_3e
    .catch Ljava/security/cert/CertificateException; {:try_start_15 .. :try_end_3e} :catch_41

    .line 184
    return-object v1

    .line 198
    :cond_3f
    nop

    .line 200
    return-object v1

    .line 189
    :catch_41
    move-exception v1

    .line 190
    .local v1, "e":Ljava/security/cert/CertificateException;
    sget-object v3, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_4e

    .line 191
    const-string v4, "SunCertPathBuilder.engineBuild() exception in wrap-up"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 195
    :cond_4e
    new-instance v3, Lsun/security/provider/certpath/SunCertPathBuilderException;

    new-instance v4, Lsun/security/provider/certpath/AdjacencyList;

    invoke-direct {v4, p2}, Lsun/security/provider/certpath/AdjacencyList;-><init>(Ljava/util/List;)V

    invoke-direct {v3, v0, v1, v4}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsun/security/provider/certpath/AdjacencyList;)V

    throw v3

    .line 161
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_59
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_66

    .line 163
    const-string v4, "SunCertPathBuilder.engineBuild() exception in build"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    :cond_66
    new-instance v3, Lsun/security/provider/certpath/SunCertPathBuilderException;

    new-instance v4, Lsun/security/provider/certpath/AdjacencyList;

    invoke-direct {v4, p2}, Lsun/security/provider/certpath/AdjacencyList;-><init>(Ljava/util/List;)V

    invoke-direct {v3, v0, v1, v4}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsun/security/provider/certpath/AdjacencyList;)V

    throw v3
.end method

.method private blacklist buildForward(Ljava/util/List;Ljava/util/LinkedList;Z)V
    .registers 11
    .param p3, "searchAllCertStores"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;",
            "Ljava/util/LinkedList<",
            "Ljava/security/cert/X509Certificate;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    .local p1, "adjacencyList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    .local p2, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_9

    .line 212
    const-string v1, "SunCertPathBuilder.buildForward()..."

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 216
    :cond_9
    new-instance v0, Lsun/security/provider/certpath/ForwardState;

    invoke-direct {v0}, Lsun/security/provider/certpath/ForwardState;-><init>()V

    .line 217
    .local v0, "currentState":Lsun/security/provider/certpath/ForwardState;
    iget-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certPathCheckers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/ForwardState;->initState(Ljava/util/List;)V

    .line 220
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 221
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    new-instance v4, Lsun/security/provider/certpath/ForwardBuilder;

    iget-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-direct {v4, v1, p3}, Lsun/security/provider/certpath/ForwardBuilder;-><init>(Lsun/security/provider/certpath/PKIX$BuilderParams;Z)V

    move-object v1, p0

    move-object v3, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lsun/security/provider/certpath/SunCertPathBuilder;->depthFirstSearchForward(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ForwardState;Lsun/security/provider/certpath/ForwardBuilder;Ljava/util/List;Ljava/util/LinkedList;)V

    .line 230
    return-void
.end method

.method private blacklist depthFirstSearchForward(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ForwardState;Lsun/security/provider/certpath/ForwardBuilder;Ljava/util/List;Ljava/util/LinkedList;)V
    .registers 44
    .param p1, "dN"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "currentState"    # Lsun/security/provider/certpath/ForwardState;
    .param p3, "builder"    # Lsun/security/provider/certpath/ForwardBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/x500/X500Principal;",
            "Lsun/security/provider/certpath/ForwardState;",
            "Lsun/security/provider/certpath/ForwardBuilder;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;",
            "Ljava/util/LinkedList<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    .local p4, "adjList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    .local p5, "cpList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_34

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SunCertPathBuilder.depthFirstSearchForward("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/ForwardState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_36

    .line 254
    :cond_34
    move-object/from16 v11, p1

    .line 263
    :goto_36
    iget-object v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 264
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certStores()Ljava/util/List;

    move-result-object v0

    move-object/from16 v12, p2

    invoke-virtual {v8, v12, v0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v13

    .line 265
    .local v13, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-static {v13, v9}, Lsun/security/provider/certpath/SunCertPathBuilder;->addVertices(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 266
    .local v14, "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_62

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SunCertPathBuilder.depthFirstSearchForward(): certs.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 279
    :cond_62
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_66
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lsun/security/provider/certpath/Vertex;

    .line 287
    .local v6, "vertex":Lsun/security/provider/certpath/Vertex;
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/ForwardState;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lsun/security/provider/certpath/ForwardState;

    .line 288
    .local v5, "nextState":Lsun/security/provider/certpath/ForwardState;
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 291
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    :try_start_7e
    invoke-virtual {v8, v4, v5, v10}, Lsun/security/provider/certpath/ForwardBuilder;->verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    :try_end_81
    .catch Ljava/security/GeneralSecurityException; {:try_start_7e .. :try_end_81} :catch_3f6

    .line 300
    nop

    .line 311
    invoke-virtual {v8, v4}, Lsun/security/provider/certpath/ForwardBuilder;->isPathCompleted(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_3a9

    .line 313
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_91

    .line 314
    const-string v2, "SunCertPathBuilder.depthFirstSearchForward(): commencing final verification"

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 317
    :cond_91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v0

    .line 325
    .local v2, "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_a3

    .line 326
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 329
    :cond_a3
    nop

    .line 330
    const-string v0, "2.5.29.32.0"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v23

    .line 332
    .local v23, "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v31, Lsun/security/provider/certpath/PolicyNodeImpl;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const-string v18, "2.5.29.32.0"

    move-object/from16 v16, v31

    move-object/from16 v21, v23

    invoke-direct/range {v16 .. v22}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .line 335
    .local v31, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    .line 336
    .local v16, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    new-instance v0, Lsun/security/provider/certpath/PolicyChecker;

    iget-object v3, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 337
    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$BuilderParams;->initialPolicies()Ljava/util/Set;

    move-result-object v25

    .line 338
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v26

    iget-object v3, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 339
    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$BuilderParams;->explicitPolicyRequired()Z

    move-result v27

    iget-object v3, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 340
    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$BuilderParams;->policyMappingInhibited()Z

    move-result v28

    iget-object v3, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 341
    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$BuilderParams;->anyPolicyInhibited()Z

    move-result v29

    iget-object v3, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 342
    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$BuilderParams;->policyQualifiersRejected()Z

    move-result v30

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v31}, Lsun/security/provider/certpath/PolicyChecker;-><init>(Ljava/util/Set;IZZZZLsun/security/provider/certpath/PolicyNodeImpl;)V

    move-object v3, v0

    .line 344
    .local v3, "policyChecker":Lsun/security/provider/certpath/PolicyChecker;
    move-object/from16 v1, v16

    .end local v16    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .local v1, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v0, Lsun/security/provider/certpath/AlgorithmChecker;

    iget-object v11, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-direct {v0, v11}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    const/4 v11, 0x0

    .line 350
    .local v11, "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    invoke-virtual {v5}, Lsun/security/provider/certpath/ForwardState;->keyParamsNeeded()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 351
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 352
    .local v0, "rootKey":Ljava/security/PublicKey;
    move-object/from16 v18, v0

    .end local v0    # "rootKey":Ljava/security/PublicKey;
    .local v18, "rootKey":Ljava/security/PublicKey;
    iget-object v0, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_13d

    .line 353
    iget-object v0, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 354
    .end local v18    # "rootKey":Ljava/security/PublicKey;
    .restart local v0    # "rootKey":Ljava/security/PublicKey;
    move-object/from16 v19, v11

    .end local v11    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    .local v19, "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    sget-object v11, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v11, :cond_139

    .line 355
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v13

    .end local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .local v20, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const-string v13, "SunCertPathBuilder.depthFirstSearchForward using buildParams public key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 355
    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_13b

    .line 354
    .end local v20    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    :cond_139
    move-object/from16 v20, v13

    .line 360
    .end local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v20    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    :goto_13b
    move-object v11, v0

    goto :goto_143

    .line 352
    .end local v0    # "rootKey":Ljava/security/PublicKey;
    .end local v19    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    .end local v20    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v11    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    .restart local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v18    # "rootKey":Ljava/security/PublicKey;
    :cond_13d
    move-object/from16 v19, v11

    move-object/from16 v20, v13

    .end local v11    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    .end local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v19    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    .restart local v20    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v11, v18

    .line 360
    .end local v18    # "rootKey":Ljava/security/PublicKey;
    .local v11, "rootKey":Ljava/security/PublicKey;
    :goto_143
    new-instance v0, Ljava/security/cert/TrustAnchor;

    .line 361
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v0, v12, v11, v13}, Ljava/security/cert/TrustAnchor;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V

    move-object v12, v0

    .line 364
    .local v12, "anchor":Ljava/security/cert/TrustAnchor;
    new-instance v13, Lsun/security/provider/certpath/BasicChecker;

    iget-object v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->date()Ljava/util/Date;

    move-result-object v0

    move-object/from16 v18, v11

    .end local v11    # "rootKey":Ljava/security/PublicKey;
    .restart local v18    # "rootKey":Ljava/security/PublicKey;
    iget-object v11, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 365
    invoke-virtual {v11}, Lsun/security/provider/certpath/PKIX$BuilderParams;->sigProvider()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v21, v14

    const/4 v14, 0x1

    .end local v14    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .local v21, "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    invoke-direct {v13, v12, v0, v11, v14}, Lsun/security/provider/certpath/BasicChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/util/Date;Ljava/lang/String;Z)V

    move-object v11, v13

    .line 367
    .end local v19    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    .local v11, "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16f

    .line 350
    .end local v12    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v18    # "rootKey":Ljava/security/PublicKey;
    .end local v20    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v21    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .restart local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v14    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    :cond_169
    move-object/from16 v19, v11

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    .line 370
    .end local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v14    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .restart local v20    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v21    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    :goto_16f
    iget-object v12, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    iget-object v13, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->cf:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v13, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/security/provider/certpath/PKIX$BuilderParams;->setCertPath(Ljava/security/cert/CertPath;)V

    .line 372
    const/4 v12, 0x0

    .line 373
    .local v12, "revCheckerAdded":Z
    iget-object v13, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v13}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certPathCheckers()Ljava/util/List;

    move-result-object v13

    .line 374
    .local v13, "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_185
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1c5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    .line 375
    .local v0, "ckr":Ljava/security/cert/PKIXCertPathChecker;
    move-object/from16 v16, v14

    instance-of v14, v0, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v14, :cond_1c0

    .line 376
    if-nez v12, :cond_1b6

    .line 380
    const/4 v12, 0x1

    .line 382
    instance-of v14, v0, Lsun/security/provider/certpath/RevocationChecker;

    if-eqz v14, :cond_1af

    .line 383
    move-object v14, v0

    check-cast v14, Lsun/security/provider/certpath/RevocationChecker;

    move-object/from16 v19, v0

    .end local v0    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .local v19, "ckr":Ljava/security/cert/PKIXCertPathChecker;
    iget-object v0, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    move/from16 v22, v12

    .end local v12    # "revCheckerAdded":Z
    .local v22, "revCheckerAdded":Z
    iget-object v12, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v14, v0, v12}, Lsun/security/provider/certpath/RevocationChecker;->init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    goto :goto_1b3

    .line 382
    .end local v19    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .end local v22    # "revCheckerAdded":Z
    .restart local v0    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v12    # "revCheckerAdded":Z
    :cond_1af
    move-object/from16 v19, v0

    move/from16 v22, v12

    .line 387
    .end local v0    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .end local v12    # "revCheckerAdded":Z
    .restart local v22    # "revCheckerAdded":Z
    :goto_1b3
    move/from16 v12, v22

    goto :goto_1c2

    .line 377
    .end local v22    # "revCheckerAdded":Z
    .restart local v0    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v12    # "revCheckerAdded":Z
    :cond_1b6
    move-object/from16 v19, v0

    .end local v0    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v19    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v14, "Only one PKIXRevocationChecker can be specified"

    invoke-direct {v0, v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    .end local v19    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v0    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    :cond_1c0
    move-object/from16 v19, v0

    .line 387
    .end local v0    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    :goto_1c2
    move-object/from16 v14, v16

    goto :goto_185

    .line 390
    :cond_1c5
    iget-object v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->revocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1de

    if-nez v12, :cond_1de

    .line 391
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker;

    iget-object v14, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    move/from16 v16, v12

    .end local v12    # "revCheckerAdded":Z
    .local v16, "revCheckerAdded":Z
    iget-object v12, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-direct {v0, v14, v12}, Lsun/security/provider/certpath/RevocationChecker;-><init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e0

    .line 390
    .end local v16    # "revCheckerAdded":Z
    .restart local v12    # "revCheckerAdded":Z
    :cond_1de
    move/from16 v16, v12

    .line 395
    .end local v12    # "revCheckerAdded":Z
    .restart local v16    # "revCheckerAdded":Z
    :goto_1e0
    invoke-interface {v1, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 400
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_1e5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_35f

    .line 401
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/security/cert/X509Certificate;

    .line 402
    .local v14, "currCert":Ljava/security/cert/X509Certificate;
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_213

    .line 403
    move-object/from16 v19, v2

    .end local v2    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v19, "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v13

    .end local v13    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .local v22, "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    const-string v13, "current subject = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_217

    .line 402
    .end local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v22    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v2    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v13    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_213
    move-object/from16 v19, v2

    move-object/from16 v22, v13

    .line 405
    .end local v2    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v13    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v22    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :goto_217
    nop

    .line 406
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 407
    .local v0, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_224

    .line 408
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    move-object v2, v0

    goto :goto_225

    .line 407
    :cond_224
    move-object v2, v0

    .line 411
    .end local v0    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_225
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_229
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2b8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/PKIXCertPathChecker;

    .line 412
    .local v13, "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v13}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    move-result v24

    if-nez v24, :cond_2a8

    .line 413
    if-nez v12, :cond_255

    .line 414
    move-object/from16 v24, v0

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    .line 419
    instance-of v0, v13, Lsun/security/provider/certpath/AlgorithmChecker;

    if-eqz v0, :cond_252

    .line 420
    move-object v0, v13

    check-cast v0, Lsun/security/provider/certpath/AlgorithmChecker;

    move-object/from16 v25, v1

    .end local v1    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .local v25, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    iget-object v1, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 421
    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/AlgorithmChecker;->trySetTrustAnchor(Ljava/security/cert/TrustAnchor;)V

    goto :goto_259

    .line 419
    .end local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v1    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_252
    move-object/from16 v25, v1

    .end local v1    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    goto :goto_259

    .line 413
    .end local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v1    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_255
    move-object/from16 v24, v0

    move-object/from16 v25, v1

    .line 426
    .end local v1    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :goto_259
    :try_start_259
    invoke-virtual {v13, v14, v2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_25c
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_259 .. :try_end_25c} :catch_25f

    .line 440
    move-object/from16 v27, v15

    goto :goto_2b0

    .line 427
    :catch_25f
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 428
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    sget-object v1, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_27f

    .line 429
    move-object/from16 v26, v13

    .end local v13    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .local v26, "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v15

    const-string v15, "SunCertPathBuilder.depthFirstSearchForward(): final verification failed: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 430
    invoke-virtual {v1, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_283

    .line 428
    .end local v26    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v13    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_27f
    move-object/from16 v26, v13

    move-object/from16 v27, v15

    .line 434
    .end local v13    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v26    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    :goto_283
    iget-object v1, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v1

    if-eqz v1, :cond_299

    .line 435
    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v1

    sget-object v13, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-eq v1, v13, :cond_298

    goto :goto_299

    .line 436
    :cond_298
    throw v0

    .line 438
    :cond_299
    :goto_299
    invoke-virtual {v6, v0}, Lsun/security/provider/certpath/Vertex;->setThrowable(Ljava/lang/Throwable;)V

    .line 439
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v15, v27

    goto/16 :goto_66

    .line 412
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v26    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v1    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v13    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_2a8
    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move-object/from16 v26, v13

    move-object/from16 v27, v15

    .line 442
    .end local v1    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v13    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :goto_2b0
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v15, v27

    goto/16 :goto_229

    .line 451
    .end local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v1    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_2b8
    move-object/from16 v25, v1

    move-object/from16 v27, v15

    .end local v1    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    iget-object v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certPathCheckers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    .line 453
    .local v1, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v1}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    move-result v13

    if-eqz v13, :cond_2e2

    .line 454
    nop

    .line 455
    invoke-virtual {v1}, Ljava/security/cert/PKIXCertPathChecker;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v13

    .line 456
    .local v13, "suppExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_2e2

    .line 457
    invoke-interface {v2, v13}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 460
    .end local v1    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v13    # "suppExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2e2
    goto :goto_2c6

    .line 462
    :cond_2e3
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_353

    .line 463
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 464
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 465
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 466
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 467
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 468
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 469
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    .line 470
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 471
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 472
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 474
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_341

    goto :goto_353

    .line 475
    :cond_341
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, -0x1

    sget-object v37, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    const-string v33, "unrecognized critical extension(s)"

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 400
    .end local v2    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "currCert":Ljava/security/cert/X509Certificate;
    :cond_353
    :goto_353
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v19

    move-object/from16 v13, v22

    move-object/from16 v1, v25

    move-object/from16 v15, v27

    goto/16 :goto_1e5

    .end local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v22    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .local v1, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .local v2, "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v13, "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_35f
    move-object/from16 v25, v1

    move-object/from16 v19, v2

    move-object/from16 v22, v13

    .line 481
    .end local v1    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v2    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v12    # "i":I
    .end local v13    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v22    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_36e

    .line 482
    const-string v1, "SunCertPathBuilder.depthFirstSearchForward(): final verification succeeded - path completed!"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 484
    :cond_36e
    const/4 v0, 0x1

    iput-boolean v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    .line 491
    iget-object v0, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_37c

    .line 492
    invoke-virtual {v8, v4, v10}, Lsun/security/provider/certpath/ForwardBuilder;->addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V

    .line 494
    :cond_37c
    iget-object v0, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    iput-object v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 499
    if-eqz v11, :cond_389

    .line 500
    invoke-virtual {v11}, Lsun/security/provider/certpath/BasicChecker;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    goto :goto_3a2

    .line 503
    :cond_389
    invoke-virtual/range {p5 .. p5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_396

    .line 504
    iget-object v0, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .local v0, "finalCert":Ljava/security/cert/Certificate;
    goto :goto_39c

    .line 506
    .end local v0    # "finalCert":Ljava/security/cert/Certificate;
    :cond_396
    invoke-virtual/range {p5 .. p5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 508
    .restart local v0    # "finalCert":Ljava/security/cert/Certificate;
    :goto_39c
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    .line 511
    .end local v0    # "finalCert":Ljava/security/cert/Certificate;
    :goto_3a2
    invoke-virtual {v3}, Lsun/security/provider/certpath/PolicyChecker;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v0

    iput-object v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    .line 512
    return-void

    .line 514
    .end local v3    # "policyChecker":Lsun/security/provider/certpath/PolicyChecker;
    .end local v11    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    .end local v16    # "revCheckerAdded":Z
    .end local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v20    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v21    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .end local v22    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v23    # "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v31    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v13, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .local v14, "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    :cond_3a9
    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v27, v15

    .end local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v14    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .restart local v20    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v21    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    invoke-virtual {v8, v4, v10}, Lsun/security/provider/certpath/ForwardBuilder;->addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V

    .line 518
    invoke-virtual {v5, v4}, Lsun/security/provider/certpath/ForwardState;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 524
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    invoke-virtual {v6, v1}, Lsun/security/provider/certpath/Vertex;->setIndex(I)V

    .line 528
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v11, v4

    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .local v11, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v4, p3

    move-object v12, v5

    .end local v5    # "nextState":Lsun/security/provider/certpath/ForwardState;
    .local v12, "nextState":Lsun/security/provider/certpath/ForwardState;
    move-object/from16 v5, p4

    move-object v13, v6

    .end local v6    # "vertex":Lsun/security/provider/certpath/Vertex;
    .local v13, "vertex":Lsun/security/provider/certpath/Vertex;
    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lsun/security/provider/certpath/SunCertPathBuilder;->depthFirstSearchForward(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ForwardState;Lsun/security/provider/certpath/ForwardBuilder;Ljava/util/List;Ljava/util/LinkedList;)V

    .line 534
    iget-boolean v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    if-eqz v0, :cond_3de

    .line 535
    return-void

    .line 543
    :cond_3de
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3e7

    .line 544
    const-string v1, "SunCertPathBuilder.depthFirstSearchForward(): backtracking"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 546
    :cond_3e7
    invoke-virtual {v8, v10}, Lsun/security/provider/certpath/ForwardBuilder;->removeFinalCertFromPath(Ljava/util/LinkedList;)V

    .line 548
    .end local v11    # "cert":Ljava/security/cert/X509Certificate;
    .end local v12    # "nextState":Lsun/security/provider/certpath/ForwardState;
    .end local v13    # "vertex":Lsun/security/provider/certpath/Vertex;
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v15, v27

    goto/16 :goto_66

    .line 292
    .end local v20    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v21    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .restart local v4    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "nextState":Lsun/security/provider/certpath/ForwardState;
    .restart local v6    # "vertex":Lsun/security/provider/certpath/Vertex;
    .local v13, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v14    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    :catch_3f6
    move-exception v0

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v27, v15

    move-object v13, v6

    move-object v1, v0

    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "nextState":Lsun/security/provider/certpath/ForwardState;
    .end local v6    # "vertex":Lsun/security/provider/certpath/Vertex;
    .end local v14    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .restart local v11    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v12    # "nextState":Lsun/security/provider/certpath/ForwardState;
    .local v13, "vertex":Lsun/security/provider/certpath/Vertex;
    .restart local v20    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v21    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    move-object v0, v1

    .line 293
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    sget-object v1, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_41d

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SunCertPathBuilder.depthFirstSearchForward(): validation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 298
    :cond_41d
    invoke-virtual {v13, v0}, Lsun/security/provider/certpath/Vertex;->setThrowable(Ljava/lang/Throwable;)V

    .line 299
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v15, v27

    goto/16 :goto_66

    .line 549
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v11    # "cert":Ljava/security/cert/X509Certificate;
    .end local v12    # "nextState":Lsun/security/provider/certpath/ForwardState;
    .end local v20    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v21    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .local v13, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v14    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    :cond_42c
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .registers 5
    .param p1, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 121
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1d

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SunCertPathBuilder.engineBuild("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 125
    :cond_1d
    invoke-static {p1}, Lsun/security/provider/certpath/PKIX;->checkBuilderParams(Ljava/security/cert/CertPathParameters;)Lsun/security/provider/certpath/PKIX$BuilderParams;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 126
    invoke-direct {p0}, Lsun/security/provider/certpath/SunCertPathBuilder;->build()Ljava/security/cert/PKIXCertPathBuilderResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;
    .registers 2

    .line 96
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker;

    invoke-direct {v0}, Lsun/security/provider/certpath/RevocationChecker;-><init>()V

    return-object v0
.end method
