.class Lcom/android/okhttp/Call$ApplicationInterceptorChain;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lcom/android/okhttp/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationInterceptorChain"
.end annotation


# instance fields
.field private final greylist-max-o forWebSocket:Z

.field private final greylist-max-o index:I

.field private final greylist-max-o request:Lcom/android/okhttp/Request;

.field final synthetic blacklist this$0:Lcom/android/okhttp/Call;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/Call;ILcom/android/okhttp/Request;Z)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/okhttp/Call;
    .param p2, "index"    # I
    .param p3, "request"    # Lcom/android/okhttp/Request;
    .param p4, "forWebSocket"    # Z

    .line 215
    iput-object p1, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput p2, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->index:I

    .line 217
    iput-object p3, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->request:Lcom/android/okhttp/Request;

    .line 218
    iput-boolean p4, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    .line 219
    return-void
.end method


# virtual methods
.method public greylist-max-o connection()Lcom/android/okhttp/Connection;
    .registers 2

    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .registers 8
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget v0, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->index:I

    iget-object v1, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    # getter for: Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;
    invoke-static {v1}, Lcom/android/okhttp/Call;->access$300(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 232
    new-instance v0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;

    iget-object v1, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    iget v2, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->index:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/okhttp/Call$ApplicationInterceptorChain;-><init>(Lcom/android/okhttp/Call;ILcom/android/okhttp/Request;Z)V

    .line 233
    .local v0, "chain":Lcom/android/okhttp/Interceptor$Chain;
    iget-object v1, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    # getter for: Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;
    invoke-static {v1}, Lcom/android/okhttp/Call;->access$300(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/Interceptor;

    .line 234
    .local v1, "interceptor":Lcom/android/okhttp/Interceptor;
    invoke-interface {v1, v0}, Lcom/android/okhttp/Interceptor;->intercept(Lcom/android/okhttp/Interceptor$Chain;)Lcom/android/okhttp/Response;

    move-result-object v2

    .line 236
    .local v2, "interceptedResponse":Lcom/android/okhttp/Response;
    if-eqz v2, :cond_38

    .line 241
    return-object v2

    .line 237
    :cond_38
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "application interceptor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " returned null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 245
    .end local v0    # "chain":Lcom/android/okhttp/Interceptor$Chain;
    .end local v1    # "interceptor":Lcom/android/okhttp/Interceptor;
    .end local v2    # "interceptedResponse":Lcom/android/okhttp/Response;
    :cond_54
    iget-object v0, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    iget-boolean v1, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/okhttp/Call;->getResponse(Lcom/android/okhttp/Request;Z)Lcom/android/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o request()Lcom/android/okhttp/Request;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->request:Lcom/android/okhttp/Request;

    return-object v0
.end method
