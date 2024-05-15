.class final Lcom/android/okhttp/internal/framed/Http2$Writer;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final blacklist client:Z

.field private blacklist closed:Z

.field private final blacklist hpackBuffer:Lcom/android/okhttp/okio/Buffer;

.field private final blacklist hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

.field private blacklist maxFrameSize:I

.field private final blacklist sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSink;Z)V
    .registers 5
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "client"    # Z

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 375
    iput-boolean p2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->client:Z

    .line 376
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    .line 377
    new-instance v1, Lcom/android/okhttp/internal/framed/Hpack$Writer;

    invoke-direct {v1, v0}, Lcom/android/okhttp/internal/framed/Hpack$Writer;-><init>(Lcom/android/okhttp/okio/Buffer;)V

    iput-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

    .line 378
    const/16 v0, 0x4000

    iput v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    .line 379
    return-void
.end method

.method private blacklist writeContinuationFrames(IJ)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_25

    .line 460
    iget v2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 461
    .local v2, "length":I
    int-to-long v3, v2

    sub-long/2addr p2, v3

    .line 462
    const/16 v3, 0x9

    cmp-long v0, p2, v0

    if-nez v0, :cond_18

    const/4 v0, 0x4

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 463
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    int-to-long v3, v2

    invoke-interface {v0, v1, v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 464
    .end local v2    # "length":I
    goto :goto_0

    .line 465
    :cond_25
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist ackSettings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 7
    .param p1, "peerSettings"    # Lcom/android/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 387
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_1b

    .line 388
    iget v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/framed/Settings;->getMaxFrameSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "length":I
    const/4 v1, 0x4

    .line 391
    .local v1, "type":B
    const/4 v2, 0x1

    .line 392
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 393
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 394
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_23

    .line 395
    monitor-exit p0

    return-void

    .line 387
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Http2$Writer;
    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    .line 386
    .end local p1    # "peerSettings":Lcom/android/okhttp/internal/framed/Settings;
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 564
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    .line 565
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 566
    monitor-exit p0

    return-void

    .line 563
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Http2$Writer;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist connectionPreface()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 398
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_46

    .line 399
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->client:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4e

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    .line 400
    :cond_b
    :try_start_b
    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 401
    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    # getter for: Lcom/android/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$000()Lcom/android/okhttp/okio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 403
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Http2$Writer;
    :cond_32
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    # getter for: Lcom/android/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$000()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/okio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 404
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_4e

    .line 405
    monitor-exit p0

    return-void

    .line 398
    :cond_46
    :try_start_46
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4e

    .line 397
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist data(ZILcom/android/okhttp/okio/Buffer;I)V
    .registers 7
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 486
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_10

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "flags":B
    if-eqz p1, :cond_b

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 489
    :cond_b
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/android/okhttp/internal/framed/Http2$Writer;->dataFrame(IBLcom/android/okhttp/okio/Buffer;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    .line 490
    monitor-exit p0

    return-void

    .line 486
    .end local v0    # "flags":B
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Http2$Writer;
    :cond_10
    :try_start_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_18

    .line 485
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "source":Lcom/android/okhttp/okio/Buffer;
    .end local p4    # "byteCount":I
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist dataFrame(IBLcom/android/okhttp/okio/Buffer;I)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "flags"    # B
    .param p3, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "type":B
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 495
    if-lez p4, :cond_c

    .line 496
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v1, p3, v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 498
    :cond_c
    return-void
.end method

.method public declared-synchronized blacklist flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 382
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_c

    .line 383
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 384
    monitor-exit p0

    return-void

    .line 382
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Http2$Writer;
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    .line 381
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method blacklist frameHeader(IIBB)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 570
    :cond_18
    iget v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    const/4 v2, 0x1

    if-gt p2, v0, :cond_4e

    .line 573
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3f

    .line 574
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->writeMedium(Lcom/android/okhttp/okio/BufferedSink;I)V
    invoke-static {v0, p2}, Lcom/android/okhttp/internal/framed/Http2;->access$600(Lcom/android/okhttp/okio/BufferedSink;I)V

    .line 575
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 576
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 577
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 578
    return-void

    .line 573
    :cond_3f
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "reserved bit set: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 571
    :cond_4e
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v3}, Lcom/android/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized blacklist goAway(ILcom/android/okhttp/internal/framed/ErrorCode;[B)V
    .registers 10
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .param p3, "debugData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 533
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_38

    .line 534
    iget v0, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    .line 535
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    .line 536
    .local v0, "length":I
    const/4 v1, 0x7

    .line 537
    .local v1, "type":B
    const/4 v2, 0x0

    .line 538
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 539
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 540
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 541
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget v5, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 542
    array-length v4, p3

    if-lez v4, :cond_27

    .line 543
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4, p3}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 545
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Http2$Writer;
    :cond_27
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_40

    .line 546
    monitor-exit p0

    return-void

    .line 534
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_2e
    :try_start_2e
    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 533
    :cond_38
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_40

    .line 532
    .end local p1    # "lastGoodStreamId":I
    .end local p2    # "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    .end local p3    # "debugData":[B
    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist headers(ILjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 423
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_b

    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    .line 425
    monitor-exit p0

    return-void

    .line 423
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Http2$Writer;
    :cond_b
    :try_start_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_13

    .line 422
    .end local p1    # "streamId":I
    .end local p2    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist headers(ZILjava/util/List;)V
    .registers 13
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_3c

    .line 445
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 447
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    .line 448
    .local v0, "byteCount":J
    iget v2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 449
    .local v2, "length":I
    const/4 v3, 0x1

    .line 450
    .local v3, "type":B
    int-to-long v4, v2

    cmp-long v4, v0, v4

    if-nez v4, :cond_1f

    const/4 v4, 0x4

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    .line 451
    .local v4, "flags":B
    :goto_20
    if-eqz p1, :cond_25

    or-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    .line 452
    :cond_25
    invoke-virtual {p0, p2, v2, v3, v4}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 453
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    int-to-long v7, v2

    invoke-interface {v5, v6, v7, v8}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 455
    int-to-long v5, v2

    cmp-long v5, v0, v5

    if-lez v5, :cond_3b

    int-to-long v5, v2

    sub-long v5, v0, v5

    invoke-direct {p0, p2, v5, v6}, Lcom/android/okhttp/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V

    .line 456
    :cond_3b
    return-void

    .line 444
    .end local v0    # "byteCount":J
    .end local v2    # "length":I
    .end local v3    # "type":B
    .end local v4    # "flags":B
    :cond_3c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist maxDataLength()I
    .registers 2

    .line 481
    iget v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    return v0
.end method

.method public declared-synchronized blacklist ping(ZII)V
    .registers 9
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 520
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_22

    .line 521
    const/16 v0, 0x8

    .line 522
    .local v0, "length":I
    const/4 v1, 0x6

    .line 523
    .local v1, "type":B
    if-eqz p1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 524
    .local v2, "flags":B
    :goto_d
    const/4 v3, 0x0

    .line 525
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 526
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 527
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 528
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2a

    .line 529
    monitor-exit p0

    return-void

    .line 520
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Http2$Writer;
    :cond_22
    :try_start_22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 519
    .end local p1    # "ack":Z
    .end local p2    # "payload1":I
    .end local p3    # "payload2":I
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist pushPromise(IILjava/util/List;)V
    .registers 13
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 429
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_45

    .line 430
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 432
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    .line 433
    .local v0, "byteCount":J
    iget v2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    int-to-long v4, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 434
    .local v2, "length":I
    const/4 v4, 0x5

    .line 435
    .local v4, "type":B
    int-to-long v5, v2

    cmp-long v5, v0, v5

    if-nez v5, :cond_21

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    .line 436
    .local v3, "flags":B
    :goto_22
    add-int/lit8 v5, v2, 0x4

    invoke-virtual {p0, p1, v5, v4, v3}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 437
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v6, 0x7fffffff

    and-int/2addr v6, p2

    invoke-interface {v5, v6}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 438
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    int-to-long v7, v2

    invoke-interface {v5, v6, v7, v8}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 440
    int-to-long v5, v2

    cmp-long v5, v0, v5

    if-lez v5, :cond_43

    int-to-long v5, v2

    sub-long v5, v0, v5

    invoke-direct {p0, p1, v5, v6}, Lcom/android/okhttp/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_4d

    .line 441
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Http2$Writer;
    :cond_43
    monitor-exit p0

    return-void

    .line 429
    .end local v0    # "byteCount":J
    .end local v2    # "length":I
    .end local v3    # "flags":B
    .end local v4    # "type":B
    :cond_45
    :try_start_45
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4d

    .line 428
    .end local p1    # "streamId":I
    .end local p2    # "promisedStreamId":I
    .end local p3    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 469
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_24

    .line 470
    iget v0, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    .line 472
    const/4 v0, 0x4

    .line 473
    .local v0, "length":I
    const/4 v1, 0x3

    .line 474
    .local v1, "type":B
    const/4 v2, 0x0

    .line 475
    .local v2, "flags":B
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 476
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget v4, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 477
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_2c

    .line 478
    monitor-exit p0

    return-void

    .line 470
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Http2$Writer;
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 469
    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2c

    .line 468
    .end local p1    # "streamId":I
    .end local p2    # "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist settings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 10
    .param p1, "settings"    # Lcom/android/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 501
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_3f

    .line 502
    invoke-virtual {p1}, Lcom/android/okhttp/internal/framed/Settings;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 503
    .local v0, "length":I
    const/4 v1, 0x4

    .line 504
    .local v1, "type":B
    const/4 v2, 0x0

    .line 505
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 506
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 507
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    const/16 v5, 0xa

    if-ge v4, v5, :cond_38

    .line 508
    invoke-virtual {p1, v4}, Lcom/android/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_35

    .line 509
    :cond_1d
    move v5, v4

    .line 510
    .local v5, "id":I
    const/4 v6, 0x4

    if-ne v5, v6, :cond_23

    const/4 v5, 0x3

    goto :goto_27

    .line 511
    :cond_23
    const/4 v6, 0x7

    if-ne v5, v6, :cond_27

    const/4 v5, 0x4

    .line 512
    :cond_27
    :goto_27
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v6, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeShort(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 513
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {p1, v4}, Lcom/android/okhttp/internal/framed/Settings;->get(I)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 507
    .end local v5    # "id":I
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 515
    .end local v4    # "i":I
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Http2$Writer;
    :cond_38
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_47

    .line 516
    monitor-exit p0

    return-void

    .line 501
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_3f
    :try_start_3f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_47

    .line 500
    .end local p1    # "settings":Lcom/android/okhttp/internal/framed/Settings;
    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist synReply(ZILjava/util/List;)V
    .registers 6
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 417
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_a

    .line 418
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 419
    monitor-exit p0

    return-void

    .line 417
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Http2$Writer;
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_12

    .line 416
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist synStream(ZZIILjava/util/List;)V
    .registers 8
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 410
    if-nez p2, :cond_16

    .line 411
    :try_start_3
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_c

    .line 412
    invoke-virtual {p0, p1, p3, p5}, Lcom/android/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_14

    .line 413
    monitor-exit p0

    return-void

    .line 411
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Http2$Writer;
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    .end local p1    # "outFinished":Z
    .end local p2    # "inFinished":Z
    .end local p3    # "streamId":I
    .end local p4    # "associatedStreamId":I
    .end local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    :catchall_14
    move-exception p1

    goto :goto_1c

    .line 410
    .restart local p1    # "outFinished":Z
    .restart local p2    # "inFinished":Z
    .restart local p3    # "streamId":I
    .restart local p4    # "associatedStreamId":I
    .restart local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_14

    .line 409
    .end local p1    # "outFinished":Z
    .end local p2    # "inFinished":Z
    .end local p3    # "streamId":I
    .end local p4    # "associatedStreamId":I
    .end local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    :goto_1c
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist windowUpdate(IJ)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 550
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_37

    .line 551
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_26

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_26

    .line 555
    const/4 v0, 0x4

    .line 556
    .local v0, "length":I
    const/16 v1, 0x8

    .line 557
    .local v1, "type":B
    const/4 v2, 0x0

    .line 558
    .local v2, "flags":B
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 559
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 560
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_3f

    .line 561
    monitor-exit p0

    return-void

    .line 552
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Http2$Writer;
    :cond_26
    :try_start_26
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 553
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 552
    # invokes: Lcom/android/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 550
    :cond_37
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_3f

    .line 549
    .end local p1    # "streamId":I
    .end local p2    # "windowSizeIncrement":J
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
