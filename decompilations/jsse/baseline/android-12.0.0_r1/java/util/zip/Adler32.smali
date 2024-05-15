.class public Ljava/util/zip/Adler32;
.super Ljava/lang/Object;
.source "Adler32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o adler:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 42
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/zip/Adler32;->adler:I

    .line 51
    return-void
.end method

.method private static native greylist update(II)I
.end method

.method private static native greylist-max-o updateByteBuffer(IJII)I
.end method

.method private static native greylist-max-o updateBytes(I[BII)I
.end method


# virtual methods
.method public whitelist test-api getValue()J
    .registers 5

    .line 134
    iget v0, p0, Ljava/util/zip/Adler32;->adler:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api reset()V
    .registers 2

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/zip/Adler32;->adler:I

    .line 128
    return-void
.end method

.method public whitelist test-api update(I)V
    .registers 3
    .param p1, "b"    # I

    .line 60
    iget v0, p0, Ljava/util/zip/Adler32;->adler:I

    invoke-static {v0, p1}, Ljava/util/zip/Adler32;->update(II)I

    move-result v0

    iput v0, p0, Ljava/util/zip/Adler32;->adler:I

    .line 61
    return-void
.end method

.method public whitelist test-api update(Ljava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 106
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 107
    .local v1, "limit":I
    nop

    .line 108
    sub-int v2, v1, v0

    .line 109
    .local v2, "rem":I
    if-gtz v2, :cond_e

    .line 110
    return-void

    .line 111
    :cond_e
    instance-of v3, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v3, :cond_22

    .line 112
    iget v3, p0, Ljava/util/zip/Adler32;->adler:I

    move-object v4, p1

    check-cast v4, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v4}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v0, v2}, Ljava/util/zip/Adler32;->updateByteBuffer(IJII)I

    move-result v3

    iput v3, p0, Ljava/util/zip/Adler32;->adler:I

    goto :goto_49

    .line 113
    :cond_22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 114
    iget v3, p0, Ljava/util/zip/Adler32;->adler:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v3, v4, v5, v2}, Ljava/util/zip/Adler32;->updateBytes(I[BII)I

    move-result v3

    iput v3, p0, Ljava/util/zip/Adler32;->adler:I

    goto :goto_49

    .line 116
    :cond_3a
    new-array v3, v2, [B

    .line 117
    .local v3, "b":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 118
    iget v4, p0, Ljava/util/zip/Adler32;->adler:I

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v4, v3, v5, v6}, Ljava/util/zip/Adler32;->updateBytes(I[BII)I

    move-result v4

    iput v4, p0, Ljava/util/zip/Adler32;->adler:I

    .line 120
    .end local v3    # "b":[B
    :goto_49
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    return-void
.end method

.method public whitelist test-api update([B)V
    .registers 5
    .param p1, "b"    # [B

    .line 87
    iget v0, p0, Ljava/util/zip/Adler32;->adler:I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Ljava/util/zip/Adler32;->updateBytes(I[BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/Adler32;->adler:I

    .line 88
    return-void
.end method

.method public whitelist test-api update([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 72
    if-eqz p1, :cond_19

    .line 75
    if-ltz p2, :cond_13

    if-ltz p3, :cond_13

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_13

    .line 78
    iget v0, p0, Ljava/util/zip/Adler32;->adler:I

    invoke-static {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->updateBytes(I[BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/Adler32;->adler:I

    .line 79
    return-void

    .line 76
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 73
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
