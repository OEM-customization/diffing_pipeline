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
.field static final synthetic -assertionsDisabled:Z

.field private static final EMIT_BUFFER_SIZE:J = 0x4000L


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private closed:Z

.field private finished:Z

.field private final sendBuffer:Lcom/android/okhttp/okio/Buffer;

.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedStream;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->-assertionsDisabled:Z

    .line 470
    return-void
.end method

.method constructor <init>(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    .line 470
    return-void
.end method

.method private emitDataFrame(Z)V
    .registers 12
    .param p1, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 501
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v1

    .line 502
    :try_start_4
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get4(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->enter()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_3c

    .line 504
    :goto_d
    :try_start_d
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v6, v0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3f

    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get1(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 505
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-wrap2(Lcom/android/okhttp/internal/framed/FramedStream;)V
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_31

    goto :goto_d

    .line 507
    :catchall_31
    move-exception v0

    .line 508
    :try_start_32
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->-get4(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 507
    throw v0
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3c

    .line 501
    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 508
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get4(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 511
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-wrap1(Lcom/android/okhttp/internal/framed/FramedStream;)V

    .line 512
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v6, v0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 513
    .local v4, "toWrite":J
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v6, v0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    sub-long/2addr v6, v4

    iput-wide v6, v0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J
    :try_end_62
    .catchall {:try_start_3f .. :try_end_62} :catchall_3c

    monitor-exit v1

    .line 516
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get4(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->enter()V

    .line 518
    :try_start_6c
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get0(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->-get2(Lcom/android/okhttp/internal/framed/FramedStream;)I

    move-result v1

    if-eqz p1, :cond_85

    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_85

    const/4 v2, 0x1

    :cond_85
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeData(IZLcom/android/okhttp/okio/Buffer;J)V
    :try_end_8a
    .catchall {:try_start_6c .. :try_end_8a} :catchall_94

    .line 520
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get4(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 522
    return-void

    .line 519
    :catchall_94
    move-exception v0

    .line 520
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->-get4(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 519
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 540
    sget-boolean v0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->-assertionsDisabled:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 541
    :cond_15
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    .line 542
    :try_start_18
    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_3f

    if-eqz v1, :cond_1e

    monitor-exit v0

    return-void

    :cond_1e
    monitor-exit v0

    .line 544
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    iget-boolean v0, v0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    if-nez v0, :cond_52

    .line 546
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_42

    .line 547
    :goto_31
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_52

    .line 548
    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_31

    .line 541
    :catchall_3f
    move-exception v1

    monitor-exit v0

    throw v1

    .line 552
    :cond_42
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get0(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->-get2(Lcom/android/okhttp/internal/framed/FramedStream;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeData(IZLcom/android/okhttp/okio/Buffer;J)V

    .line 555
    :cond_52
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    .line 556
    const/4 v1, 0x1

    :try_start_56
    iput-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_68

    monitor-exit v0

    .line 558
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get0(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->flush()V

    .line 559
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-wrap0(Lcom/android/okhttp/internal/framed/FramedStream;)V

    .line 560
    return-void

    .line 555
    :catchall_68
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    sget-boolean v0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->-assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 526
    :cond_12
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v1

    .line 527
    :try_start_15
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-wrap1(Lcom/android/okhttp/internal/framed/FramedStream;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_35

    monitor-exit v1

    .line 529
    :goto_1b
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_38

    .line 530
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    .line 531
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get0(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->flush()V

    goto :goto_1b

    .line 526
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0

    .line 533
    :cond_38
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->-get4(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 8
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    sget-boolean v0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->-assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 489
    :cond_12
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 490
    :goto_17
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_17

    .line 493
    :cond_28
    return-void
.end method
