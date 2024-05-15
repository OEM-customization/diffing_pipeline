.class public Ljava/io/BufferedWriter;
.super Ljava/io/Writer;
.source "BufferedWriter.java"


# static fields
.field private static defaultCharBufferSize:I


# instance fields
.field private cb:[C

.field private lineSeparator:Ljava/lang/String;

.field private nChars:I

.field private nextChar:I

.field private out:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/16 v0, 0x2000

    sput v0, Ljava/io/BufferedWriter;->defaultCharBufferSize:I

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 88
    sget v0, Ljava/io/BufferedWriter;->defaultCharBufferSize:I

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "sz"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 102
    if-gtz p2, :cond_f

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_f
    iput-object p1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 105
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedWriter;->cb:[C

    .line 106
    iput p2, p0, Ljava/io/BufferedWriter;->nChars:I

    .line 107
    iput v1, p0, Ljava/io/BufferedWriter;->nextChar:I

    .line 110
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "line.separator"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    .line 111
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
    .line 115
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    if-nez v0, :cond_d

    .line 116
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_d
    return-void
.end method

.method private min(II)I
    .registers 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 153
    if-ge p1, p2, :cond_3

    return p1

    .line 154
    :cond_3
    return p2
.end method


# virtual methods
.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 260
    iget-object v4, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 261
    :try_start_4
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_20

    if-nez v1, :cond_a

    monitor-exit v4

    .line 262
    return-void

    .line 264
    :cond_a
    const/4 v0, 0x0

    .local v0, "w":Ljava/io/Writer;
    :try_start_b
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 265
    .local v0, "w":Ljava/io/Writer;
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_25
    .catchall {:try_start_b .. :try_end_10} :catchall_47

    .line 269
    if-eqz v0, :cond_15

    :try_start_12
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_23
    .catchall {:try_start_12 .. :try_end_15} :catchall_18

    :cond_15
    :goto_15
    if-eqz v2, :cond_3f

    :try_start_17
    throw v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 266
    .end local v0    # "w":Ljava/io/Writer;
    :catchall_18
    move-exception v1

    .line 267
    const/4 v2, 0x0

    :try_start_1a
    iput-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 268
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/io/BufferedWriter;->cb:[C

    .line 266
    throw v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_20

    .line 260
    :catchall_20
    move-exception v1

    monitor-exit v4

    throw v1

    .line 269
    .restart local v0    # "w":Ljava/io/Writer;
    :catch_23
    move-exception v2

    goto :goto_15

    .end local v0    # "w":Ljava/io/Writer;
    :catch_25
    move-exception v1

    :try_start_26
    throw v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_2b
    if-eqz v0, :cond_30

    :try_start_2d
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_33
    .catchall {:try_start_2d .. :try_end_30} :catchall_18

    :cond_30
    :goto_30
    if-eqz v2, :cond_3e

    :try_start_32
    throw v2

    :catch_33
    move-exception v3

    if-nez v2, :cond_38

    move-object v2, v3

    goto :goto_30

    :cond_38
    if-eq v2, v3, :cond_30

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_30

    :cond_3e
    throw v1
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_18

    .line 267
    .restart local v0    # "w":Ljava/io/Writer;
    :cond_3f
    const/4 v1, 0x0

    :try_start_40
    iput-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/BufferedWriter;->cb:[C
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_20

    monitor-exit v4

    .line 271
    return-void

    .line 269
    .end local v0    # "w":Ljava/io/Writer;
    :catchall_47
    move-exception v1

    goto :goto_2b
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 254
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    .line 256
    return-void

    .line 252
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method flushBuffer()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 127
    iget v0, p0, Ljava/io/BufferedWriter;->nextChar:I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    if-nez v0, :cond_c

    monitor-exit v1

    .line 128
    return-void

    .line 129
    :cond_c
    :try_start_c
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/BufferedWriter;->nextChar:I
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1b

    monitor-exit v1

    .line 132
    return-void

    .line 125
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public newLine()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public write(I)V
    .registers 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 142
    iget v0, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v2, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v0, v2, :cond_f

    .line 143
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 144
    :cond_f
    iget-object v0, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v2, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    int-to-char v3, p1

    aput-char v3, v0, v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    .line 146
    return-void

    .line 140
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write(Ljava/lang/String;II)V
    .registers 11
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v4, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 221
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 223
    move v0, p2

    .local v0, "b":I
    add-int v2, p2, p3

    .line 224
    .local v2, "t":I
    :cond_9
    :goto_9
    if-ge v0, v2, :cond_32

    .line 225
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    iget v5, p0, Ljava/io/BufferedWriter;->nextChar:I

    sub-int/2addr v3, v5

    sub-int v5, v2, v0

    invoke-direct {p0, v3, v5}, Ljava/io/BufferedWriter;->min(II)I

    move-result v1

    .line 226
    .local v1, "d":I
    add-int v3, v0, v1

    iget-object v5, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v6, p0, Ljava/io/BufferedWriter;->nextChar:I

    invoke-virtual {p1, v0, v3, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 227
    add-int/2addr v0, v1

    .line 228
    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    .line 229
    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v5, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v3, v5, :cond_9

    .line 230
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2f

    goto :goto_9

    .line 220
    .end local v0    # "b":I
    .end local v1    # "d":I
    .end local v2    # "t":I
    :catchall_2f
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "b":I
    .restart local v2    # "t":I
    :cond_32
    monitor-exit v4

    .line 233
    return-void
.end method

.method public write([CII)V
    .registers 10
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v4, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 175
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 176
    if-ltz p2, :cond_b

    array-length v3, p1

    if-le p2, v3, :cond_14

    .line 178
    :cond_b
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_11

    .line 174
    :catchall_11
    move-exception v3

    monitor-exit v4

    throw v3

    .line 176
    :cond_14
    if-ltz p3, :cond_b

    .line 177
    add-int v3, p2, p3

    :try_start_18
    array-length v5, p1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_11

    if-gt v3, v5, :cond_b

    add-int v3, p2, p3

    if-ltz v3, :cond_b

    .line 179
    if-nez p3, :cond_23

    monitor-exit v4

    .line 180
    return-void

    .line 183
    :cond_23
    :try_start_23
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt p3, v3, :cond_31

    .line 187
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 188
    iget-object v3, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_11

    monitor-exit v4

    .line 189
    return-void

    .line 192
    :cond_31
    move v0, p2

    .local v0, "b":I
    add-int v2, p2, p3

    .line 193
    .local v2, "t":I
    :cond_34
    :goto_34
    if-ge v0, v2, :cond_58

    .line 194
    :try_start_36
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    iget v5, p0, Ljava/io/BufferedWriter;->nextChar:I

    sub-int/2addr v3, v5

    sub-int v5, v2, v0

    invoke-direct {p0, v3, v5}, Ljava/io/BufferedWriter;->min(II)I

    move-result v1

    .line 195
    .local v1, "d":I
    iget-object v3, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v5, p0, Ljava/io/BufferedWriter;->nextChar:I

    invoke-static {p1, v0, v3, v5, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 196
    add-int/2addr v0, v1

    .line 197
    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    .line 198
    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v5, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v3, v5, :cond_34

    .line 199
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V
    :try_end_57
    .catchall {:try_start_36 .. :try_end_57} :catchall_11

    goto :goto_34

    .end local v1    # "d":I
    :cond_58
    monitor-exit v4

    .line 202
    return-void
.end method
