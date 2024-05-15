.class public Ljavax/net/ssl/SSLParameters;
.super Ljava/lang/Object;
.source "SSLParameters.java"


# instance fields
.field private algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field private cipherSuites:[Ljava/lang/String;

.field private identificationAlgorithm:Ljava/lang/String;

.field private needClientAuth:Z

.field private preferLocalCipherSuites:Z

.field private protocols:[Ljava/lang/String;

.field private sniMatchers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private sniNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation
.end field

.field private wantClientAuth:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    .line 75
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    .line 88
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    .line 75
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    .line 100
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "cipherSuites"    # [Ljava/lang/String;
    .param p2, "protocols"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    .line 75
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    .line 115
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p2}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private static clone([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "s"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 120
    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    return-object v0
.end method

.method public getCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndpointIdentificationAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->identificationAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 189
    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    return v0
.end method

.method public getProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSNIMatchers()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 427
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    if-eqz v0, :cond_22

    .line 428
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 429
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 432
    :cond_1d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 436
    :cond_22
    return-object v1
.end method

.method public final getServerNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    if-eqz v0, :cond_22

    .line 353
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 354
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 357
    :cond_1d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 361
    :cond_22
    return-object v1
.end method

.method public final getUseCipherSuitesOrder()Z
    .registers 2

    .prologue
    .line 465
    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->preferLocalCipherSuites:Z

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 169
    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    return v0
.end method

.method public setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    .registers 2
    .param p1, "constraints"    # Ljava/security/AlgorithmConstraints;

    .prologue
    .line 231
    iput-object p1, p0, Ljavax/net/ssl/SSLParameters;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 232
    return-void
.end method

.method public setCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p1}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .registers 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Ljavax/net/ssl/SSLParameters;->identificationAlgorithm:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .param p1, "needClientAuth"    # Z

    .prologue
    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    .line 200
    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    .line 201
    return-void
.end method

.method public setProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {p1}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    .line 161
    return-void
.end method

.method public final setSNIMatchers(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "matchers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/net/ssl/SNIMatcher;>;"
    const/4 v2, 0x0

    .line 389
    if-eqz p1, :cond_59

    .line 390
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_52

    .line 391
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    .line 392
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "matcher$iterator":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SNIMatcher;

    .line 393
    .local v0, "matcher":Ljavax/net/ssl/SNIMatcher;
    iget-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    invoke-virtual {v0}, Ljavax/net/ssl/SNIMatcher;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 395
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Duplicated server name of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 397
    invoke-virtual {v0}, Ljavax/net/ssl/SNIMatcher;->getType()I

    move-result v4

    .line 396
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 401
    .end local v0    # "matcher":Ljavax/net/ssl/SNIMatcher;
    .end local v1    # "matcher$iterator":Ljava/util/Iterator;
    :cond_52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    .line 406
    :cond_58
    :goto_58
    return-void

    .line 404
    :cond_59
    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    goto :goto_58
.end method

.method public final setServerNames(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    const/4 v2, 0x0

    .line 294
    if-eqz p1, :cond_59

    .line 295
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_52

    .line 296
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    .line 297
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "serverName$iterator":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SNIServerName;

    .line 298
    .local v0, "serverName":Ljavax/net/ssl/SNIServerName;
    iget-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    invoke-virtual {v0}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 300
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Duplicated server name of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 302
    invoke-virtual {v0}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v4

    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    .end local v0    # "serverName":Ljavax/net/ssl/SNIServerName;
    .end local v1    # "serverName$iterator":Ljava/util/Iterator;
    :cond_52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    .line 311
    :cond_58
    :goto_58
    return-void

    .line 309
    :cond_59
    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    goto :goto_58
.end method

.method public final setUseCipherSuitesOrder(Z)V
    .registers 2
    .param p1, "honorOrder"    # Z

    .prologue
    .line 451
    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->preferLocalCipherSuites:Z

    .line 452
    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .param p1, "wantClientAuth"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    .line 181
    return-void
.end method
