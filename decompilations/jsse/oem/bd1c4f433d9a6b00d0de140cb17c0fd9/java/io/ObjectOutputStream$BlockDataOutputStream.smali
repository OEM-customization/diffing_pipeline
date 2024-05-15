.class Ljava/io/ObjectOutputStream$BlockDataOutputStream;
.super Ljava/io/OutputStream;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockDataOutputStream"
.end annotation


# static fields
.field private static final CHAR_BUF_SIZE:I = 0x100

.field private static final MAX_BLOCK_SIZE:I = 0x400

.field private static final MAX_HEADER_SIZE:I = 0x5


# instance fields
.field private blkmode:Z

.field private final buf:[B

.field private final cbuf:[C

.field private final dout:Ljava/io/DataOutputStream;

.field private final hbuf:[B

.field private final out:Ljava/io/OutputStream;

.field private pos:I

.field private warnOnceWhenWriting:Z


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v1, 0x0

    .line 1830
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1799
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    .line 1801
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    .line 1803
    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    .line 1806
    iput-boolean v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    .line 1808
    iput v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 1831
    iput-object p1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    .line 1832
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    .line 1833
    return-void
.end method

.method private warnIfClosed()V
    .registers 4

    .prologue
    .line 1868
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    if-eqz v0, :cond_15

    .line 1869
    const-string/jumbo v0, "The app is relying on undefined behavior. Attempting to write to a closed ObjectOutputStream could produce corrupt output in a future release of Android."

    .line 1871
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream Closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1869
    invoke-static {v0, v1}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1874
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    .line 1876
    :cond_15
    return-void
.end method

.method private writeBlockHeader(I)V
    .registers 6
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1970
    const/16 v0, 0xff

    if-gt p1, v0, :cond_1d

    .line 1971
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    .line 1972
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 1973
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1979
    :goto_19
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1980
    return-void

    .line 1975
    :cond_1d
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/16 v1, 0x7a

    aput-byte v1, v0, v3

    .line 1976
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    invoke-static {v0, v2, p1}, Ljava/io/Bits;->putInt([BII)V

    .line 1977
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_19
.end method

.method private writeUTFBody(Ljava/lang/String;)V
    .registers 13
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x7f

    const/4 v9, 0x0

    .line 2285
    const/16 v4, 0x3fd

    .line 2286
    .local v4, "limit":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2287
    .local v3, "len":I
    const/4 v5, 0x0

    .local v5, "off":I
    :goto_a
    if-ge v5, v3, :cond_d7

    .line 2288
    sub-int v6, v3, v5

    const/16 v7, 0x100

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2289
    .local v2, "csize":I
    add-int v6, v5, v2

    iget-object v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    invoke-virtual {p1, v5, v6, v7, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 2290
    const/4 v1, 0x0

    .local v1, "cpos":I
    :goto_1c
    if-ge v1, v2, :cond_d4

    .line 2291
    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    aget-char v0, v6, v1

    .line 2292
    .local v0, "c":C
    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2285
    const/16 v7, 0x3fd

    .line 2292
    if-gt v6, v7, :cond_97

    .line 2293
    if-gt v0, v10, :cond_3a

    if-eqz v0, :cond_3a

    .line 2294
    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v8, v0

    aput-byte v8, v6, v7

    .line 2290
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 2295
    :cond_3a
    const/16 v6, 0x7ff

    if-le v0, v6, :cond_72

    .line 2296
    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v7, v7, 0x2

    shr-int/lit8 v8, v0, 0x0

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 2297
    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v7, v7, 0x1

    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 2298
    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v7, v7, 0x0

    shr-int/lit8 v8, v0, 0xc

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 2299
    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, v6, 0x3

    iput v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_37

    .line 2301
    :cond_72
    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v7, v7, 0x1

    shr-int/lit8 v8, v0, 0x0

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 2302
    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v7, v7, 0x0

    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x1f

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 2303
    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_37

    .line 2306
    :cond_97
    if-gt v0, v10, :cond_9f

    if-eqz v0, :cond_9f

    .line 2307
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    goto :goto_37

    .line 2308
    :cond_9f
    const/16 v6, 0x7ff

    if-le v0, v6, :cond_c0

    .line 2309
    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 2310
    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 2311
    shr-int/lit8 v6, v0, 0x0

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    goto/16 :goto_37

    .line 2313
    :cond_c0
    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x1f

    or-int/lit16 v6, v6, 0xc0

    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 2314
    shr-int/lit8 v6, v0, 0x0

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    goto/16 :goto_37

    .line 2318
    .end local v0    # "c":C
    :cond_d4
    add-int/2addr v5, v2

    goto/16 :goto_a

    .line 2320
    .end local v1    # "cpos":I
    .end local v2    # "csize":I
    :cond_d7
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1906
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->flush()V

    .line 1907
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1908
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    .line 1909
    return-void
.end method

.method drain()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1953
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-nez v0, :cond_6

    .line 1954
    return-void

    .line 1956
    :cond_6
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    if-eqz v0, :cond_f

    .line 1957
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBlockHeader(I)V

    .line 1959
    :cond_f
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1960
    iput v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 1961
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1962
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1901
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1902
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1903
    return-void
.end method

.method getBlockDataMode()Z
    .registers 2

    .prologue
    .line 1856
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    return v0
.end method

.method getUTFLength(Ljava/lang/String;)J
    .registers 12
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2220
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2221
    .local v3, "len":I
    const-wide/16 v6, 0x0

    .line 2222
    .local v6, "utflen":J
    const/4 v4, 0x0

    .local v4, "off":I
    :goto_7
    if-ge v4, v3, :cond_3b

    .line 2223
    sub-int v5, v3, v4

    const/16 v8, 0x100

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2224
    .local v2, "csize":I
    add-int v5, v4, v2

    iget-object v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    const/4 v9, 0x0

    invoke-virtual {p1, v4, v5, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 2225
    const/4 v1, 0x0

    .local v1, "cpos":I
    :goto_1a
    if-ge v1, v2, :cond_39

    .line 2226
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    aget-char v0, v5, v1

    .line 2227
    .local v0, "c":C
    const/4 v5, 0x1

    if-lt v0, v5, :cond_2d

    const/16 v5, 0x7f

    if-gt v0, v5, :cond_2d

    .line 2228
    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 2225
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 2229
    :cond_2d
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_35

    .line 2230
    const-wide/16 v8, 0x3

    add-long/2addr v6, v8

    goto :goto_2a

    .line 2232
    :cond_35
    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    goto :goto_2a

    .line 2235
    .end local v0    # "c":C
    :cond_39
    add-int/2addr v4, v2

    goto :goto_7

    .line 2237
    .end local v1    # "cpos":I
    .end local v2    # "csize":I
    :cond_3b
    return-wide v6
.end method

.method setBlockDataMode(Z)Z
    .registers 3
    .param p1, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1843
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    if-ne v0, p1, :cond_7

    .line 1844
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    return v0

    .line 1846
    :cond_7
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1847
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    .line 1848
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1886
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_9

    .line 1887
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1889
    :cond_9
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1890
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1893
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1894
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1897
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1898
    return-void
.end method

.method write([BIIZ)V
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "copy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x400

    .line 1920
    if-nez p4, :cond_14

    iget-boolean v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    :goto_6
    if-nez v1, :cond_16

    .line 1921
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1922
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1923
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1924
    return-void

    .line 1920
    :cond_14
    const/4 v1, 0x1

    goto :goto_6

    .line 1927
    :cond_16
    :goto_16
    if-lez p3, :cond_4d

    .line 1928
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-lt v1, v3, :cond_1f

    .line 1929
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1931
    :cond_1f
    if-lt p3, v3, :cond_36

    xor-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_36

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-nez v1, :cond_36

    .line 1933
    invoke-direct {p0, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBlockHeader(I)V

    .line 1934
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1935
    add-int/lit16 p2, p2, 0x400

    .line 1936
    add-int/lit16 p3, p3, -0x400

    .line 1931
    goto :goto_16

    .line 1938
    :cond_36
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v1, v1, 0x400

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1939
    .local v0, "wlen":I
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1940
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 1941
    add-int/2addr p2, v0

    .line 1942
    sub-int/2addr p3, v0

    goto :goto_16

    .line 1945
    .end local v0    # "wlen":I
    :cond_4d
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1946
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 5
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1991
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_9

    .line 1992
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1994
    :cond_9
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putBoolean([BIZ)V

    .line 1995
    return-void
.end method

.method writeBooleans([ZII)V
    .registers 10
    .param p1, "v"    # [Z
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2104
    add-int v0, p2, p3

    .line 2105
    .local v0, "endoff":I
    :goto_2
    if-ge p2, v0, :cond_2c

    .line 2106
    iget v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v4, 0x400

    if-lt v3, v4, :cond_d

    .line 2107
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 2109
    :cond_d
    iget v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v3, v3, 0x400

    add-int/2addr v3, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, "stop":I
    move v1, p2

    .line 2110
    .end local p2    # "off":I
    .local v1, "off":I
    :goto_17
    if-ge v1, v2, :cond_2a

    .line 2111
    iget-object v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-boolean v5, p1, v1

    invoke-static {v3, v4, v5}, Ljava/io/Bits;->putBoolean([BIZ)V

    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_17

    :cond_2a
    move p2, v1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_2

    .line 2114
    .end local v2    # "stop":I
    :cond_2c
    return-void
.end method

.method public writeByte(I)V
    .registers 5
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1998
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_9

    .line 1999
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 2001
    :cond_9
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 2002
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .registers 12
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2059
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2060
    .local v3, "endoff":I
    const/4 v0, 0x0

    .line 2061
    .local v0, "cpos":I
    const/4 v2, 0x0

    .line 2062
    .local v2, "csize":I
    const/4 v5, 0x0

    .local v5, "off":I
    :goto_7
    if-ge v5, v3, :cond_4c

    .line 2063
    if-lt v0, v2, :cond_1c

    .line 2064
    const/4 v0, 0x0

    .line 2065
    sub-int v7, v3, v5

    const/16 v8, 0x100

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2066
    add-int v7, v5, v2

    iget-object v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    const/4 v9, 0x0

    invoke-virtual {p1, v5, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 2068
    :cond_1c
    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v8, 0x400

    if-lt v7, v8, :cond_25

    .line 2069
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 2071
    :cond_25
    sub-int v7, v2, v0

    iget v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v8, v8, 0x400

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2072
    .local v4, "n":I
    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int v6, v7, v4

    .line 2073
    .local v6, "stop":I
    :goto_33
    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-ge v7, v6, :cond_4a

    .line 2074
    iget-object v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    iget-object v9, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cpos":I
    .local v1, "cpos":I
    aget-char v9, v9, v0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    move v0, v1

    .end local v1    # "cpos":I
    .restart local v0    # "cpos":I
    goto :goto_33

    .line 2076
    :cond_4a
    add-int/2addr v5, v4

    goto :goto_7

    .line 2078
    .end local v4    # "n":I
    .end local v6    # "stop":I
    :cond_4c
    return-void
.end method

.method public writeChar(I)V
    .registers 5
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2005
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x400

    if-gt v0, v1, :cond_17

    .line 2006
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-char v2, p1

    invoke-static {v0, v1, v2}, Ljava/io/Bits;->putChar([BIC)V

    .line 2007
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2011
    :goto_16
    return-void

    .line 2009
    :cond_17
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto :goto_16
.end method

.method public writeChars(Ljava/lang/String;)V
    .registers 8
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2081
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2082
    .local v1, "endoff":I
    const/4 v2, 0x0

    .local v2, "off":I
    :goto_6
    if-ge v2, v1, :cond_1e

    .line 2083
    sub-int v3, v1, v2

    const/16 v4, 0x100

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2084
    .local v0, "csize":I
    add-int v3, v2, v0

    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    invoke-virtual {p1, v2, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 2085
    iget-object v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    invoke-virtual {p0, v3, v5, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars([CII)V

    .line 2086
    add-int/2addr v2, v0

    goto :goto_6

    .line 2088
    .end local v0    # "csize":I
    :cond_1e
    return-void
.end method

.method writeChars([CII)V
    .registers 12
    .param p1, "v"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2117
    const/16 v2, 0x3fe

    .line 2118
    .local v2, "limit":I
    add-int v1, p2, p3

    .local v1, "endoff":I
    move v3, p2

    .line 2119
    .end local p2    # "off":I
    .local v3, "off":I
    :goto_5
    if-ge v3, v1, :cond_39

    .line 2120
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2117
    const/16 v6, 0x3fe

    .line 2120
    if-gt v5, v6, :cond_2e

    .line 2121
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v5, v5, 0x400

    shr-int/lit8 v0, v5, 0x1

    .line 2122
    .local v0, "avail":I
    add-int v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2123
    .local v4, "stop":I
    :goto_19
    if-ge v3, v4, :cond_3a

    .line 2124
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-char v7, p1, v3

    invoke-static {v5, v6, v7}, Ljava/io/Bits;->putChar([BIC)V

    .line 2125
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_19

    .line 2128
    .end local v0    # "avail":I
    .end local v4    # "stop":I
    :cond_2e
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-char v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeChar(I)V

    :goto_37
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_5

    .line 2131
    :cond_39
    return-void

    .restart local v0    # "avail":I
    .restart local v4    # "stop":I
    :cond_3a
    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto :goto_37
.end method

.method public writeDouble(D)V
    .registers 6
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2050
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x400

    if-gt v0, v1, :cond_16

    .line 2051
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1, p2}, Ljava/io/Bits;->putDouble([BID)V

    .line 2052
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2056
    :goto_15
    return-void

    .line 2054
    :cond_16
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_15
.end method

.method writeDoubles([DII)V
    .registers 12
    .param p1, "v"    # [D
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2201
    const/16 v3, 0x3f8

    .line 2202
    .local v3, "limit":I
    add-int v2, p2, p3

    .local v2, "endoff":I
    move v4, p2

    .line 2203
    .end local p2    # "off":I
    .local v4, "off":I
    :goto_5
    if-ge v4, v2, :cond_35

    .line 2204
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2201
    const/16 v6, 0x3f8

    .line 2204
    if-gt v5, v6, :cond_2b

    .line 2205
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v5, v5, 0x400

    shr-int/lit8 v0, v5, 0x3

    .line 2206
    .local v0, "avail":I
    sub-int v5, v2, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2207
    .local v1, "chunklen":I
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {p1, v4, v5, v6, v1}, Ljava/io/ObjectOutputStream;->-wrap0([DI[BII)V

    .line 2208
    add-int p2, v4, v1

    .line 2209
    .end local v4    # "off":I
    .restart local p2    # "off":I
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    shl-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .end local v0    # "avail":I
    .end local v1    # "chunklen":I
    :goto_29
    move v4, p2

    .end local p2    # "off":I
    .restart local v4    # "off":I
    goto :goto_5

    .line 2211
    :cond_2b
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v4, 0x1

    .end local v4    # "off":I
    .restart local p2    # "off":I
    aget-wide v6, p1, v4

    invoke-virtual {v5, v6, v7}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_29

    .line 2214
    .end local p2    # "off":I
    .restart local v4    # "off":I
    :cond_35
    return-void
.end method

.method public writeFloat(F)V
    .registers 4
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2032
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x400

    if-gt v0, v1, :cond_16

    .line 2033
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putFloat([BIF)V

    .line 2034
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2038
    :goto_15
    return-void

    .line 2036
    :cond_16
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_15
.end method

.method writeFloats([FII)V
    .registers 11
    .param p1, "v"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2168
    const/16 v3, 0x3fc

    .line 2169
    .local v3, "limit":I
    add-int v2, p2, p3

    .local v2, "endoff":I
    move v4, p2

    .line 2170
    .end local p2    # "off":I
    .local v4, "off":I
    :goto_5
    if-ge v4, v2, :cond_35

    .line 2171
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2168
    const/16 v6, 0x3fc

    .line 2171
    if-gt v5, v6, :cond_2b

    .line 2172
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v5, v5, 0x400

    shr-int/lit8 v0, v5, 0x2

    .line 2173
    .local v0, "avail":I
    sub-int v5, v2, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2174
    .local v1, "chunklen":I
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {p1, v4, v5, v6, v1}, Ljava/io/ObjectOutputStream;->-wrap1([FI[BII)V

    .line 2175
    add-int p2, v4, v1

    .line 2176
    .end local v4    # "off":I
    .restart local p2    # "off":I
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    shl-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .end local v0    # "avail":I
    .end local v1    # "chunklen":I
    :goto_29
    move v4, p2

    .end local p2    # "off":I
    .restart local v4    # "off":I
    goto :goto_5

    .line 2178
    :cond_2b
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v4, 0x1

    .end local v4    # "off":I
    .restart local p2    # "off":I
    aget v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_29

    .line 2181
    .end local p2    # "off":I
    .restart local v4    # "off":I
    :cond_35
    return-void
.end method

.method public writeInt(I)V
    .registers 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2023
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x400

    if-gt v0, v1, :cond_16

    .line 2024
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putInt([BII)V

    .line 2025
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2029
    :goto_15
    return-void

    .line 2027
    :cond_16
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_15
.end method

.method writeInts([III)V
    .registers 12
    .param p1, "v"    # [I
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2151
    const/16 v2, 0x3fc

    .line 2152
    .local v2, "limit":I
    add-int v1, p2, p3

    .local v1, "endoff":I
    move v3, p2

    .line 2153
    .end local p2    # "off":I
    .local v3, "off":I
    :goto_5
    if-ge v3, v1, :cond_39

    .line 2154
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2151
    const/16 v6, 0x3fc

    .line 2154
    if-gt v5, v6, :cond_2e

    .line 2155
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v5, v5, 0x400

    shr-int/lit8 v0, v5, 0x2

    .line 2156
    .local v0, "avail":I
    add-int v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2157
    .local v4, "stop":I
    :goto_19
    if-ge v3, v4, :cond_3a

    .line 2158
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget v7, p1, v3

    invoke-static {v5, v6, v7}, Ljava/io/Bits;->putInt([BII)V

    .line 2159
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_19

    .line 2162
    .end local v0    # "avail":I
    .end local v4    # "stop":I
    :cond_2e
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_37
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_5

    .line 2165
    :cond_39
    return-void

    .restart local v0    # "avail":I
    .restart local v4    # "stop":I
    :cond_3a
    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto :goto_37
.end method

.method public writeLong(J)V
    .registers 6
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2041
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x400

    if-gt v0, v1, :cond_16

    .line 2042
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1, p2}, Ljava/io/Bits;->putLong([BIJ)V

    .line 2043
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2047
    :goto_15
    return-void

    .line 2045
    :cond_16
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_15
.end method

.method writeLongUTF(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2264
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongUTF(Ljava/lang/String;J)V

    .line 2265
    return-void
.end method

.method writeLongUTF(Ljava/lang/String;J)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2272
    invoke-virtual {p0, p2, p3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLong(J)V

    .line 2273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_10

    .line 2274
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2278
    :goto_f
    return-void

    .line 2276
    :cond_10
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTFBody(Ljava/lang/String;)V

    goto :goto_f
.end method

.method writeLongs([JII)V
    .registers 14
    .param p1, "v"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2184
    const/16 v2, 0x3f8

    .line 2185
    .local v2, "limit":I
    add-int v1, p2, p3

    .local v1, "endoff":I
    move v3, p2

    .line 2186
    .end local p2    # "off":I
    .local v3, "off":I
    :goto_5
    if-ge v3, v1, :cond_39

    .line 2187
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2184
    const/16 v6, 0x3f8

    .line 2187
    if-gt v5, v6, :cond_2e

    .line 2188
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v5, v5, 0x400

    shr-int/lit8 v0, v5, 0x3

    .line 2189
    .local v0, "avail":I
    add-int v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2190
    .local v4, "stop":I
    :goto_19
    if-ge v3, v4, :cond_3a

    .line 2191
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-wide v8, p1, v3

    invoke-static {v5, v6, v8, v9}, Ljava/io/Bits;->putLong([BIJ)V

    .line 2192
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v5, v5, 0x8

    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_19

    .line 2195
    .end local v0    # "avail":I
    .end local v4    # "stop":I
    :cond_2e
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-wide v6, p1, v3

    invoke-virtual {v5, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    :goto_37
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_5

    .line 2198
    :cond_39
    return-void

    .restart local v0    # "avail":I
    .restart local v4    # "stop":I
    :cond_3a
    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto :goto_37
.end method

.method public writeShort(I)V
    .registers 5
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2014
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x400

    if-gt v0, v1, :cond_17

    .line 2015
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Ljava/io/Bits;->putShort([BIS)V

    .line 2016
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2020
    :goto_16
    return-void

    .line 2018
    :cond_17
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_16
.end method

.method writeShorts([SII)V
    .registers 12
    .param p1, "v"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2134
    const/16 v2, 0x3fe

    .line 2135
    .local v2, "limit":I
    add-int v1, p2, p3

    .local v1, "endoff":I
    move v3, p2

    .line 2136
    .end local p2    # "off":I
    .local v3, "off":I
    :goto_5
    if-ge v3, v1, :cond_39

    .line 2137
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2134
    const/16 v6, 0x3fe

    .line 2137
    if-gt v5, v6, :cond_2e

    .line 2138
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v5, v5, 0x400

    shr-int/lit8 v0, v5, 0x1

    .line 2139
    .local v0, "avail":I
    add-int v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2140
    .local v4, "stop":I
    :goto_19
    if-ge v3, v4, :cond_3a

    .line 2141
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-short v7, p1, v3

    invoke-static {v5, v6, v7}, Ljava/io/Bits;->putShort([BIS)V

    .line 2142
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_19

    .line 2145
    .end local v0    # "avail":I
    .end local v4    # "stop":I
    :cond_2e
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-short v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_37
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_5

    .line 2148
    :cond_39
    return-void

    .restart local v0    # "avail":I
    .restart local v4    # "stop":I
    :cond_3a
    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto :goto_37
.end method

.method public writeUTF(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2091
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;J)V

    .line 2092
    return-void
.end method

.method writeUTF(Ljava/lang/String;J)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2247
    const-wide/32 v0, 0xffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_d

    .line 2248
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v0

    .line 2250
    :cond_d
    long-to-int v0, p2

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    .line 2251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1e

    .line 2252
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2256
    :goto_1d
    return-void

    .line 2254
    :cond_1e
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTFBody(Ljava/lang/String;)V

    goto :goto_1d
.end method
