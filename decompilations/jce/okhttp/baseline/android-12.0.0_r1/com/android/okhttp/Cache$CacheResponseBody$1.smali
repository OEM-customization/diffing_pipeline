.class Lcom/android/okhttp/Cache$CacheResponseBody$1;
.super Lcom/android/okhttp/okio/ForwardingSource;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/Cache$CacheResponseBody;-><init>(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/Cache$CacheResponseBody;

.field final synthetic blacklist val$snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/Cache$CacheResponseBody;Lcom/android/okhttp/okio/Source;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/okhttp/Cache$CacheResponseBody;
    .param p2, "delegate"    # Lcom/android/okhttp/okio/Source;

    .line 708
    iput-object p1, p0, Lcom/android/okhttp/Cache$CacheResponseBody$1;->this$0:Lcom/android/okhttp/Cache$CacheResponseBody;

    iput-object p3, p0, Lcom/android/okhttp/Cache$CacheResponseBody$1;->val$snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lcom/android/okhttp/okio/ForwardingSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheResponseBody$1;->val$snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->close()V

    .line 711
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSource;->close()V

    .line 712
    return-void
.end method
