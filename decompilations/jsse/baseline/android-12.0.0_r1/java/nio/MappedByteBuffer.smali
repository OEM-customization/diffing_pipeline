.class public abstract Ljava/nio/MappedByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "MappedByteBuffer.java"


# static fields
.field private static greylist-max-o unused:B


# instance fields
.field private final greylist-max-o fd:Ljava/io/FileDescriptor;


# direct methods
.method constructor greylist-max-o <init>(IIII)V
    .registers 6
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/ByteBuffer;-><init>(IIII)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    .line 98
    return-void
.end method

.method constructor greylist-max-o <init>(IIIILjava/io/FileDescriptor;)V
    .registers 6
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "fd"    # Ljava/io/FileDescriptor;

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/ByteBuffer;-><init>(IIII)V

    .line 86
    iput-object p5, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    .line 87
    return-void
.end method

.method constructor greylist-max-o <init>(IIII[BI)V
    .registers 8
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "buf"    # [B
    .param p6, "offset"    # I

    .line 91
    invoke-direct/range {p0 .. p6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    .line 93
    return-void
.end method

.method private greylist-max-o checkMapped()V
    .registers 2

    .line 101
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_5

    .line 104
    return-void

    .line 103
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private native greylist-max-o force0(Ljava/io/FileDescriptor;JJ)V
.end method

.method private native greylist-max-o isLoaded0(JJI)Z
.end method

.method private native greylist-max-o load0(JJ)V
.end method

.method private greylist-max-o mappingAddress(J)J
    .registers 5
    .param p1, "mappingOffset"    # J

    .line 115
    iget-wide v0, p0, Ljava/nio/MappedByteBuffer;->address:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private greylist-max-o mappingLength(J)J
    .registers 5
    .param p1, "mappingOffset"    # J

    .line 119
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private greylist-max-o mappingOffset()J
    .registers 6

    .line 109
    invoke-static {}, Ljava/nio/Bits;->pageSize()I

    move-result v0

    .line 110
    .local v0, "ps":I
    iget-wide v1, p0, Ljava/nio/MappedByteBuffer;->address:J

    int-to-long v3, v0

    rem-long/2addr v1, v3

    .line 111
    .local v1, "offset":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_10

    move-wide v3, v1

    goto :goto_12

    :cond_10
    int-to-long v3, v0

    add-long/2addr v3, v1

    :goto_12
    return-wide v3
.end method


# virtual methods
.method public final whitelist test-api force()Ljava/nio/MappedByteBuffer;
    .registers 9

    .line 207
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkMapped()V

    .line 208
    iget-wide v0, p0, Ljava/nio/MappedByteBuffer;->address:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    if-eqz v0, :cond_23

    .line 209
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->mappingOffset()J

    move-result-wide v0

    .line 210
    .local v0, "offset":J
    iget-object v3, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0, v1}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    move-result-wide v4

    invoke-direct {p0, v0, v1}, Ljava/nio/MappedByteBuffer;->mappingLength(J)J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Ljava/nio/MappedByteBuffer;->force0(Ljava/io/FileDescriptor;JJ)V

    .line 212
    .end local v0    # "offset":J
    :cond_23
    return-object p0
.end method

.method public final whitelist test-api isLoaded()Z
    .registers 11

    .line 141
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkMapped()V

    .line 142
    iget-wide v0, p0, Ljava/nio/MappedByteBuffer;->address:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_29

    .line 144
    :cond_12
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->mappingOffset()J

    move-result-wide v0

    .line 145
    .local v0, "offset":J
    invoke-direct {p0, v0, v1}, Ljava/nio/MappedByteBuffer;->mappingLength(J)J

    move-result-wide v8

    .line 146
    .local v8, "length":J
    invoke-direct {p0, v0, v1}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    move-result-wide v3

    invoke-static {v8, v9}, Ljava/nio/Bits;->pageCount(J)I

    move-result v7

    move-object v2, p0

    move-wide v5, v8

    invoke-direct/range {v2 .. v7}, Ljava/nio/MappedByteBuffer;->isLoaded0(JJI)Z

    move-result v2

    return v2

    .line 143
    .end local v0    # "offset":J
    .end local v8    # "length":J
    :cond_29
    :goto_29
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api load()Ljava/nio/MappedByteBuffer;
    .registers 14

    .line 163
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkMapped()V

    .line 164
    iget-wide v0, p0, Ljava/nio/MappedByteBuffer;->address:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_47

    .line 166
    :cond_12
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->mappingOffset()J

    move-result-wide v0

    .line 167
    .local v0, "offset":J
    invoke-direct {p0, v0, v1}, Ljava/nio/MappedByteBuffer;->mappingLength(J)J

    move-result-wide v2

    .line 168
    .local v2, "length":J
    invoke-direct {p0, v0, v1}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v2, v3}, Ljava/nio/MappedByteBuffer;->load0(JJ)V

    .line 173
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v4

    .line 174
    .local v4, "unsafe":Lsun/misc/Unsafe;
    invoke-static {}, Ljava/nio/Bits;->pageSize()I

    move-result v5

    .line 175
    .local v5, "ps":I
    invoke-static {v2, v3}, Ljava/nio/Bits;->pageCount(J)I

    move-result v6

    .line 176
    .local v6, "count":I
    invoke-direct {p0, v0, v1}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    move-result-wide v7

    .line 177
    .local v7, "a":J
    const/4 v9, 0x0

    .line 178
    .local v9, "x":B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_33
    if-ge v10, v6, :cond_40

    .line 179
    invoke-virtual {v4, v7, v8}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v11

    xor-int/2addr v11, v9

    int-to-byte v9, v11

    .line 180
    int-to-long v11, v5

    add-long/2addr v7, v11

    .line 178
    add-int/lit8 v10, v10, 0x1

    goto :goto_33

    .line 182
    .end local v10    # "i":I
    :cond_40
    sget-byte v10, Ljava/nio/MappedByteBuffer;->unused:B

    if-eqz v10, :cond_46

    .line 183
    sput-byte v9, Ljava/nio/MappedByteBuffer;->unused:B

    .line 185
    :cond_46
    return-object p0

    .line 165
    .end local v0    # "offset":J
    .end local v2    # "length":J
    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .end local v5    # "ps":I
    .end local v6    # "count":I
    .end local v7    # "a":J
    .end local v9    # "x":B
    :cond_47
    :goto_47
    return-object p0
.end method
