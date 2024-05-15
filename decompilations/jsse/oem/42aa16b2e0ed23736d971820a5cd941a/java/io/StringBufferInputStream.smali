.class public Ljava/io/StringBufferInputStream;
.super Ljava/io/InputStream;
.source "StringBufferInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected whitelist core-platform-api test-api buffer:Ljava/lang/String;

.field protected whitelist core-platform-api test-api count:I

.field protected whitelist core-platform-api test-api pos:I


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
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
.method public declared-synchronized whitelist core-platform-api test-api available()I
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

.method public declared-synchronized whitelist core-platform-api test-api read()I
    .registers 4

    monitor-enter p0

    .line 92
    :try_start_1
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    if-ge v0, v1, :cond_16

    iget-object v0, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_19

    and-int/lit16 v0, v0, 0xff

    goto :goto_17

    .end local p0    # "this":Ljava/io/StringBufferInputStream;
    :cond_16
    const/4 v0, -0x1

    :goto_17
    monitor-exit p0

    return v0

    .line 92
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api read([BII)I
    .registers 11
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 112
    if-eqz p1, :cond_48

    .line 114
    if-ltz p2, :cond_42

    :try_start_5
    array-length v0, p1

    if-gt p2, v0, :cond_42

    if-ltz p3, :cond_42

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_42

    add-int v0, p2, p3

    if-ltz v0, :cond_42

    .line 118
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_4e

    const/4 v2, -0x1

    if-lt v0, v1, :cond_1c

    .line 119
    monitor-exit p0

    return v2

    .line 122
    :cond_1c
    :try_start_1c
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_4e

    sub-int/2addr v0, v1

    .line 123
    .local v0, "avail":I
    if-le p3, v0, :cond_24

    .line 124
    move p3, v0

    .line 127
    :cond_24
    if-gtz p3, :cond_29

    .line 128
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 130
    :cond_29
    :try_start_29
    iget-object v1, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    .line 131
    .local v1, "s":Ljava/lang/String;
    move v3, p3

    .line 132
    .local v3, "cnt":I
    :goto_2c
    add-int/2addr v3, v2

    if-ltz v3, :cond_40

    .line 133
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "off":I
    .local v4, "off":I
    iget v5, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/io/StringBufferInputStream;->pos:I

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, p1, p2
    :try_end_3e
    .catchall {:try_start_29 .. :try_end_3e} :catchall_4e

    move p2, v4

    goto :goto_2c

    .line 136
    .end local v4    # "off":I
    .end local p0    # "this":Ljava/io/StringBufferInputStream;
    .restart local p2    # "off":I
    :cond_40
    monitor-exit p0

    return p3

    .line 116
    .end local v0    # "avail":I
    .end local v1    # "s":Ljava/lang/String;
    .end local v3    # "cnt":I
    :cond_42
    :try_start_42
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 113
    :cond_48
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_4e

    .line 111
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api reset()V
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

.method public declared-synchronized whitelist core-platform-api test-api skip(J)J
    .registers 6
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

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_19

    .line 151
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int/2addr v0, v1

    int-to-long p1, v0

    .line 153
    .end local p0    # "this":Ljava/io/StringBufferInputStream;
    :cond_19
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_22

    .line 154
    monitor-exit p0

    return-wide p1

    .line 146
    .end local p1    # "n":J
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method
