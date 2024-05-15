.class final Lcom/android/okhttp/internal/huc/JavaApiConverter$2;
.super Ljava/net/CacheResponse;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Lcom/android/okhttp/ResponseBody;

.field final synthetic val$headers:Lcom/android/okhttp/Headers;

.field final synthetic val$response:Lcom/android/okhttp/Response;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseBody;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$headers:Lcom/android/okhttp/Headers;

    iput-object p2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$response:Lcom/android/okhttp/Response;

    iput-object p3, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$body:Lcom/android/okhttp/ResponseBody;

    .line 341
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$body:Lcom/android/okhttp/ResponseBody;

    if-nez v0, :cond_6

    return-object v1

    .line 351
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$body:Lcom/android/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$headers:Lcom/android/okhttp/Headers;

    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$response:Lcom/android/okhttp/Response;

    invoke-static {v1}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
