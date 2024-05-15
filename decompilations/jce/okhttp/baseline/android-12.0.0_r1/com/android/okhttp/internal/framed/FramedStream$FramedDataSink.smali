.class final Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FramedDataSink"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist EMIT_BUFFER_SIZE:J = 0x4000L


# instance fields
.field private blacklist closed:Z

.field private blacklist finished:Z

.field private final blacklist sendBuffer:Lcom/android/okhttp/okio/Buffer;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/FramedStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 472
    const-class v0, Lcom/android/okhttp/internal/framed/FramedStream;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .line 472
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    .line 472
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    return v0
.end method

.method static synthetic blacklist access$202(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;
    .param p1, "x1"    # Z

    .line 472
    iput-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    return p1
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    .line 472
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    return v0
.end method

.method private blacklist emitDataFrame(Z)V
    .registers 11
    .param p1, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    .line 504
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->enter()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_9e

    .line 506
    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v1, v1, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    if-nez v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->access$800(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 507
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # invokes: Lcom/android/okhttp/internal/framed/FramedStream;->waitForIo()V
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->access$900(Lcom/android/okhttp/internal/framed/FramedStream;)V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_92

    goto :goto_c

    .line 510
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 511
    nop

    .line 513
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # invokes: Lcom/android/okhttp/internal/framed/FramedStream;->checkOutNotClosed()V
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1200(Lcom/android/okhttp/internal/framed/FramedStream;)V

    .line 514
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v1, v1, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 515
    .local v1, "toWrite":J
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v4, v3, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    sub-long/2addr v4, v1

    iput-wide v4, v3, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 516
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_2c .. :try_end_51} :catchall_9e

    .line 518
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->enter()V

    .line 520
    :try_start_5a
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v3

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->id:I
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$600(Lcom/android/okhttp/internal/framed/FramedStream;)I

    move-result v4

    if-eqz p1, :cond_74

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v5

    cmp-long v0, v1, v5

    if-nez v0, :cond_74

    const/4 v0, 0x1

    goto :goto_75

    :cond_74
    const/4 v0, 0x0

    :goto_75
    move v5, v0

    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    move-wide v7, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeData(IZLcom/android/okhttp/okio/Buffer;J)V
    :try_end_7c
    .catchall {:try_start_5a .. :try_end_7c} :catchall_87

    .line 522
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 523
    nop

    .line 524
    return-void

    .line 522
    :catchall_87
    move-exception v0

    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v3}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 523
    throw v0

    .line 510
    .end local v1    # "toWrite":J
    :catchall_92
    move-exception v1

    :try_start_93
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 511
    nop

    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;
    .end local p1    # "outFinished":Z
    throw v1

    .line 516
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;
    .restart local p1    # "outFinished":Z
    :catchall_9e
    move-exception v1

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_93 .. :try_end_a0} :catchall_9e

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    nop

    .line 543
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    .line 544
    :try_start_4
    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    if-eqz v1, :cond_a

    monitor-exit v0

    return-void

    .line 545
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_59

    .line 546
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    iget-boolean v0, v0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    const/4 v1, 0x1

    if-nez v0, :cond_41

    .line 548
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2e

    .line 549
    :goto_20
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_41

    .line 550
    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_20

    .line 554
    :cond_2e
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->id:I
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$600(Lcom/android/okhttp/internal/framed/FramedStream;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeData(IZLcom/android/okhttp/okio/Buffer;J)V

    .line 557
    :cond_41
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v2

    .line 558
    :try_start_44
    iput-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    .line 559
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_56

    .line 560
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->flush()V

    .line 561
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # invokes: Lcom/android/okhttp/internal/framed/FramedStream;->cancelStreamIfNecessary()V
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1000(Lcom/android/okhttp/internal/framed/FramedStream;)V

    .line 562
    return-void

    .line 559
    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0

    .line 545
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public whitelist test-api flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    nop

    .line 528
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    .line 529
    :try_start_4
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # invokes: Lcom/android/okhttp/internal/framed/FramedStream;->checkOutNotClosed()V
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1200(Lcom/android/okhttp/internal/framed/FramedStream;)V

    .line 530
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_25

    .line 531
    :goto_a
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->flush()V

    goto :goto_a

    .line 535
    :cond_24
    return-void

    .line 530
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 538
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 8
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    nop

    .line 491
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 492
    :goto_6
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    .line 493
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_6

    .line 495
    :cond_17
    return-void
.end method
