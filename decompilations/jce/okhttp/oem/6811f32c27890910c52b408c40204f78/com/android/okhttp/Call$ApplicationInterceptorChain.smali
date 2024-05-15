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
.field private final forWebSocket:Z

.field private final index:I

.field private final request:Lcom/android/okhttp/Request;

.field final synthetic this$0:Lcom/android/okhttp/Call;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Call;ILcom/android/okhttp/Request;Z)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/okhttp/Call;
    .param p2, "index"    # I
    .param p3, "request"    # Lcom/android/okhttp/Request;
    .param p4, "forWebSocket"    # Z

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput p2, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->index:I

    .line 215
    iput-object p3, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->request:Lcom/android/okhttp/Request;

    .line 216
    iput-boolean p4, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    .line 217
    return-void
.end method


# virtual methods
.method public connection()Lcom/android/okhttp/Connection;
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .registers 8
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget v3, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->index:I

    iget-object v4, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    invoke-static {v4}, Lcom/android/okhttp/Call;->-get0(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_59

    .line 230
    new-instance v0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;

    iget-object v3, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    iget v4, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->index:I

    add-int/lit8 v4, v4, 0x1

    iget-boolean v5, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    invoke-direct {v0, v3, v4, p1, v5}, Lcom/android/okhttp/Call$ApplicationInterceptorChain;-><init>(Lcom/android/okhttp/Call;ILcom/android/okhttp/Request;Z)V

    .line 231
    .local v0, "chain":Lcom/android/okhttp/Interceptor$Chain;
    iget-object v3, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    invoke-static {v3}, Lcom/android/okhttp/Call;->-get0(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->index:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/Interceptor;

    .line 232
    .local v2, "interceptor":Lcom/android/okhttp/Interceptor;
    invoke-interface {v2, v0}, Lcom/android/okhttp/Interceptor;->intercept(Lcom/android/okhttp/Interceptor$Chain;)Lcom/android/okhttp/Response;

    move-result-object v1

    .line 234
    .local v1, "interceptedResponse":Lcom/android/okhttp/Response;
    if-nez v1, :cond_58

    .line 235
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "application interceptor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 236
    const-string/jumbo v5, " returned null"

    .line 235
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    :cond_58
    return-object v1

    .line 243
    .end local v0    # "chain":Lcom/android/okhttp/Interceptor$Chain;
    .end local v1    # "interceptedResponse":Lcom/android/okhttp/Response;
    .end local v2    # "interceptor":Lcom/android/okhttp/Interceptor;
    :cond_59
    iget-object v3, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    iget-boolean v4, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    invoke-virtual {v3, p1, v4}, Lcom/android/okhttp/Call;->getResponse(Lcom/android/okhttp/Request;Z)Lcom/android/okhttp/Response;

    move-result-object v3

    return-object v3
.end method

.method public request()Lcom/android/okhttp/Request;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->request:Lcom/android/okhttp/Request;

    return-object v0
.end method
