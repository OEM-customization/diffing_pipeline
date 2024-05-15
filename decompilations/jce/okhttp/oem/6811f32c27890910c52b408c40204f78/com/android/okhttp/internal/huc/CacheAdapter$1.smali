.class Lcom/android/okhttp/internal/huc/CacheAdapter$1;
.super Ljava/lang/Object;
.source "CacheAdapter.java"

# interfaces
.implements Lcom/android/okhttp/internal/http/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/CacheAdapter;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/huc/CacheAdapter;

.field final synthetic val$request:Ljava/net/CacheRequest;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/huc/CacheAdapter;Ljava/net/CacheRequest;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/internal/huc/CacheAdapter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->this$0:Lcom/android/okhttp/internal/huc/CacheAdapter;

    iput-object p2, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    .line 69
    return-void
.end method

.method public body()Lcom/android/okhttp/okio/Sink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    invoke-virtual {v2}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 64
    .local v0, "body":Ljava/io/OutputStream;
    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;

    move-result-object v1

    :cond_d
    return-object v1
.end method
