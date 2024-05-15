.class public abstract Ljava/security/MessageDigestSpi;
.super Ljava/lang/Object;
.source "MessageDigestSpi.java"


# instance fields
.field private greylist-max-o tempArray:[B


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

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

.method protected whitelist test-api engineDigest([BII)I
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    move-result-object v0

    .line 177
    .local v0, "digest":[B
    array-length v1, v0

    if-lt p3, v1, :cond_1b

    .line 179
    array-length v1, p1

    sub-int/2addr v1, p2

    array-length v2, v0

    if-lt v1, v2, :cond_13

    .line 182
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    array-length v1, v0

    return v1

    .line 180
    :cond_13
    new-instance v1, Ljava/security/DigestException;

    const-string v2, "insufficient space in the output buffer to store the digest"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_1b
    new-instance v1, Ljava/security/DigestException;

    const-string v2, "partial digests not returned"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract whitelist test-api engineDigest()[B
.end method

.method protected whitelist test-api engineGetDigestLength()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract whitelist test-api engineReset()V
.end method

.method protected abstract whitelist test-api engineUpdate(B)V
.end method

.method protected whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    .line 107
    return-void

    .line 109
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 111
    .local v0, "b":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    .line 112
    .local v1, "ofs":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 113
    .local v2, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 114
    .local v3, "lim":I
    add-int v4, v1, v2

    sub-int v5, v3, v2

    invoke-virtual {p0, v0, v4, v5}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    .line 115
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    .end local v0    # "b":[B
    .end local v1    # "ofs":I
    .end local v2    # "pos":I
    .end local v3    # "lim":I
    goto :goto_51

    .line 117
    :cond_28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 118
    .local v0, "len":I
    invoke-static {v0}, Lsun/security/jca/JCAUtil;->getTempArraySize(I)I

    move-result v1

    .line 119
    .local v1, "n":I
    iget-object v2, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    if-eqz v2, :cond_37

    array-length v2, v2

    if-le v1, v2, :cond_3b

    .line 120
    :cond_37
    new-array v2, v1, [B

    iput-object v2, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    .line 122
    :cond_3b
    :goto_3b
    if-lez v0, :cond_51

    .line 123
    iget-object v2, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 124
    .local v2, "chunk":I
    iget-object v3, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 125
    iget-object v3, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    invoke-virtual {p0, v3, v4, v2}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    .line 126
    sub-int/2addr v0, v2

    .line 127
    .end local v2    # "chunk":I
    goto :goto_3b

    .line 129
    .end local v0    # "len":I
    .end local v1    # "n":I
    :cond_51
    :goto_51
    return-void
.end method

.method protected abstract whitelist test-api engineUpdate([BII)V
.end method
