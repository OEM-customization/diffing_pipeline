.class final Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramedDataSource"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private closed:Z

.field private finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lcom/android/okhttp/okio/Buffer;

.field private final receiveBuffer:Lcom/android/okhttp/okio/Buffer;

.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedStream;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->-assertionsDisabled:Z

    .line 314
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/internal/framed/FramedStream;J)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedStream;
    .param p2, "maxByteCount"    # J

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lcom/android/okhttp/okio/Buffer;

    .line 319
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    .line 334
    iput-wide p2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->maxByteCount:J

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/framed/FramedStream;JLcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedStream;
    .param p2, "maxByteCount"    # J
    .param p4, "-this2"    # Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;J)V

    return-void
.end method

.method private checkNotClosed()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    if-eqz v0, :cond_d

    .line 439
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_d
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get1(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 442
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->-get1(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_35
    return-void
.end method

.method private waitUntilReadable()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get3(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->enter()V

    .line 376
    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get1(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 377
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-wrap2(Lcom/android/okhttp/internal/framed/FramedStream;)V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_2f

    goto :goto_9

    .line 379
    :catchall_2f
    move-exception v0

    .line 380
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->-get3(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 379
    throw v0

    .line 380
    :cond_3a
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get3(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 382
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v1

    .line 430
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    .line 431
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->clear()V

    .line 432
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->notifyAll()V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_17

    monitor-exit v1

    .line 434
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-wrap0(Lcom/android/okhttp/internal/framed/FramedStream;)V

    .line 435
    return-void

    .line 429
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 12
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 339
    cmp-long v2, p2, v6

    if-gez v2, :cond_20

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 342
    :cond_20
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v3

    .line 343
    :try_start_23
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->waitUntilReadable()V

    .line 344
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->checkNotClosed()V

    .line 345
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_ce

    move-result-wide v4

    cmp-long v2, v4, v6

    if-nez v2, :cond_37

    const-wide/16 v4, -0x1

    monitor-exit v3

    return-wide v4

    .line 348
    :cond_37
    :try_start_37
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/okhttp/okio/Buffer;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    .line 351
    .local v0, "read":J
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v4, v2, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 352
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v4, v2, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 353
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->-get0(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v2, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v6, 0x10000

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v6, v2

    .line 352
    cmp-long v2, v4, v6

    if-ltz v2, :cond_80

    .line 354
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->-get0(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v4}, Lcom/android/okhttp/internal/framed/FramedStream;->-get2(Lcom/android/okhttp/internal/framed/FramedStream;)I

    move-result v4

    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v6, v5, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V

    .line 355
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J
    :try_end_80
    .catchall {:try_start_37 .. :try_end_80} :catchall_ce

    :cond_80
    monitor-exit v3

    .line 360
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->-get0(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v3

    monitor-enter v3

    .line 361
    :try_start_88
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->-get0(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-wide v4, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 362
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->-get0(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-wide v4, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 363
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->-get0(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v2, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v6, 0x10000

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v6, v2

    .line 362
    cmp-long v2, v4, v6

    if-ltz v2, :cond_cc

    .line 364
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->-get0(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v4}, Lcom/android/okhttp/internal/framed/FramedStream;->-get0(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4, v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V

    .line 365
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->-get0(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J
    :try_end_cc
    .catchall {:try_start_88 .. :try_end_cc} :catchall_d1

    :cond_cc
    monitor-exit v3

    .line 369
    return-wide v0

    .line 342
    .end local v0    # "read":J
    :catchall_ce
    move-exception v2

    monitor-exit v3

    throw v2

    .line 360
    .restart local v0    # "read":J
    :catchall_d1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method receive(Lcom/android/okhttp/okio/BufferedSource;J)V
    .registers 16
    .param p1, "in"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    sget-boolean v5, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->-assertionsDisabled:Z

    if-nez v5, :cond_32

    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 411
    .local v0, "finished":Z
    .local v1, "flowControlError":Z
    .local v2, "read":J
    :cond_12
    sub-long/2addr p2, v2

    .line 414
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v6

    .line 415
    :try_start_16
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_76

    const/4 v4, 0x1

    .line 416
    .local v4, "wasEmpty":Z
    :goto_23
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v5, v7}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 417
    if-eqz v4, :cond_31

    .line 418
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v5}, Lcom/android/okhttp/internal/framed/FramedStream;->notifyAll()V
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_78

    :cond_31
    monitor-exit v6

    .line 387
    .end local v0    # "finished":Z
    .end local v1    # "flowControlError":Z
    .end local v2    # "read":J
    .end local v4    # "wasEmpty":Z
    :cond_32
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-lez v5, :cond_7b

    .line 390
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v6

    .line 391
    :try_start_3b
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    .line 392
    .restart local v0    # "finished":Z
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v8

    add-long/2addr v8, p2

    iget-wide v10, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->maxByteCount:J
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_5b

    cmp-long v5, v8, v10

    if-lez v5, :cond_59

    const/4 v1, 0x1

    .restart local v1    # "flowControlError":Z
    :goto_4b
    monitor-exit v6

    .line 396
    if-eqz v1, :cond_5e

    .line 397
    invoke-interface {p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 398
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    sget-object v6, Lcom/android/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 399
    return-void

    .line 392
    .end local v1    # "flowControlError":Z
    :cond_59
    const/4 v1, 0x0

    .restart local v1    # "flowControlError":Z
    goto :goto_4b

    .line 390
    .end local v0    # "finished":Z
    .end local v1    # "flowControlError":Z
    :catchall_5b
    move-exception v5

    monitor-exit v6

    throw v5

    .line 403
    .restart local v0    # "finished":Z
    .restart local v1    # "flowControlError":Z
    :cond_5e
    if-eqz v0, :cond_64

    .line 404
    invoke-interface {p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 405
    return-void

    .line 409
    :cond_64
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {p1, v5, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v2

    .line 410
    .restart local v2    # "read":J
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_12

    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 415
    :cond_76
    const/4 v4, 0x0

    .restart local v4    # "wasEmpty":Z
    goto :goto_23

    .line 414
    .end local v4    # "wasEmpty":Z
    :catchall_78
    move-exception v5

    monitor-exit v6

    throw v5

    .line 422
    .end local v0    # "finished":Z
    .end local v1    # "flowControlError":Z
    .end local v2    # "read":J
    :cond_7b
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get3(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    return-object v0
.end method
