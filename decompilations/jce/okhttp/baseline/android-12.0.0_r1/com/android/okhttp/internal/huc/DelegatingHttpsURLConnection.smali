.class abstract Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "DelegatingHttpsURLConnection.java"


# instance fields
.field private final blacklist delegate:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor blacklist <init>(Ljava/net/HttpURLConnection;)V
    .registers 3
    .param p1, "delegate"    # Ljava/net/HttpURLConnection;

    .line 45
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 46
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist test-api addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public whitelist test-api connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->connected:Z

    .line 90
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 91
    return-void
.end method

.method public whitelist test-api disconnect()V
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 95
    return-void
.end method

.method public whitelist test-api getAllowUserInteraction()Z
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getCipherSuite()Ljava/lang/String;
    .registers 3

    .line 60
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v0

    .line 61
    .local v0, "handshake":Lcom/android/okhttp/Handshake;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public whitelist test-api getConnectTimeout()I
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p1, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getContentEncoding()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getContentLength()I
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getContentType()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDate()J
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getDefaultUseCaches()Z
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getDoInput()Z
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getDoOutput()Z
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getErrorStream()Ljava/io/InputStream;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getExpiration()J
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getHeaderField(I)Ljava/lang/String;
    .registers 3
    .param p1, "pos"    # I

    .line 175
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 195
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 199
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .param p1, "position"    # I

    .line 203
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
.end method

.method public whitelist test-api getIfModifiedSince()J
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getInstanceFollowRedirects()Z
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getLastModified()J
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 5

    .line 65
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v0

    .line 66
    .local v0, "handshake":Lcom/android/okhttp/Handshake;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 67
    :cond_8
    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v2

    .line 68
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    :cond_1e
    return-object v1
.end method

.method public whitelist test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .line 84
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v0

    .line 85
    .local v0, "handshake":Lcom/android/okhttp/Handshake;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->localPrincipal()Ljava/security/Principal;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v0

    .line 80
    .local v0, "handshake":Lcom/android/okhttp/Handshake;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->peerPrincipal()Ljava/security/Principal;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public whitelist test-api getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getReadTimeout()I
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getRequestMethod()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRequestProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "field"    # Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.end method

.method public whitelist test-api getServerCertificates()[Ljava/security/cert/Certificate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v0

    .line 73
    .local v0, "handshake":Lcom/android/okhttp/Handshake;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 74
    :cond_8
    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v2

    .line 75
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    :cond_1e
    return-object v1
.end method

.method public whitelist test-api getURL()Ljava/net/URL;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getUseCaches()Z
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method protected abstract blacklist handshake()Lcom/android/okhttp/Handshake;
.end method

.method public whitelist test-api setAllowUserInteraction(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .line 239
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 240
    return-void
.end method

.method public whitelist test-api setChunkedStreamingMode(I)V
    .registers 3
    .param p1, "chunkLength"    # I

    .line 291
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 292
    return-void
.end method

.method public whitelist test-api setConnectTimeout(I)V
    .registers 3
    .param p1, "timeoutMillis"    # I

    .line 267
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 268
    return-void
.end method

.method public whitelist test-api setDefaultUseCaches(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .line 243
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 244
    return-void
.end method

.method public whitelist test-api setDoInput(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .line 247
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 248
    return-void
.end method

.method public whitelist test-api setDoOutput(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .line 251
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 252
    return-void
.end method

.method public whitelist test-api setFixedLengthStreamingMode(I)V
    .registers 3
    .param p1, "contentLength"    # I

    .line 287
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 288
    return-void
.end method

.method public abstract whitelist test-api setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
.end method

.method public whitelist test-api setIfModifiedSince(J)V
    .registers 4
    .param p1, "newValue"    # J

    .line 255
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 256
    return-void
.end method

.method public whitelist test-api setInstanceFollowRedirects(Z)V
    .registers 3
    .param p1, "followRedirects"    # Z

    .line 126
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 127
    return-void
.end method

.method public whitelist test-api setReadTimeout(I)V
    .registers 3
    .param p1, "timeoutMillis"    # I

    .line 275
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 276
    return-void
.end method

.method public whitelist test-api setRequestMethod(Ljava/lang/String;)V
    .registers 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public whitelist test-api setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public abstract whitelist test-api setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
.end method

.method public whitelist test-api setUseCaches(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .line 263
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 264
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api usingProxy()Z
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
