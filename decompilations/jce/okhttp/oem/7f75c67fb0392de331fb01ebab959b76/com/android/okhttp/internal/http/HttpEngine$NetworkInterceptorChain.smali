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
.field private greylist-max-o calls:I

.field private final greylist-max-o index:I

.field private final greylist-max-o request:Lcom/android/okhttp/Request;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/HttpEngine;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/http/HttpEngine;ILcom/android/okhttp/Request;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p2, "index"    # I
    .param p3, "request"    # Lcom/android/okhttp/Request;

    .line 820
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput p2, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    .line 822
    iput-object p3, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/android/okhttp/Request;

    .line 823
    return-void
.end method


# virtual methods
.method public greylist-max-o connection()Lcom/android/okhttp/Connection;
    .registers 2

    .line 826
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .registers 9
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    .line 836
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    const-string v2, " must call proceed() exactly once"

    const-string v3, "network interceptor "

    if-lez v0, :cond_82

    .line 837
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    sub-int/2addr v4, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/Interceptor;

    .line 838
    .local v0, "caller":Lcom/android/okhttp/Interceptor;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->connection()Lcom/android/okhttp/Connection;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v4

    .line 841
    .local v4, "address":Lcom/android/okhttp/Address;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 842
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/okhttp/Address;->getUriPort()I

    move-result v6

    if-ne v5, v6, :cond_68

    .line 848
    iget v5, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    if-gt v5, v1, :cond_50

    goto :goto_82

    .line 849
    :cond_50
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 843
    :cond_68
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " must retain the same host and port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 854
    .end local v0    # "caller":Lcom/android/okhttp/Interceptor;
    .end local v4    # "address":Lcom/android/okhttp/Address;
    :cond_82
    :goto_82
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_e9

    .line 856
    new-instance v0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget v5, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    add-int/2addr v5, v1

    invoke-direct {v0, v4, v5, p1}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;ILcom/android/okhttp/Request;)V

    .line 857
    .local v0, "chain":Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/Interceptor;

    .line 858
    .local v4, "interceptor":Lcom/android/okhttp/Interceptor;
    invoke-interface {v4, v0}, Lcom/android/okhttp/Interceptor;->intercept(Lcom/android/okhttp/Interceptor$Chain;)Lcom/android/okhttp/Response;

    move-result-object v5

    .line 861
    .local v5, "interceptedResponse":Lcom/android/okhttp/Response;
    iget v6, v0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    if-ne v6, v1, :cond_d1

    .line 865
    if-eqz v5, :cond_b7

    .line 870
    return-object v5

    .line 866
    :cond_b7
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " returned null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 862
    :cond_d1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 873
    .end local v0    # "chain":Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    .end local v4    # "interceptor":Lcom/android/okhttp/Interceptor;
    .end local v5    # "interceptedResponse":Lcom/android/okhttp/Response;
    :cond_e9
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    # getter for: Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->access$000(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/HttpStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 876
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    # setter for: Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;
    invoke-static {v0, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->access$102(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;

    .line 878
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->permitsRequestBody(Lcom/android/okhttp/Request;)Z

    move-result v0

    if-eqz v0, :cond_125

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_125

    .line 879
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    # getter for: Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->access$000(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/HttpStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/RequestBody;->contentLength()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lcom/android/okhttp/internal/http/HttpStream;->createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    .line 880
    .local v0, "requestBodyOut":Lcom/android/okhttp/okio/Sink;
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    .line 881
    .local v1, "bufferedRequestBody":Lcom/android/okhttp/okio/BufferedSink;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/okhttp/RequestBody;->writeTo(Lcom/android/okhttp/okio/BufferedSink;)V

    .line 882
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 885
    .end local v0    # "requestBodyOut":Lcom/android/okhttp/okio/Sink;
    .end local v1    # "bufferedRequestBody":Lcom/android/okhttp/okio/BufferedSink;
    :cond_125
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    # invokes: Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->access$200(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/Response;

    move-result-object v0

    .line 887
    .local v0, "response":Lcom/android/okhttp/Response;
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->code()I

    move-result v1

    .line 888
    .local v1, "code":I
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_137

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_145

    :cond_137
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/ResponseBody;->contentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_146

    .line 893
    :cond_145
    return-object v0

    .line 889
    :cond_146
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " had non-zero Content-Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist-max-o request()Lcom/android/okhttp/Request;
    .registers 2

    .line 830
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/android/okhttp/Request;

    return-object v0
.end method
