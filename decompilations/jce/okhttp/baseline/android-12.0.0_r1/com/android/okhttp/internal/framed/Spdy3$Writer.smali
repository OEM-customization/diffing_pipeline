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
.field private final blacklist client:Z

.field private blacklist closed:Z

.field private final blacklist headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

.field private final blacklist headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

.field private final blacklist sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSink;Z)V
    .registers 6
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "client"    # Z

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 298
    iput-boolean p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->client:Z

    .line 300
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 301
    .local v0, "deflater":Ljava/util/zip/Deflater;
    sget-object v1, Lcom/android/okhttp/internal/framed/Spdy3;->DICTIONARY:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 302
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object v1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    .line 303
    new-instance v2, Lcom/android/okhttp/okio/DeflaterSink;

    invoke-direct {v2, v1, v0}, Lcom/android/okhttp/okio/DeflaterSink;-><init>(Lcom/android/okhttp/okio/Sink;Ljava/util/zip/Deflater;)V

    invoke-static {v2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    .line 304
    return-void
.end method

.method private blacklist writeNameValueBlockToBuffer(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 411
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_e
    if-ge v0, v1, :cond_3f

    .line 413
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/framed/Header;

    iget-object v2, v2, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    .line 414
    .local v2, "name":Lcom/android/okhttp/okio/ByteString;
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 415
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3, v2}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    .line 416
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/okhttp/internal/framed/Header;

    iget-object v3, v3, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    .line 417
    .local v3, "value":Lcom/android/okhttp/okio/ByteString;
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 418
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4, v3}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    .line 412
    .end local v2    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v3    # "value":Lcom/android/okhttp/okio/ByteString;
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 420
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_3f
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    .line 421
    return-void
.end method


# virtual methods
.method public blacklist ackSettings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 2
    .param p1, "peerSettings"    # Lcom/android/okhttp/internal/framed/Settings;

    .line 308
    return-void
.end method

.method public declared-synchronized whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 489
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    .line 490
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 491
    monitor-exit p0

    return-void

    .line 488
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Spdy3$Writer;
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist connectionPreface()V
    .registers 1

    monitor-enter p0

    .line 318
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized blacklist data(ZILcom/android/okhttp/okio/Buffer;I)V
    .registers 6
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

    .line 393
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 394
    .local v0, "flags":I
    :goto_6
    :try_start_6
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sendDataFrame(IILcom/android/okhttp/okio/Buffer;I)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b

    .line 395
    monitor-exit p0

    return-void

    .line 392
    .end local v0    # "flags":I
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Spdy3$Writer;
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "source":Lcom/android/okhttp/okio/Buffer;
    .end local p4    # "byteCount":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 321
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_c

    .line 322
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 323
    monitor-exit p0

    return-void

    .line 321
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Spdy3$Writer;
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    .line 320
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist goAway(ILcom/android/okhttp/internal/framed/ErrorCode;[B)V
    .registers 10
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .param p3, "ignored"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 457
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_43

    .line 458
    iget v0, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3b

    .line 461
    const/4 v0, 0x7

    .line 462
    .local v0, "type":I
    const/4 v1, 0x0

    .line 463
    .local v1, "flags":I
    const/16 v2, 0x8

    .line 464
    .local v2, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/high16 v4, -0x7ffd0000

    const v5, 0xffff

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 465
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v4, v1, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 466
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 467
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget v4, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 468
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_4b

    .line 469
    monitor-exit p0

    return-void

    .line 459
    .end local v0    # "type":I
    .end local v1    # "flags":I
    .end local v2    # "length":I
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Spdy3$Writer;
    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_43
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_4b

    .line 456
    .end local p1    # "lastGoodStreamId":I
    .end local p2    # "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    .end local p3    # "ignored":[B
    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist headers(ILjava/util/List;)V
    .registers 9
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

    .line 361
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_41

    .line 362
    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "flags":I
    const/16 v1, 0x8

    .line 365
    .local v1, "type":I
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 367
    .local v2, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/high16 v4, -0x7ffd0000

    const v5, 0xffff

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 368
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 369
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 370
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_49

    .line 371
    monitor-exit p0

    return-void

    .line 361
    .end local v0    # "flags":I
    .end local v1    # "type":I
    .end local v2    # "length":I
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Spdy3$Writer;
    :cond_41
    :try_start_41
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_49

    .line 360
    .end local p1    # "streamId":I
    .end local p2    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist maxDataLength()I
    .registers 2

    .line 388
    const/16 v0, 0x3fff

    return v0
.end method

.method public declared-synchronized blacklist ping(ZII)V
    .registers 11
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 443
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_47

    .line 444
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->client:Z

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    if-eq v0, v1, :cond_13

    move v2, v3

    :cond_13
    move v0, v2

    .line 445
    .local v0, "payloadIsReply":Z
    if-ne p1, v0, :cond_3f

    .line 446
    const/4 v1, 0x6

    .line 447
    .local v1, "type":I
    const/4 v2, 0x0

    .line 448
    .local v2, "flags":I
    const/4 v3, 0x4

    .line 449
    .local v3, "length":I
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/high16 v5, -0x7ffd0000

    const v6, 0xffff

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 450
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 451
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 452
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_4f

    .line 453
    monitor-exit p0

    return-void

    .line 445
    .end local v1    # "type":I
    .end local v2    # "flags":I
    .end local v3    # "length":I
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Spdy3$Writer;
    :cond_3f
    :try_start_3f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "payload != reply"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    .end local v0    # "payloadIsReply":Z
    :cond_47
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_4f

    .line 442
    .end local p1    # "reply":Z
    .end local p2    # "payload1":I
    .end local p3    # "payload2":I
    :catchall_4f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist pushPromise(IILjava/util/List;)V
    .registers 4
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

    .line 314
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    return-void
.end method

.method public declared-synchronized blacklist rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 375
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_45

    .line 376
    iget v0, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3f

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "flags":I
    const/4 v1, 0x3

    .line 379
    .local v1, "type":I
    const/16 v2, 0x8

    .line 380
    .local v2, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/high16 v4, -0x7ffd0000

    const v5, 0xffff

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 381
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 382
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 383
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget v4, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 384
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_4d

    .line 385
    monitor-exit p0

    return-void

    .line 376
    .end local v0    # "flags":I
    .end local v1    # "type":I
    .end local v2    # "length":I
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Spdy3$Writer;
    :cond_3f
    :try_start_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 375
    :cond_45
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_4d

    .line 374
    .end local p1    # "streamId":I
    .end local p2    # "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist sendDataFrame(IILcom/android/okhttp/okio/Buffer;I)V
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

    .line 399
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_43

    .line 400
    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2c

    .line 403
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 404
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 405
    if-lez p4, :cond_2b

    .line 406
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    int-to-long v1, p4

    invoke-interface {v0, p3, v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 408
    :cond_2b
    return-void

    .line 401
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_43
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized blacklist settings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 12
    .param p1, "settings"    # Lcom/android/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 424
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_5e

    .line 425
    const/4 v0, 0x4

    .line 426
    .local v0, "type":I
    const/4 v1, 0x0

    .line 427
    .local v1, "flags":I
    invoke-virtual {p1}, Lcom/android/okhttp/internal/framed/Settings;->size()I

    move-result v2

    .line 428
    .local v2, "size":I
    mul-int/lit8 v3, v2, 0x8

    add-int/lit8 v3, v3, 0x4

    .line 429
    .local v3, "length":I
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/high16 v5, -0x7ffd0000

    const v6, 0xffff

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 430
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int v7, v3, v6

    or-int/2addr v5, v7

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 431
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 432
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    const/16 v5, 0xa

    if-gt v4, v5, :cond_57

    .line 433
    invoke-virtual {p1, v4}, Lcom/android/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_54

    .line 434
    :cond_3b
    invoke-virtual {p1, v4}, Lcom/android/okhttp/internal/framed/Settings;->flags(I)I

    move-result v5

    .line 435
    .local v5, "settingsFlags":I
    iget-object v7, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v8, v5, 0xff

    shl-int/lit8 v8, v8, 0x18

    and-int v9, v4, v6

    or-int/2addr v8, v9

    invoke-interface {v7, v8}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 436
    iget-object v7, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {p1, v4}, Lcom/android/okhttp/internal/framed/Settings;->get(I)I

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 432
    .end local v5    # "settingsFlags":I
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 438
    .end local v4    # "i":I
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Spdy3$Writer;
    :cond_57
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_66

    .line 439
    monitor-exit p0

    return-void

    .line 424
    .end local v0    # "type":I
    .end local v1    # "flags":I
    .end local v2    # "size":I
    .end local v3    # "length":I
    :cond_5e
    :try_start_5e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_66

    .line 423
    .end local p1    # "settings":Lcom/android/okhttp/internal/framed/Settings;
    :catchall_66
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist synReply(ZILjava/util/List;)V
    .registers 10
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

    .line 346
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_49

    .line 347
    invoke-direct {p0, p3}, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 348
    const/4 v0, 0x2

    .line 349
    .local v0, "type":I
    if-eqz p1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 350
    .local v1, "flags":I
    :goto_e
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 352
    .local v2, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/high16 v4, -0x7ffd0000

    const v5, 0xffff

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 353
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v4, v1, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 354
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 355
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 356
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_51

    .line 357
    monitor-exit p0

    return-void

    .line 346
    .end local v0    # "type":I
    .end local v1    # "flags":I
    .end local v2    # "length":I
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Spdy3$Writer;
    :cond_49
    :try_start_49
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_51

    .line 345
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist synStream(ZZIILjava/util/List;)V
    .registers 13
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

    .line 328
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_63

    .line 329
    invoke-direct {p0, p5}, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 330
    const-wide/16 v0, 0xa

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    .line 331
    .local v0, "length":I
    const/4 v1, 0x1

    .line 332
    .local v1, "type":I
    if-eqz p2, :cond_17

    const/4 v2, 0x2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    or-int/2addr v2, p1

    .line 334
    .local v2, "flags":I
    const/4 v3, 0x0

    .line 335
    .local v3, "unused":I
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/high16 v5, -0x7ffd0000

    const v6, 0xffff

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 336
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 337
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v5, 0x7fffffff

    and-int v6, p3, v5

    invoke-interface {v4, v6}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 338
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/2addr v5, p4

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 339
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit8 v5, v3, 0x7

    shl-int/lit8 v5, v5, 0xd

    and-int/lit8 v6, v3, 0x1f

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/lit16 v6, v3, 0xff

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeShort(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 340
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 341
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_6b

    .line 342
    monitor-exit p0

    return-void

    .line 328
    .end local v0    # "length":I
    .end local v1    # "type":I
    .end local v2    # "flags":I
    .end local v3    # "unused":I
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Spdy3$Writer;
    :cond_63
    :try_start_63
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_6b

    .line 327
    .end local p1    # "outFinished":Z
    .end local p2    # "inFinished":Z
    .end local p3    # "streamId":I
    .end local p4    # "associatedStreamId":I
    .end local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    :catchall_6b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist windowUpdate(IJ)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "increment"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 473
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_5a

    .line 474
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_43

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_43

    .line 478
    const/16 v0, 0x9

    .line 479
    .local v0, "type":I
    const/4 v1, 0x0

    .line 480
    .local v1, "flags":I
    const/16 v2, 0x8

    .line 481
    .local v2, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/high16 v4, -0x7ffd0000

    const v5, 0xffff

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 482
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v4, v1, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 483
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 484
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 485
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_62

    .line 486
    monitor-exit p0

    return-void

    .line 475
    .end local v0    # "type":I
    .end local v1    # "flags":I
    .end local v2    # "length":I
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/Spdy3$Writer;
    :cond_43
    :try_start_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_5a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_62
    .catchall {:try_start_43 .. :try_end_62} :catchall_62

    .line 472
    .end local p1    # "streamId":I
    .end local p2    # "increment":J
    :catchall_62
    move-exception p1

    monitor-exit p0

    throw p1
.end method
