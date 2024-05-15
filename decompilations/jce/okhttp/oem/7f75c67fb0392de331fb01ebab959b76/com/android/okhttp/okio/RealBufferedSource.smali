.class final Lcom/android/okhttp/okio/RealBufferedSource;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lcom/android/okhttp/okio/BufferedSource;


# instance fields
.field public final blacklist buffer:Lcom/android/okhttp/okio/Buffer;

.field private blacklist closed:Z

.field public final blacklist source:Lcom/android/okhttp/okio/Source;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Source;)V
    .registers 3
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;

    .line 44
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/okio/RealBufferedSource;-><init>(Lcom/android/okhttp/okio/Source;Lcom/android/okhttp/okio/Buffer;)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Source;Lcom/android/okhttp/okio/Buffer;)V
    .registers 5
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;
    .param p2, "buffer"    # Lcom/android/okhttp/okio/Buffer;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-eqz p1, :cond_a

    .line 39
    iput-object p2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    .line 40
    iput-object p1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    .line 41
    return-void

    .line 38
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/okio/RealBufferedSource;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/okio/RealBufferedSource;

    .line 32
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    return v0
.end method

.method private blacklist rangeEquals(JLcom/android/okhttp/okio/ByteString;)Z
    .registers 6
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-virtual {p3}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->rangeEquals(JLcom/android/okhttp/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method


# virtual methods
.method public blacklist buffer()Lcom/android/okhttp/okio/Buffer;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    return-object v0
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 421
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    .line 422
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Source;->close()V

    .line 423
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->clear()V

    .line 424
    return-void
.end method

.method public blacklist exhausted()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_21

    .line 71
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/32 v2, 0x10000

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0

    .line 70
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist indexOf(B)J
    .registers 4
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist indexOf(BJ)J
    .registers 13
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3b

    .line 316
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v0, p2, v0

    const-wide/32 v1, 0x10000

    const-wide/16 v3, -0x1

    if-ltz v0, :cond_1e

    .line 317
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v5, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v0, v5, v1, v2}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    return-wide v3

    .line 320
    :cond_1e
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->indexOf(BJ)J

    move-result-wide v5

    move-wide v7, v5

    .local v7, "index":J
    cmp-long v0, v5, v3

    if-nez v0, :cond_3a

    .line 321
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide p2, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 322
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v5, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v0, v5, v1, v2}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_1e

    return-wide v3

    .line 324
    :cond_3a
    return-wide v7

    .line 315
    .end local v7    # "index":J
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist indexOf(Lcom/android/okhttp/okio/ByteString;)J
    .registers 4
    .param p1, "bytes"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(Lcom/android/okhttp/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist indexOf(Lcom/android/okhttp/okio/ByteString;J)J
    .registers 7
    .param p1, "bytes"    # Lcom/android/okhttp/okio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    if-eqz v0, :cond_21

    .line 334
    :goto_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(BJ)J

    move-result-wide p2

    .line 335
    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_16

    .line 336
    return-wide v0

    .line 338
    :cond_16
    invoke-direct {p0, p2, p3, p1}, Lcom/android/okhttp/okio/RealBufferedSource;->rangeEquals(JLcom/android/okhttp/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 339
    return-wide p2

    .line 341
    :cond_1d
    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    goto :goto_6

    .line 332
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist indexOfElement(Lcom/android/okhttp/okio/ByteString;)J
    .registers 4
    .param p1, "targetBytes"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J
    .registers 13
    .param p1, "targetBytes"    # Lcom/android/okhttp/okio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3b

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v0, p2, v0

    const-wide/32 v1, 0x10000

    const-wide/16 v3, -0x1

    if-ltz v0, :cond_1e

    .line 352
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v5, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v0, v5, v1, v2}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    return-wide v3

    .line 355
    :cond_1e
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J

    move-result-wide v5

    move-wide v7, v5

    .local v7, "index":J
    cmp-long v0, v5, v3

    if-nez v0, :cond_3a

    .line 356
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide p2, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 357
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v5, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v0, v5, v1, v2}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_1e

    return-wide v3

    .line 359
    :cond_3a
    return-wide v7

    .line 350
    .end local v7    # "index":J
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist inputStream()Ljava/io/InputStream;
    .registers 4

    .line 369
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v0, :cond_27

    .line 370
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    instance-of v1, v0, Lcom/android/okhttp/internal/http/MultiratSource;

    if-eqz v1, :cond_27

    .line 371
    check-cast v0, Lcom/android/okhttp/internal/http/MultiratSource;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiratSource;->mInput:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 372
    .local v0, "responseBodyBytes":Ljava/io/InputStream;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResponseBodyBytes(), responseBodyBytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->debug(Ljava/lang/String;)V

    .line 373
    :cond_26
    return-object v0

    .line 378
    .end local v0    # "responseBodyBytes":Ljava/io/InputStream;
    :cond_27
    new-instance v0, Lcom/android/okhttp/okio/RealBufferedSource$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/RealBufferedSource$1;-><init>(Lcom/android/okhttp/okio/RealBufferedSource;)V

    return-object v0
.end method

.method public blacklist read([B)I
    .registers 4
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/okhttp/okio/RealBufferedSource;->read([BII)I

    move-result v0

    return v0
.end method

.method public blacklist read([BII)I
    .registers 11
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 135
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 136
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/32 v2, 0x10000

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    .line 137
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_24

    const/4 v2, -0x1

    return v2

    .line 140
    .end local v0    # "read":J
    :cond_24
    int-to-long v0, p3

    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 141
    .local v0, "toRead":I
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result v1

    return v1
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 9
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    if-eqz p1, :cond_7a

    .line 53
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_63

    .line 54
    iget-boolean v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-nez v2, :cond_5b

    .line 57
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOGVV:Z

    if-eqz v2, :cond_32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RealBufferedSource.read(sink, byteCount), buffer.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v3, v3, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->debug(Ljava/lang/String;)V

    .line 60
    :cond_32
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_4c

    .line 61
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/32 v2, 0x10000

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    .line 62
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_4c

    return-wide v2

    .line 65
    .end local v0    # "read":J
    :cond_4c
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 66
    .local v0, "toRead":J
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v2

    return-wide v2

    .line 54
    .end local v0    # "toRead":J
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_63
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

    .line 52
    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readAll(Lcom/android/okhttp/okio/Sink;)J
    .registers 9
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    if-eqz p1, :cond_43

    .line 158
    const-wide/16 v0, 0x0

    .line 159
    .local v0, "totalBytesWritten":J
    :goto_4
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/32 v4, 0x10000

    invoke-interface {v2, v3, v4, v5}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_28

    .line 160
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v5

    .line 161
    .local v5, "emitByteCount":J
    cmp-long v2, v5, v3

    if-lez v2, :cond_27

    .line 162
    add-long/2addr v0, v5

    .line 163
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {p1, v2, v5, v6}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 165
    .end local v5    # "emitByteCount":J
    :cond_27
    goto :goto_4

    .line 166
    :cond_28
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_42

    .line 167
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 168
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 170
    :cond_42
    return-wide v0

    .line 156
    .end local v0    # "totalBytesWritten":J
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 89
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v0

    return v0
.end method

.method public blacklist readByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 104
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist readByteArray(J)[B
    .registers 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 109
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist readByteString()Lcom/android/okhttp/okio/ByteString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 94
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readByteString(J)Lcom/android/okhttp/okio/ByteString;
    .registers 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 99
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readDecimalLong()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 265
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_6
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 266
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v1

    .line 267
    .local v1, "b":B
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1e

    const/16 v2, 0x39

    if-le v1, v2, :cond_25

    :cond_1e
    if-nez v0, :cond_28

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_25

    goto :goto_28

    .line 265
    .end local v1    # "b":B
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 269
    .restart local v1    # "b":B
    :cond_28
    :goto_28
    if-eqz v0, :cond_2b

    goto :goto_41

    .line 270
    :cond_2b
    new-instance v2, Ljava/lang/NumberFormatException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 271
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    .line 270
    const-string v4, "Expected leading [0-9] or \'-\' character but was %#x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    .end local v0    # "pos":I
    .end local v1    # "b":B
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readDecimalLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFromBuffer([BII)I
    .registers 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 440
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    if-eqz v0, :cond_14

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    goto :goto_14

    .line 441
    :cond_d
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->readFromBuffer([BII)I

    move-result v0

    return v0

    .line 440
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readFully(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 6
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_a

    .line 151
    nop

    .line 152
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->readFully(Lcom/android/okhttp/okio/Buffer;J)V

    .line 153
    return-void

    .line 147
    :catch_a
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/EOFException;
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p1, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 150
    throw v0
.end method

.method public blacklist readFully([B)V
    .registers 8
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_c

    .line 128
    nop

    .line 129
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->readFully([B)V

    .line 130
    return-void

    .line 119
    :catch_c
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    .line 122
    .local v1, "offset":I
    :goto_e
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2c

    .line 123
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v3, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    long-to-int v3, v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result v2

    .line 124
    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    .line 125
    add-int/2addr v1, v2

    .line 126
    .end local v2    # "read":I
    goto :goto_e

    .line 124
    .restart local v2    # "read":I
    :cond_26
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 127
    .end local v2    # "read":I
    :cond_2c
    throw v0
.end method

.method public blacklist readHexadecimalUnsignedLong()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 283
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_6
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 284
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v1

    .line 285
    .local v1, "b":B
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1e

    const/16 v2, 0x39

    if-le v1, v2, :cond_2f

    :cond_1e
    const/16 v2, 0x61

    if-lt v1, v2, :cond_26

    const/16 v2, 0x66

    if-le v1, v2, :cond_2f

    :cond_26
    const/16 v2, 0x41

    if-lt v1, v2, :cond_32

    const/16 v2, 0x46

    if-le v1, v2, :cond_2f

    goto :goto_32

    .line 283
    .end local v1    # "b":B
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 287
    .restart local v1    # "b":B
    :cond_32
    :goto_32
    if-eqz v0, :cond_35

    goto :goto_4b

    .line 288
    :cond_35
    new-instance v2, Ljava/lang/NumberFormatException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 289
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    .line 288
    const-string v4, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    .end local v0    # "pos":I
    .end local v1    # "b":B
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readInt()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 244
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readInt()I

    move-result v0

    return v0
.end method

.method public blacklist readIntLe()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 249
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readIntLe()I

    move-result v0

    return v0
.end method

.method public blacklist readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 254
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readLongLe()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 259
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readShort()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 234
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readShort()S

    move-result v0

    return v0
.end method

.method public blacklist readShortLe()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 239
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readShortLe()S

    move-result v0

    return v0
.end method

.method public blacklist readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 192
    if-eqz p3, :cond_c

    .line 193
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    if-eqz p1, :cond_10

    .line 186
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 187
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readUtf8()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 175
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readUtf8(J)Ljava/lang/String;
    .registers 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 180
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readUtf8CodePoint()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 220
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v0

    .line 221
    .local v0, "b0":B
    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_19

    .line 222
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    goto :goto_30

    .line 223
    :cond_19
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_25

    .line 224
    const-wide/16 v1, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    goto :goto_30

    .line 225
    :cond_25
    and-int/lit16 v1, v0, 0xf8

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_30

    .line 226
    const-wide/16 v1, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 229
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8CodePoint()I

    move-result v1

    return v1
.end method

.method public blacklist readUtf8Line()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    .line 199
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_21

    .line 200
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    return-object v2

    .line 203
    :cond_21
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist readUtf8LineStrict()Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    .line 208
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    .line 214
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 209
    :cond_13
    new-instance v4, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v4}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 210
    .local v4, "data":Lcom/android/okhttp/okio/Buffer;
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x20

    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/android/okhttp/okio/Buffer;->copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;

    .line 211
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\n not found: size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " content="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist request(J)Z
    .registers 7
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2f

    .line 80
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_27

    .line 81
    :cond_a
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_25

    .line 82
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/32 v2, 0x10000

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 84
    :cond_25
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist require(J)V
    .registers 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 76
    return-void

    .line 75
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public blacklist skip(J)V
    .registers 7
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3c

    .line 300
    :goto_4
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3b

    .line 301
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/32 v2, 0x10000

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    goto :goto_2a

    .line 302
    :cond_24
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 304
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 305
    .local v0, "toSkip":J
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    .line 306
    sub-long/2addr p1, v0

    .line 307
    .end local v0    # "toSkip":J
    goto :goto_4

    .line 308
    :cond_3b
    return-void

    .line 299
    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
