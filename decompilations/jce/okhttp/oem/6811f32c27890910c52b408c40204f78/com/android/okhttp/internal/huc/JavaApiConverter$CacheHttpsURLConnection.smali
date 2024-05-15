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
.field private final delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    .line 801
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    .line 802
    return-void
.end method


# virtual methods
.method public getContentLengthLong()J
    .registers 3

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .prologue
    .line 813
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap1()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 821
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap1()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected handshake()Lcom/android/okhttp/Handshake;
    .registers 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->-get0(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v0

    return-object v0
.end method

.method public setFixedLengthStreamingMode(J)V
    .registers 4
    .param p1, "contentLength"    # J

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->setFixedLengthStreamingMode(J)V

    .line 830
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 3
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 809
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3
    .param p1, "socketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 817
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
