.class public Ljava/io/BufferedWriter;
.super Ljava/io/Writer;
.source "BufferedWriter.java"


# static fields
.field private static greylist-max-o defaultCharBufferSize:I


# instance fields
.field private greylist-max-o cb:[C

.field private greylist-max-o lineSeparator:Ljava/lang/String;

.field private greylist-max-o nChars:I

.field private greylist-max-o nextChar:I

.field private greylist-max-o out:Ljava/io/Writer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    const/16 v0, 0x2000

    sput v0, Ljava/io/BufferedWriter;->defaultCharBufferSize:I

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/Writer;)V
    .registers 3
    .param p1, "out"    # Ljava/io/Writer;

    .line 88
    sget v0, Ljava/io/BufferedWriter;->defaultCharBufferSize:I

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 89
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/Writer;I)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "sz"    # I

    .line 101
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 102
    if-lez p2, :cond_20

    .line 104
    iput-object p1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 105
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedWriter;->cb:[C

    .line 106
    iput p2, p0, Ljava/io/BufferedWriter;->nChars:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/BufferedWriter;->nextChar:I

    .line 109
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    .line 111
    return-void

    .line 103
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    if-eqz v0, :cond_5

    .line 117
    return-void

    .line 116
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o min(II)I
    .registers 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 153
    if-ge p1, p2, :cond_3

    return p1

    .line 154
    :cond_3
    return p2
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    if-nez v1, :cond_9

    .line 262
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2e

    return-void

    .line 264
    :cond_9
    const/4 v1, 0x0

    :try_start_a
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_27

    .line 265
    .local v2, "w":Ljava/io/Writer;
    :try_start_c
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1b

    .line 266
    if-eqz v2, :cond_14

    :try_start_11
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_27

    .line 267
    .end local v2    # "w":Ljava/io/Writer;
    :cond_14
    :try_start_14
    iput-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 268
    iput-object v1, p0, Ljava/io/BufferedWriter;->cb:[C

    .line 269
    nop

    .line 270
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_2e

    .line 271
    return-void

    .line 264
    .restart local v2    # "w":Ljava/io/Writer;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_26

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v4

    :try_start_23
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Ljava/io/BufferedWriter;
    :cond_26
    :goto_26
    throw v3
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    .line 267
    .end local v2    # "w":Ljava/io/Writer;
    .restart local p0    # "this":Ljava/io/BufferedWriter;
    :catchall_27
    move-exception v2

    :try_start_28
    iput-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 268
    iput-object v1, p0, Ljava/io/BufferedWriter;->cb:[C

    .line 269
    nop

    .end local p0    # "this":Ljava/io/BufferedWriter;
    throw v2

    .line 270
    .restart local p0    # "this":Ljava/io/BufferedWriter;
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public whitelist core-platform-api test-api flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 254
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 255
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method greylist-max-o flushBuffer()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 127
    iget v1, p0, Ljava/io/BufferedWriter;->nextChar:I

    if-nez v1, :cond_c

    .line 128
    monitor-exit v0

    return-void

    .line 129
    :cond_c
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    .line 130
    iput v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    .line 131
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist core-platform-api test-api newLine()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public whitelist core-platform-api test-api write(I)V
    .registers 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 142
    iget v1, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v2, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v1, v2, :cond_f

    .line 143
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 144
    :cond_f
    iget-object v1, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v2, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 145
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public whitelist core-platform-api test-api write(Ljava/lang/String;II)V
    .registers 11
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 223
    move v1, p2

    .local v1, "b":I
    add-int v2, p2, p3

    .line 224
    .local v2, "t":I
    :goto_9
    if-ge v1, v2, :cond_2d

    .line 225
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    iget v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    sub-int/2addr v3, v4

    sub-int v4, v2, v1

    invoke-direct {p0, v3, v4}, Ljava/io/BufferedWriter;->min(II)I

    move-result v3

    .line 226
    .local v3, "d":I
    add-int v4, v1, v3

    iget-object v5, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v6, p0, Ljava/io/BufferedWriter;->nextChar:I

    invoke-virtual {p1, v1, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 227
    add-int/2addr v1, v3

    .line 228
    iget v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    .line 229
    iget v5, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v4, v5, :cond_2c

    .line 230
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 231
    .end local v3    # "d":I
    :cond_2c
    goto :goto_9

    .line 232
    .end local v1    # "b":I
    .end local v2    # "t":I
    :cond_2d
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public whitelist core-platform-api test-api write([CII)V
    .registers 10
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 176
    if-ltz p2, :cond_4f

    array-length v1, p1

    if-gt p2, v1, :cond_4f

    if-ltz p3, :cond_4f

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_4f

    add-int v1, p2, p3

    if-ltz v1, :cond_4f

    .line 179
    if-nez p3, :cond_1a

    .line 180
    monitor-exit v0

    return-void

    .line 183
    :cond_1a
    iget v1, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt p3, v1, :cond_28

    .line 187
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 188
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 189
    monitor-exit v0

    return-void

    .line 192
    :cond_28
    move v1, p2

    .local v1, "b":I
    add-int v2, p2, p3

    .line 193
    .local v2, "t":I
    :goto_2b
    if-ge v1, v2, :cond_4d

    .line 194
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    iget v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    sub-int/2addr v3, v4

    sub-int v4, v2, v1

    invoke-direct {p0, v3, v4}, Ljava/io/BufferedWriter;->min(II)I

    move-result v3

    .line 195
    .local v3, "d":I
    iget-object v4, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v5, p0, Ljava/io/BufferedWriter;->nextChar:I

    invoke-static {p1, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    add-int/2addr v1, v3

    .line 197
    iget v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    .line 198
    iget v5, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v4, v5, :cond_4c

    .line 199
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 200
    .end local v3    # "d":I
    :cond_4c
    goto :goto_2b

    .line 201
    .end local v1    # "b":I
    .end local v2    # "t":I
    :cond_4d
    monitor-exit v0

    .line 202
    return-void

    .line 178
    :cond_4f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/io/BufferedWriter;
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1

    .line 201
    .restart local p0    # "this":Ljava/io/BufferedWriter;
    .restart local p1    # "cbuf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method
