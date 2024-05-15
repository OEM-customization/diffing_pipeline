.class Lcom/android/okhttp/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lcom/android/okhttp/internal/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/Cache;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/Cache;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/okhttp/Cache;

    .line 140
    iput-object p1, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .registers 3
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Cache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public blacklist put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .registers 3
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    # invokes: Lcom/android/okhttp/Cache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    invoke-static {v0, p1}, Lcom/android/okhttp/Cache;->access$000(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public blacklist remove(Lcom/android/okhttp/Request;)V
    .registers 3
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    # invokes: Lcom/android/okhttp/Cache;->remove(Lcom/android/okhttp/Request;)V
    invoke-static {v0, p1}, Lcom/android/okhttp/Cache;->access$100(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Request;)V

    .line 149
    return-void
.end method

.method public blacklist trackConditionalCacheHit()V
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    # invokes: Lcom/android/okhttp/Cache;->trackConditionalCacheHit()V
    invoke-static {v0}, Lcom/android/okhttp/Cache;->access$300(Lcom/android/okhttp/Cache;)V

    .line 155
    return-void
.end method

.method public blacklist trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .registers 3
    .param p1, "cacheStrategy"    # Lcom/android/okhttp/internal/http/CacheStrategy;

    .line 157
    iget-object v0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    # invokes: Lcom/android/okhttp/Cache;->trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V
    invoke-static {v0, p1}, Lcom/android/okhttp/Cache;->access$400(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    .line 158
    return-void
.end method

.method public blacklist update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .registers 4
    .param p1, "cached"    # Lcom/android/okhttp/Response;
    .param p2, "network"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    # invokes: Lcom/android/okhttp/Cache;->update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    invoke-static {v0, p1, p2}, Lcom/android/okhttp/Cache;->access$200(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V

    .line 152
    return-void
.end method
