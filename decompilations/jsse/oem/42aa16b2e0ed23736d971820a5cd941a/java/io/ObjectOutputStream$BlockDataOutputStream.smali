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
.field private static final greylist-max-o CHAR_BUF_SIZE:I = 0x100

.field private static final greylist-max-o MAX_BLOCK_SIZE:I = 0x400

.field private static final greylist-max-o MAX_HEADER_SIZE:I = 0x5


# instance fields
.field private greylist-max-o blkmode:Z

.field private final greylist-max-o buf:[B

.field private final greylist-max-o cbuf:[C

.field private final greylist-max-o dout:Ljava/io/DataOutputStream;

.field private final greylist-max-o hbuf:[B

.field private final greylist-max-o out:Ljava/io/OutputStream;

.field private greylist-max-o pos:I

.field private greylist-max-o warnOnceWhenWriting:Z


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 1839
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1806
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    .line 1808
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    .line 1810
    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    .line 1813
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    .line 1815
    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 1840
    iput-object p1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    .line 1841
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    .line 1842
    return-void
.end method

.method private greylist-max-o warnIfClosed()V
    .registers 3

    .line 1878
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    if-eqz v0, :cond_13

    .line 1879
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const-string v1, "The app is relying on undefined behavior. Attempting to write to a closed ObjectOutputStream could produce corrupt output in a future release of Android."

    invoke-static {v1, v0}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1884
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    .line 1886
    :cond_13
    return-void
.end method

.method private greylist-max-o writeBlockHeader(I)V
    .registers 6
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1985
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-gt p1, v2, :cond_16

    .line 1986
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/16 v3, 0x77

    aput-byte v3, v2, v1

    .line 1987
    int-to-byte v3, p1

    aput-byte v3, v2, v0

    .line 1988
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_27

    .line 1990
    :cond_16
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/16 v3, 0x7a

    aput-byte v3, v2, v1

    .line 1991
    invoke-static {v2, v0, p1}, Ljava/io/Bits;->putInt([BII)V

    .line 1992
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1995
    :goto_27
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1996
    return-void
.end method

.method private greylist-max-o writeUTFBody(Ljava/lang/String;)V
    .registers 12
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2301
    const/16 v0, 0x3fd

    .line 2302
    .local v0, "limit":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2303
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "off":I
    :goto_7
    if-ge v2, v1, :cond_c1

    .line 2304
    sub-int v3, v1, v2

    const/16 v4, 0x100

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2305
    .local v3, "csize":I
    add-int v4, v2, v3

    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 2306
    const/4 v4, 0x0

    .local v4, "cpos":I
    :goto_1a
    if-ge v4, v3, :cond_be

    .line 2307
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    aget-char v5, v5, v4

    .line 2308
    .local v5, "c":C
    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v7, 0x7ff

    const/16 v8, 0x7f

    if-gt v6, v0, :cond_82

    .line 2309
    if-gt v5, v8, :cond_37

    if-eqz v5, :cond_37

    .line 2310
    iget-object v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v8, v5

    aput-byte v8, v7, v6

    goto/16 :goto_ba

    .line 2311
    :cond_37
    if-le v5, v7, :cond_63

    .line 2312
    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v8, v7, 0x2

    shr-int/lit8 v9, v5, 0x0

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 2313
    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 2314
    add-int/lit8 v8, v7, 0x0

    shr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0xf

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 2315
    add-int/lit8 v7, v7, 0x3

    iput v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_ba

    .line 2317
    :cond_63
    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v9, v5, 0x0

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 2318
    add-int/lit8 v8, v7, 0x0

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x1f

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 2319
    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_ba

    .line 2322
    :cond_82
    if-gt v5, v8, :cond_8a

    if-eqz v5, :cond_8a

    .line 2323
    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    goto :goto_ba

    .line 2324
    :cond_8a
    if-le v5, v7, :cond_a8

    .line 2325
    shr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 2326
    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 2327
    shr-int/lit8 v6, v5, 0x0

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    goto :goto_ba

    .line 2329
    :cond_a8
    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x1f

    or-int/lit16 v6, v6, 0xc0

    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 2330
    shr-int/lit8 v6, v5, 0x0

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 2306
    .end local v5    # "c":C
    :goto_ba
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1a

    .line 2334
    .end local v4    # "cpos":I
    :cond_be
    add-int/2addr v2, v3

    .line 2335
    .end local v3    # "csize":I
    goto/16 :goto_7

    .line 2336
    .end local v2    # "off":I
    :cond_c1
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1917
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->flush()V

    .line 1918
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1920
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    .line 1921
    return-void
.end method

.method greylist-max-o drain()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1967
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-nez v0, :cond_5

    .line 1968
    return-void

    .line 1970
    :cond_5
    iget-boolean v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    if-eqz v1, :cond_c

    .line 1971
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBlockHeader(I)V

    .line 1973
    :cond_c
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1974
    iput v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 1976
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1977
    return-void
.end method

.method public whitelist core-platform-api test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1912
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1913
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1914
    return-void
.end method

.method greylist-max-o getBlockDataMode()Z
    .registers 2

    .line 1865
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    return v0
.end method

.method greylist-max-o getUTFLength(Ljava/lang/String;)J
    .registers 11
    .param p1, "s"    # Ljava/lang/String;

    .line 2236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2237
    .local v0, "len":I
    const-wide/16 v1, 0x0

    .line 2238
    .local v1, "utflen":J
    const/4 v3, 0x0

    .local v3, "off":I
    :goto_7
    if-ge v3, v0, :cond_3b

    .line 2239
    sub-int v4, v0, v3

    const/16 v5, 0x100

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2240
    .local v4, "csize":I
    add-int v5, v3, v4

    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    const/4 v7, 0x0

    invoke-virtual {p1, v3, v5, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 2241
    const/4 v5, 0x0

    .local v5, "cpos":I
    :goto_1a
    if-ge v5, v4, :cond_39

    .line 2242
    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    aget-char v6, v6, v5

    .line 2243
    .local v6, "c":C
    const/4 v7, 0x1

    if-lt v6, v7, :cond_2b

    const/16 v7, 0x7f

    if-gt v6, v7, :cond_2b

    .line 2244
    const-wide/16 v7, 0x1

    add-long/2addr v1, v7

    goto :goto_36

    .line 2245
    :cond_2b
    const/16 v7, 0x7ff

    if-le v6, v7, :cond_33

    .line 2246
    const-wide/16 v7, 0x3

    add-long/2addr v1, v7

    goto :goto_36

    .line 2248
    :cond_33
    const-wide/16 v7, 0x2

    add-long/2addr v1, v7

    .line 2241
    .end local v6    # "c":C
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 2251
    .end local v5    # "cpos":I
    :cond_39
    add-int/2addr v3, v4

    .line 2252
    .end local v4    # "csize":I
    goto :goto_7

    .line 2253
    .end local v3    # "off":I
    :cond_3b
    return-wide v1
.end method

.method greylist-max-o setBlockDataMode(Z)Z
    .registers 3
    .param p1, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1852
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    if-ne v0, p1, :cond_5

    .line 1853
    return v0

    .line 1855
    :cond_5
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1856
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    .line 1857
    xor-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1897
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_9

    .line 1898
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1900
    :cond_9
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1901
    return-void
.end method

.method public whitelist core-platform-api test-api write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1904
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1905
    return-void
.end method

.method public whitelist core-platform-api test-api write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1908
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1909
    return-void
.end method

.method greylist-max-o write([BIIZ)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "copy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1932
    if-nez p4, :cond_12

    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    if-nez v0, :cond_12

    .line 1933
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1934
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1936
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1937
    return-void

    .line 1940
    :cond_12
    :goto_12
    if-lez p3, :cond_48

    .line 1941
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_1d

    .line 1942
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1944
    :cond_1d
    if-lt p3, v1, :cond_32

    if-nez p4, :cond_32

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-nez v0, :cond_32

    .line 1946
    invoke-direct {p0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBlockHeader(I)V

    .line 1947
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 1948
    add-int/lit16 p2, p2, 0x400

    .line 1949
    add-int/lit16 p3, p3, -0x400

    goto :goto_12

    .line 1951
    :cond_32
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    sub-int/2addr v1, v0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1952
    .local v0, "wlen":I
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1953
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 1954
    add-int/2addr p2, v0

    .line 1955
    sub-int/2addr p3, v0

    .line 1956
    .end local v0    # "wlen":I
    goto :goto_12

    .line 1959
    :cond_48
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1960
    return-void
.end method

.method public whitelist core-platform-api test-api writeBoolean(Z)V
    .registers 5
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2007
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_9

    .line 2008
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 2010
    :cond_9
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putBoolean([BIZ)V

    .line 2011
    return-void
.end method

.method greylist-max-o writeBooleans([ZII)V
    .registers 9
    .param p1, "v"    # [Z
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2120
    add-int v0, p2, p3

    .line 2121
    .local v0, "endoff":I
    :goto_2
    if-ge p2, v0, :cond_29

    .line 2122
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v2, 0x400

    if-lt v1, v2, :cond_d

    .line 2123
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 2125
    :cond_d
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    sub-int/2addr v2, v1

    add-int/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2126
    .local v1, "stop":I
    :goto_15
    if-ge p2, v1, :cond_28

    .line 2127
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v4, p2, 0x1

    .end local p2    # "off":I
    .local v4, "off":I
    aget-boolean p2, p1, p2

    invoke-static {v2, v3, p2}, Ljava/io/Bits;->putBoolean([BIZ)V

    move p2, v4

    goto :goto_15

    .line 2129
    .end local v1    # "stop":I
    .end local v4    # "off":I
    .restart local p2    # "off":I
    :cond_28
    goto :goto_2

    .line 2130
    :cond_29
    return-void
.end method

.method public whitelist core-platform-api test-api writeByte(I)V
    .registers 5
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2014
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_9

    .line 2015
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 2017
    :cond_9
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 2018
    return-void
.end method

.method public whitelist core-platform-api test-api writeBytes(Ljava/lang/String;)V
    .registers 12
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2075
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2076
    .local v0, "endoff":I
    const/4 v1, 0x0

    .line 2077
    .local v1, "cpos":I
    const/4 v2, 0x0

    .line 2078
    .local v2, "csize":I
    const/4 v3, 0x0

    .local v3, "off":I
    :goto_7
    if-ge v3, v0, :cond_48

    .line 2079
    if-lt v1, v2, :cond_1c

    .line 2080
    const/4 v1, 0x0

    .line 2081
    sub-int v4, v0, v3

    const/16 v5, 0x100

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2082
    add-int v4, v3, v2

    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 2084
    :cond_1c
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v5, 0x400

    if-lt v4, v5, :cond_25

    .line 2085
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 2087
    :cond_25
    sub-int v4, v2, v1

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2088
    .local v4, "n":I
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/2addr v5, v4

    .line 2089
    .local v5, "stop":I
    :goto_31
    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-ge v6, v5, :cond_46

    .line 2090
    iget-object v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    iget-object v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    add-int/lit8 v9, v1, 0x1

    .end local v1    # "cpos":I
    .local v9, "cpos":I
    aget-char v1, v8, v1

    int-to-byte v1, v1

    aput-byte v1, v7, v6

    move v1, v9

    goto :goto_31

    .line 2092
    .end local v9    # "cpos":I
    .restart local v1    # "cpos":I
    :cond_46
    add-int/2addr v3, v4

    .line 2093
    .end local v4    # "n":I
    .end local v5    # "stop":I
    goto :goto_7

    .line 2094
    .end local v3    # "off":I
    :cond_48
    return-void
.end method

.method public whitelist core-platform-api test-api writeChar(I)V
    .registers 5
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2021
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v1, v0, 0x2

    const/16 v2, 0x400

    if-gt v1, v2, :cond_15

    .line 2022
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    int-to-char v2, p1

    invoke-static {v1, v0, v2}, Ljava/io/Bits;->putChar([BIC)V

    .line 2023
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_1a

    .line 2025
    :cond_15
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2027
    :goto_1a
    return-void
.end method

.method public whitelist core-platform-api test-api writeChars(Ljava/lang/String;)V
    .registers 8
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2097
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2098
    .local v0, "endoff":I
    const/4 v1, 0x0

    .local v1, "off":I
    :goto_5
    if-ge v1, v0, :cond_1e

    .line 2099
    sub-int v2, v0, v1

    const/16 v3, 0x100

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2100
    .local v2, "csize":I
    add-int v3, v1, v2

    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 2101
    iget-object v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    invoke-virtual {p0, v3, v5, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars([CII)V

    .line 2102
    add-int/2addr v1, v2

    .line 2103
    .end local v2    # "csize":I
    goto :goto_5

    .line 2104
    .end local v1    # "off":I
    :cond_1e
    return-void
.end method

.method greylist-max-o writeChars([CII)V
    .registers 11
    .param p1, "v"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2133
    const/16 v0, 0x3fe

    .line 2134
    .local v0, "limit":I
    add-int v1, p2, p3

    .line 2135
    .local v1, "endoff":I
    :goto_4
    if-ge p2, v1, :cond_35

    .line 2136
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-gt v2, v0, :cond_2a

    .line 2137
    rsub-int v2, v2, 0x400

    shr-int/lit8 v2, v2, 0x1

    .line 2138
    .local v2, "avail":I
    add-int v3, p2, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2139
    .local v3, "stop":I
    :goto_14
    if-ge p2, v3, :cond_29

    .line 2140
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, p2, 0x1

    .end local p2    # "off":I
    .local v6, "off":I
    aget-char p2, p1, p2

    invoke-static {v4, v5, p2}, Ljava/io/Bits;->putChar([BIC)V

    .line 2141
    iget p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move p2, v6

    goto :goto_14

    .line 2143
    .end local v2    # "avail":I
    .end local v3    # "stop":I
    .end local v6    # "off":I
    .restart local p2    # "off":I
    :cond_29
    goto :goto_4

    .line 2144
    :cond_2a
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-char p2, p1, p2

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeChar(I)V

    move p2, v3

    goto :goto_4

    .line 2147
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_35
    return-void
.end method

.method public whitelist core-platform-api test-api writeDouble(D)V
    .registers 6
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2066
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v1, v0, 0x8

    const/16 v2, 0x400

    if-gt v1, v2, :cond_14

    .line 2067
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    invoke-static {v1, v0, p1, p2}, Ljava/io/Bits;->putDouble([BID)V

    .line 2068
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_19

    .line 2070
    :cond_14
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 2072
    :goto_19
    return-void
.end method

.method greylist-max-o writeDoubles([DII)V
    .registers 10
    .param p1, "v"    # [D
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2217
    const/16 v0, 0x3f8

    .line 2218
    .local v0, "limit":I
    add-int v1, p2, p3

    .line 2219
    .local v1, "endoff":I
    :goto_4
    if-ge p2, v1, :cond_2f

    .line 2220
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-gt v2, v0, :cond_24

    .line 2221
    rsub-int v2, v2, 0x400

    shr-int/lit8 v2, v2, 0x3

    .line 2222
    .local v2, "avail":I
    sub-int v3, v1, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2223
    .local v3, "chunklen":I
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    # invokes: Ljava/io/ObjectOutputStream;->doublesToBytes([DI[BII)V
    invoke-static {p1, p2, v4, v5, v3}, Ljava/io/ObjectOutputStream;->access$300([DI[BII)V

    .line 2224
    add-int/2addr p2, v3

    .line 2225
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    shl-int/lit8 v5, v3, 0x3

    add-int/2addr v4, v5

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2226
    .end local v2    # "avail":I
    .end local v3    # "chunklen":I
    goto :goto_4

    .line 2227
    :cond_24
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-wide v4, p1, p2

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeDouble(D)V

    move p2, v3

    goto :goto_4

    .line 2230
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_2f
    return-void
.end method

.method public whitelist core-platform-api test-api writeFloat(F)V
    .registers 5
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2048
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v1, v0, 0x4

    const/16 v2, 0x400

    if-gt v1, v2, :cond_14

    .line 2049
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    invoke-static {v1, v0, p1}, Ljava/io/Bits;->putFloat([BIF)V

    .line 2050
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_19

    .line 2052
    :cond_14
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2054
    :goto_19
    return-void
.end method

.method greylist-max-o writeFloats([FII)V
    .registers 10
    .param p1, "v"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2184
    const/16 v0, 0x3fc

    .line 2185
    .local v0, "limit":I
    add-int v1, p2, p3

    .line 2186
    .local v1, "endoff":I
    :goto_4
    if-ge p2, v1, :cond_2f

    .line 2187
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-gt v2, v0, :cond_24

    .line 2188
    rsub-int v2, v2, 0x400

    shr-int/lit8 v2, v2, 0x2

    .line 2189
    .local v2, "avail":I
    sub-int v3, v1, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2190
    .local v3, "chunklen":I
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    # invokes: Ljava/io/ObjectOutputStream;->floatsToBytes([FI[BII)V
    invoke-static {p1, p2, v4, v5, v3}, Ljava/io/ObjectOutputStream;->access$200([FI[BII)V

    .line 2191
    add-int/2addr p2, v3

    .line 2192
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2193
    .end local v2    # "avail":I
    .end local v3    # "chunklen":I
    goto :goto_4

    .line 2194
    :cond_24
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget p2, p1, p2

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move p2, v3

    goto :goto_4

    .line 2197
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_2f
    return-void
.end method

.method public whitelist core-platform-api test-api writeInt(I)V
    .registers 5
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2039
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v1, v0, 0x4

    const/16 v2, 0x400

    if-gt v1, v2, :cond_14

    .line 2040
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    invoke-static {v1, v0, p1}, Ljava/io/Bits;->putInt([BII)V

    .line 2041
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_19

    .line 2043
    :cond_14
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2045
    :goto_19
    return-void
.end method

.method greylist-max-o writeInts([III)V
    .registers 11
    .param p1, "v"    # [I
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2167
    const/16 v0, 0x3fc

    .line 2168
    .local v0, "limit":I
    add-int v1, p2, p3

    .line 2169
    .local v1, "endoff":I
    :goto_4
    if-ge p2, v1, :cond_35

    .line 2170
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-gt v2, v0, :cond_2a

    .line 2171
    rsub-int v2, v2, 0x400

    shr-int/lit8 v2, v2, 0x2

    .line 2172
    .local v2, "avail":I
    add-int v3, p2, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2173
    .local v3, "stop":I
    :goto_14
    if-ge p2, v3, :cond_29

    .line 2174
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, p2, 0x1

    .end local p2    # "off":I
    .local v6, "off":I
    aget p2, p1, p2

    invoke-static {v4, v5, p2}, Ljava/io/Bits;->putInt([BII)V

    .line 2175
    iget p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move p2, v6

    goto :goto_14

    .line 2177
    .end local v2    # "avail":I
    .end local v3    # "stop":I
    .end local v6    # "off":I
    .restart local p2    # "off":I
    :cond_29
    goto :goto_4

    .line 2178
    :cond_2a
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget p2, p1, p2

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    move p2, v3

    goto :goto_4

    .line 2181
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_35
    return-void
.end method

.method public whitelist core-platform-api test-api writeLong(J)V
    .registers 6
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2057
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v1, v0, 0x8

    const/16 v2, 0x400

    if-gt v1, v2, :cond_14

    .line 2058
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    invoke-static {v1, v0, p1, p2}, Ljava/io/Bits;->putLong([BIJ)V

    .line 2059
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_19

    .line 2061
    :cond_14
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2063
    :goto_19
    return-void
.end method

.method greylist-max-o writeLongUTF(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2280
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongUTF(Ljava/lang/String;J)V

    .line 2281
    return-void
.end method

.method greylist-max-o writeLongUTF(Ljava/lang/String;J)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2288
    invoke-virtual {p0, p2, p3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLong(J)V

    .line 2289
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_10

    .line 2290
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_13

    .line 2292
    :cond_10
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTFBody(Ljava/lang/String;)V

    .line 2294
    :goto_13
    return-void
.end method

.method greylist-max-o writeLongs([JII)V
    .registers 13
    .param p1, "v"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2200
    const/16 v0, 0x3f8

    .line 2201
    .local v0, "limit":I
    add-int v1, p2, p3

    .line 2202
    .local v1, "endoff":I
    :goto_4
    if-ge p2, v1, :cond_35

    .line 2203
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-gt v2, v0, :cond_2a

    .line 2204
    rsub-int v2, v2, 0x400

    shr-int/lit8 v2, v2, 0x3

    .line 2205
    .local v2, "avail":I
    add-int v3, p2, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2206
    .local v3, "stop":I
    :goto_14
    if-ge p2, v3, :cond_29

    .line 2207
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, p2, 0x1

    .end local p2    # "off":I
    .local v6, "off":I
    aget-wide v7, p1, p2

    invoke-static {v4, v5, v7, v8}, Ljava/io/Bits;->putLong([BIJ)V

    .line 2208
    iget p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, p2, 0x8

    iput p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move p2, v6

    goto :goto_14

    .line 2210
    .end local v2    # "avail":I
    .end local v3    # "stop":I
    .end local v6    # "off":I
    .restart local p2    # "off":I
    :cond_29
    goto :goto_4

    .line 2211
    :cond_2a
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-wide v4, p1, p2

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    move p2, v3

    goto :goto_4

    .line 2214
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_35
    return-void
.end method

.method public whitelist core-platform-api test-api writeShort(I)V
    .registers 5
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2030
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v1, v0, 0x2

    const/16 v2, 0x400

    if-gt v1, v2, :cond_15

    .line 2031
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    int-to-short v2, p1

    invoke-static {v1, v0, v2}, Ljava/io/Bits;->putShort([BIS)V

    .line 2032
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_1a

    .line 2034
    :cond_15
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2036
    :goto_1a
    return-void
.end method

.method greylist-max-o writeShorts([SII)V
    .registers 11
    .param p1, "v"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2150
    const/16 v0, 0x3fe

    .line 2151
    .local v0, "limit":I
    add-int v1, p2, p3

    .line 2152
    .local v1, "endoff":I
    :goto_4
    if-ge p2, v1, :cond_35

    .line 2153
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-gt v2, v0, :cond_2a

    .line 2154
    rsub-int v2, v2, 0x400

    shr-int/lit8 v2, v2, 0x1

    .line 2155
    .local v2, "avail":I
    add-int v3, p2, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2156
    .local v3, "stop":I
    :goto_14
    if-ge p2, v3, :cond_29

    .line 2157
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, p2, 0x1

    .end local p2    # "off":I
    .local v6, "off":I
    aget-short p2, p1, p2

    invoke-static {v4, v5, p2}, Ljava/io/Bits;->putShort([BIS)V

    .line 2158
    iget p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move p2, v6

    goto :goto_14

    .line 2160
    .end local v2    # "avail":I
    .end local v3    # "stop":I
    .end local v6    # "off":I
    .restart local p2    # "off":I
    :cond_29
    goto :goto_4

    .line 2161
    :cond_2a
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-short p2, p1, p2

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    move p2, v3

    goto :goto_4

    .line 2164
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_35
    return-void
.end method

.method public whitelist core-platform-api test-api writeUTF(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2107
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;J)V

    .line 2108
    return-void
.end method

.method greylist-max-o writeUTF(Ljava/lang/String;J)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2263
    const-wide/32 v0, 0xffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1c

    .line 2266
    long-to-int v0, p2

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    .line 2267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_18

    .line 2268
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_1b

    .line 2270
    :cond_18
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTFBody(Ljava/lang/String;)V

    .line 2272
    :goto_1b
    return-void

    .line 2264
    :cond_1c
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v0
.end method
