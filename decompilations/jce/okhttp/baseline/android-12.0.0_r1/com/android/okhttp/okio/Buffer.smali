.class public final Lcom/android/okhttp/okio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lcom/android/okhttp/okio/BufferedSource;
.implements Lcom/android/okhttp/okio/BufferedSink;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final greylist-max-o DIGITS:[B

.field static final greylist-max-o REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field greylist-max-o head:Lcom/android/okhttp/okio/Segment;

.field greylist-max-o size:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/okhttp/okio/Buffer;->DIGITS:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private greylist-max-o readFrom(Ljava/io/InputStream;JZ)V
    .registers 12
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .param p4, "forever"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    if-eqz p1, :cond_3d

    .line 242
    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_c

    if-eqz p4, :cond_b

    goto :goto_c

    .line 254
    :cond_b
    return-void

    .line 243
    :cond_c
    :goto_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    .line 244
    .local v0, "tail":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 245
    .local v1, "maxToCopy":I
    iget-object v2, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 246
    .local v2, "bytesRead":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2f

    .line 247
    if-eqz p4, :cond_29

    return-void

    .line 248
    :cond_29
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 250
    :cond_2f
    iget v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 251
    iget-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 252
    int-to-long v3, v2

    sub-long/2addr p2, v3

    .line 253
    .end local v0    # "tail":Lcom/android/okhttp/okio/Segment;
    .end local v1    # "maxToCopy":I
    .end local v2    # "bytesRead":I
    goto :goto_2

    .line 241
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o buffer()Lcom/android/okhttp/okio/Buffer;
    .registers 1

    .line 66
    return-object p0
.end method

.method public greylist-max-o clear()V
    .registers 3

    .line 764
    :try_start_0
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->skip(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    .line 767
    nop

    .line 768
    return-void

    .line 765
    :catch_7
    move-exception v0

    .line 766
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public blacklist clone()Lcom/android/okhttp/okio/Buffer;
    .registers 6

    .line 1412
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 1413
    .local v0, "result":Lcom/android/okhttp/okio/Buffer;
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_e

    return-object v0

    .line 1415
    :cond_e
    new-instance v1, Lcom/android/okhttp/okio/Segment;

    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    invoke-direct {v1, v2}, Lcom/android/okhttp/okio/Segment;-><init>(Lcom/android/okhttp/okio/Segment;)V

    iput-object v1, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1416
    iput-object v1, v1, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iput-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 1417
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .local v1, "s":Lcom/android/okhttp/okio/Segment;
    :goto_1f
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-eq v1, v2, :cond_32

    .line 1418
    iget-object v2, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget-object v2, v2, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    new-instance v3, Lcom/android/okhttp/okio/Segment;

    invoke-direct {v3, v1}, Lcom/android/okhttp/okio/Segment;-><init>(Lcom/android/okhttp/okio/Segment;)V

    invoke-virtual {v2, v3}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    .line 1417
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_1f

    .line 1420
    .end local v1    # "s":Lcom/android/okhttp/okio/Segment;
    :cond_32
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    iput-wide v1, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 1421
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->clone()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 1324
    return-void
.end method

.method public greylist-max-o completeSegmentByteCount()J
    .registers 6

    .line 262
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 263
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 266
    :cond_9
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget-object v2, v2, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 267
    .local v2, "tail":Lcom/android/okhttp/okio/Segment;
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1e

    iget-boolean v3, v2, Lcom/android/okhttp/okio/Segment;->owner:Z

    if-eqz v3, :cond_1e

    .line 268
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v4, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v0, v3

    .line 271
    :cond_1e
    return-wide v0
.end method

.method public greylist-max-o copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;
    .registers 12
    .param p1, "out"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .line 169
    if-eqz p1, :cond_64

    .line 170
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 171
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_10

    return-object p0

    .line 173
    :cond_10
    iget-wide v2, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 176
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 177
    .local v2, "s":Lcom/android/okhttp/okio/Segment;
    :goto_17
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v4, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, p2, v3

    if-ltz v3, :cond_2b

    .line 178
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v4, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 177
    iget-object v2, v2, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_17

    .line 182
    :cond_2b
    :goto_2b
    cmp-long v3, p4, v0

    if-lez v3, :cond_63

    .line 183
    new-instance v3, Lcom/android/okhttp/okio/Segment;

    invoke-direct {v3, v2}, Lcom/android/okhttp/okio/Segment;-><init>(Lcom/android/okhttp/okio/Segment;)V

    .line 184
    .local v3, "copy":Lcom/android/okhttp/okio/Segment;
    iget v4, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int v4, v4

    iput v4, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 185
    iget v4, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    long-to-int v5, p4

    add-int/2addr v4, v5

    iget v5, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 186
    iget-object v4, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v4, :cond_52

    .line 187
    iput-object v3, v3, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iput-object v3, v3, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v3, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    goto :goto_57

    .line 189
    :cond_52
    iget-object v4, v4, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    invoke-virtual {v4, v3}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    .line 191
    :goto_57
    iget v4, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v5, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr p4, v4

    .line 192
    const-wide/16 p2, 0x0

    .line 182
    .end local v3    # "copy":Lcom/android/okhttp/okio/Segment;
    iget-object v2, v2, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_2b

    .line 195
    :cond_63
    return-object p0

    .line 169
    .end local v2    # "s":Lcom/android/okhttp/okio/Segment;
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o copyTo(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Buffer;
    .registers 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/okio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o copyTo(Ljava/io/OutputStream;JJ)Lcom/android/okhttp/okio/Buffer;
    .registers 13
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    if-eqz p1, :cond_45

    .line 146
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 147
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_10

    return-object p0

    .line 150
    :cond_10
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 151
    .local v2, "s":Lcom/android/okhttp/okio/Segment;
    :goto_12
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v4, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, p2, v3

    if-ltz v3, :cond_26

    .line 152
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v4, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 151
    iget-object v2, v2, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_12

    .line 156
    :cond_26
    :goto_26
    cmp-long v3, p4, v0

    if-lez v3, :cond_44

    .line 157
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    long-to-int v3, v3

    .line 158
    .local v3, "pos":I
    iget v4, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v4, v3

    int-to-long v4, v4

    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 159
    .local v4, "toCopy":I
    iget-object v5, v2, Lcom/android/okhttp/okio/Segment;->data:[B

    invoke-virtual {p1, v5, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 160
    int-to-long v5, v4

    sub-long/2addr p4, v5

    .line 161
    const-wide/16 p2, 0x0

    .line 156
    .end local v3    # "pos":I
    .end local v4    # "toCopy":I
    iget-object v2, v2, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_26

    .line 164
    :cond_44
    return-object p0

    .line 145
    .end local v2    # "s":Lcom/android/okhttp/okio/Segment;
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o emit()Lcom/android/okhttp/okio/BufferedSink;
    .registers 1

    .line 96
    return-object p0
.end method

.method public greylist-max-o emitCompleteSegments()Lcom/android/okhttp/okio/Buffer;
    .registers 1

    .line 92
    return-object p0
.end method

.method public bridge synthetic greylist-max-o emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->emitCompleteSegments()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 19
    .param p1, "o"    # Ljava/lang/Object;

    .line 1342
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    return v2

    .line 1343
    :cond_8
    instance-of v3, v1, Lcom/android/okhttp/okio/Buffer;

    const/4 v4, 0x0

    if-nez v3, :cond_e

    return v4

    .line 1344
    :cond_e
    move-object v3, v1

    check-cast v3, Lcom/android/okhttp/okio/Buffer;

    .line 1345
    .local v3, "that":Lcom/android/okhttp/okio/Buffer;
    iget-wide v5, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    iget-wide v7, v3, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1a

    return v4

    .line 1346
    :cond_1a
    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_21

    return v2

    .line 1348
    :cond_21
    iget-object v5, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1349
    .local v5, "sa":Lcom/android/okhttp/okio/Segment;
    iget-object v6, v3, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1350
    .local v6, "sb":Lcom/android/okhttp/okio/Segment;
    iget v7, v5, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 1351
    .local v7, "posA":I
    iget v8, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 1353
    .local v8, "posB":I
    const-wide/16 v9, 0x0

    .local v9, "pos":J
    :goto_2b
    iget-wide v11, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v11, v9, v11

    if-gez v11, :cond_69

    .line 1354
    iget v11, v5, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v11, v7

    iget v12, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v12, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    .line 1356
    .local v11, "count":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3d
    int-to-long v14, v13

    cmp-long v14, v14, v11

    if-gez v14, :cond_57

    .line 1357
    iget-object v14, v5, Lcom/android/okhttp/okio/Segment;->data:[B

    add-int/lit8 v15, v7, 0x1

    .end local v7    # "posA":I
    .local v15, "posA":I
    aget-byte v7, v14, v7

    iget-object v14, v6, Lcom/android/okhttp/okio/Segment;->data:[B

    add-int/lit8 v16, v8, 0x1

    .end local v8    # "posB":I
    .local v16, "posB":I
    aget-byte v8, v14, v8

    if-eq v7, v8, :cond_51

    return v4

    .line 1356
    :cond_51
    add-int/lit8 v13, v13, 0x1

    move v7, v15

    move/from16 v8, v16

    goto :goto_3d

    .line 1360
    .end local v13    # "i":I
    .end local v15    # "posA":I
    .end local v16    # "posB":I
    .restart local v7    # "posA":I
    .restart local v8    # "posB":I
    :cond_57
    iget v13, v5, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v7, v13, :cond_5f

    .line 1361
    iget-object v5, v5, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 1362
    iget v7, v5, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 1365
    :cond_5f
    iget v13, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v8, v13, :cond_67

    .line 1366
    iget-object v6, v6, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 1367
    iget v8, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 1353
    :cond_67
    add-long/2addr v9, v11

    goto :goto_2b

    .line 1371
    .end local v9    # "pos":J
    .end local v11    # "count":J
    :cond_69
    return v2
.end method

.method public greylist-max-o exhausted()Z
    .registers 5

    .line 100
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api flush()V
    .registers 1

    .line 1321
    return-void
.end method

.method public greylist-max-o getByte(J)B
    .registers 9
    .param p1, "pos"    # J

    .line 297
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 298
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 299
    .local v0, "s":Lcom/android/okhttp/okio/Segment;
    :goto_a
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    .line 300
    .local v1, "segmentByteCount":I
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_1d

    iget-object v2, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    long-to-int v4, p1

    add-int/2addr v3, v4

    aget-byte v2, v2, v3

    return v2

    .line 301
    :cond_1d
    int-to-long v2, v1

    sub-long/2addr p1, v2

    .line 298
    .end local v1    # "segmentByteCount":I
    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_a
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 1375
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1376
    .local v0, "s":Lcom/android/okhttp/okio/Segment;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return v1

    .line 1377
    :cond_6
    const/4 v1, 0x1

    .line 1379
    .local v1, "result":I
    :goto_7
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .local v2, "pos":I
    iget v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .local v3, "limit":I
    :goto_b
    if-ge v2, v3, :cond_18

    .line 1380
    mul-int/lit8 v4, v1, 0x1f

    iget-object v5, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    aget-byte v5, v5, v2

    add-int v1, v4, v5

    .line 1379
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1382
    .end local v2    # "pos":I
    .end local v3    # "limit":I
    :cond_18
    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 1383
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-ne v0, v2, :cond_1f

    .line 1384
    return v1

    .line 1383
    :cond_1f
    goto :goto_7
.end method

.method public greylist-max-o indexOf(B)J
    .registers 4
    .param p1, "b"    # B

    .line 1228
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->indexOf(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o indexOf(BJ)J
    .registers 15
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J

    .line 1236
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_40

    .line 1238
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1239
    .local v0, "s":Lcom/android/okhttp/okio/Segment;
    const-wide/16 v1, -0x1

    if-nez v0, :cond_d

    return-wide v1

    .line 1240
    :cond_d
    const-wide/16 v3, 0x0

    .line 1242
    .local v3, "offset":J
    :cond_f
    iget v5, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v6, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v5, v6

    .line 1243
    .local v5, "segmentByteCount":I
    int-to-long v6, v5

    cmp-long v6, p2, v6

    if-ltz v6, :cond_1c

    .line 1244
    int-to-long v6, v5

    sub-long/2addr p2, v6

    goto :goto_37

    .line 1246
    :cond_1c
    iget-object v6, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 1247
    .local v6, "data":[B
    iget v7, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    long-to-int v7, v7

    .local v7, "pos":I
    iget v8, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .local v8, "limit":I
    :goto_25
    if-ge v7, v8, :cond_35

    .line 1248
    aget-byte v9, v6, v7

    if-ne v9, p1, :cond_32

    int-to-long v1, v7

    add-long/2addr v1, v3

    iget v9, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v9, v9

    sub-long/2addr v1, v9

    return-wide v1

    .line 1247
    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 1250
    .end local v7    # "pos":I
    .end local v8    # "limit":I
    :cond_35
    const-wide/16 p2, 0x0

    .line 1252
    .end local v6    # "data":[B
    :goto_37
    int-to-long v6, v5

    add-long/2addr v3, v6

    .line 1253
    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 1254
    .end local v5    # "segmentByteCount":I
    iget-object v5, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-ne v0, v5, :cond_f

    .line 1255
    return-wide v1

    .line 1236
    .end local v0    # "s":Lcom/android/okhttp/okio/Segment;
    .end local v3    # "offset":J
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o indexOf(Lcom/android/okhttp/okio/ByteString;)J
    .registers 4
    .param p1, "bytes"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1259
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->indexOf(Lcom/android/okhttp/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o indexOf(Lcom/android/okhttp/okio/ByteString;J)J
    .registers 7
    .param p1, "bytes"    # Lcom/android/okhttp/okio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1263
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    if-eqz v0, :cond_21

    .line 1265
    :goto_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/okhttp/okio/Buffer;->indexOf(BJ)J

    move-result-wide p2

    .line 1266
    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_16

    .line 1267
    return-wide v0

    .line 1269
    :cond_16
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/okhttp/okio/Buffer;->rangeEquals(JLcom/android/okhttp/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1270
    return-wide p2

    .line 1272
    :cond_1d
    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    goto :goto_6

    .line 1263
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o indexOfElement(Lcom/android/okhttp/okio/ByteString;)J
    .registers 4
    .param p1, "targetBytes"    # Lcom/android/okhttp/okio/ByteString;

    .line 1277
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J
    .registers 22
    .param p1, "targetBytes"    # Lcom/android/okhttp/okio/ByteString;
    .param p2, "fromIndex"    # J

    .line 1281
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_67

    .line 1283
    iget-object v1, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1284
    .local v1, "s":Lcom/android/okhttp/okio/Segment;
    const-wide/16 v2, -0x1

    if-nez v1, :cond_f

    return-wide v2

    .line 1285
    :cond_f
    const-wide/16 v4, 0x0

    .line 1286
    .local v4, "offset":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/okio/ByteString;->toByteArray()[B

    move-result-object v6

    move-wide v7, v4

    move-wide/from16 v4, p2

    .line 1288
    .end local p2    # "fromIndex":J
    .local v4, "fromIndex":J
    .local v6, "toFind":[B
    .local v7, "offset":J
    :goto_18
    iget v9, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v10, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v9, v10

    .line 1289
    .local v9, "segmentByteCount":I
    int-to-long v10, v9

    cmp-long v10, v4, v10

    if-ltz v10, :cond_25

    .line 1290
    int-to-long v10, v9

    sub-long/2addr v4, v10

    goto :goto_59

    .line 1292
    :cond_25
    iget-object v10, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 1293
    .local v10, "data":[B
    iget v11, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v11, v11

    add-long/2addr v11, v4

    .local v11, "pos":J
    iget v13, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    int-to-long v13, v13

    .local v13, "limit":J
    :goto_2e
    cmp-long v15, v11, v13

    if-gez v15, :cond_56

    .line 1294
    long-to-int v15, v11

    aget-byte v15, v10, v15

    .line 1295
    .local v15, "b":B
    array-length v2, v6

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v2, :cond_50

    move/from16 p2, v2

    aget-byte v2, v6, v3

    .line 1296
    .local v2, "targetByte":B
    if-ne v15, v2, :cond_49

    add-long v16, v7, v11

    iget v3, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    move/from16 p3, v2

    .end local v2    # "targetByte":B
    .local p3, "targetByte":B
    int-to-long v2, v3

    sub-long v16, v16, v2

    return-wide v16

    .end local p3    # "targetByte":B
    .restart local v2    # "targetByte":B
    :cond_49
    move/from16 p3, v2

    .line 1295
    .end local v2    # "targetByte":B
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, p2

    goto :goto_37

    .line 1293
    .end local v15    # "b":B
    :cond_50
    const-wide/16 v2, 0x1

    add-long/2addr v11, v2

    const-wide/16 v2, -0x1

    goto :goto_2e

    .line 1299
    .end local v11    # "pos":J
    .end local v13    # "limit":J
    :cond_56
    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 1301
    .end local v10    # "data":[B
    :goto_59
    int-to-long v2, v9

    add-long/2addr v7, v2

    .line 1302
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 1303
    .end local v9    # "segmentByteCount":I
    iget-object v2, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-ne v1, v2, :cond_64

    .line 1304
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1303
    :cond_64
    const-wide/16 v2, -0x1

    goto :goto_18

    .line 1281
    .end local v1    # "s":Lcom/android/okhttp/okio/Segment;
    .end local v4    # "fromIndex":J
    .end local v6    # "toFind":[B
    .end local v7    # "offset":J
    .restart local p2    # "fromIndex":J
    :cond_67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "fromIndex < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o inputStream()Ljava/io/InputStream;
    .registers 2

    .line 112
    new-instance v0, Lcom/android/okhttp/okio/Buffer$2;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/Buffer$2;-><init>(Lcom/android/okhttp/okio/Buffer;)V

    return-object v0
.end method

.method public greylist-max-o outputStream()Ljava/io/OutputStream;
    .registers 2

    .line 70
    new-instance v0, Lcom/android/okhttp/okio/Buffer$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/Buffer$1;-><init>(Lcom/android/okhttp/okio/Buffer;)V

    return-object v0
.end method

.method greylist-max-o rangeEquals(JLcom/android/okhttp/okio/ByteString;)Z
    .registers 9
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lcom/android/okhttp/okio/ByteString;

    .line 1308
    invoke-virtual {p3}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    .line 1309
    .local v0, "byteCount":I
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr v1, p1

    int-to-long v3, v0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gez v1, :cond_e

    .line 1310
    return v2

    .line 1312
    :cond_e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_21

    .line 1313
    int-to-long v3, v1

    add-long/2addr v3, p1

    invoke-virtual {p0, v3, v4}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v3

    invoke-virtual {p3, v1}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_1e

    .line 1314
    return v2

    .line 1312
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1317
    .end local v1    # "i":I
    :cond_21
    const/4 v1, 0x1

    return v1
.end method

.method public greylist-max-o read([B)I
    .registers 4
    .param p1, "sink"    # [B

    .line 727
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public greylist-max-o read([BII)I
    .registers 11
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 740
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 742
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 743
    .local v0, "s":Lcom/android/okhttp/okio/Segment;
    if-nez v0, :cond_d

    const/4 v1, -0x1

    return v1

    .line 744
    :cond_d
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 745
    .local v1, "toCopy":I
    iget-object v2, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 748
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 750
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v2, v3, :cond_37

    .line 751
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 752
    invoke-static {v0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    .line 755
    :cond_37
    return v1
.end method

.method public greylist-max-o read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 8
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J

    .line 1219
    if-eqz p1, :cond_32

    .line 1220
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1b

    .line 1221
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_11

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1222
    :cond_11
    cmp-long v0, p2, v2

    if-lez v0, :cond_17

    iget-wide p2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 1223
    :cond_17
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 1224
    return-wide p2

    .line 1220
    :cond_1b
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

    .line 1219
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o readAll(Lcom/android/okhttp/okio/Sink;)J
    .registers 6
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 544
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    .line 545
    invoke-interface {p1, p0, v0, v1}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 547
    :cond_b
    return-wide v0
.end method

.method public greylist-max-o readByte()B
    .registers 10

    .line 275
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2a

    .line 277
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 278
    .local v0, "segment":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 279
    .local v1, "pos":I
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 281
    .local v2, "limit":I
    iget-object v3, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 282
    .local v3, "data":[B
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "pos":I
    .local v4, "pos":I
    aget-byte v1, v3, v1

    .line 283
    .local v1, "b":B
    iget-wide v5, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 285
    if-ne v4, v2, :cond_27

    .line 286
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 287
    invoke-static {v0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    goto :goto_29

    .line 289
    :cond_27
    iput v4, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 292
    :goto_29
    return v1

    .line 275
    .end local v0    # "segment":Lcom/android/okhttp/okio/Segment;
    .end local v1    # "b":B
    .end local v2    # "limit":I
    .end local v3    # "data":[B
    .end local v4    # "pos":I
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o readByteArray()[B
    .registers 3

    .line 709
    :try_start_0
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readByteArray(J)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 710
    :catch_7
    move-exception v0

    .line 711
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public greylist-max-o readByteArray(J)[B
    .registers 9
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 716
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 717
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_16

    .line 721
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 722
    .local v0, "result":[B
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->readFully([B)V

    .line 723
    return-object v0

    .line 718
    .end local v0    # "result":[B
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o readByteString()Lcom/android/okhttp/okio/ByteString;
    .registers 3

    .line 527
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public greylist-max-o readByteString(J)Lcom/android/okhttp/okio/ByteString;
    .registers 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 531
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public greylist-max-o readDecimalLong()J
    .registers 21

    .line 413
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e3

    .line 416
    const-wide/16 v1, 0x0

    .line 417
    .local v1, "value":J
    const/4 v3, 0x0

    .line 418
    .local v3, "seen":I
    const/4 v4, 0x0

    .line 419
    .local v4, "negative":Z
    const/4 v5, 0x0

    .line 421
    .local v5, "done":Z
    const-wide v6, -0xcccccccccccccccL

    .line 422
    .local v6, "overflowZone":J
    const-wide/16 v8, -0x7

    .line 425
    .local v8, "overflowDigit":J
    :goto_16
    iget-object v10, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 427
    .local v10, "segment":Lcom/android/okhttp/okio/Segment;
    iget-object v11, v10, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 428
    .local v11, "data":[B
    iget v12, v10, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 429
    .local v12, "pos":I
    iget v13, v10, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 431
    .local v13, "limit":I
    :goto_1e
    if-ge v12, v13, :cond_b8

    .line 432
    aget-byte v14, v11, v12

    .line 433
    .local v14, "b":B
    const/16 v15, 0x30

    if-lt v14, v15, :cond_7e

    const/16 v15, 0x39

    if-gt v14, v15, :cond_7e

    .line 434
    rsub-int/lit8 v15, v14, 0x30

    .line 437
    .local v15, "digit":I
    cmp-long v16, v1, v6

    if-ltz v16, :cond_4a

    cmp-long v16, v1, v6

    if-nez v16, :cond_3d

    move-wide/from16 v16, v6

    move v7, v5

    .end local v5    # "done":Z
    .end local v6    # "overflowZone":J
    .local v7, "done":Z
    .local v16, "overflowZone":J
    int-to-long v5, v15

    cmp-long v5, v5, v8

    if-gez v5, :cond_40

    goto :goto_4d

    .end local v7    # "done":Z
    .end local v16    # "overflowZone":J
    .restart local v5    # "done":Z
    .restart local v6    # "overflowZone":J
    :cond_3d
    move-wide/from16 v16, v6

    move v7, v5

    .line 442
    .end local v5    # "done":Z
    .end local v6    # "overflowZone":J
    .restart local v7    # "done":Z
    .restart local v16    # "overflowZone":J
    :cond_40
    const-wide/16 v5, 0xa

    mul-long/2addr v1, v5

    .line 443
    int-to-long v5, v15

    add-long/2addr v1, v5

    .line 444
    .end local v15    # "digit":I
    move/from16 v18, v7

    move-object/from16 v19, v11

    goto :goto_8e

    .line 437
    .end local v7    # "done":Z
    .end local v16    # "overflowZone":J
    .restart local v5    # "done":Z
    .restart local v6    # "overflowZone":J
    .restart local v15    # "digit":I
    :cond_4a
    move-wide/from16 v16, v6

    move v7, v5

    .line 438
    .end local v5    # "done":Z
    .end local v6    # "overflowZone":J
    .restart local v7    # "done":Z
    .restart local v16    # "overflowZone":J
    :goto_4d
    new-instance v5, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v5}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    invoke-virtual {v5, v1, v2}, Lcom/android/okhttp/okio/Buffer;->writeDecimalLong(J)Lcom/android/okhttp/okio/Buffer;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object v5

    .line 439
    .local v5, "buffer":Lcom/android/okhttp/okio/Buffer;
    if-nez v4, :cond_5f

    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    .line 440
    :cond_5f
    new-instance v6, Ljava/lang/NumberFormatException;

    move/from16 v18, v7

    .end local v7    # "done":Z
    .local v18, "done":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v11

    .end local v11    # "data":[B
    .local v19, "data":[B
    const-string v11, "Number too large: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 433
    .end local v15    # "digit":I
    .end local v16    # "overflowZone":J
    .end local v18    # "done":Z
    .end local v19    # "data":[B
    .local v5, "done":Z
    .restart local v6    # "overflowZone":J
    .restart local v11    # "data":[B
    :cond_7e
    move/from16 v18, v5

    move-wide/from16 v16, v6

    move-object/from16 v19, v11

    .line 444
    .end local v5    # "done":Z
    .end local v6    # "overflowZone":J
    .end local v11    # "data":[B
    .restart local v16    # "overflowZone":J
    .restart local v18    # "done":Z
    .restart local v19    # "data":[B
    const/16 v5, 0x2d

    if-ne v14, v5, :cond_99

    if-nez v3, :cond_99

    .line 445
    const/4 v4, 0x1

    .line 446
    const-wide/16 v5, 0x1

    sub-long/2addr v8, v5

    .line 431
    .end local v14    # "b":B
    :goto_8e
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v6, v16

    move/from16 v5, v18

    move-object/from16 v11, v19

    goto :goto_1e

    .line 448
    .restart local v14    # "b":B
    :cond_99
    if-eqz v3, :cond_9d

    .line 453
    const/4 v5, 0x1

    .line 454
    .end local v18    # "done":Z
    .restart local v5    # "done":Z
    goto :goto_be

    .line 449
    .end local v5    # "done":Z
    .restart local v18    # "done":Z
    :cond_9d
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 431
    .end local v14    # "b":B
    .end local v16    # "overflowZone":J
    .end local v18    # "done":Z
    .end local v19    # "data":[B
    .restart local v5    # "done":Z
    .restart local v6    # "overflowZone":J
    .restart local v11    # "data":[B
    :cond_b8
    move/from16 v18, v5

    move-wide/from16 v16, v6

    move-object/from16 v19, v11

    .line 458
    .end local v6    # "overflowZone":J
    .end local v11    # "data":[B
    .restart local v16    # "overflowZone":J
    .restart local v19    # "data":[B
    :goto_be
    if-ne v12, v13, :cond_ca

    .line 459
    invoke-virtual {v10}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v6

    iput-object v6, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 460
    invoke-static {v10}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    goto :goto_cc

    .line 462
    :cond_ca
    iput v12, v10, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 464
    .end local v10    # "segment":Lcom/android/okhttp/okio/Segment;
    .end local v12    # "pos":I
    .end local v13    # "limit":I
    .end local v19    # "data":[B
    :goto_cc
    if-nez v5, :cond_d7

    iget-object v6, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v6, :cond_d3

    goto :goto_d7

    :cond_d3
    move-wide/from16 v6, v16

    goto/16 :goto_16

    .line 466
    :cond_d7
    :goto_d7
    iget-wide v6, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v10, v3

    sub-long/2addr v6, v10

    iput-wide v6, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 467
    if-eqz v4, :cond_e1

    move-wide v6, v1

    goto :goto_e2

    :cond_e1
    neg-long v6, v1

    :goto_e2
    return-wide v6

    .line 413
    .end local v1    # "value":J
    .end local v3    # "seen":I
    .end local v4    # "negative":Z
    .end local v5    # "done":Z
    .end local v8    # "overflowDigit":J
    .end local v16    # "overflowZone":J
    :cond_e3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "size == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o readFrom(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Buffer;
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/okhttp/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 230
    return-object p0
.end method

.method public greylist-max-o readFrom(Ljava/io/InputStream;J)Lcom/android/okhttp/okio/Buffer;
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_b

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 237
    return-object p0

    .line 235
    :cond_b
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

.method public greylist-max-o readFully(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 7
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 535
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v2, v0, p2

    if-ltz v2, :cond_a

    .line 539
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 540
    return-void

    .line 536
    :cond_a
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 537
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public greylist-max-o readFully([B)V
    .registers 5
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, "offset":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 733
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result v1

    .line 734
    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 735
    add-int/2addr v0, v1

    .line 736
    .end local v1    # "read":I
    goto :goto_1

    .line 734
    .restart local v1    # "read":I
    :cond_f
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 737
    .end local v1    # "read":I
    :cond_15
    return-void
.end method

.method public greylist-max-o readHexadecimalUnsignedLong()J
    .registers 15

    .line 471
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ae

    .line 473
    const-wide/16 v0, 0x0

    .line 474
    .local v0, "value":J
    const/4 v4, 0x0

    .line 475
    .local v4, "seen":I
    const/4 v5, 0x0

    .line 478
    .local v5, "done":Z
    :cond_c
    iget-object v6, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 480
    .local v6, "segment":Lcom/android/okhttp/okio/Segment;
    iget-object v7, v6, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 481
    .local v7, "data":[B
    iget v8, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 482
    .local v8, "pos":I
    iget v9, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 484
    .local v9, "limit":I
    :goto_14
    if-ge v8, v9, :cond_93

    .line 487
    aget-byte v10, v7, v8

    .line 488
    .local v10, "b":B
    const/16 v11, 0x30

    if-lt v10, v11, :cond_23

    const/16 v11, 0x39

    if-gt v10, v11, :cond_23

    .line 489
    add-int/lit8 v11, v10, -0x30

    .local v11, "digit":I
    goto :goto_3c

    .line 490
    .end local v11    # "digit":I
    :cond_23
    const/16 v11, 0x61

    if-lt v10, v11, :cond_30

    const/16 v11, 0x66

    if-gt v10, v11, :cond_30

    .line 491
    add-int/lit8 v11, v10, -0x61

    add-int/lit8 v11, v11, 0xa

    .restart local v11    # "digit":I
    goto :goto_3c

    .line 492
    .end local v11    # "digit":I
    :cond_30
    const/16 v11, 0x41

    if-lt v10, v11, :cond_74

    const/16 v11, 0x46

    if-gt v10, v11, :cond_74

    .line 493
    add-int/lit8 v11, v10, -0x41

    add-int/lit8 v11, v11, 0xa

    .line 505
    .restart local v11    # "digit":I
    :goto_3c
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v0

    cmp-long v12, v12, v2

    if-nez v12, :cond_4c

    .line 510
    const/4 v12, 0x4

    shl-long/2addr v0, v12

    .line 511
    int-to-long v12, v11

    or-long/2addr v0, v12

    .line 484
    .end local v10    # "b":B
    .end local v11    # "digit":I
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 506
    .restart local v10    # "b":B
    .restart local v11    # "digit":I
    :cond_4c
    new-instance v2, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v2}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object v2

    .line 507
    .local v2, "buffer":Lcom/android/okhttp/okio/Buffer;
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Number too large: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 495
    .end local v2    # "buffer":Lcom/android/okhttp/okio/Buffer;
    .end local v11    # "digit":I
    :cond_74
    if-eqz v4, :cond_78

    .line 500
    const/4 v5, 0x1

    .line 501
    goto :goto_93

    .line 496
    :cond_78
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 514
    .end local v10    # "b":B
    :cond_93
    :goto_93
    if-ne v8, v9, :cond_9f

    .line 515
    invoke-virtual {v6}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v10

    iput-object v10, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 516
    invoke-static {v6}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    goto :goto_a1

    .line 518
    :cond_9f
    iput v8, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 520
    .end local v6    # "segment":Lcom/android/okhttp/okio/Segment;
    .end local v7    # "data":[B
    .end local v8    # "pos":I
    .end local v9    # "limit":I
    :goto_a1
    if-nez v5, :cond_a7

    iget-object v6, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v6, :cond_c

    .line 522
    :cond_a7
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v6, v4

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 523
    return-wide v0

    .line 471
    .end local v0    # "value":J
    .end local v4    # "seen":I
    .end local v5    # "done":Z
    :cond_ae
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o readInt()I
    .registers 11

    .line 335
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6c

    .line 337
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 338
    .local v0, "segment":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 339
    .local v1, "pos":I
    iget v4, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 342
    .local v4, "limit":I
    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_35

    .line 343
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 344
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    .line 345
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    .line 346
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 343
    return v2

    .line 349
    :cond_35
    iget-object v5, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 350
    .local v5, "data":[B
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "pos":I
    .local v6, "pos":I
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .local v7, "pos":I
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v1, v6

    .line 354
    .local v1, "i":I
    iget-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr v8, v2

    iput-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 356
    if-ne v7, v4, :cond_69

    .line 357
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 358
    invoke-static {v0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    goto :goto_6b

    .line 360
    :cond_69
    iput v7, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 363
    :goto_6b
    return v1

    .line 335
    .end local v0    # "segment":Lcom/android/okhttp/okio/Segment;
    .end local v1    # "i":I
    .end local v4    # "limit":I
    .end local v5    # "data":[B
    .end local v7    # "pos":I
    :cond_6c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o readIntLe()I
    .registers 2

    .line 405
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/okhttp/okio/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o readLong()J
    .registers 16

    .line 367
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8d

    .line 369
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 370
    .local v0, "segment":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 371
    .local v1, "pos":I
    iget v4, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 374
    .local v4, "limit":I
    sub-int v5, v4, v1

    const/16 v6, 0x20

    const/16 v7, 0x8

    if-ge v5, v7, :cond_2a

    .line 375
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v2, v7

    shl-long/2addr v2, v6

    .line 376
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readInt()I

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v7

    or-long/2addr v2, v5

    .line 375
    return-wide v2

    .line 379
    :cond_2a
    iget-object v5, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 380
    .local v5, "data":[B
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "pos":I
    .local v8, "pos":I
    aget-byte v1, v5, v1

    int-to-long v9, v1

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    const/16 v1, 0x38

    shl-long/2addr v9, v1

    add-int/lit8 v1, v8, 0x1

    .end local v8    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v8, v5, v8

    int-to-long v13, v8

    and-long/2addr v13, v11

    const/16 v8, 0x30

    shl-long/2addr v13, v8

    or-long v8, v9, v13

    add-int/lit8 v10, v1, 0x1

    .end local v1    # "pos":I
    .local v10, "pos":I
    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    const/16 v1, 0x28

    shl-long/2addr v13, v1

    or-long/2addr v8, v13

    add-int/lit8 v1, v10, 0x1

    .end local v10    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v10, v5, v10

    int-to-long v13, v10

    and-long/2addr v13, v11

    shl-long/2addr v13, v6

    or-long/2addr v8, v13

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "pos":I
    .local v6, "pos":I
    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    const/16 v1, 0x18

    shl-long/2addr v13, v1

    or-long/2addr v8, v13

    add-int/lit8 v1, v6, 0x1

    .end local v6    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v6, v5, v6

    int-to-long v13, v6

    and-long/2addr v13, v11

    const/16 v6, 0x10

    shl-long/2addr v13, v6

    or-long/2addr v8, v13

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "pos":I
    .restart local v6    # "pos":I
    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    shl-long/2addr v13, v7

    or-long v7, v8, v13

    add-int/lit8 v1, v6, 0x1

    .end local v6    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v6, v5, v6

    int-to-long v9, v6

    and-long/2addr v9, v11

    or-long v6, v7, v9

    .line 388
    .local v6, "v":J
    iget-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr v8, v2

    iput-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 390
    if-ne v1, v4, :cond_8a

    .line 391
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 392
    invoke-static {v0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    goto :goto_8c

    .line 394
    :cond_8a
    iput v1, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 397
    :goto_8c
    return-wide v6

    .line 367
    .end local v0    # "segment":Lcom/android/okhttp/okio/Segment;
    .end local v1    # "pos":I
    .end local v4    # "limit":I
    .end local v5    # "data":[B
    .end local v6    # "v":J
    :cond_8d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o readLongLe()J
    .registers 3

    .line 409
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/okhttp/okio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o readShort()S
    .registers 11

    .line 306
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4a

    .line 308
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 309
    .local v0, "segment":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 310
    .local v1, "pos":I
    iget v4, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 313
    .local v4, "limit":I
    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_24

    .line 314
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 315
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 316
    .local v2, "s":I
    int-to-short v3, v2

    return v3

    .line 319
    .end local v2    # "s":I
    :cond_24
    iget-object v5, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 320
    .local v5, "data":[B
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "pos":I
    .local v6, "pos":I
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .local v7, "pos":I
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v1, v6

    .line 322
    .local v1, "s":I
    iget-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr v8, v2

    iput-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 324
    if-ne v7, v4, :cond_46

    .line 325
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 326
    invoke-static {v0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    goto :goto_48

    .line 328
    :cond_46
    iput v7, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 331
    :goto_48
    int-to-short v2, v1

    return v2

    .line 306
    .end local v0    # "segment":Lcom/android/okhttp/okio/Segment;
    .end local v1    # "s":I
    .end local v4    # "limit":I
    .end local v5    # "data":[B
    .end local v7    # "pos":I
    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o readShortLe()S
    .registers 2

    .line 401
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/android/okhttp/okio/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public greylist-max-o readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 571
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 572
    if-eqz p3, :cond_6e

    .line 573
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_57

    .line 576
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1a

    const-string v0, ""

    return-object v0

    .line 578
    :cond_1a
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 579
    .local v0, "s":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_31

    .line 581
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readByteArray(J)[B

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 584
    :cond_31
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 585
    .local v1, "result":Ljava/lang/String;
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 586
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 588
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v2, v3, :cond_56

    .line 589
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 590
    invoke-static {v0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    .line 593
    :cond_56
    return-object v1

    .line 574
    .end local v0    # "s":Lcom/android/okhttp/okio/Segment;
    .end local v1    # "result":Ljava/lang/String;
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 564
    :try_start_0
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/okhttp/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 565
    :catch_7
    move-exception v0

    .line 566
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public greylist-max-o readUtf8()Ljava/lang/String;
    .registers 4

    .line 552
    :try_start_0
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    sget-object v2, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/okhttp/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 553
    :catch_9
    move-exception v0

    .line 554
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public greylist-max-o readUtf8(J)Ljava/lang/String;
    .registers 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 559
    sget-object v0, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/okhttp/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o readUtf8CodePoint()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 633
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ae

    .line 635
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v0

    .line 640
    .local v0, "b0":B
    and-int/lit16 v1, v0, 0x80

    const v2, 0xfffd

    if-nez v1, :cond_18

    .line 642
    and-int/lit8 v1, v0, 0x7f

    .line 643
    .local v1, "codePoint":I
    const/4 v3, 0x1

    .line 644
    .local v3, "byteCount":I
    const/4 v4, 0x0

    .local v4, "min":I
    goto :goto_3b

    .line 646
    .end local v1    # "codePoint":I
    .end local v3    # "byteCount":I
    .end local v4    # "min":I
    :cond_18
    and-int/lit16 v1, v0, 0xe0

    const/16 v3, 0xc0

    if-ne v1, v3, :cond_24

    .line 648
    and-int/lit8 v1, v0, 0x1f

    .line 649
    .restart local v1    # "codePoint":I
    const/4 v3, 0x2

    .line 650
    .restart local v3    # "byteCount":I
    const/16 v4, 0x80

    .restart local v4    # "min":I
    goto :goto_3b

    .line 652
    .end local v1    # "codePoint":I
    .end local v3    # "byteCount":I
    .end local v4    # "min":I
    :cond_24
    and-int/lit16 v1, v0, 0xf0

    const/16 v3, 0xe0

    if-ne v1, v3, :cond_30

    .line 654
    and-int/lit8 v1, v0, 0xf

    .line 655
    .restart local v1    # "codePoint":I
    const/4 v3, 0x3

    .line 656
    .restart local v3    # "byteCount":I
    const/16 v4, 0x800

    .restart local v4    # "min":I
    goto :goto_3b

    .line 658
    .end local v1    # "codePoint":I
    .end local v3    # "byteCount":I
    .end local v4    # "min":I
    :cond_30
    and-int/lit16 v1, v0, 0xf8

    const/16 v3, 0xf0

    if-ne v1, v3, :cond_a8

    .line 660
    and-int/lit8 v1, v0, 0x7

    .line 661
    .restart local v1    # "codePoint":I
    const/4 v3, 0x4

    .line 662
    .restart local v3    # "byteCount":I
    const/high16 v4, 0x10000

    .line 670
    .restart local v4    # "min":I
    :goto_3b
    iget-wide v5, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v7, v3

    cmp-long v5, v5, v7

    if-ltz v5, :cond_76

    .line 678
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_43
    if-ge v5, v3, :cond_5d

    .line 679
    int-to-long v6, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v6

    .line 680
    .local v6, "b":B
    and-int/lit16 v7, v6, 0xc0

    const/16 v8, 0x80

    if-ne v7, v8, :cond_58

    .line 682
    shl-int/lit8 v1, v1, 0x6

    .line 683
    and-int/lit8 v7, v6, 0x3f

    or-int/2addr v1, v7

    .line 678
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 685
    .restart local v6    # "b":B
    :cond_58
    int-to-long v7, v5

    invoke-virtual {p0, v7, v8}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    .line 686
    return v2

    .line 690
    .end local v5    # "i":I
    .end local v6    # "b":B
    :cond_5d
    int-to-long v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    .line 692
    const v5, 0x10ffff

    if-le v1, v5, :cond_67

    .line 693
    return v2

    .line 696
    :cond_67
    const v5, 0xd800

    if-lt v1, v5, :cond_72

    const v5, 0xdfff

    if-gt v1, v5, :cond_72

    .line 697
    return v2

    .line 700
    :cond_72
    if-ge v1, v4, :cond_75

    .line 701
    return v2

    .line 704
    :cond_75
    return v1

    .line 671
    :cond_76
    new-instance v2, Ljava/io/EOFException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " (to read code point prefixed 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    .end local v1    # "codePoint":I
    .end local v3    # "byteCount":I
    .end local v4    # "min":I
    :cond_a8
    const-wide/16 v3, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    .line 667
    return v2

    .line 633
    .end local v0    # "b0":B
    :cond_ae
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public greylist-max-o readUtf8Line()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 597
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->indexOf(B)J

    move-result-wide v0

    .line 599
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1b

    .line 600
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_19

    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    return-object v2

    .line 603
    :cond_1b
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method greylist-max-o readUtf8Line(J)Ljava/lang/String;
    .registers 8
    .param p1, "newline"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 618
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_1e

    sub-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_1e

    .line 620
    sub-long v0, p1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "result":Ljava/lang/String;
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    .line 622
    return-object v0

    .line 626
    .end local v0    # "result":Ljava/lang/String;
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 627
    .restart local v0    # "result":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    .line 628
    return-object v0
.end method

.method public greylist-max-o readUtf8LineStrict()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 607
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->indexOf(B)J

    move-result-wide v0

    .line 608
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    .line 614
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 609
    :cond_11
    new-instance v4, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v4}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 610
    .local v4, "data":Lcom/android/okhttp/okio/Buffer;
    const-wide/16 v5, 0x0

    const-wide/16 v2, 0x20

    iget-wide v7, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/okhttp/okio/Buffer;->copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;

    .line 611
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\n not found: size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " content="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
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

.method public greylist-max-o request(J)Z
    .registers 5
    .param p1, "byteCount"    # J

    .line 108
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o require(J)V
    .registers 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 104
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_7

    .line 105
    return-void

    .line 104
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method greylist-max-o segmentSizes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1332
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1333
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget v1, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget v2, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .local v1, "s":Lcom/android/okhttp/okio/Segment;
    :goto_22
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-eq v1, v2, :cond_35

    .line 1336
    iget v2, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v3, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_22

    .line 1338
    .end local v1    # "s":Lcom/android/okhttp/okio/Segment;
    :cond_35
    return-object v0
.end method

.method public greylist-max-o size()J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    return-wide v0
.end method

.method public greylist-max-o skip(J)V
    .registers 8
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 772
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_42

    .line 773
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-eqz v0, :cond_3c

    .line 775
    iget v0, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget v1, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 776
    .local v0, "toSkip":I
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 777
    int-to-long v1, v0

    sub-long/2addr p1, v1

    .line 778
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget v2, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 780
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget v1, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget v2, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v1, v2, :cond_3b

    .line 781
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 782
    .local v1, "toRecycle":Lcom/android/okhttp/okio/Segment;
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 783
    invoke-static {v1}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    .line 785
    .end local v0    # "toSkip":I
    .end local v1    # "toRecycle":Lcom/android/okhttp/okio/Segment;
    :cond_3b
    goto :goto_0

    .line 773
    :cond_3c
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 786
    :cond_42
    return-void
.end method

.method public greylist-max-o snapshot()Lcom/android/okhttp/okio/ByteString;
    .registers 5

    .line 1426
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_f

    .line 1429
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->snapshot(I)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0

    .line 1427
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o snapshot(I)Lcom/android/okhttp/okio/ByteString;
    .registers 3
    .param p1, "byteCount"    # I

    .line 1436
    if-nez p1, :cond_5

    sget-object v0, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    return-object v0

    .line 1437
    :cond_5
    new-instance v0, Lcom/android/okhttp/okio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;-><init>(Lcom/android/okhttp/okio/Buffer;I)V

    return-object v0
.end method

.method public greylist-max-o timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 1327
    sget-object v0, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 1388
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 1389
    const-string v0, "Buffer[size=0]"

    return-object v0

    .line 1392
    :cond_b
    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gtz v0, :cond_33

    .line 1393
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->clone()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 1394
    .local v0, "data":Lcom/android/okhttp/okio/ByteString;
    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Buffer[size=%s data=%s]"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1398
    .end local v0    # "data":Lcom/android/okhttp/okio/ByteString;
    :cond_33
    :try_start_33
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1399
    .local v0, "md5":Ljava/security/MessageDigest;
    iget-object v4, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget-object v4, v4, Lcom/android/okhttp/okio/Segment;->data:[B

    iget-object v5, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget v5, v5, Lcom/android/okhttp/okio/Segment;->pos:I

    iget-object v6, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget v6, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    iget-object v7, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget v7, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 1400
    iget-object v4, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget-object v4, v4, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .local v4, "s":Lcom/android/okhttp/okio/Segment;
    :goto_51
    iget-object v5, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-eq v4, v5, :cond_65

    .line 1401
    iget-object v5, v4, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v6, v4, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v7, v4, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v8, v4, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v0, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 1400
    iget-object v5, v4, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    move-object v4, v5

    goto :goto_51

    .line 1403
    .end local v4    # "s":Lcom/android/okhttp/okio/Segment;
    :cond_65
    const-string v4, "Buffer[size=%s md5=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 1404
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 1403
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_83
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_83} :catch_84

    return-object v1

    .line 1405
    .end local v0    # "md5":Ljava/security/MessageDigest;
    :catch_84
    move-exception v0

    .line 1406
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method greylist-max-o writableSegment(I)Lcom/android/okhttp/okio/Segment;
    .registers 5
    .param p1, "minimumCapacity"    # I

    .line 1113
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2a

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2a

    .line 1115
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v1, :cond_16

    .line 1116
    invoke-static {}, Lcom/android/okhttp/okio/SegmentPool;->take()Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1117
    iput-object v0, v0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iput-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    return-object v0

    .line 1120
    :cond_16
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 1121
    .local v1, "tail":Lcom/android/okhttp/okio/Segment;
    iget v2, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_21

    iget-boolean v0, v1, Lcom/android/okhttp/okio/Segment;->owner:Z

    if-nez v0, :cond_29

    .line 1122
    :cond_21
    invoke-static {}, Lcom/android/okhttp/okio/SegmentPool;->take()Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    move-result-object v1

    .line 1124
    :cond_29
    return-object v1

    .line 1113
    .end local v1    # "tail":Lcom/android/okhttp/okio/Segment;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public greylist-max-o write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;
    .registers 4
    .param p1, "byteString"    # Lcom/android/okhttp/okio/ByteString;

    .line 789
    if-eqz p1, :cond_6

    .line 790
    invoke-virtual {p1, p0}, Lcom/android/okhttp/okio/ByteString;->write(Lcom/android/okhttp/okio/Buffer;)V

    .line 791
    return-object p0

    .line 789
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o write([B)Lcom/android/okhttp/okio/Buffer;
    .registers 4
    .param p1, "source"    # [B

    .line 932
    if-eqz p1, :cond_9

    .line 933
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    return-object v0

    .line 932
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o write([BII)Lcom/android/okhttp/okio/Buffer;
    .registers 11
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 937
    if-eqz p1, :cond_31

    .line 938
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 940
    add-int v0, p2, p3

    .line 941
    .local v0, "limit":I
    :goto_b
    if-ge p2, v0, :cond_2a

    .line 942
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v1

    .line 944
    .local v1, "tail":Lcom/android/okhttp/okio/Segment;
    sub-int v2, v0, p2

    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 945
    .local v2, "toCopy":I
    iget-object v3, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 947
    add-int/2addr p2, v2

    .line 948
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 949
    .end local v1    # "tail":Lcom/android/okhttp/okio/Segment;
    .end local v2    # "toCopy":I
    goto :goto_b

    .line 951
    :cond_2a
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 952
    return-object p0

    .line 937
    .end local v0    # "limit":I
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic greylist-max-o write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o write(Lcom/android/okhttp/okio/Source;J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 8
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 965
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_18

    .line 966
    invoke-interface {p1, p0, p2, p3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    .line 967
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 968
    sub-long/2addr p2, v0

    .line 969
    .end local v0    # "read":J
    goto :goto_0

    .line 967
    .restart local v0    # "read":J
    :cond_12
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 970
    .end local v0    # "read":J
    :cond_18
    return-object p0
.end method

.method public bridge synthetic greylist-max-o write([B)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->write([B)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic greylist-max-o write([BII)Lcom/android/okhttp/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 10
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J

    .line 1178
    if-eqz p1, :cond_93

    .line 1179
    if-eq p1, p0, :cond_8b

    .line 1180
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 1182
    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_8a

    .line 1184
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget v0, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget-object v1, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget v1, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_5c

    .line 1185
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-eqz v0, :cond_27

    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 1186
    .local v0, "tail":Lcom/android/okhttp/okio/Segment;
    :goto_28
    if-eqz v0, :cond_53

    iget-boolean v1, v0, Lcom/android/okhttp/okio/Segment;->owner:Z

    if-eqz v1, :cond_53

    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    .line 1187
    iget-boolean v3, v0, Lcom/android/okhttp/okio/Segment;->shared:Z

    if-eqz v3, :cond_38

    const/4 v3, 0x0

    goto :goto_3a

    :cond_38
    iget v3, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    :goto_3a
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_53

    .line 1189
    iget-object v1, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lcom/android/okhttp/okio/Segment;->writeTo(Lcom/android/okhttp/okio/Segment;I)V

    .line 1190
    iget-wide v1, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr v1, p2

    iput-wide v1, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 1191
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    add-long/2addr v1, p2

    iput-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 1192
    return-void

    .line 1196
    :cond_53
    iget-object v1, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/okio/Segment;->split(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v1

    iput-object v1, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1201
    .end local v0    # "tail":Lcom/android/okhttp/okio/Segment;
    :cond_5c
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1202
    .local v0, "segmentToMove":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 1203
    .local v1, "movedByteCount":J
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v3

    iput-object v3, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1204
    iget-object v3, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v3, :cond_75

    .line 1205
    iput-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1206
    iput-object v0, v0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iput-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_7e

    .line 1208
    :cond_75
    iget-object v3, v3, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 1209
    .local v3, "tail":Lcom/android/okhttp/okio/Segment;
    invoke-virtual {v3, v0}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    move-result-object v3

    .line 1210
    invoke-virtual {v3}, Lcom/android/okhttp/okio/Segment;->compact()V

    .line 1212
    .end local v3    # "tail":Lcom/android/okhttp/okio/Segment;
    :goto_7e
    iget-wide v3, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 1213
    iget-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 1214
    sub-long/2addr p2, v1

    .line 1215
    .end local v0    # "segmentToMove":Lcom/android/okhttp/okio/Segment;
    .end local v1    # "movedByteCount":J
    goto :goto_c

    .line 1216
    :cond_8a
    return-void

    .line 1179
    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1178
    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o writeAll(Lcom/android/okhttp/okio/Source;)J
    .registers 10
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    if-eqz p1, :cond_14

    .line 957
    const-wide/16 v0, 0x0

    .line 958
    .local v0, "totalBytesRead":J
    :goto_4
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v2

    move-wide v4, v2

    .local v4, "readCount":J
    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_13

    .line 959
    add-long/2addr v0, v4

    goto :goto_4

    .line 961
    .end local v4    # "readCount":J
    :cond_13
    return-wide v0

    .line 956
    .end local v0    # "totalBytesRead":J
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o writeByte(I)Lcom/android/okhttp/okio/Buffer;
    .registers 7
    .param p1, "b"    # I

    .line 974
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    .line 975
    .local v0, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v1, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 976
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 977
    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o writeDecimalLong(J)Lcom/android/okhttp/okio/Buffer;
    .registers 14
    .param p1, "v"    # J

    .line 1034
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    .line 1036
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    return-object v0

    .line 1039
    :cond_d
    const/4 v2, 0x0

    .line 1040
    .local v2, "negative":Z
    cmp-long v3, p1, v0

    if-gez v3, :cond_1f

    .line 1041
    neg-long p1, p1

    .line 1042
    cmp-long v3, p1, v0

    if-gez v3, :cond_1e

    .line 1043
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    return-object v0

    .line 1045
    :cond_1e
    const/4 v2, 0x1

    .line 1050
    :cond_1f
    const-wide/32 v3, 0x5f5e100

    cmp-long v3, p1, v3

    const-wide/16 v4, 0xa

    if-gez v3, :cond_6c

    .line 1051
    const-wide/16 v6, 0x2710

    cmp-long v3, p1, v6

    if-gez v3, :cond_4a

    .line 1052
    const-wide/16 v6, 0x64

    cmp-long v3, p1, v6

    if-gez v3, :cond_3e

    .line 1053
    cmp-long v3, p1, v4

    if-gez v3, :cond_3b

    const/4 v3, 0x1

    goto/16 :goto_e4

    :cond_3b
    const/4 v3, 0x2

    goto/16 :goto_e4

    .line 1054
    :cond_3e
    const-wide/16 v6, 0x3e8

    cmp-long v3, p1, v6

    if-gez v3, :cond_47

    const/4 v3, 0x3

    goto/16 :goto_e4

    :cond_47
    const/4 v3, 0x4

    goto/16 :goto_e4

    .line 1055
    :cond_4a
    const-wide/32 v6, 0xf4240

    cmp-long v3, p1, v6

    if-gez v3, :cond_5e

    .line 1056
    const-wide/32 v6, 0x186a0

    cmp-long v3, p1, v6

    if-gez v3, :cond_5b

    const/4 v3, 0x5

    goto/16 :goto_e4

    :cond_5b
    const/4 v3, 0x6

    goto/16 :goto_e4

    .line 1057
    :cond_5e
    const-wide/32 v6, 0x989680

    cmp-long v3, p1, v6

    if-gez v3, :cond_68

    const/4 v3, 0x7

    goto/16 :goto_e4

    :cond_68
    const/16 v3, 0x8

    goto/16 :goto_e4

    .line 1058
    :cond_6c
    const-wide v6, 0xe8d4a51000L

    cmp-long v3, p1, v6

    if-gez v3, :cond_9a

    .line 1059
    const-wide v6, 0x2540be400L

    cmp-long v3, p1, v6

    if-gez v3, :cond_8b

    .line 1060
    const-wide/32 v6, 0x3b9aca00

    cmp-long v3, p1, v6

    if-gez v3, :cond_88

    const/16 v3, 0x9

    goto :goto_e4

    :cond_88
    const/16 v3, 0xa

    goto :goto_e4

    .line 1061
    :cond_8b
    const-wide v6, 0x174876e800L

    cmp-long v3, p1, v6

    if-gez v3, :cond_97

    const/16 v3, 0xb

    goto :goto_e4

    :cond_97
    const/16 v3, 0xc

    goto :goto_e4

    .line 1062
    :cond_9a
    const-wide v6, 0x38d7ea4c68000L

    cmp-long v3, p1, v6

    if-gez v3, :cond_be

    .line 1063
    const-wide v6, 0x9184e72a000L

    cmp-long v3, p1, v6

    if-gez v3, :cond_af

    const/16 v3, 0xd

    goto :goto_e4

    .line 1064
    :cond_af
    const-wide v6, 0x5af3107a4000L

    cmp-long v3, p1, v6

    if-gez v3, :cond_bb

    const/16 v3, 0xe

    goto :goto_e4

    :cond_bb
    const/16 v3, 0xf

    goto :goto_e4

    .line 1065
    :cond_be
    const-wide v6, 0x16345785d8a0000L

    cmp-long v3, p1, v6

    if-gez v3, :cond_d6

    .line 1066
    const-wide v6, 0x2386f26fc10000L

    cmp-long v3, p1, v6

    if-gez v3, :cond_d3

    const/16 v3, 0x10

    goto :goto_e4

    :cond_d3
    const/16 v3, 0x11

    goto :goto_e4

    .line 1067
    :cond_d6
    const-wide v6, 0xde0b6b3a7640000L

    cmp-long v3, p1, v6

    if-gez v3, :cond_e2

    const/16 v3, 0x12

    goto :goto_e4

    :cond_e2
    const/16 v3, 0x13

    :goto_e4
    nop

    .line 1068
    .local v3, "width":I
    if-eqz v2, :cond_e9

    .line 1069
    add-int/lit8 v3, v3, 0x1

    .line 1072
    :cond_e9
    invoke-virtual {p0, v3}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v6

    .line 1073
    .local v6, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v7, v6, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 1074
    .local v7, "data":[B
    iget v8, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v8, v3

    .line 1075
    .local v8, "pos":I
    :goto_f2
    cmp-long v9, p1, v0

    if-eqz v9, :cond_103

    .line 1076
    rem-long v9, p1, v4

    long-to-int v9, v9

    .line 1077
    .local v9, "digit":I
    add-int/lit8 v8, v8, -0x1

    sget-object v10, Lcom/android/okhttp/okio/Buffer;->DIGITS:[B

    aget-byte v10, v10, v9

    aput-byte v10, v7, v8

    .line 1078
    div-long/2addr p1, v4

    .line 1079
    .end local v9    # "digit":I
    goto :goto_f2

    .line 1080
    :cond_103
    if-eqz v2, :cond_10b

    .line 1081
    add-int/lit8 v8, v8, -0x1

    const/16 v0, 0x2d

    aput-byte v0, v7, v8

    .line 1084
    :cond_10b
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v0, v3

    iput v0, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 1085
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v4, v3

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 1086
    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeDecimalLong(J)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;
    .registers 12
    .param p1, "v"    # J

    .line 1090
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 1092
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    return-object v0

    .line 1095
    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1097
    .local v0, "width":I
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v2

    .line 1098
    .local v2, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v3, v2, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 1099
    .local v3, "data":[B
    iget v4, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    .local v4, "pos":I
    iget v5, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    .local v5, "start":I
    :goto_26
    if-lt v4, v5, :cond_36

    .line 1100
    sget-object v6, Lcom/android/okhttp/okio/Buffer;->DIGITS:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v7, v7

    aget-byte v6, v6, v7

    aput-byte v6, v3, v4

    .line 1101
    ushr-long/2addr p1, v1

    .line 1099
    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    .line 1103
    .end local v4    # "pos":I
    .end local v5    # "start":I
    :cond_36
    iget v1, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 1104
    iget-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 1105
    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o writeInt(I)Lcom/android/okhttp/okio/Buffer;
    .registers 9
    .param p1, "i"    # I

    .line 996
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    .line 997
    .local v0, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v1, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 998
    .local v1, "data":[B
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 999
    .local v2, "limit":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "limit":I
    .local v3, "limit":I
    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1000
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "limit":I
    .restart local v2    # "limit":I
    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1001
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "limit":I
    .restart local v3    # "limit":I
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1002
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "limit":I
    .restart local v2    # "limit":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1003
    iput v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 1004
    iget-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 1005
    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeInt(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeInt(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o writeIntLe(I)Lcom/android/okhttp/okio/Buffer;
    .registers 3
    .param p1, "i"    # I

    .line 1009
    invoke-static {p1}, Lcom/android/okhttp/okio/Util;->reverseBytesInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeInt(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic greylist-max-o writeIntLe(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeIntLe(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o writeLong(J)Lcom/android/okhttp/okio/Buffer;
    .registers 12
    .param p1, "v"    # J

    .line 1013
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v1

    .line 1014
    .local v1, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v2, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 1015
    .local v2, "data":[B
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 1016
    .local v3, "limit":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .local v4, "limit":I
    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1017
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1018
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .restart local v4    # "limit":I
    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1019
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1020
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .restart local v4    # "limit":I
    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1021
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1022
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .restart local v4    # "limit":I
    ushr-long v5, p1, v0

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 1023
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "limit":I
    .local v0, "limit":I
    and-long v5, p1, v7

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 1024
    iput v0, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 1025
    iget-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 1026
    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeLong(J)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o writeLongLe(J)Lcom/android/okhttp/okio/Buffer;
    .registers 5
    .param p1, "v"    # J

    .line 1030
    invoke-static {p1, p2}, Lcom/android/okhttp/okio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeLong(J)Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic greylist-max-o writeLongLe(J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeLongLe(J)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o writeShort(I)Lcom/android/okhttp/okio/Buffer;
    .registers 9
    .param p1, "s"    # I

    .line 981
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    .line 982
    .local v0, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v1, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 983
    .local v1, "data":[B
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 984
    .local v2, "limit":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "limit":I
    .local v3, "limit":I
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 985
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "limit":I
    .restart local v2    # "limit":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 986
    iput v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 987
    iget-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 988
    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeShort(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeShort(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o writeShortLe(I)Lcom/android/okhttp/okio/Buffer;
    .registers 3
    .param p1, "s"    # I

    .line 992
    int-to-short v0, p1

    invoke-static {v0}, Lcom/android/okhttp/okio/Util;->reverseBytesShort(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeShort(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic greylist-max-o writeShortLe(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeShortLe(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;
    .registers 8
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 916
    if-eqz p1, :cond_8b

    .line 917
    if-ltz p2, :cond_74

    .line 918
    if-lt p3, p2, :cond_55

    .line 921
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_32

    .line 925
    if-eqz p4, :cond_2a

    .line 926
    sget-object v0, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    return-object v0

    .line 927
    :cond_1b
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 928
    .local v0, "data":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    return-object v1

    .line 925
    .end local v0    # "data":[B
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_74
    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;
    .registers 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 911
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic greylist-max-o writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic greylist-max-o writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o writeTo(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Buffer;
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o writeTo(Ljava/io/OutputStream;J)Lcom/android/okhttp/okio/Buffer;
    .registers 10
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    if-eqz p1, :cond_44

    .line 206
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 208
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 209
    .local v0, "s":Lcom/android/okhttp/okio/Segment;
    :goto_c
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_43

    .line 210
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 211
    .local v1, "toCopy":I
    iget-object v2, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 213
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 214
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 215
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 217
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v2, v3, :cond_42

    .line 218
    move-object v2, v0

    .line 219
    .local v2, "toRecycle":Lcom/android/okhttp/okio/Segment;
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v3

    move-object v0, v3

    iput-object v3, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 220
    invoke-static {v2}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    .line 222
    .end local v1    # "toCopy":I
    .end local v2    # "toRecycle":Lcom/android/okhttp/okio/Segment;
    :cond_42
    goto :goto_c

    .line 224
    :cond_43
    return-object p0

    .line 205
    .end local v0    # "s":Lcom/android/okhttp/okio/Segment;
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;
    .registers 4
    .param p1, "string"    # Ljava/lang/String;

    .line 795
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;
    .registers 16
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .line 799
    if-eqz p1, :cond_131

    .line 800
    if-ltz p2, :cond_11a

    .line 801
    if-lt p3, p2, :cond_fb

    .line 804
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_d8

    .line 810
    move v0, p2

    .local v0, "i":I
    :goto_d
    if-ge v0, p3, :cond_d7

    .line 811
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 813
    .local v1, "c":I
    const/16 v2, 0x80

    if-ge v1, v2, :cond_51

    .line 814
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v3

    .line 815
    .local v3, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v4, v3, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 816
    .local v4, "data":[B
    iget v5, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v5, v0

    .line 817
    .local v5, "segmentOffset":I
    rsub-int v6, v5, 0x2000

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 820
    .local v6, "runLimit":I
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .local v7, "i":I
    add-int/2addr v0, v5

    int-to-byte v8, v1

    aput-byte v8, v4, v0

    .line 824
    :goto_2d
    if-ge v7, v6, :cond_3e

    .line 825
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 826
    if-lt v1, v2, :cond_36

    goto :goto_3e

    .line 827
    :cond_36
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "i":I
    .restart local v0    # "i":I
    add-int/2addr v7, v5

    int-to-byte v8, v1

    aput-byte v8, v4, v7

    move v7, v0

    goto :goto_2d

    .line 830
    .end local v0    # "i":I
    .restart local v7    # "i":I
    :cond_3e
    :goto_3e
    add-int v0, v7, v5

    iget v2, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v0, v2

    .line 831
    .local v0, "runSize":I
    iget v2, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v2, v0

    iput v2, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 832
    iget-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v10, v0

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 834
    .end local v0    # "runSize":I
    .end local v3    # "tail":Lcom/android/okhttp/okio/Segment;
    .end local v4    # "data":[B
    .end local v5    # "segmentOffset":I
    .end local v6    # "runLimit":I
    move v0, v7

    goto/16 :goto_d5

    .end local v7    # "i":I
    .local v0, "i":I
    :cond_51
    const/16 v3, 0x800

    if-ge v1, v3, :cond_66

    .line 836
    shr-int/lit8 v3, v1, 0x6

    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {p0, v3}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 837
    and-int/lit8 v3, v1, 0x3f

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 838
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d5

    .line 840
    :cond_66
    const v3, 0xd800

    const/16 v4, 0x3f

    if-lt v1, v3, :cond_bf

    const v3, 0xdfff

    if-le v1, v3, :cond_73

    goto :goto_bf

    .line 850
    :cond_73
    add-int/lit8 v5, v0, 0x1

    if-ge v5, p3, :cond_7e

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_7f

    :cond_7e
    const/4 v5, 0x0

    .line 851
    .local v5, "low":I
    :goto_7f
    const v6, 0xdbff

    if-gt v1, v6, :cond_b8

    const v6, 0xdc00

    if-lt v5, v6, :cond_b8

    if-le v5, v3, :cond_8c

    goto :goto_b8

    .line 860
    :cond_8c
    const/high16 v3, 0x10000

    const v6, -0xd801

    and-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0xa

    const v7, -0xdc01

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    add-int/2addr v6, v3

    .line 863
    .local v6, "codePoint":I
    shr-int/lit8 v3, v6, 0x12

    or-int/lit16 v3, v3, 0xf0

    invoke-virtual {p0, v3}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 864
    shr-int/lit8 v3, v6, 0xc

    and-int/2addr v3, v4

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 865
    shr-int/lit8 v3, v6, 0x6

    and-int/2addr v3, v4

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 866
    and-int/lit8 v3, v6, 0x3f

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 867
    add-int/lit8 v0, v0, 0x2

    goto :goto_d5

    .line 852
    .end local v6    # "codePoint":I
    :cond_b8
    :goto_b8
    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 853
    add-int/lit8 v0, v0, 0x1

    .line 854
    goto/16 :goto_d

    .line 842
    .end local v5    # "low":I
    :cond_bf
    :goto_bf
    shr-int/lit8 v3, v1, 0xc

    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {p0, v3}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 843
    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v4

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 844
    and-int/lit8 v3, v1, 0x3f

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 845
    add-int/lit8 v0, v0, 0x1

    .line 869
    .end local v1    # "c":I
    :goto_d5
    goto/16 :goto_d

    .line 871
    .end local v0    # "i":I
    :cond_d7
    return-object p0

    .line 805
    :cond_d8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_fb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_11a
    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic greylist-max-o writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic greylist-max-o writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;
    .registers 5
    .param p1, "codePoint"    # I

    .line 875
    const/16 v0, 0x80

    if-ge p1, v0, :cond_9

    .line 877
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    goto/16 :goto_7d

    .line 879
    :cond_9
    const/16 v1, 0x800

    if-ge p1, v1, :cond_1b

    .line 881
    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 882
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    goto :goto_7d

    .line 884
    :cond_1b
    const/high16 v1, 0x10000

    const-string v2, "Unexpected code point: "

    if-ge p1, v1, :cond_5b

    .line 885
    const v1, 0xd800

    if-lt p1, v1, :cond_45

    const v1, 0xdfff

    if-le p1, v1, :cond_2c

    goto :goto_45

    .line 886
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_45
    :goto_45
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 892
    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 893
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    goto :goto_7d

    .line 895
    :cond_5b
    const v1, 0x10ffff

    if-gt p1, v1, :cond_7e

    .line 897
    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 898
    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 899
    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 900
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 907
    :goto_7d
    return-object p0

    .line 903
    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic greylist-max-o writeUtf8CodePoint(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    return-object p1
.end method
