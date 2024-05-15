.class final Lcom/android/okhttp/Call$AsyncCall;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# instance fields
.field private final greylist-max-o forWebSocket:Z

.field private final greylist-max-o responseCallback:Lcom/android/okhttp/Callback;

.field final synthetic blacklist this$0:Lcom/android/okhttp/Call;


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;Z)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/okhttp/Call;
    .param p2, "responseCallback"    # Lcom/android/okhttp/Callback;
    .param p3, "forWebSocket"    # Z

    .line 144
    iput-object p1, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OkHttp %s"

    invoke-direct {p0, v1, v0}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iput-object p2, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    .line 147
    iput-boolean p3, p0, Lcom/android/okhttp/Call$AsyncCall;->forWebSocket:Z

    .line 148
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;ZLcom/android/okhttp/Call$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/android/okhttp/Call;
    .param p2, "x1"    # Lcom/android/okhttp/Callback;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/android/okhttp/Call$1;

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/Call$AsyncCall;-><init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;Z)V

    return-void
.end method


# virtual methods
.method greylist-max-o cancel()V
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    invoke-virtual {v0}, Lcom/android/okhttp/Call;->cancel()V

    .line 164
    return-void
.end method

.method protected greylist-max-o execute()V
    .registers 7

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "signalledCallback":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-boolean v2, p0, Lcom/android/okhttp/Call$AsyncCall;->forWebSocket:Z

    # invokes: Lcom/android/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/android/okhttp/Response;
    invoke-static {v1, v2}, Lcom/android/okhttp/Call;->access$100(Lcom/android/okhttp/Call;Z)Lcom/android/okhttp/Response;

    move-result-object v1

    .line 174
    .local v1, "response":Lcom/android/okhttp/Response;
    iget-object v2, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-boolean v2, v2, Lcom/android/okhttp/Call;->canceled:Z

    if-eqz v2, :cond_21

    .line 175
    const/4 v0, 0x1

    .line 176
    iget-object v2, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    iget-object v3, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v3, v3, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Canceled"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/android/okhttp/Callback;->onFailure(Lcom/android/okhttp/Request;Ljava/io/IOException;)V

    goto :goto_27

    .line 178
    :cond_21
    const/4 v0, 0x1

    .line 179
    iget-object v2, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    invoke-interface {v2, v1}, Lcom/android/okhttp/Callback;->onResponse(Lcom/android/okhttp/Response;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_27} :catch_37
    .catchall {:try_start_1 .. :try_end_27} :catchall_35

    .line 190
    .end local v1    # "response":Lcom/android/okhttp/Response;
    :goto_27
    iget-object v1, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    # getter for: Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;
    invoke-static {v1}, Lcom/android/okhttp/Call;->access$300(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call$AsyncCall;)V

    .line 191
    goto :goto_72

    .line 190
    :catchall_35
    move-exception v1

    goto :goto_73

    .line 181
    :catch_37
    move-exception v1

    .line 182
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_59

    .line 184
    :try_start_3a
    sget-object v2, Lcom/android/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback failure for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    # invokes: Lcom/android/okhttp/Call;->toLoggableString()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/okhttp/Call;->access$200(Lcom/android/okhttp/Call;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    .line 186
    :cond_59
    iget-object v2, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v2, v2, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-nez v2, :cond_64

    iget-object v2, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v2, v2, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    goto :goto_6c

    :cond_64
    iget-object v2, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v2, v2, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v2

    .line 187
    .local v2, "request":Lcom/android/okhttp/Request;
    :goto_6c
    iget-object v3, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    invoke-interface {v3, v2, v1}, Lcom/android/okhttp/Callback;->onFailure(Lcom/android/okhttp/Request;Ljava/io/IOException;)V
    :try_end_71
    .catchall {:try_start_3a .. :try_end_71} :catchall_35

    goto :goto_27

    .line 192
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "request":Lcom/android/okhttp/Request;
    :goto_72
    return-void

    .line 190
    :goto_73
    iget-object v2, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    # getter for: Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;
    invoke-static {v2}, Lcom/android/okhttp/Call;->access$300(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call$AsyncCall;)V

    .line 191
    throw v1
.end method

.method greylist-max-o get()Lcom/android/okhttp/Call;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    return-object v0
.end method

.method greylist-max-o host()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v0, v0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o request()Lcom/android/okhttp/Request;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v0, v0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method greylist-max-o tag()Ljava/lang/Object;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v0, v0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
