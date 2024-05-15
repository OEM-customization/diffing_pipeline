.class public Ljava/util/zip/InflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "InflaterOutputStream.java"


# instance fields
.field protected final whitelist test-api buf:[B

.field private greylist-max-o closed:Z

.field protected final whitelist test-api inf:Ljava/util/zip/Inflater;

.field private greylist-max-o usesDefaultInflater:Z

.field private final greylist-max-o wbuf:[B


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 77
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->usesDefaultInflater:Z

    .line 79
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "infl"    # Ljava/util/zip/Inflater;

    .line 90
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;I)V

    .line 91
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;I)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "infl"    # Ljava/util/zip/Inflater;
    .param p3, "bufLen"    # I

    .line 104
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/InflaterOutputStream;->wbuf:[B

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->usesDefaultInflater:Z

    .line 58
    iput-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    .line 107
    if-eqz p1, :cond_2a

    .line 109
    if-eqz p2, :cond_22

    .line 111
    if-lez p3, :cond_1a

    .line 115
    iput-object p2, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    .line 116
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    .line 117
    return-void

    .line 112
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null inflater"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null output"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    if-nez v0, :cond_5

    .line 67
    return-void

    .line 65
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    if-nez v0, :cond_19

    .line 129
    const/4 v0, 0x1

    :try_start_5
    invoke-virtual {p0}, Ljava/util/zip/InflaterOutputStream;->finish()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_10

    .line 131
    iget-object v1, p0, Ljava/util/zip/InflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 132
    iput-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    .line 133
    goto :goto_19

    .line 131
    :catchall_10
    move-exception v1

    iget-object v2, p0, Ljava/util/zip/InflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 132
    iput-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    .line 133
    throw v1

    .line 135
    :cond_19
    :goto_19
    return-void
.end method

.method public whitelist test-api finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->ensureOpen()V

    .line 186
    invoke-virtual {p0}, Ljava/util/zip/InflaterOutputStream;->flush()V

    .line 187
    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->usesDefaultInflater:Z

    if-eqz v0, :cond_f

    .line 188
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 190
    :cond_f
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->ensureOpen()V

    .line 148
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_44

    .line 150
    :goto_b
    :try_start_b
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_31

    .line 154
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v1, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 155
    .local v0, "n":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_29

    .line 156
    goto :goto_31

    .line 160
    :cond_29
    iget-object v1, p0, Ljava/util/zip/InflaterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 161
    .end local v0    # "n":I
    goto :goto_b

    .line 162
    :cond_31
    :goto_31
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V
    :try_end_34
    .catch Ljava/util/zip/DataFormatException; {:try_start_b .. :try_end_34} :catch_35

    .line 170
    goto :goto_44

    .line 163
    :catch_35
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/util/zip/DataFormatException;
    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "msg":Ljava/lang/String;
    if-nez v1, :cond_3e

    .line 167
    const-string v1, "Invalid ZLIB data format"

    .line 169
    :cond_3e
    new-instance v2, Ljava/util/zip/ZipException;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    .end local v0    # "ex":Ljava/util/zip/DataFormatException;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_44
    :goto_44
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->wbuf:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 204
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/zip/InflaterOutputStream;->write([BII)V

    .line 205
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->ensureOpen()V

    .line 224
    if-eqz p1, :cond_6e

    .line 226
    if-ltz p2, :cond_68

    if-ltz p3, :cond_68

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_68

    .line 228
    if-nez p3, :cond_10

    .line 229
    return-void

    .line 238
    :cond_10
    :goto_10
    :try_start_10
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 241
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1c

    .line 242
    goto :goto_46

    .line 245
    :cond_1c
    const/16 v0, 0x200

    if-ge p3, v0, :cond_21

    move v0, p3

    .line 246
    .local v0, "part":I
    :cond_21
    iget-object v1, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 247
    add-int/2addr p2, v0

    .line 248
    sub-int/2addr p3, v0

    .line 253
    .end local v0    # "part":I
    :cond_28
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v1, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 254
    .local v0, "n":I
    if-lez v0, :cond_3b

    .line 255
    iget-object v1, p0, Ljava/util/zip/InflaterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 257
    :cond_3b
    if-gtz v0, :cond_28

    .line 260
    iget-object v1, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 261
    nop

    .line 274
    .end local v0    # "n":I
    :goto_46
    nop

    .line 275
    return-void

    .line 263
    .restart local v0    # "n":I
    :cond_48
    iget-object v1, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v1

    if-nez v1, :cond_51

    .line 266
    .end local v0    # "n":I
    goto :goto_10

    .line 264
    .restart local v0    # "n":I
    :cond_51
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "ZLIB dictionary missing"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/zip/InflaterOutputStream;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1
    :try_end_59
    .catch Ljava/util/zip/DataFormatException; {:try_start_10 .. :try_end_59} :catch_59

    .line 267
    .end local v0    # "n":I
    .restart local p0    # "this":Ljava/util/zip/InflaterOutputStream;
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catch_59
    move-exception v0

    .line 269
    .local v0, "ex":Ljava/util/zip/DataFormatException;
    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "msg":Ljava/lang/String;
    if-nez v1, :cond_62

    .line 271
    const-string v1, "Invalid ZLIB data format"

    .line 273
    :cond_62
    new-instance v2, Ljava/util/zip/ZipException;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    .end local v0    # "ex":Ljava/util/zip/DataFormatException;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_68
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 225
    :cond_6e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null buffer for read"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
