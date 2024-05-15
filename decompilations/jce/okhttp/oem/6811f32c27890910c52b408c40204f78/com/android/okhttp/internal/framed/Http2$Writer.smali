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
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lcom/android/okhttp/okio/Buffer;

.field private final hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

.field private maxFrameSize:I

.field private final sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/BufferedSink;Z)V
    .registers 5
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "client"    # Z

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 373
    iput-boolean p2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->client:Z

    .line 374
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    .line 375
    new-instance v0, Lcom/android/okhttp/internal/framed/Hpack$Writer;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/framed/Hpack$Writer;-><init>(Lcom/android/okhttp/okio/Buffer;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

    .line 376
    const/16 v0, 0x4000

    iput v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    .line 377
    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .registers 12
    .param p1, "streamId"    # I
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 457
    :goto_2
    cmp-long v1, p2, v6

    if-lez v1, :cond_25

    .line 458
    iget v1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    int-to-long v2, v1

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 459
    .local v0, "length":I
    int-to-long v2, v0

    sub-long/2addr p2, v2

    .line 460
    cmp-long v1, p2, v6

    if-nez v1, :cond_23

    const/4 v1, 0x4

    :goto_15
    const/16 v2, 0x9

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 461
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    int-to-long v4, v0

    invoke-interface {v1, v2, v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    goto :goto_2

    .line 460
    :cond_23
    const/4 v1, 0x0

    goto :goto_15

    .line 463
    .end local v0    # "length":I
    :cond_25
    return-void
.end method


# virtual methods
.method public declared-synchronized ackSettings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 8
    .param p1, "peerSettings"    # Lcom/android/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 385
    :try_start_1
    iget-boolean v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v4, :cond_11

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 386
    :cond_11
    :try_start_11
    iget v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    invoke-virtual {p1, v4}, Lcom/android/okhttp/internal/framed/Settings;->getMaxFrameSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    .line 387
    const/4 v1, 0x0

    .line 388
    .local v1, "length":I
    const/4 v3, 0x4

    .line 389
    .local v3, "type":B
    const/4 v0, 0x1

    .line 390
    .local v0, "flags":B
    const/4 v2, 0x0

    .line 391
    .local v2, "streamId":I
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 392
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_e

    monitor-exit p0

    .line 393
    return-void
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 562
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    .line 563
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    .line 564
    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 396
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 397
    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->client:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_e

    if-nez v0, :cond_17

    monitor-exit p0

    return-void

    .line 398
    :cond_17
    :try_start_17
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get1()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 399
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get1()Ljava/util/logging/Logger;

    move-result-object v0

    const-string/jumbo v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get0()Lcom/android/okhttp/okio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 401
    :cond_3f
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get0()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/okio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 402
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_51
    .catchall {:try_start_17 .. :try_end_51} :catchall_e

    monitor-exit p0

    .line 403
    return-void
.end method

.method public declared-synchronized data(ZILcom/android/okhttp/okio/Buffer;I)V
    .registers 8
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 484
    :try_start_1
    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v1, :cond_11

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 485
    :cond_11
    const/4 v0, 0x0

    .line 486
    .local v0, "flags":B
    if-eqz p1, :cond_16

    const/4 v1, 0x1

    int-to-byte v0, v1

    .line 487
    .end local v0    # "flags":B
    :cond_16
    :try_start_16
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/android/okhttp/internal/framed/Http2$Writer;->dataFrame(IBLcom/android/okhttp/okio/Buffer;I)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_e

    monitor-exit p0

    .line 488
    return-void
.end method

.method dataFrame(IBLcom/android/okhttp/okio/Buffer;I)V
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

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "type":B
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 493
    if-lez p4, :cond_c

    .line 494
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v1, p3, v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 496
    :cond_c
    return-void
.end method

.method public declared-synchronized flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 380
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 381
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    monitor-exit p0

    .line 382
    return-void
.end method

.method frameHeader(IIBB)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 567
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get1()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get1()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 568
    :cond_19
    iget v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    if-le p2, v0, :cond_36

    .line 569
    const-string/jumbo v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->-wrap3(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 571
    :cond_36
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_4b

    const-string/jumbo v0, "reserved bit set: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->-wrap3(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 572
    :cond_4b
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-static {v0, p2}, Lcom/android/okhttp/internal/framed/Http2;->-wrap4(Lcom/android/okhttp/okio/BufferedSink;I)V

    .line 573
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 574
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 575
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 576
    return-void
.end method

.method public declared-synchronized goAway(ILcom/android/okhttp/internal/framed/ErrorCode;[B)V
    .registers 10
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .param p3, "debugData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 531
    :try_start_1
    iget-boolean v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v4, :cond_11

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 532
    :cond_11
    :try_start_11
    iget v4, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_21

    const-string/jumbo v4, "errorCode.httpCode == -1"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/framed/Http2;->-wrap3(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 533
    :cond_21
    array-length v4, p3

    add-int/lit8 v1, v4, 0x8

    .line 534
    .local v1, "length":I
    const/4 v3, 0x7

    .line 535
    .local v3, "type":B
    const/4 v0, 0x0

    .line 536
    .local v0, "flags":B
    const/4 v2, 0x0

    .line 537
    .local v2, "streamId":I
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 538
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 539
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget v5, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 540
    array-length v4, p3

    if-lez v4, :cond_3e

    .line 541
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4, p3}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 543
    :cond_3e
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_43
    .catchall {:try_start_11 .. :try_end_43} :catchall_e

    monitor-exit p0

    .line 544
    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 421
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 422
    :cond_11
    const/4 v0, 0x0

    :try_start_12
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_e

    monitor-exit p0

    .line 423
    return-void
.end method

.method headers(ZILjava/util/List;)V
    .registers 14
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-boolean v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v5, :cond_d

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 443
    :cond_d
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

    invoke-virtual {v5, p3}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 445
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    .line 446
    .local v0, "byteCount":J
    iget v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    int-to-long v6, v5

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v3, v6

    .line 447
    .local v3, "length":I
    const/4 v4, 0x1

    .line 448
    .local v4, "type":B
    int-to-long v6, v3

    cmp-long v5, v0, v6

    if-nez v5, :cond_43

    const/4 v2, 0x4

    .line 449
    .local v2, "flags":B
    :goto_27
    if-eqz p1, :cond_2c

    or-int/lit8 v5, v2, 0x1

    int-to-byte v2, v5

    .line 450
    .end local v2    # "flags":B
    :cond_2c
    invoke-virtual {p0, p2, v3, v4, v2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 451
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    int-to-long v8, v3

    invoke-interface {v5, v6, v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 453
    int-to-long v6, v3

    cmp-long v5, v0, v6

    if-lez v5, :cond_42

    int-to-long v6, v3

    sub-long v6, v0, v6

    invoke-direct {p0, p2, v6, v7}, Lcom/android/okhttp/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V

    .line 454
    :cond_42
    return-void

    .line 448
    :cond_43
    const/4 v2, 0x0

    .restart local v2    # "flags":B
    goto :goto_27
.end method

.method public maxDataLength()I
    .registers 2

    .prologue
    .line 479
    iget v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .registers 10
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 518
    :try_start_1
    iget-boolean v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v4, :cond_11

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 519
    :cond_11
    const/16 v1, 0x8

    .line 520
    .local v1, "length":I
    const/4 v3, 0x6

    .line 521
    .local v3, "type":B
    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    .line 522
    .local v0, "flags":B
    :goto_17
    const/4 v2, 0x0

    .line 523
    .local v2, "streamId":I
    :try_start_18
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 524
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 525
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 526
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_e

    monitor-exit p0

    .line 527
    return-void

    .line 521
    .end local v0    # "flags":B
    .end local v2    # "streamId":I
    :cond_2c
    const/4 v0, 0x0

    .restart local v0    # "flags":B
    goto :goto_17
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .registers 14
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 427
    :try_start_1
    iget-boolean v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v5, :cond_11

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v5

    monitor-exit p0

    throw v5

    .line 428
    :cond_11
    :try_start_11
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

    invoke-virtual {v5, p3}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 430
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    .line 431
    .local v0, "byteCount":J
    iget v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    add-int/lit8 v5, v5, -0x4

    int-to-long v6, v5

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v3, v6

    .line 432
    .local v3, "length":I
    const/4 v4, 0x5

    .line 433
    .local v4, "type":B
    int-to-long v6, v3

    cmp-long v5, v0, v6

    if-nez v5, :cond_50

    const/4 v2, 0x4

    .line 434
    .local v2, "flags":B
    :goto_2d
    add-int/lit8 v5, v3, 0x4

    invoke-virtual {p0, p1, v5, v4, v2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 435
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v6, 0x7fffffff

    and-int/2addr v6, p2

    invoke-interface {v5, v6}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 436
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    int-to-long v8, v3

    invoke-interface {v5, v6, v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 438
    int-to-long v6, v3

    cmp-long v5, v0, v6

    if-lez v5, :cond_4e

    int-to-long v6, v3

    sub-long v6, v0, v6

    invoke-direct {p0, p1, v6, v7}, Lcom/android/okhttp/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V
    :try_end_4e
    .catchall {:try_start_11 .. :try_end_4e} :catchall_e

    :cond_4e
    monitor-exit p0

    .line 439
    return-void

    .line 433
    .end local v2    # "flags":B
    :cond_50
    const/4 v2, 0x0

    .restart local v2    # "flags":B
    goto :goto_2d
.end method

.method public declared-synchronized rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 467
    :try_start_1
    iget-boolean v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v3, :cond_11

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v3

    monitor-exit p0

    throw v3

    .line 468
    :cond_11
    :try_start_11
    iget v3, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1c

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 470
    :cond_1c
    const/4 v1, 0x4

    .line 471
    .local v1, "length":I
    const/4 v2, 0x3

    .line 472
    .local v2, "type":B
    const/4 v0, 0x0

    .line 473
    .local v0, "flags":B
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 474
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget v4, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 475
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_e

    monitor-exit p0

    .line 476
    return-void
.end method

.method public declared-synchronized settings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 10
    .param p1, "settings"    # Lcom/android/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 499
    :try_start_1
    iget-boolean v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v6, :cond_11

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v6

    monitor-exit p0

    throw v6

    .line 500
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Lcom/android/okhttp/internal/framed/Settings;->size()I

    move-result v6

    mul-int/lit8 v3, v6, 0x6

    .line 501
    .local v3, "length":I
    const/4 v5, 0x4

    .line 502
    .local v5, "type":B
    const/4 v0, 0x0

    .line 503
    .local v0, "flags":B
    const/4 v4, 0x0

    .line 504
    .local v4, "streamId":I
    invoke-virtual {p0, v4, v3, v5, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 505
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    const/16 v6, 0xa

    if-ge v1, v6, :cond_44

    .line 506
    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 505
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 507
    :cond_2b
    move v2, v1

    .line 508
    .local v2, "id":I
    const/4 v6, 0x4

    if-ne v1, v6, :cond_3f

    const/4 v2, 0x3

    .line 510
    :cond_30
    :goto_30
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v6, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeShort(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 511
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/framed/Settings;->get(I)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    goto :goto_28

    .line 509
    :cond_3f
    const/4 v6, 0x7

    if-ne v2, v6, :cond_30

    const/4 v2, 0x4

    goto :goto_30

    .line 513
    .end local v2    # "id":I
    :cond_44
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v6}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_49
    .catchall {:try_start_11 .. :try_end_49} :catchall_e

    monitor-exit p0

    .line 514
    return-void
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .registers 6
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 415
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 416
    :cond_11
    :try_start_11
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_e

    monitor-exit p0

    .line 417
    return-void
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .registers 8
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 408
    if-eqz p2, :cond_c

    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 409
    :cond_c
    :try_start_c
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_19

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_19
    invoke-virtual {p0, p1, p3, p5}, Lcom/android/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_9

    monitor-exit p0

    .line 411
    return-void
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .registers 12
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 548
    :try_start_1
    iget-boolean v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v3, :cond_11

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v3

    monitor-exit p0

    throw v3

    .line 549
    :cond_11
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-eqz v3, :cond_1e

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, p2, v4

    if-lez v3, :cond_30

    .line 550
    :cond_1e
    :try_start_1e
    const-string/jumbo v3, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 551
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 550
    invoke-static {v3, v4}, Lcom/android/okhttp/internal/framed/Http2;->-wrap3(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 553
    :cond_30
    const/4 v1, 0x4

    .line 554
    .local v1, "length":I
    const/16 v2, 0x8

    .line 555
    .local v2, "type":B
    const/4 v0, 0x0

    .line 556
    .local v0, "flags":B
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 557
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 558
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_42
    .catchall {:try_start_1e .. :try_end_42} :catchall_e

    monitor-exit p0

    .line 559
    return-void
.end method
