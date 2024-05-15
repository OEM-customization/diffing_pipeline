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
    .catch Ljava/security/GeneralSecurityException; {:try_start_11 .. :try_end_14} :catch_57
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_57

    .line 170
    nop

    .line 174
    :try_start_15
    iget-boolean v3, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    if-eqz v3, :cond_3d

    .line 175
    sget-object v1, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_22

    .line 176
    const-string v3, "SunCertPathBuilder.engineBuild() pathCompleted"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 182
    :cond_22
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
    :try_end_3c
    .catch Ljava/security/cert/CertificateException; {:try_start_15 .. :try_end_3c} :catch_3f

    .line 184
    return-object v1

    .line 198
    :cond_3d
    nop

    .line 200
    return-object v1

    .line 189
    :catch_3f
    move-exception v1

    .line 190
    .local v1, "e":Ljava/security/cert/CertificateException;
    sget-object v3, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_4c

    .line 191
    const-string v4, "SunCertPathBuilder.engineBuild() exception in wrap-up"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 195
    :cond_4c
    new-instance v3, Lsun/security/provider/certpath/SunCertPathBuilderException;

    new-instance v4, Lsun/security/provider/certpath/AdjacencyList;

    invoke-direct {v4, p2}, Lsun/security/provider/certpath/AdjacencyList;-><init>(Ljava/util/List;)V

    invoke-direct {v3, v0, v1, v4}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsun/security/provider/certpath/AdjacencyList;)V

    throw v3

    .line 161
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_57
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_64

    .line 163
    const-string v4, "SunCertPathBuilder.engineBuild() exception in build"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    :cond_64
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
    .registers 39
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
    iget-object v1, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 264
    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certStores()Ljava/util/List;

    move-result-object v1

    move-object/from16 v12, p2

    invoke-virtual {v8, v12, v1}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v13

    .line 265
    .local v13, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-static {v13, v9}, Lsun/security/provider/certpath/SunCertPathBuilder;->addVertices(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 266
    .local v14, "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    if-eqz v0, :cond_60

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
    :cond_60
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_64
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_424

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
    :try_start_7c
    invoke-virtual {v8, v4, v5, v10}, Lsun/security/provider/certpath/ForwardBuilder;->verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    :try_end_7f
    .catch Ljava/security/GeneralSecurityException; {:try_start_7c .. :try_end_7f} :catch_3ec

    .line 300
    nop

    .line 311
    invoke-virtual {v8, v4}, Lsun/security/provider/certpath/ForwardBuilder;->isPathCompleted(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_39f

    .line 313
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_8f

    .line 314
    const-string v2, "SunCertPathBuilder.depthFirstSearchForward(): commencing final verification"

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 317
    :cond_8f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    .local v2, "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v3, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    const/4 v1, 0x0

    if-nez v3, :cond_a0

    .line 326
    invoke-interface {v2, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 329
    :cond_a0
    nop

    .line 330
    const-string v3, "2.5.29.32.0"

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 332
    .local v3, "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v23, Lsun/security/provider/certpath/PolicyNodeImpl;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const-string v18, "2.5.29.32.0"

    move-object/from16 v16, v23

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v22}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .line 335
    .local v23, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v16

    .line 336
    .local v24, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    new-instance v25, Lsun/security/provider/certpath/PolicyChecker;

    iget-object v1, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 337
    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->initialPolicies()Ljava/util/Set;

    move-result-object v17

    .line 338
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v18

    iget-object v1, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 339
    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->explicitPolicyRequired()Z

    move-result v19

    iget-object v1, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 340
    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->policyMappingInhibited()Z

    move-result v20

    iget-object v1, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 341
    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->anyPolicyInhibited()Z

    move-result v21

    iget-object v1, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 342
    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->policyQualifiersRejected()Z

    move-result v22

    move-object/from16 v16, v25

    invoke-direct/range {v16 .. v23}, Lsun/security/provider/certpath/PolicyChecker;-><init>(Ljava/util/Set;IZZZZLsun/security/provider/certpath/PolicyNodeImpl;)V

    move-object/from16 v1, v25

    .line 344
    .local v1, "policyChecker":Lsun/security/provider/certpath/PolicyChecker;
    move-object/from16 v16, v3

    move-object/from16 v3, v24

    .end local v24    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .local v3, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .local v16, "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v11, Lsun/security/provider/certpath/AlgorithmChecker;

    iget-object v12, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-direct {v11, v12}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    const/4 v11, 0x0

    .line 350
    .local v11, "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    invoke-virtual {v5}, Lsun/security/provider/certpath/ForwardState;->keyParamsNeeded()Z

    move-result v12

    if-eqz v12, :cond_15e

    .line 351
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    .line 352
    .local v12, "rootKey":Ljava/security/PublicKey;
    move-object/from16 v17, v11

    .end local v11    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    .local v17, "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    iget-object v11, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v11}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v11

    if-nez v11, :cond_138

    .line 353
    iget-object v11, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v11}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    .line 354
    if-eqz v0, :cond_135

    .line 355
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v13

    .end local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .local v18, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const-string v13, "SunCertPathBuilder.depthFirstSearchForward using buildParams public key: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 355
    invoke-virtual {v0, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_13a

    .line 354
    .end local v18    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    :cond_135
    move-object/from16 v18, v13

    .end local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v18    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    goto :goto_13a

    .line 352
    .end local v18    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    :cond_138
    move-object/from16 v18, v13

    .line 360
    .end local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v18    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    :goto_13a
    new-instance v0, Ljava/security/cert/TrustAnchor;

    .line 361
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    const/4 v13, 0x0

    invoke-direct {v0, v11, v12, v13}, Ljava/security/cert/TrustAnchor;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V

    .line 364
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    new-instance v11, Lsun/security/provider/certpath/BasicChecker;

    iget-object v13, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v13}, Lsun/security/provider/certpath/PKIX$BuilderParams;->date()Ljava/util/Date;

    move-result-object v13

    move-object/from16 v19, v12

    .end local v12    # "rootKey":Ljava/security/PublicKey;
    .local v19, "rootKey":Ljava/security/PublicKey;
    iget-object v12, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 365
    invoke-virtual {v12}, Lsun/security/provider/certpath/PKIX$BuilderParams;->sigProvider()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v20, v14

    const/4 v14, 0x1

    .end local v14    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .local v20, "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    invoke-direct {v11, v0, v13, v12, v14}, Lsun/security/provider/certpath/BasicChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/util/Date;Ljava/lang/String;Z)V

    .line 367
    .end local v17    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    .restart local v11    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_164

    .line 350
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v18    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v19    # "rootKey":Ljava/security/PublicKey;
    .end local v20    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .restart local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v14    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    :cond_15e
    move-object/from16 v17, v11

    move-object/from16 v18, v13

    move-object/from16 v20, v14

    .line 370
    .end local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v14    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .restart local v18    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v20    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    :goto_164
    iget-object v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    iget-object v12, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->cf:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v12, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v12

    invoke-virtual {v0, v12}, Lsun/security/provider/certpath/PKIX$BuilderParams;->setCertPath(Ljava/security/cert/CertPath;)V

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "revCheckerAdded":Z
    iget-object v12, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v12}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certPathCheckers()Ljava/util/List;

    move-result-object v12

    .line 374
    .local v12, "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v0

    .end local v0    # "revCheckerAdded":Z
    .local v14, "revCheckerAdded":Z
    :goto_17b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    .line 375
    .local v0, "ckr":Ljava/security/cert/PKIXCertPathChecker;
    move-object/from16 v17, v13

    instance-of v13, v0, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v13, :cond_1b4

    .line 376
    if-nez v14, :cond_1aa

    .line 380
    const/4 v13, 0x1

    .line 382
    .end local v14    # "revCheckerAdded":Z
    .local v13, "revCheckerAdded":Z
    instance-of v14, v0, Lsun/security/provider/certpath/RevocationChecker;

    if-eqz v14, :cond_1a3

    .line 383
    move-object v14, v0

    check-cast v14, Lsun/security/provider/certpath/RevocationChecker;

    move-object/from16 v19, v0

    .end local v0    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .local v19, "ckr":Ljava/security/cert/PKIXCertPathChecker;
    iget-object v0, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    move/from16 v21, v13

    .end local v13    # "revCheckerAdded":Z
    .local v21, "revCheckerAdded":Z
    iget-object v13, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v14, v0, v13}, Lsun/security/provider/certpath/RevocationChecker;->init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    goto :goto_1a7

    .line 382
    .end local v19    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .end local v21    # "revCheckerAdded":Z
    .restart local v0    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v13    # "revCheckerAdded":Z
    :cond_1a3
    move-object/from16 v19, v0

    move/from16 v21, v13

    .line 387
    .end local v0    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .end local v13    # "revCheckerAdded":Z
    .restart local v21    # "revCheckerAdded":Z
    :goto_1a7
    move/from16 v14, v21

    goto :goto_1b6

    .line 377
    .end local v21    # "revCheckerAdded":Z
    .restart local v0    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v14    # "revCheckerAdded":Z
    :cond_1aa
    move-object/from16 v19, v0

    .end local v0    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v19    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v13, "Only one PKIXRevocationChecker can be specified"

    invoke-direct {v0, v13}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    .end local v19    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v0    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    :cond_1b4
    move-object/from16 v19, v0

    .line 387
    .end local v0    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    :goto_1b6
    move-object/from16 v13, v17

    goto :goto_17b

    .line 390
    :cond_1b9
    iget-object v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->revocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d2

    if-nez v14, :cond_1d2

    .line 391
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker;

    iget-object v13, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    move/from16 v17, v14

    .end local v14    # "revCheckerAdded":Z
    .local v17, "revCheckerAdded":Z
    iget-object v14, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-direct {v0, v13, v14}, Lsun/security/provider/certpath/RevocationChecker;-><init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d4

    .line 390
    .end local v17    # "revCheckerAdded":Z
    .restart local v14    # "revCheckerAdded":Z
    :cond_1d2
    move/from16 v17, v14

    .line 395
    .end local v14    # "revCheckerAdded":Z
    .restart local v17    # "revCheckerAdded":Z
    :goto_1d4
    invoke-interface {v3, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 400
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_1d9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_355

    .line 401
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/security/cert/X509Certificate;

    .line 402
    .local v14, "currCert":Ljava/security/cert/X509Certificate;
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_207

    .line 403
    move-object/from16 v19, v2

    .end local v2    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v19, "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v12

    .end local v12    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .local v21, "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    const-string v12, "current subject = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_20b

    .line 402
    .end local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v21    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v2    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v12    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_207
    move-object/from16 v19, v2

    move-object/from16 v21, v12

    .line 405
    .end local v2    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v12    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v21    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :goto_20b
    nop

    .line 406
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 407
    .local v0, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_218

    .line 408
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    move-object v2, v0

    goto :goto_219

    .line 407
    :cond_218
    move-object v2, v0

    .line 411
    .end local v0    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_219
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/PKIXCertPathChecker;

    .line 412
    .local v12, "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v12}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    move-result v22

    if-nez v22, :cond_29e

    .line 413
    if-nez v13, :cond_249

    .line 414
    move-object/from16 v22, v0

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    .line 419
    instance-of v0, v12, Lsun/security/provider/certpath/AlgorithmChecker;

    if-eqz v0, :cond_246

    .line 420
    move-object v0, v12

    check-cast v0, Lsun/security/provider/certpath/AlgorithmChecker;

    move-object/from16 v24, v3

    .end local v3    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v24    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    iget-object v3, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 421
    invoke-virtual {v0, v3}, Lsun/security/provider/certpath/AlgorithmChecker;->trySetTrustAnchor(Ljava/security/cert/TrustAnchor;)V

    goto :goto_24d

    .line 419
    .end local v24    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v3    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_246
    move-object/from16 v24, v3

    .end local v3    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v24    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    goto :goto_24d

    .line 413
    .end local v24    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v3    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_249
    move-object/from16 v22, v0

    move-object/from16 v24, v3

    .line 426
    .end local v3    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v24    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :goto_24d
    :try_start_24d
    invoke-virtual {v12, v14, v2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_250
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_24d .. :try_end_250} :catch_253

    .line 440
    move-object/from16 v26, v15

    goto :goto_2a6

    .line 427
    :catch_253
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 428
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    sget-object v3, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_275

    .line 429
    sget-object v3, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    move-object/from16 v25, v12

    .end local v12    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .local v25, "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v15

    const-string v15, "SunCertPathBuilder.depthFirstSearchForward(): final verification failed: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 430
    invoke-virtual {v3, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_279

    .line 428
    .end local v25    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v12    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_275
    move-object/from16 v25, v12

    move-object/from16 v26, v15

    .line 434
    .end local v12    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v25    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    :goto_279
    iget-object v3, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v3

    invoke-interface {v3, v14}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_28f

    .line 435
    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v3

    sget-object v12, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-eq v3, v12, :cond_28e

    goto :goto_28f

    .line 436
    :cond_28e
    throw v0

    .line 438
    :cond_28f
    :goto_28f
    invoke-virtual {v6, v0}, Lsun/security/provider/certpath/Vertex;->setThrowable(Ljava/lang/Throwable;)V

    .line 439
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    move-object/from16 v15, v26

    goto/16 :goto_64

    .line 412
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v24    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v25    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v3    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v12    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_29e
    move-object/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v25, v12

    move-object/from16 v26, v15

    .line 442
    .end local v3    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v12    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v24    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :goto_2a6
    move-object/from16 v0, v22

    move-object/from16 v3, v24

    move-object/from16 v15, v26

    goto/16 :goto_21d

    .line 451
    .end local v24    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v3    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_2ae
    move-object/from16 v24, v3

    move-object/from16 v26, v15

    .end local v3    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v24    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    iget-object v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certPathCheckers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2bc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    .line 453
    .local v3, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v3}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    move-result v12

    if-eqz v12, :cond_2d8

    .line 454
    nop

    .line 455
    invoke-virtual {v3}, Ljava/security/cert/PKIXCertPathChecker;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v12

    .line 456
    .local v12, "suppExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v12, :cond_2d8

    .line 457
    invoke-interface {v2, v12}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 460
    .end local v3    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v12    # "suppExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2d8
    goto :goto_2bc

    .line 462
    :cond_2d9
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_349

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

    if-eqz v0, :cond_337

    goto :goto_349

    .line 475
    :cond_337
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, -0x1

    sget-object v32, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    const-string v28, "unrecognized critical extension(s)"

    move-object/from16 v27, v0

    invoke-direct/range {v27 .. v32}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 400
    .end local v2    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "currCert":Ljava/security/cert/X509Certificate;
    :cond_349
    :goto_349
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v19

    move-object/from16 v12, v21

    move-object/from16 v3, v24

    move-object/from16 v15, v26

    goto/16 :goto_1d9

    .end local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v21    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v24    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .local v2, "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v3, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .local v12, "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_355
    move-object/from16 v19, v2

    move-object/from16 v24, v3

    move-object/from16 v21, v12

    .line 481
    .end local v2    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v12    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v13    # "i":I
    .restart local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v21    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v24    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_364

    .line 482
    const-string v2, "SunCertPathBuilder.depthFirstSearchForward(): final verification succeeded - path completed!"

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 484
    :cond_364
    const/4 v0, 0x1

    iput-boolean v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    .line 491
    iget-object v0, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_372

    .line 492
    invoke-virtual {v8, v4, v10}, Lsun/security/provider/certpath/ForwardBuilder;->addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V

    .line 494
    :cond_372
    iget-object v0, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    iput-object v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 499
    if-eqz v11, :cond_37f

    .line 500
    invoke-virtual {v11}, Lsun/security/provider/certpath/BasicChecker;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    goto :goto_398

    .line 503
    :cond_37f
    invoke-virtual/range {p5 .. p5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38c

    .line 504
    iget-object v0, v8, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .local v0, "finalCert":Ljava/security/cert/Certificate;
    goto :goto_392

    .line 506
    .end local v0    # "finalCert":Ljava/security/cert/Certificate;
    :cond_38c
    invoke-virtual/range {p5 .. p5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 508
    .restart local v0    # "finalCert":Ljava/security/cert/Certificate;
    :goto_392
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    .line 511
    .end local v0    # "finalCert":Ljava/security/cert/Certificate;
    :goto_398
    invoke-virtual {v1}, Lsun/security/provider/certpath/PolicyChecker;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v0

    iput-object v0, v7, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    .line 512
    return-void

    .line 514
    .end local v1    # "policyChecker":Lsun/security/provider/certpath/PolicyChecker;
    .end local v11    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    .end local v16    # "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "revCheckerAdded":Z
    .end local v18    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v20    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .end local v21    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v23    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v24    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .local v13, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .local v14, "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    :cond_39f
    move-object/from16 v18, v13

    move-object/from16 v20, v14

    move-object/from16 v26, v15

    .end local v13    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v14    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .restart local v18    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v20    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    invoke-virtual {v8, v4, v10}, Lsun/security/provider/certpath/ForwardBuilder;->addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V

    .line 518
    invoke-virtual {v5, v4}, Lsun/security/provider/certpath/ForwardState;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 524
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lsun/security/provider/certpath/Vertex;->setIndex(I)V

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

    if-eqz v0, :cond_3d4

    .line 535
    return-void

    .line 543
    :cond_3d4
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3dd

    .line 544
    const-string v1, "SunCertPathBuilder.depthFirstSearchForward(): backtracking"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 546
    :cond_3dd
    invoke-virtual {v8, v10}, Lsun/security/provider/certpath/ForwardBuilder;->removeFinalCertFromPath(Ljava/util/LinkedList;)V

    .line 548
    .end local v11    # "cert":Ljava/security/cert/X509Certificate;
    .end local v12    # "nextState":Lsun/security/provider/certpath/ForwardState;
    .end local v13    # "vertex":Lsun/security/provider/certpath/Vertex;
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    move-object/from16 v15, v26

    goto/16 :goto_64

    .line 292
    .end local v18    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v20    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .restart local v4    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "nextState":Lsun/security/provider/certpath/ForwardState;
    .restart local v6    # "vertex":Lsun/security/provider/certpath/Vertex;
    .local v13, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v14    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    :catch_3ec
    move-exception v0

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v18, v13

    move-object/from16 v20, v14

    move-object/from16 v26, v15

    move-object v13, v6

    move-object v1, v0

    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "nextState":Lsun/security/provider/certpath/ForwardState;
    .end local v6    # "vertex":Lsun/security/provider/certpath/Vertex;
    .end local v14    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .restart local v11    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v12    # "nextState":Lsun/security/provider/certpath/ForwardState;
    .local v13, "vertex":Lsun/security/provider/certpath/Vertex;
    .restart local v18    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v20    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    move-object v0, v1

    .line 293
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    sget-object v1, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_415

    .line 294
    sget-object v1, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

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
    :cond_415
    invoke-virtual {v13, v0}, Lsun/security/provider/certpath/Vertex;->setThrowable(Ljava/lang/Throwable;)V

    .line 299
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    move-object/from16 v15, v26

    goto/16 :goto_64

    .line 549
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v11    # "cert":Ljava/security/cert/X509Certificate;
    .end local v12    # "nextState":Lsun/security/provider/certpath/ForwardState;
    .end local v18    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v20    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .local v13, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .restart local v14    # "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    :cond_424
    return-void
.end method


# virtual methods
.method public whitelist test-api engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
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

.method public whitelist test-api engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;
    .registers 2

    .line 96
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker;

    invoke-direct {v0}, Lsun/security/provider/certpath/RevocationChecker;-><init>()V

    return-object v0
.end method
