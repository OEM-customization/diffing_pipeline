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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist closed:Z

.field private blacklist finished:Z

.field private final blacklist maxByteCount:J

.field private final blacklist readBuffer:Lcom/android/okhttp/okio/Buffer;

.field private final blacklist receiveBuffer:Lcom/android/okhttp/okio/Buffer;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/FramedStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 316
    const-class v0, Lcom/android/okhttp/internal/framed/FramedStream;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedStream;J)V
    .registers 4
    .param p2, "maxByteCount"    # J

    .line 335
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance p1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {p1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lcom/android/okhttp/okio/Buffer;

    .line 321
    new-instance p1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {p1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    .line 336
    iput-wide p2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->maxByteCount:J

    .line 337
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedStream;JLcom/android/okhttp/internal/framed/FramedStream$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/android/okhttp/internal/framed/FramedStream$1;

    .line 316
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;J)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    .line 316
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    return v0
.end method

.method static synthetic blacklist access$102(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;
    .param p1, "x1"    # Z

    .line 316
    iput-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    return p1
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    .line 316
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    return v0
.end method

.method private blacklist checkNotClosed()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    if-nez v0, :cond_2a

    .line 443
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$800(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_d

    .line 446
    return-void

    .line 444
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->access$800(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_2a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist waitUntilReadable()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$700(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->enter()V

    .line 378
    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$800(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 379
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # invokes: Lcom/android/okhttp/internal/framed/FramedStream;->waitForIo()V
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$900(Lcom/android/okhttp/internal/framed/FramedStream;)V
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_36

    goto :goto_9

    .line 382
    :cond_2b
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$700(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 383
    nop

    .line 384
    return-void

    .line 382
    :catchall_36
    move-exception v0

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->access$700(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 383
    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    .line 432
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    .line 433
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->clear()V

    .line 434
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 435
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_17

    .line 436
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # invokes: Lcom/android/okhttp/internal/framed/FramedStream;->cancelStreamIfNecessary()V
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1000(Lcom/android/okhttp/internal/framed/FramedStream;)V

    .line 437
    return-void

    .line 435
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 15
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_b4

    .line 344
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v2

    .line 345
    :try_start_9
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->waitUntilReadable()V

    .line 346
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->checkNotClosed()V

    .line 347
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_1d

    const-wide/16 v0, -0x1

    monitor-exit v2

    return-wide v0

    .line 350
    :cond_1d
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/okhttp/okio/Buffer;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v3

    .line 353
    .local v3, "read":J
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v6, v5, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    add-long/2addr v6, v3

    iput-wide v6, v5, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 354
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v5, v5, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    .line 355
    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v7}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v7

    iget-object v7, v7, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v8, 0x10000

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-long v9, v7

    cmp-long v5, v5, v9

    if-ltz v5, :cond_64

    .line 356
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v5}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v5

    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->id:I
    invoke-static {v6}, Lcom/android/okhttp/internal/framed/FramedStream;->access$600(Lcom/android/okhttp/internal/framed/FramedStream;)I

    move-result v6

    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v9, v7, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    invoke-virtual {v5, v6, v9, v10}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V

    .line 357
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iput-wide v0, v5, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 359
    :cond_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_9 .. :try_end_65} :catchall_b1

    .line 362
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v5

    monitor-enter v5

    .line 363
    :try_start_6c
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-wide v6, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    add-long/2addr v6, v3

    iput-wide v6, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 364
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-wide v6, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    .line 365
    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v2, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {v2, v8}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-ltz v2, :cond_ac

    .line 366
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v7}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V

    .line 367
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iput-wide v0, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 369
    :cond_ac
    monitor-exit v5

    .line 371
    return-wide v3

    .line 369
    :catchall_ae
    move-exception v0

    monitor-exit v5
    :try_end_b0
    .catchall {:try_start_6c .. :try_end_b0} :catchall_ae

    throw v0

    .line 359
    .end local v3    # "read":J
    :catchall_b1
    move-exception v0

    :try_start_b2
    monitor-exit v2
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v0

    .line 341
    :cond_b4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist receive(Lcom/android/okhttp/okio/BufferedSource;J)V
    .registers 15
    .param p1, "in"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    nop

    .line 389
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6d

    .line 392
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v2

    .line 393
    :try_start_a
    iget-boolean v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    .line 394
    .local v3, "finished":Z
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->maxByteCount:J

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_1d

    move v4, v5

    goto :goto_1e

    :cond_1d
    move v4, v6

    .line 395
    .local v4, "flowControlError":Z
    :goto_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_6a

    .line 398
    if-eqz v4, :cond_2c

    .line 399
    invoke-interface {p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 400
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    sget-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 401
    return-void

    .line 405
    :cond_2c
    if-eqz v3, :cond_32

    .line 406
    invoke-interface {p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 407
    return-void

    .line 411
    :cond_32
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v7

    .line 412
    .local v7, "read":J
    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-eqz v2, :cond_64

    .line 413
    sub-long v9, p2, v7

    .line 416
    .end local p2    # "byteCount":J
    .local v9, "byteCount":J
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v2

    .line 417
    :try_start_43
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p2}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide p2

    cmp-long p2, p2, v0

    if-nez p2, :cond_4e

    goto :goto_4f

    :cond_4e
    move v5, v6

    :goto_4f
    move p2, v5

    .line 418
    .local p2, "wasEmpty":Z
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p3, v0}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 419
    if-eqz p2, :cond_5e

    .line 420
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 422
    .end local p2    # "wasEmpty":Z
    :cond_5e
    monitor-exit v2

    .line 423
    .end local v3    # "finished":Z
    .end local v4    # "flowControlError":Z
    .end local v7    # "read":J
    move-wide p2, v9

    goto :goto_1

    .line 422
    .restart local v3    # "finished":Z
    .restart local v4    # "flowControlError":Z
    .restart local v7    # "read":J
    :catchall_61
    move-exception p2

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_61

    throw p2

    .line 412
    .end local v9    # "byteCount":J
    .local p2, "byteCount":J
    :cond_64
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 395
    .end local v3    # "finished":Z
    .end local v4    # "flowControlError":Z
    .end local v7    # "read":J
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v0

    .line 424
    :cond_6d
    return-void
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$700(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    return-object v0
.end method
