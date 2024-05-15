.class public Ljava/io/LineNumberReader;
.super Ljava/io/BufferedReader;
.source "LineNumberReader.java"


# static fields
.field private static final greylist-max-o maxSkipBufferSize:I = 0x2000


# instance fields
.field private greylist-max-o lineNumber:I

.field private greylist-max-o markedLineNumber:I

.field private greylist-max-o markedSkipLF:Z

.field private greylist-max-o skipBuffer:[C

.field private greylist-max-o skipLF:Z


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;

    .line 72
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    .line 73
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/Reader;I)V
    .registers 4
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "sz"    # I

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getLineNumber()I
    .registers 2

    .line 109
    iget v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    return v0
.end method

.method public whitelist core-platform-api test-api mark(I)V
    .registers 4
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->mark(I)V

    .line 263
    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    iput v1, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    .line 264
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    iput-boolean v1, p0, Ljava/io/LineNumberReader;->markedSkipLF:Z

    .line 265
    monitor-exit v0

    .line 266
    return-void

    .line 265
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    .line 127
    .local v1, "c":I
    iget-boolean v2, p0, Ljava/io/LineNumberReader;->skipLF:Z

    const/16 v3, 0xa

    if-eqz v2, :cond_17

    .line 128
    if-ne v1, v3, :cond_14

    .line 129
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    move v1, v2

    .line 130
    :cond_14
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 132
    :cond_17
    const/4 v2, 0x1

    if-eq v1, v3, :cond_22

    const/16 v4, 0xd

    if-eq v1, v4, :cond_20

    .line 139
    monitor-exit v0

    return v1

    .line 134
    :cond_20
    iput-boolean v2, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 136
    :cond_22
    iget v4, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/2addr v4, v2

    iput v4, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 137
    monitor-exit v0

    return v3

    .line 140
    .end local v1    # "c":I
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public whitelist core-platform-api test-api read([CII)I
    .registers 10
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v1

    .line 168
    .local v1, "n":I
    move v2, p2

    .local v2, "i":I
    :goto_8
    add-int v3, p2, v1

    if-ge v2, v3, :cond_2c

    .line 169
    aget-char v3, p1, v2

    .line 170
    .local v3, "c":I
    iget-boolean v4, p0, Ljava/io/LineNumberReader;->skipLF:Z

    const/16 v5, 0xa

    if-eqz v4, :cond_1a

    .line 171
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 172
    if-ne v3, v5, :cond_1a

    .line 173
    goto :goto_29

    .line 175
    :cond_1a
    const/4 v4, 0x1

    if-eq v3, v5, :cond_24

    const/16 v5, 0xd

    if-eq v3, v5, :cond_22

    goto :goto_29

    .line 177
    :cond_22
    iput-boolean v4, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 179
    :cond_24
    iget v5, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/2addr v5, v4

    iput v5, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 168
    .end local v3    # "c":I
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 184
    .end local v2    # "i":I
    :cond_2c
    monitor-exit v0

    return v1

    .line 185
    .end local v1    # "n":I
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public whitelist core-platform-api test-api readLine()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    invoke-super {p0, v1}, Ljava/io/BufferedReader;->readLine(Z)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "l":Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 203
    if-eqz v1, :cond_14

    .line 204
    iget v2, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 205
    :cond_14
    monitor-exit v0

    return-object v1

    .line 206
    .end local v1    # "l":Ljava/lang/String;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist core-platform-api test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_3
    invoke-super {p0}, Ljava/io/BufferedReader;->reset()V

    .line 278
    iget v1, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    iput v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 279
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->markedSkipLF:Z

    iput-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 280
    monitor-exit v0

    .line 281
    return-void

    .line 280
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist core-platform-api test-api setLineNumber(I)V
    .registers 2
    .param p1, "lineNumber"    # I

    .line 98
    iput p1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 99
    return-void
.end method

.method public whitelist core-platform-api test-api skip(J)J
    .registers 13
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3d

    .line 232
    const-wide/16 v2, 0x2000

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 233
    .local v2, "nn":I
    iget-object v3, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 234
    :try_start_10
    iget-object v4, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    if-eqz v4, :cond_19

    iget-object v4, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    array-length v4, v4

    if-ge v4, v2, :cond_1d

    .line 235
    :cond_19
    new-array v4, v2, [C

    iput-object v4, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    .line 236
    :cond_1d
    move-wide v4, p1

    .line 237
    .local v4, "r":J
    :goto_1e
    cmp-long v6, v4, v0

    if-lez v6, :cond_36

    .line 238
    iget-object v6, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    const/4 v7, 0x0

    int-to-long v8, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p0, v6, v7, v8}, Ljava/io/LineNumberReader;->read([CII)I

    move-result v6

    .line 239
    .local v6, "nc":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_33

    .line 240
    goto :goto_36

    .line 241
    :cond_33
    int-to-long v7, v6

    sub-long/2addr v4, v7

    .line 242
    .end local v6    # "nc":I
    goto :goto_1e

    .line 243
    :cond_36
    :goto_36
    sub-long v0, p1, v4

    monitor-exit v3

    return-wide v0

    .line 244
    .end local v4    # "r":J
    :catchall_3a
    move-exception v0

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_3a

    throw v0

    .line 231
    .end local v2    # "nn":I
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skip() value is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
