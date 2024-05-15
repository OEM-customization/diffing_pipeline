.class final Lcom/android/okhttp/internal/huc/JavaApiConverter$1;
.super Ljava/net/SecureCacheResponse;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Lcom/android/okhttp/ResponseBody;

.field final synthetic val$handshake:Lcom/android/okhttp/Handshake;

.field final synthetic val$headers:Lcom/android/okhttp/Headers;

.field final synthetic val$response:Lcom/android/okhttp/Response;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Handshake;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseBody;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    iput-object p2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$headers:Lcom/android/okhttp/Headers;

    iput-object p3, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$response:Lcom/android/okhttp/Response;

    iput-object p4, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$body:Lcom/android/okhttp/ResponseBody;

    .line 294
    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$body:Lcom/android/okhttp/ResponseBody;

    if-nez v0, :cond_6

    return-object v1

    .line 337
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$body:Lcom/android/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 297
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$headers:Lcom/android/okhttp/Headers;

    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$response:Lcom/android/okhttp/Response;

    invoke-static {v1}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificateChain()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    if-nez v2, :cond_6

    return-object v1

    .line 304
    :cond_6
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v2}, Lcom/android/okhttp/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    .line 305
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    .end local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_12
    return-object v0

    .restart local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_13
    move-object v0, v1

    goto :goto_12
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    if-nez v0, :cond_6

    return-object v1

    .line 325
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->localPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    if-nez v0, :cond_6

    return-object v1

    .line 319
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->peerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificateChain()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    if-nez v2, :cond_6

    return-object v1

    .line 312
    :cond_6
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v2}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    .line 313
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    .end local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_12
    return-object v0

    .restart local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_13
    move-object v0, v1

    goto :goto_12
.end method
