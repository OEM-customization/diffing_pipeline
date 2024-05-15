.class public Ljava/io/StringBufferInputStream;
.super Ljava/io/InputStream;
.source "StringBufferInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected whitelist test-api buffer:Ljava/lang/String;

.field protected whitelist test-api count:I

.field protected whitelist test-api pos:I


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 73
    iput-object p1, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/io/StringBufferInputStream;->count:I

    .line 75
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api available()I
    .registers 3

    monitor-enter p0

    .line 165
    :try_start_1
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 165
    .end local p0    # "this":Ljava/io/StringBufferInputStream;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api read()I
    .registers 4

    monitor-enter p0

    .line 92
    :try_start_1
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    and-int/lit16 v0, v0, 0xff

    goto :goto_15

    .end local p0    # "this":Ljava/io/StringBufferInputStream;
    :cond_14
    const/4 v0, -0x1

    :goto_15
    monitor-exit p0

    return v0

    .line 92
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api read([BII)I
    .registers 11
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 112
    if-eqz p1, :cond_44

    .line 114
    if-ltz p2, :cond_3e

    :try_start_5
    array-length v0, p1

    if-gt p2, v0, :cond_3e

    if-ltz p3, :cond_3e

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3e

    add-int v0, p2, p3

    if-ltz v0, :cond_3e

    .line 118
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_4a

    const/4 v2, -0x1

    if-lt v0, v1, :cond_1c

    .line 119
    monitor-exit p0

    return v2

    .line 122
    :cond_1c
    sub-int/2addr v1, v0

    .line 123
    .local v1, "avail":I
    if-le p3, v1, :cond_20

    .line 124
    move p3, v1

    .line 127
    :cond_20
    if-gtz p3, :cond_25

    .line 128
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 130
    :cond_25
    :try_start_25
    iget-object v0, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    .line 131
    .local v0, "s":Ljava/lang/String;
    move v3, p3

    .line 132
    .local v3, "cnt":I
    :goto_28
    add-int/2addr v3, v2

    if-ltz v3, :cond_3c

    .line 133
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "off":I
    .local v4, "off":I
    iget v5, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/io/StringBufferInputStream;->pos:I

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, p1, p2
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_4a

    move p2, v4

    goto :goto_28

    .line 136
    .end local v4    # "off":I
    .end local p0    # "this":Ljava/io/StringBufferInputStream;
    .restart local p2    # "off":I
    :cond_3c
    monitor-exit p0

    return p3

    .line 116
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "avail":I
    .end local v3    # "cnt":I
    :cond_3e
    :try_start_3e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 113
    :cond_44
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_4a

    .line 111
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 2

    monitor-enter p0

    .line 173
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 174
    monitor-exit p0

    return-void

    .line 172
    .end local p0    # "this":Ljava/io/StringBufferInputStream;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api skip(J)J
    .registers 7
    .param p1, "n"    # J

    monitor-enter p0

    .line 147
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_9

    .line 148
    monitor-exit p0

    return-wide v0

    .line 150
    :cond_9
    :try_start_9
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_16

    .line 151
    sub-int/2addr v0, v1

    int-to-long p1, v0

    .line 153
    :cond_16
    int-to-long v0, v1

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    .line 154
    monitor-exit p0

    return-wide p1

    .line 146
    .end local p0    # "this":Ljava/io/StringBufferInputStream;
    .end local p1    # "n":J
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
