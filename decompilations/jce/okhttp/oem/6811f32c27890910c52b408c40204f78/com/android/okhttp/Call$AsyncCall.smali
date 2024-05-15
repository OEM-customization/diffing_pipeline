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
.field private final forWebSocket:Z

.field private final responseCallback:Lcom/android/okhttp/Callback;

.field final synthetic this$0:Lcom/android/okhttp/Call;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;Z)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/okhttp/Call;
    .param p2, "responseCallback"    # Lcom/android/okhttp/Callback;
    .param p3, "forWebSocket"    # Z

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    .line 143
    const-string/jumbo v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iput-object p2, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    .line 145
    iput-boolean p3, p0, Lcom/android/okhttp/Call$AsyncCall;->forWebSocket:Z

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;ZLcom/android/okhttp/Call$AsyncCall;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/okhttp/Call;
    .param p2, "responseCallback"    # Lcom/android/okhttp/Callback;
    .param p3, "forWebSocket"    # Z
    .param p4, "-this3"    # Lcom/android/okhttp/Call$AsyncCall;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/Call$AsyncCall;-><init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;Z)V

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    invoke-virtual {v0}, Lcom/android/okhttp/Call;->cancel()V

    .line 162
    return-void
.end method

.method protected execute()V
    .registers 9

    .prologue
    .line 169
    const/4 v3, 0x0

    .line 171
    .local v3, "signalledCallback":Z
    :try_start_1
    iget-object v4, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-boolean v5, p0, Lcom/android/okhttp/Call$AsyncCall;->forWebSocket:Z

    invoke-static {v4, v5}, Lcom/android/okhttp/Call;->-wrap0(Lcom/android/okhttp/Call;Z)Lcom/android/okhttp/Response;

    move-result-object v2

    .line 172
    .local v2, "response":Lcom/android/okhttp/Response;
    iget-object v4, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-boolean v4, v4, Lcom/android/okhttp/Call;->canceled:Z

    if-eqz v4, :cond_2f

    .line 173
    const/4 v3, 0x1

    .line 174
    iget-object v4, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    iget-object v5, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v5, v5, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Canceled"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Lcom/android/okhttp/Callback;->onFailure(Lcom/android/okhttp/Request;Ljava/io/IOException;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_21} :catch_36
    .catchall {:try_start_1 .. :try_end_21} :catchall_78

    .line 188
    :goto_21
    iget-object v4, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    invoke-static {v4}, Lcom/android/okhttp/Call;->-get0(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call$AsyncCall;)V

    .line 190
    .end local v2    # "response":Lcom/android/okhttp/Response;
    :goto_2e
    return-void

    .line 176
    .restart local v2    # "response":Lcom/android/okhttp/Response;
    :cond_2f
    const/4 v3, 0x1

    .line 177
    :try_start_30
    iget-object v4, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    invoke-interface {v4, v2}, Lcom/android/okhttp/Callback;->onResponse(Lcom/android/okhttp/Response;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_36
    .catchall {:try_start_30 .. :try_end_35} :catchall_78

    goto :goto_21

    .line 179
    .end local v2    # "response":Lcom/android/okhttp/Response;
    :catch_36
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    if-eqz v3, :cond_68

    .line 182
    :try_start_39
    sget-object v4, Lcom/android/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Callback failure for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    invoke-static {v7}, Lcom/android/okhttp/Call;->-wrap1(Lcom/android/okhttp/Call;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_39 .. :try_end_5a} :catchall_78

    .line 188
    :goto_5a
    iget-object v4, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    invoke-static {v4}, Lcom/android/okhttp/Call;->-get0(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call$AsyncCall;)V

    goto :goto_2e

    .line 184
    :cond_68
    :try_start_68
    iget-object v4, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v4, v4, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-nez v4, :cond_87

    iget-object v4, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v1, v4, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    .line 185
    .local v1, "request":Lcom/android/okhttp/Request;
    :goto_72
    iget-object v4, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    invoke-interface {v4, v1, v0}, Lcom/android/okhttp/Callback;->onFailure(Lcom/android/okhttp/Request;Ljava/io/IOException;)V
    :try_end_77
    .catchall {:try_start_68 .. :try_end_77} :catchall_78

    goto :goto_5a

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "request":Lcom/android/okhttp/Request;
    :catchall_78
    move-exception v4

    .line 188
    iget-object v5, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    invoke-static {v5}, Lcom/android/okhttp/Call;->-get0(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call$AsyncCall;)V

    .line 187
    throw v4

    .line 184
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_87
    :try_start_87
    iget-object v4, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v4, v4, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_78

    move-result-object v1

    .restart local v1    # "request":Lcom/android/okhttp/Request;
    goto :goto_72
.end method

.method get()Lcom/android/okhttp/Call;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v0, v0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lcom/android/okhttp/Request;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v0, v0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method tag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v0, v0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
