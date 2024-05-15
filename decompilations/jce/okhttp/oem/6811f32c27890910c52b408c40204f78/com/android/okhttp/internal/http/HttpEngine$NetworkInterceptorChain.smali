.class Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lcom/android/okhttp/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkInterceptorChain"
.end annotation


# instance fields
.field private calls:I

.field private final index:I

.field private final request:Lcom/android/okhttp/Request;

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpEngine;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/http/HttpEngine;ILcom/android/okhttp/Request;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p2, "index"    # I
    .param p3, "request"    # Lcom/android/okhttp/Request;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput p2, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    .line 684
    iput-object p3, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/android/okhttp/Request;

    .line 685
    return-void
.end method


# virtual methods
.method public connection()Lcom/android/okhttp/Connection;
    .registers 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .registers 16
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 696
    iget v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    .line 698
    iget v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    if-lez v9, :cond_8f

    .line 699
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v9, v9, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v9}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/Interceptor;

    .line 700
    .local v2, "caller":Lcom/android/okhttp/Interceptor;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->connection()Lcom/android/okhttp/Connection;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v0

    .line 703
    .local v0, "address":Lcom/android/okhttp/Address;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 704
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v9

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriPort()I

    move-result v10

    if-eq v9, v10, :cond_6a

    .line 705
    :cond_49
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 706
    const-string/jumbo v11, " must retain the same host and port"

    .line 705
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 710
    :cond_6a
    iget v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    if-le v9, v11, :cond_8f

    .line 711
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 712
    const-string/jumbo v11, " must call proceed() exactly once"

    .line 711
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 716
    .end local v0    # "address":Lcom/android/okhttp/Address;
    .end local v2    # "caller":Lcom/android/okhttp/Interceptor;
    :cond_8f
    iget v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v10, v10, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v10}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_107

    .line 718
    new-instance v3, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;

    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget v10, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v3, v9, v10, p1}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;ILcom/android/okhttp/Request;)V

    .line 719
    .local v3, "chain":Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v9, v9, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v9}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/okhttp/Interceptor;

    .line 720
    .local v6, "interceptor":Lcom/android/okhttp/Interceptor;
    invoke-interface {v6, v3}, Lcom/android/okhttp/Interceptor;->intercept(Lcom/android/okhttp/Interceptor$Chain;)Lcom/android/okhttp/Response;

    move-result-object v5

    .line 723
    .local v5, "interceptedResponse":Lcom/android/okhttp/Response;
    iget v9, v3, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    if-eq v9, v11, :cond_e3

    .line 724
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 725
    const-string/jumbo v11, " must call proceed() exactly once"

    .line 724
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 727
    :cond_e3
    if-nez v5, :cond_106

    .line 728
    new-instance v9, Ljava/lang/NullPointerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 729
    const-string/jumbo v11, " returned null"

    .line 728
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 732
    :cond_106
    return-object v5

    .line 735
    .end local v3    # "chain":Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    .end local v5    # "interceptedResponse":Lcom/android/okhttp/Response;
    .end local v6    # "interceptor":Lcom/android/okhttp/Interceptor;
    :cond_107
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-static {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->-get0(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/HttpStream;

    move-result-object v9

    invoke-interface {v9, p1}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 738
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-static {v9, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->-set0(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;

    .line 740
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v9, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->permitsRequestBody(Lcom/android/okhttp/Request;)Z

    move-result v9

    if-eqz v9, :cond_143

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    move-result-object v9

    if-eqz v9, :cond_143

    .line 741
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-static {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->-get0(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/HttpStream;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/okhttp/RequestBody;->contentLength()J

    move-result-wide v10

    invoke-interface {v9, p1, v10, v11}, Lcom/android/okhttp/internal/http/HttpStream;->createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;

    move-result-object v7

    .line 742
    .local v7, "requestBodyOut":Lcom/android/okhttp/okio/Sink;
    invoke-static {v7}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    .line 743
    .local v1, "bufferedRequestBody":Lcom/android/okhttp/okio/BufferedSink;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/okhttp/RequestBody;->writeTo(Lcom/android/okhttp/okio/BufferedSink;)V

    .line 744
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 747
    .end local v1    # "bufferedRequestBody":Lcom/android/okhttp/okio/BufferedSink;
    .end local v7    # "requestBodyOut":Lcom/android/okhttp/okio/Sink;
    :cond_143
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-static {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->-wrap0(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/Response;

    move-result-object v8

    .line 749
    .local v8, "response":Lcom/android/okhttp/Response;
    invoke-virtual {v8}, Lcom/android/okhttp/Response;->code()I

    move-result v4

    .line 750
    .local v4, "code":I
    const/16 v9, 0xcc

    if-eq v4, v9, :cond_155

    const/16 v9, 0xcd

    if-ne v4, v9, :cond_190

    :cond_155
    invoke-virtual {v8}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/okhttp/ResponseBody;->contentLength()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_190

    .line 751
    new-instance v9, Ljava/net/ProtocolException;

    .line 752
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "HTTP "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " had non-zero Content-Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/okhttp/ResponseBody;->contentLength()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 751
    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 755
    :cond_190
    return-object v8
.end method

.method public request()Lcom/android/okhttp/Request;
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/android/okhttp/Request;

    return-object v0
.end method
