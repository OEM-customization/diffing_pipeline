.class Lcom/android/okhttp/internal/DiskLruCache$2;
.super Lcom/android/okhttp/internal/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/DiskLruCache;->newJournalWriter()Lcom/android/okhttp/okio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 304
    const-class v0, Lcom/android/okhttp/internal/DiskLruCache;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/okio/Sink;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "delegate"    # Lcom/android/okhttp/okio/Sink;

    .line 304
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$2;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/FaultHidingSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected blacklist onException(Ljava/io/IOException;)V
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;

    .line 306
    nop

    .line 307
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$2;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    const/4 v1, 0x1

    # setter for: Lcom/android/okhttp/internal/DiskLruCache;->hasJournalErrors:Z
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$602(Lcom/android/okhttp/internal/DiskLruCache;Z)Z

    .line 308
    return-void
.end method
