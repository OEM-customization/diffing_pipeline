.class final Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheHttpURLConnection"
.end annotation


# instance fields
.field private final blacklist request:Lcom/android/okhttp/Request;

.field private final blacklist response:Lcom/android/okhttp/Response;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/Response;)V
    .registers 4
    .param p1, "response"    # Lcom/android/okhttp/Response;

    .line 542
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 543
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    .line 544
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->connected:Z

    .line 548
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_20

    move v1, v0

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    iput-boolean v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->doOutput:Z

    .line 549
    iput-boolean v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->doInput:Z

    .line 550
    iput-boolean v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->useCaches:Z

    .line 553
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->method:Ljava/lang/String;

    .line 554
    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)Lcom/android/okhttp/Response;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    .line 536
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 577
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api disconnect()V
    .registers 2

    .line 565
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api getAllowUserInteraction()Z
    .registers 2

    .line 763
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api getConnectTimeout()I
    .registers 2

    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$200()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p1, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 723
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$200()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api getDefaultUseCaches()Z
    .registers 2

    .line 788
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getDoInput()Z
    .registers 2

    .line 743
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->doInput:Z

    return v0
.end method

.method public whitelist core-platform-api test-api getDoOutput()Z
    .registers 2

    .line 753
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->doOutput:Z

    return v0
.end method

.method public whitelist core-platform-api test-api getErrorStream()Ljava/io/InputStream;
    .registers 2

    .line 680
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getHeaderField(I)Ljava/lang/String;
    .registers 5
    .param p1, "position"    # I

    .line 647
    if-ltz p1, :cond_1c

    .line 650
    if-nez p1, :cond_f

    .line 651
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 653
    :cond_f
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 648
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 658
    if-nez p1, :cond_d

    .line 659
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 660
    :cond_d
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    :goto_17
    return-object v0
.end method

.method public whitelist core-platform-api test-api getHeaderFieldKey(I)Ljava/lang/String;
    .registers 5
    .param p1, "position"    # I

    .line 635
    if-ltz p1, :cond_13

    .line 638
    if-nez p1, :cond_6

    .line 639
    const/4 v0, 0x0

    return-object v0

    .line 641
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 636
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getHeaderFields()Ljava/util/Map;
    .registers 3
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

    .line 665
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-static {v1}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getIfModifiedSince()J
    .registers 3

    .line 783
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->stringToLong(Ljava/lang/String;)J
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$000(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$200()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api getInstanceFollowRedirects()Z
    .registers 2

    .line 617
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 733
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api getReadTimeout()I
    .registers 2

    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api getRequestMethod()Ljava/lang/String;
    .registers 2

    .line 627
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getRequestProperties()Ljava/util/Map;
    .registers 3
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

    .line 591
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 582
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getUseCaches()Z
    .registers 2

    .line 773
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api setAllowUserInteraction(Z)V
    .registers 3
    .param p1, "allowUserInteraction"    # Z

    .line 758
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api setChunkedStreamingMode(I)V
    .registers 3
    .param p1, "chunklen"    # I

    .line 606
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api setConnectTimeout(I)V
    .registers 3
    .param p1, "timeout"    # I

    .line 696
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api setDefaultUseCaches(Z)V
    .registers 2
    .param p1, "defaultUseCaches"    # Z

    .line 793
    invoke-super {p0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 794
    return-void
.end method

.method public whitelist core-platform-api test-api setDoInput(Z)V
    .registers 3
    .param p1, "doInput"    # Z

    .line 738
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api setDoOutput(Z)V
    .registers 3
    .param p1, "doOutput"    # Z

    .line 748
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api setFixedLengthStreamingMode(I)V
    .registers 3
    .param p1, "contentLength"    # I

    .line 596
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api setFixedLengthStreamingMode(J)V
    .registers 4
    .param p1, "contentLength"    # J

    .line 601
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api setIfModifiedSince(J)V
    .registers 4
    .param p1, "ifModifiedSince"    # J

    .line 778
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api setInstanceFollowRedirects(Z)V
    .registers 3
    .param p1, "followRedirects"    # Z

    .line 611
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api setReadTimeout(I)V
    .registers 3
    .param p1, "timeout"    # I

    .line 707
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api setRequestMethod(Ljava/lang/String;)V
    .registers 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 622
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 572
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api setUseCaches(Z)V
    .registers 3
    .param p1, "useCaches"    # Z

    .line 768
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist core-platform-api test-api usingProxy()Z
    .registers 2

    .line 689
    const/4 v0, 0x0

    return v0
.end method
