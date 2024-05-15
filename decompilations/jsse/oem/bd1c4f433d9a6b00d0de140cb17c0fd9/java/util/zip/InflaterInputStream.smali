.class public Ljava/util/zip/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "InflaterInputStream.java"


# instance fields
.field private b:[B

.field protected buf:[B

.field protected closed:Z

.field protected inf:Ljava/util/zip/Inflater;

.field protected len:I

.field private reachEOF:Z

.field private singleByteBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 112
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;

    .prologue
    .line 101
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;
    .param p3, "size"    # I

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    .line 63
    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    .line 198
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    .line 85
    if-eqz p1, :cond_17

    if-nez p2, :cond_1d

    .line 86
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 87
    :cond_1d
    if-gtz p3, :cond_28

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_28
    iput-object p2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    .line 91
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    .line 92
    return-void
.end method

.method private ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-eqz v0, :cond_d

    .line 70
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_d
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 191
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    if-eqz v0, :cond_9

    .line 192
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-nez v0, :cond_11

    .line 238
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 239
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    .line 242
    :cond_11
    return-void
.end method

.method protected fill()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 249
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 250
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/InflaterInputStream;->len:I

    .line 251
    iget v0, p0, Ljava/util/zip/InflaterInputStream;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    .line 252
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "Unexpected end of ZLIB input stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1f
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    iget v2, p0, Ljava/util/zip/InflaterInputStream;->len:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 255
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 2
    .param p1, "readlimit"    # I

    .prologue
    monitor-enter p0

    monitor-exit p0

    .line 283
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 126
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 127
    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    aget-byte v0, v0, v3

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    goto :goto_e
.end method

.method public read([BII)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 148
    if-nez p1, :cond_c

    .line 149
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 150
    :cond_c
    if-ltz p2, :cond_10

    if-gez p3, :cond_16

    .line 151
    :cond_10
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 150
    :cond_16
    array-length v3, p1

    sub-int/2addr v3, p2

    if-gt p3, v3, :cond_10

    .line 152
    if-nez p3, :cond_28

    .line 153
    return v4

    .line 162
    .local v1, "n":I
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 163
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    .line 157
    .end local v1    # "n":I
    :cond_28
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    .restart local v1    # "n":I
    if-nez v1, :cond_45

    .line 158
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-nez v3, :cond_40

    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 159
    :cond_40
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    .line 160
    const/4 v3, -0x1

    return v3

    .line 168
    :cond_45
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 169
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z
    :try_end_50
    .catch Ljava/util/zip/DataFormatException; {:try_start_1d .. :try_end_50} :catch_51

    .line 172
    :cond_50
    return v1

    .line 173
    .end local v1    # "n":I
    :catch_51
    move-exception v0

    .line 174
    .local v0, "e":Ljava/util/zip/DataFormatException;
    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Ljava/util/zip/ZipException;

    if-eqz v2, :cond_5e

    .end local v2    # "s":Ljava/lang/String;
    :goto_5a
    invoke-direct {v3, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .restart local v2    # "s":Ljava/lang/String;
    :cond_5e
    const-string/jumbo v2, "Invalid ZLIB data format"

    goto :goto_5a
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 298
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_a

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_f

    .line 209
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "negative skip length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_f
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 212
    const-wide/32 v4, 0x7fffffff

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 213
    .local v1, "max":I
    const/4 v2, 0x0

    .line 214
    .local v2, "total":I
    :goto_1b
    if-ge v2, v1, :cond_34

    .line 215
    sub-int v0, v1, v2

    .line 216
    .local v0, "len":I
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    array-length v3, v3

    if-le v0, v3, :cond_27

    .line 217
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    array-length v0, v3

    .line 219
    :cond_27
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v0}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v0

    .line 220
    const/4 v3, -0x1

    if-ne v0, v3, :cond_36

    .line 221
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    .line 226
    .end local v0    # "len":I
    :cond_34
    int-to-long v4, v2

    return-wide v4

    .line 224
    .restart local v0    # "len":I
    :cond_36
    add-int/2addr v2, v0

    goto :goto_1b
.end method
