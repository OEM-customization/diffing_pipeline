.class final Lcom/android/okhttp/okio/RealBufferedSource;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lcom/android/okhttp/okio/BufferedSource;


# instance fields
.field public final buffer:Lcom/android/okhttp/okio/Buffer;

.field private closed:Z

.field public final source:Lcom/android/okhttp/okio/Source;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/okio/RealBufferedSource;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/okio/RealBufferedSource;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/Source;)V
    .registers 3
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;

    .prologue
    .line 37
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/okio/RealBufferedSource;-><init>(Lcom/android/okhttp/okio/Source;Lcom/android/okhttp/okio/Buffer;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/Source;Lcom/android/okhttp/okio/Buffer;)V
    .registers 5
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;
    .param p2, "buffer"    # Lcom/android/okhttp/okio/Buffer;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_e
    iput-object p2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    .line 33
    iput-object p1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    .line 34
    return-void
.end method

.method private rangeEquals(JLcom/android/okhttp/okio/ByteString;)Z
    .registers 7
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p3}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->rangeEquals(JLcom/android/okhttp/okio/ByteString;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public buffer()Lcom/android/okhttp/okio/Buffer;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 395
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    .line 396
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Source;->close()V

    .line 397
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->clear()V

    .line 398
    return-void
.end method

.method public exhausted()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-boolean v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-eqz v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_e
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v1, v2, v4, v5}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_27

    const/4 v0, 0x1

    :cond_27
    return v0
.end method

.method public indexOf(B)J
    .registers 4
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .registers 12
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x2000

    const-wide/16 v4, -0x1

    .line 304
    iget-boolean v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_11
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v2, p2, v2

    if-ltz v2, :cond_26

    .line 306
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v2, v3, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    return-wide v4

    .line 309
    :cond_26
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->indexOf(BJ)J

    move-result-wide v0

    .local v0, "index":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_41

    .line 310
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide p2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 311
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v2, v3, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_26

    return-wide v4

    .line 313
    :cond_41
    return-wide v0
.end method

.method public indexOf(Lcom/android/okhttp/okio/ByteString;)J
    .registers 4
    .param p1, "bytes"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(Lcom/android/okhttp/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lcom/android/okhttp/okio/ByteString;J)J
    .registers 10
    .param p1, "bytes"    # Lcom/android/okhttp/okio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 321
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_12
    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    .line 323
    :cond_15
    invoke-virtual {p1, v2}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(BJ)J

    move-result-wide p2

    .line 324
    cmp-long v0, p2, v4

    if-nez v0, :cond_22

    .line 325
    return-wide v4

    .line 327
    :cond_22
    invoke-direct {p0, p2, p3, p1}, Lcom/android/okhttp/okio/RealBufferedSource;->rangeEquals(JLcom/android/okhttp/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 328
    return-wide p2
.end method

.method public indexOfElement(Lcom/android/okhttp/okio/ByteString;)J
    .registers 4
    .param p1, "targetBytes"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J
    .registers 12
    .param p1, "targetBytes"    # Lcom/android/okhttp/okio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x2000

    const-wide/16 v4, -0x1

    .line 339
    iget-boolean v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    :cond_11
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v2, p2, v2

    if-ltz v2, :cond_26

    .line 341
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v2, v3, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    return-wide v4

    .line 344
    :cond_26
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J

    move-result-wide v0

    .local v0, "index":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_41

    .line 345
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide p2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 346
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v2, v3, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_26

    return-wide v4

    .line 348
    :cond_41
    return-wide v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 356
    new-instance v0, Lcom/android/okhttp/okio/RealBufferedSource$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/RealBufferedSource$1;-><init>(Lcom/android/okhttp/okio/RealBufferedSource;)V

    return-object v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/okhttp/okio/RealBufferedSource;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 13
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 124
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    .line 125
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v6

    .line 126
    .local v6, "read":J
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_23

    const/4 v0, -0x1

    return v0

    .line 129
    .end local v6    # "read":J
    :cond_23
    int-to-long v0, p3

    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v8, v0

    .line 130
    .local v8, "toRead":I
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, v8}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 14
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    .line 45
    if-nez p1, :cond_f

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "sink == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 46
    :cond_f
    cmp-long v4, p2, v6

    if-gez v4, :cond_2d

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "byteCount < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 47
    :cond_2d
    iget-boolean v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-eqz v4, :cond_3a

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 49
    :cond_3a
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v4, v4, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_51

    .line 50
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v5, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    .line 51
    .local v0, "read":J
    cmp-long v4, v0, v8

    if-nez v4, :cond_51

    return-wide v8

    .line 54
    .end local v0    # "read":J
    :cond_51
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v4, v4, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 55
    .local v2, "toRead":J
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/okhttp/okio/Buffer;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v4

    return-wide v4
.end method

.method public readAll(Lcom/android/okhttp/okio/Sink;)J
    .registers 12
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 145
    if-nez p1, :cond_d

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "sink == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    :cond_d
    const-wide/16 v2, 0x0

    .line 148
    .local v2, "totalBytesWritten":J
    :cond_f
    :goto_f
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v5, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_30

    .line 149
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v0

    .line 150
    .local v0, "emitByteCount":J
    cmp-long v4, v0, v8

    if-lez v4, :cond_f

    .line 151
    add-long/2addr v2, v0

    .line 152
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {p1, v4, v0, v1}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    goto :goto_f

    .line 155
    .end local v0    # "emitByteCount":J
    :cond_30
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_4c

    .line 156
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 157
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v5, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v6

    invoke-interface {p1, v4, v6, v7}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 159
    :cond_4c
    return-wide v2
.end method

.method public readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 78
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 93
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .registers 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 98
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteString()Lcom/android/okhttp/okio/ByteString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 83
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(J)Lcom/android/okhttp/okio/ByteString;
    .registers 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 88
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readDecimalLong()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 252
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 254
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_7
    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 255
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v0

    .line 256
    .local v0, "b":B
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1f

    const/16 v2, 0x39

    if-le v0, v2, :cond_3d

    :cond_1f
    if-nez v1, :cond_25

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_3d

    .line 258
    :cond_25
    if-nez v1, :cond_40

    .line 259
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 260
    const-string/jumbo v3, "Expected leading [0-9] or \'-\' character but was %#x"

    .line 259
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 260
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    .line 259
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 266
    .end local v0    # "b":B
    :cond_40
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->readDecimalLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public readFully(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 6
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_9

    .line 141
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->readFully(Lcom/android/okhttp/okio/Buffer;J)V

    .line 142
    return-void

    .line 136
    :catch_9
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/EOFException;
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p1, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 139
    throw v0
.end method

.method public readFully([B)V
    .registers 10
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    array-length v3, p1

    int-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_b

    .line 118
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v3, p1}, Lcom/android/okhttp/okio/Buffer;->readFully([B)V

    .line 119
    return-void

    .line 108
    :catch_b
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    .line 111
    .local v1, "offset":I
    :goto_d
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v4, v3, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2d

    .line 112
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v4, v4, Lcom/android/okhttp/okio/Buffer;->size:J

    long-to-int v4, v4

    invoke-virtual {v3, p1, v1, v4}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result v2

    .line 113
    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2b

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 114
    :cond_2b
    add-int/2addr v1, v2

    goto :goto_d

    .line 116
    .end local v2    # "read":I
    :cond_2d
    throw v0
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 270
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 272
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_7
    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 273
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v0

    .line 274
    .local v0, "b":B
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1f

    const/16 v2, 0x39

    if-le v0, v2, :cond_47

    :cond_1f
    const/16 v2, 0x61

    if-lt v0, v2, :cond_27

    const/16 v2, 0x66

    if-le v0, v2, :cond_47

    :cond_27
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2f

    const/16 v2, 0x46

    if-le v0, v2, :cond_47

    .line 276
    :cond_2f
    if-nez v1, :cond_4a

    .line 277
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 278
    const-string/jumbo v3, "Expected leading [0-9a-fA-F] character but was %#x"

    .line 277
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 278
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    .line 277
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 284
    .end local v0    # "b":B
    :cond_4a
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public readInt()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 233
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLe()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 238
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 243
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLe()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 248
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 223
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLe()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 228
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readShortLe()S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 7
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 181
    if-nez p3, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_e
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_b
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 176
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 164
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .registers 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 169
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 209
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v0

    .line 210
    .local v0, "b0":B
    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1f

    .line 211
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 218
    :cond_18
    :goto_18
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8CodePoint()I

    move-result v1

    return v1

    .line 212
    :cond_1f
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_2b

    .line 213
    const-wide/16 v2, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    goto :goto_18

    .line 214
    :cond_2b
    and-int/lit16 v1, v0, 0xf8

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_18

    .line 215
    const-wide/16 v2, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    goto :goto_18
.end method

.method public readUtf8Line()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    .line 188
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_21

    .line 189
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    :goto_1e
    return-object v2

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1e

    .line 192
    :cond_21
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v6

    .line 197
    .local v6, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v0, v6, v2

    if-nez v0, :cond_5e

    .line 198
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 199
    .local v1, "data":Lcom/android/okhttp/okio/Buffer;
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v8, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v8}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/okio/Buffer;->copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;

    .line 200
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    const-string/jumbo v3, " content="

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    const-string/jumbo v3, "..."

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    .end local v1    # "data":Lcom/android/okhttp/okio/Buffer;
    :cond_5e
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, v6, v7}, Lcom/android/okhttp/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(J)Z
    .registers 8
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_20
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2d
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_47

    .line 71
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    return v0

    .line 73
    :cond_47
    const/4 v0, 0x1

    return v0
.end method

.method public require(J)V
    .registers 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 65
    :cond_c
    return-void
.end method

.method public skip(J)V
    .registers 12
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 288
    iget-boolean v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-eqz v2, :cond_1f

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    :cond_f
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 294
    .local v0, "toSkip":J
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    .line 295
    sub-long/2addr p1, v0

    .line 289
    .end local v0    # "toSkip":J
    :cond_1f
    cmp-long v2, p1, v6

    if-lez v2, :cond_41

    .line 290
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_f

    .line 291
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 297
    :cond_41
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
