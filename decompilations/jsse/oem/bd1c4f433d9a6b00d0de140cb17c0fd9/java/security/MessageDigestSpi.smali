.class public abstract Ljava/security/MessageDigestSpi;
.super Ljava/lang/Object;
.source "MessageDigestSpi.java"


# instance fields
.field private tempArray:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 200
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_9

    .line 201
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 203
    :cond_9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected engineDigest([BII)I
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    move-result-object v0

    .line 177
    .local v0, "digest":[B
    array-length v1, v0

    if-ge p3, v1, :cond_10

    .line 178
    new-instance v1, Ljava/security/DigestException;

    const-string/jumbo v2, "partial digests not returned"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_10
    array-length v1, p1

    sub-int/2addr v1, p2

    array-length v2, v0

    if-ge v1, v2, :cond_1e

    .line 180
    new-instance v1, Ljava/security/DigestException;

    const-string/jumbo v2, "insufficient space in the output buffer to store the digest"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_1e
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 183
    array-length v1, v0

    return v1
.end method

.method protected abstract engineDigest()[B
.end method

.method protected engineGetDigestLength()I
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract engineReset()V
.end method

.method protected abstract engineUpdate(B)V
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 11
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v8, 0x0

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-nez v7, :cond_8

    .line 107
    return-void

    .line 109
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 111
    .local v0, "b":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    .line 112
    .local v5, "ofs":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 113
    .local v6, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 114
    .local v3, "lim":I
    add-int v7, v5, v6

    sub-int v8, v3, v6

    invoke-virtual {p0, v0, v7, v8}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    .line 115
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    .end local v0    # "b":[B
    .end local v3    # "lim":I
    .end local v5    # "ofs":I
    .end local v6    # "pos":I
    :cond_28
    return-void

    .line 117
    :cond_29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 118
    .local v2, "len":I
    invoke-static {v2}, Lsun/security/jca/JCAUtil;->getTempArraySize(I)I

    move-result v4

    .line 119
    .local v4, "n":I
    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    if-eqz v7, :cond_3a

    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    array-length v7, v7

    if-le v4, v7, :cond_3e

    .line 120
    :cond_3a
    new-array v7, v4, [B

    iput-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    .line 122
    :cond_3e
    :goto_3e
    if-lez v2, :cond_28

    .line 123
    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    array-length v7, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 124
    .local v1, "chunk":I
    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    invoke-virtual {p1, v7, v8, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 125
    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    invoke-virtual {p0, v7, v8, v1}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    .line 126
    sub-int/2addr v2, v1

    goto :goto_3e
.end method

.method protected abstract engineUpdate([BII)V
.end method
