.class public final Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;
.super Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;
.source "HttpsURLConnectionImpl.java"


# instance fields
.field private final greylist delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    .line 44
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;

    .line 35
    new-instance v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;-><init>(Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;)V

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/URLFilter;)V
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p3, "filter"    # Lcom/android/okhttp/internal/URLFilter;

    .line 39
    new-instance v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/URLFilter;)V

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;-><init>(Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;)V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api connect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->connect()V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api disconnect()V
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->disconnect()V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api getAllowUserInteraction()Z
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getConnectTimeout()I
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api getContentEncoding()Ljava/lang/String;
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getContentLength()I
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getContentLengthLong()J
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getContentType()Ljava/lang/String;
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getDate()J
    .registers 3

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getDefaultUseCaches()Z
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getDoInput()Z
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getDoOutput()Z
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getErrorStream()Ljava/io/InputStream;
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getExpiration()J
    .registers 3

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getHeaderField(I)Ljava/lang/String;
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 4

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 3

    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api getHeaderFieldKey(I)Ljava/lang/String;
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api getHeaderFieldLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 94
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getHeaderFields()Ljava/util/Map;
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getIfModifiedSince()J
    .registers 3

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getInstanceFollowRedirects()Z
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getLastModified()J
    .registers 3

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getReadTimeout()I
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getRequestMethod()Ljava/lang/String;
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getRequestProperties()Ljava/util/Map;
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getServerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getURL()Ljava/net/URL;
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getUseCaches()Z
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method protected blacklist handshake()Lcom/android/okhttp/Handshake;
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-eqz v0, :cond_22

    .line 55
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 56
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v0

    goto :goto_21

    .line 57
    :cond_1d
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->handshake:Lcom/android/okhttp/Handshake;

    .line 55
    :goto_21
    return-object v0

    .line 49
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api setAllowUserInteraction(Z)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api setChunkedStreamingMode(I)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api setConnectTimeout(I)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api setDefaultUseCaches(Z)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api setDoInput(Z)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api setDoOutput(Z)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api setFixedLengthStreamingMode(I)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public whitelist core-platform-api test-api setFixedLengthStreamingMode(J)V
    .registers 4
    .param p1, "contentLength"    # J

    .line 90
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    .line 91
    return-void
.end method

.method public whitelist core-platform-api test-api setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 3
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .line 61
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/android/okhttp/OkHttpClient;

    .line 62
    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api setIfModifiedSince(J)V
    .registers 3

    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api setInstanceFollowRedirects(Z)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api setReadTimeout(I)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api setRequestMethod(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist core-platform-api test-api setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 4
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 74
    if-eqz p1, :cond_a

    .line 78
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/OkHttpClient;

    .line 79
    return-void

    .line 75
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api setUseCaches(Z)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api usingProxy()Z
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
