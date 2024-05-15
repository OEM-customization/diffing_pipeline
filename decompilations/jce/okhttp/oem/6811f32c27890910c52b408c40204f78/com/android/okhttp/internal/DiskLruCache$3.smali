.class Lcom/android/okhttp/internal/DiskLruCache$3;
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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lcom/android/okhttp/internal/DiskLruCache$3;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/okhttp/internal/DiskLruCache$3;->-assertionsDisabled:Z

    .line 302
    return-void
.end method

.method constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/okio/Sink;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "$anonymous0"    # Lcom/android/okhttp/okio/Sink;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    .line 302
    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/FaultHidingSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 304
    sget-boolean v0, Lcom/android/okhttp/internal/DiskLruCache$3;->-assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 305
    :cond_12
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/DiskLruCache;->-set0(Lcom/android/okhttp/internal/DiskLruCache;Z)Z

    .line 306
    return-void
.end method
