.class final Lcom/android/okhttp/internal/framed/Spdy3$Writer;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

.field private final headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

.field private final sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/BufferedSink;Z)V
    .registers 6
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "client"    # Z

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 296
    iput-boolean p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->client:Z

    .line 298
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 299
    .local v0, "deflater":Ljava/util/zip/Deflater;
    sget-object v1, Lcom/android/okhttp/internal/framed/Spdy3;->DICTIONARY:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 300
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object v1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    .line 301
    new-instance v1, Lcom/android/okhttp/okio/DeflaterSink;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v1, v2, v0}, Lcom/android/okhttp/okio/DeflaterSink;-><init>(Lcom/android/okhttp/okio/Sink;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    .line 302
    return-void
.end method

.method private writeNameValueBlockToBuffer(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 409
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 410
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_e
    if-ge v0, v2, :cond_3f

    .line 411
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/framed/Header;

    iget-object v1, v4, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    .line 412
    .local v1, "name":Lcom/android/okhttp/okio/ByteString;
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 413
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4, v1}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    .line 414
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/framed/Header;

    iget-object v3, v4, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    .line 415
    .local v3, "value":Lcom/android/okhttp/okio/ByteString;
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 416
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4, v3}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 418
    .end local v1    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v3    # "value":Lcom/android/okhttp/okio/ByteString;
    :cond_3f
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    .line 419
    return-void
.end method


# virtual methods
.method public ackSettings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 2
    .param p1, "peerSettings"    # Lcom/android/okhttp/internal/framed/Settings;

    .prologue
    .line 306
    return-void
.end method

.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 487
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    .line 488
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    monitor-exit p0

    .line 489
    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .registers 1

    .prologue
    monitor-enter p0

    monitor-exit p0

    .line 316
    return-void
.end method

.method public declared-synchronized data(ZILcom/android/okhttp/okio/Buffer;I)V
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

    .prologue
    monitor-enter p0

    .line 391
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    .line 392
    .local v0, "flags":I
    :goto_4
    :try_start_4
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sendDataFrame(IILcom/android/okhttp/okio/Buffer;I)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    monitor-exit p0

    .line 393
    return-void

    .line 391
    .end local v0    # "flags":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "flags":I
    goto :goto_4

    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1
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

    .line 319
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

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

    .line 320
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    monitor-exit p0

    .line 321
    return-void
.end method

.method public declared-synchronized goAway(ILcom/android/okhttp/internal/framed/ErrorCode;[B)V
    .registers 9
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .param p3, "ignored"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 455
    :try_start_1
    iget-boolean v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

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

    .line 456
    :cond_11
    :try_start_11
    iget v3, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1f

    .line 457
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 459
    :cond_1f
    const/4 v2, 0x7

    .line 460
    .local v2, "type":I
    const/4 v0, 0x0

    .line 461
    .local v0, "flags":I
    const/16 v1, 0x8

    .line 462
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v4, -0x7ffcfff9

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 463
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 464
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 465
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget v4, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 466
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_43
    .catchall {:try_start_11 .. :try_end_43} :catchall_e

    monitor-exit p0

    .line 467
    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .registers 11
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

    .line 359
    :try_start_1
    iget-boolean v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

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

    .line 360
    :cond_11
    :try_start_11
    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "flags":I
    const/16 v2, 0x8

    .line 363
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 365
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v4, -0x7ffcfff8

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 366
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v4, 0xffffff

    and-int/2addr v4, v1

    or-int/lit8 v4, v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 367
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 368
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J
    :try_end_44
    .catchall {:try_start_11 .. :try_end_44} :catchall_e

    monitor-exit p0

    .line 369
    return-void
.end method

.method public maxDataLength()I
    .registers 2

    .prologue
    .line 386
    const/16 v0, 0x3fff

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .registers 12
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    .line 441
    :try_start_3
    iget-boolean v6, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v6, :cond_13

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v4

    monitor-exit p0

    throw v4

    .line 442
    :cond_13
    :try_start_13
    iget-boolean v6, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->client:Z

    and-int/lit8 v7, p2, 0x1

    if-ne v7, v4, :cond_27

    :goto_19
    if-eq v6, v4, :cond_29

    const/4 v2, 0x1

    .line 443
    .local v2, "payloadIsReply":Z
    :goto_1c
    if-eq p1, v2, :cond_2b

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "payload != reply"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "payloadIsReply":Z
    :cond_27
    move v4, v5

    .line 442
    goto :goto_19

    :cond_29
    const/4 v2, 0x0

    .restart local v2    # "payloadIsReply":Z
    goto :goto_1c

    .line 444
    :cond_2b
    const/4 v3, 0x6

    .line 445
    .local v3, "type":I
    const/4 v0, 0x0

    .line 446
    .local v0, "flags":I
    const/4 v1, 0x4

    .line 447
    .local v1, "length":I
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v5, -0x7ffcfffa

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 448
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 449
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 450
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_46
    .catchall {:try_start_13 .. :try_end_46} :catchall_10

    monitor-exit p0

    .line 451
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .registers 4
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
    .line 312
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    return-void
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

    .line 373
    :try_start_1
    iget-boolean v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

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

    .line 374
    :cond_11
    :try_start_11
    iget v3, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1c

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 375
    :cond_1c
    const/4 v0, 0x0

    .line 376
    .local v0, "flags":I
    const/4 v2, 0x3

    .line 377
    .local v2, "type":I
    const/16 v1, 0x8

    .line 378
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v4, -0x7ffcfffd

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 379
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 380
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 381
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget v4, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 382
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_44
    .catchall {:try_start_11 .. :try_end_44} :catchall_e

    monitor-exit p0

    .line 383
    return-void
.end method

.method sendDataFrame(IILcom/android/okhttp/okio/Buffer;I)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "flags"    # I
    .param p3, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_d
    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_2f

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_2f
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 402
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 403
    if-lez p4, :cond_4e

    .line 404
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 406
    :cond_4e
    return-void
.end method

.method public declared-synchronized settings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 12
    .param p1, "settings"    # Lcom/android/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v9, 0xffffff

    monitor-enter p0

    .line 422
    :try_start_4
    iget-boolean v6, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v6, :cond_14

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v6

    monitor-exit p0

    throw v6

    .line 423
    :cond_14
    const/4 v5, 0x4

    .line 424
    .local v5, "type":I
    const/4 v0, 0x0

    .line 425
    .local v0, "flags":I
    :try_start_16
    invoke-virtual {p1}, Lcom/android/okhttp/internal/framed/Settings;->size()I

    move-result v4

    .line 426
    .local v4, "size":I
    mul-int/lit8 v6, v4, 0x8

    add-int/lit8 v2, v6, 0x4

    .line 427
    .local v2, "length":I
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v7, -0x7ffcfffc

    invoke-interface {v6, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 428
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int v7, v2, v9

    or-int/lit8 v7, v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 429
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v6, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 430
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_35
    const/16 v6, 0xa

    if-gt v1, v6, :cond_5c

    .line 431
    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v6

    if-nez v6, :cond_42

    .line 430
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 432
    :cond_42
    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/framed/Settings;->flags(I)I

    move-result v3

    .line 433
    .local v3, "settingsFlags":I
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v7, v3, 0xff

    shl-int/lit8 v7, v7, 0x18

    and-int v8, v1, v9

    or-int/2addr v7, v8

    invoke-interface {v6, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 434
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/framed/Settings;->get(I)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    goto :goto_3f

    .line 436
    .end local v3    # "settingsFlags":I
    :cond_5c
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v6}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_61
    .catchall {:try_start_16 .. :try_end_61} :catchall_11

    monitor-exit p0

    .line 437
    return-void
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .registers 12
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

    .line 344
    :try_start_1
    iget-boolean v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

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

    .line 345
    :cond_11
    :try_start_11
    invoke-direct {p0, p3}, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 346
    const/4 v2, 0x2

    .line 347
    .local v2, "type":I
    if-eqz p1, :cond_4f

    const/4 v0, 0x1

    .line 348
    .local v0, "flags":I
    :goto_18
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 350
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v4, -0x7ffcfffe

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 351
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 352
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 353
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 354
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_4d
    .catchall {:try_start_11 .. :try_end_4d} :catchall_e

    monitor-exit p0

    .line 355
    return-void

    .line 347
    .end local v0    # "flags":I
    .end local v1    # "length":I
    :cond_4f
    const/4 v0, 0x0

    .restart local v0    # "flags":I
    goto :goto_18
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .registers 14
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

    .line 326
    :try_start_1
    iget-boolean v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

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

    .line 327
    :cond_11
    :try_start_11
    invoke-direct {p0, p5}, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 328
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 329
    .local v1, "length":I
    const/4 v2, 0x1

    .line 330
    .local v2, "type":I
    if-eqz p1, :cond_65

    const/4 v4, 0x1

    move v5, v4

    :goto_23
    if-eqz p2, :cond_68

    const/4 v4, 0x2

    :goto_26
    or-int v0, v5, v4

    .line 332
    .local v0, "flags":I
    const/4 v3, 0x0

    .line 333
    .local v3, "unused":I
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v5, -0x7ffcffff

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 334
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v5, v0, 0xff

    shl-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 335
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v5, 0x7fffffff

    and-int/2addr v5, p3

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 336
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v5, 0x7fffffff

    and-int/2addr v5, p4

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 337
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeShort(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 338
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 339
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_63
    .catchall {:try_start_11 .. :try_end_63} :catchall_e

    monitor-exit p0

    .line 340
    return-void

    .line 330
    .end local v0    # "flags":I
    .end local v3    # "unused":I
    :cond_65
    const/4 v4, 0x0

    move v5, v4

    goto :goto_23

    :cond_68
    const/4 v4, 0x0

    goto :goto_26
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "increment"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 471
    :try_start_1
    iget-boolean v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

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

    .line 472
    :cond_11
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-eqz v3, :cond_1e

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, p2, v4

    if-lez v3, :cond_38

    .line 473
    :cond_1e
    :try_start_1e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 473
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 476
    :cond_38
    const/16 v2, 0x9

    .line 477
    .local v2, "type":I
    const/4 v0, 0x0

    .line 478
    .local v0, "flags":I
    const/16 v1, 0x8

    .line 479
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v4, -0x7ffcfff7

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 480
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 481
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 482
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 483
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_5c
    .catchall {:try_start_1e .. :try_end_5c} :catchall_e

    monitor-exit p0

    .line 484
    return-void
.end method
