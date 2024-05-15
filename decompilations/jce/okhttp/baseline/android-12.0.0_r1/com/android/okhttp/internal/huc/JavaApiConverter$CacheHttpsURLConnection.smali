.class final Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;
.super Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheHttpsURLConnection"
.end annotation


# instance fields
.field private final blacklist delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    .line 802
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    .line 803
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    .line 804
    return-void
.end method


# virtual methods
.method public whitelist test-api getContentLengthLong()J
    .registers 3

    .line 827
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getHeaderFieldLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 835
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .line 815
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestSslAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$400()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 823
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestSslAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$400()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected blacklist handshake()Lcom/android/okhttp/Handshake;
    .registers 2

    .line 807
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    # getter for: Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->access$300(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setFixedLengthStreamingMode(J)V
    .registers 4
    .param p1, "contentLength"    # J

    .line 831
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->setFixedLengthStreamingMode(J)V

    .line 832
    return-void
.end method

.method public whitelist test-api setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 3
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .line 811
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3
    .param p1, "socketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 819
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
