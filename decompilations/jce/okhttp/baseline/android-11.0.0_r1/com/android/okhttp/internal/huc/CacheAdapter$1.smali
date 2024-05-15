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
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/huc/CacheAdapter;

.field final synthetic blacklist val$request:Ljava/net/CacheRequest;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/huc/CacheAdapter;Ljava/net/CacheRequest;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/internal/huc/CacheAdapter;

    .line 63
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->this$0:Lcom/android/okhttp/internal/huc/CacheAdapter;

    iput-object p2, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist abort()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    .line 71
    return-void
.end method

.method public blacklist body()Lcom/android/okhttp/okio/Sink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 66
    .local v0, "body":Ljava/io/OutputStream;
    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method
