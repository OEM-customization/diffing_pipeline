.class public final Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;
.super Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;
.source "HttpsURLConnectionImpl.java"


# instance fields
.field private final delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    .line 39
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;

    .prologue
    .line 30
    new-instance v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;-><init>(Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/URLFilter;)V
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p3, "filter"    # Lcom/android/okhttp/internal/URLFilter;

    .prologue
    .line 34
    new-instance v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/URLFilter;)V

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;-><init>(Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;)V

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic connect()V
    .registers 1

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->connect()V

    return-void
.end method

.method public bridge synthetic disconnect()V
    .registers 1

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->disconnect()V

    return-void
.end method

.method public bridge synthetic getAllowUserInteraction()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConnectTimeout()I
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContent()Ljava/lang/Object;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentLength()I
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentLengthLong()J
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDate()J
    .registers 3

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDefaultUseCaches()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDoInput()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDoOutput()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getErrorStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExpiration()J
    .registers 3

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHeaderField(I)Ljava/lang/String;
    .registers 3

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHeaderFields()Ljava/util/Map;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIfModifiedSince()J
    .registers 3

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstanceFollowRedirects()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getLastModified()J
    .registers 3

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPeerPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPermission()Ljava/security/Permission;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReadTimeout()I
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRequestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestProperties()Ljava/util/Map;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResponseCode()I
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getResponseMessage()Ljava/lang/String;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getServerCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getURL()Ljava/net/URL;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUseCaches()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method protected handshake()Lcom/android/okhttp/Handshake;
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-nez v0, :cond_f

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_f
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 51
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v0

    .line 50
    :goto_25
    return-object v0

    .line 52
    :cond_26
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->handshake:Lcom/android/okhttp/Handshake;

    goto :goto_25
.end method

.method public bridge synthetic setAllowUserInteraction(Z)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public bridge synthetic setChunkedStreamingMode(I)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public bridge synthetic setConnectTimeout(I)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public bridge synthetic setDefaultUseCaches(Z)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic setDoInput(Z)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public bridge synthetic setDoOutput(Z)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public bridge synthetic setFixedLengthStreamingMode(I)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .registers 4
    .param p1, "contentLength"    # J

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    .line 77
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 3
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/android/okhttp/OkHttpClient;

    .line 57
    return-void
.end method

.method public bridge synthetic setIfModifiedSince(J)V
    .registers 4

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public bridge synthetic setInstanceFollowRedirects(Z)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public bridge synthetic setReadTimeout(I)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public bridge synthetic setRequestMethod(Ljava/lang/String;)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/OkHttpClient;

    .line 65
    return-void
.end method

.method public bridge synthetic setUseCaches(Z)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic usingProxy()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
