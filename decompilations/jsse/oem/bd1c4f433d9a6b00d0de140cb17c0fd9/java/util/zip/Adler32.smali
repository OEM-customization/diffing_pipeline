.class public Ljava/util/zip/Adler32;
.super Ljava/lang/Object;
.source "Adler32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private adler:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/zip/Adler32;->-assertionsDisabled:Z

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/zip/Adler32;->adler:I

    .line 51
    return-void
.end method

.method private static native update(II)I
.end method

.method private static native updateByteBuffer(IJII)I
.end method

.method private static native updateBytes(I[BII)I
.end method


# virtual methods
.method public getValue()J
    .registers 5

    .prologue
    .line 134
    iget v0, p0, Ljava/util/zip/Adler32;->adler:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/zip/Adler32;->adler:I

    .line 128
    return-void
.end method

.method public update(I)V
    .registers 3
    .param p1, "b"    # I

    .prologue
    .line 60
    iget v0, p0, Ljava/util/zip/Adler32;->adler:I

    invoke-static {v0, p1}, Ljava/util/zip/Adler32;->update(II)I

    move-result v0

    iput v0, p0, Ljava/util/zip/Adler32;->adler:I

    .line 61
    return-void
.end method

.method public update(Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v6, 0x0

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 106
    .local v2, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 107
    .local v1, "limit":I
    sget-boolean v4, Ljava/util/zip/Adler32;->-assertionsDisabled:Z

    if-nez v4, :cond_15

    if-le v2, v1, :cond_15

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 108
    :cond_15
    sub-int v3, v1, v2

    .line 109
    .local v3, "rem":I
    if-gtz v3, :cond_1a

    .line 110
    return-void

    .line 111
    :cond_1a
    instance-of v4, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v4, :cond_31

    .line 112
    iget v5, p0, Ljava/util/zip/Adler32;->adler:I

    move-object v4, p1

    check-cast v4, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v4}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v6

    invoke-static {v5, v6, v7, v2, v3}, Ljava/util/zip/Adler32;->updateByteBuffer(IJII)I

    move-result v4

    iput v4, p0, Ljava/util/zip/Adler32;->adler:I

    .line 120
    :goto_2d
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    return-void

    .line 113
    :cond_31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 114
    iget v4, p0, Ljava/util/zip/Adler32;->adler:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v4, v5, v6, v3}, Ljava/util/zip/Adler32;->updateBytes(I[BII)I

    move-result v4

    iput v4, p0, Ljava/util/zip/Adler32;->adler:I

    goto :goto_2d

    .line 116
    :cond_49
    new-array v0, v3, [B

    .line 117
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 118
    iget v4, p0, Ljava/util/zip/Adler32;->adler:I

    array-length v5, v0

    invoke-static {v4, v0, v6, v5}, Ljava/util/zip/Adler32;->updateBytes(I[BII)I

    move-result v4

    iput v4, p0, Ljava/util/zip/Adler32;->adler:I

    goto :goto_2d
.end method

.method public update([B)V
    .registers 5
    .param p1, "b"    # [B

    .prologue
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

.method public update([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 72
    if-nez p1, :cond_8

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 75
    :cond_8
    if-ltz p2, :cond_c

    if-gez p3, :cond_12

    .line 76
    :cond_c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 75
    :cond_12
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_c

    .line 78
    iget v0, p0, Ljava/util/zip/Adler32;->adler:I

    invoke-static {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->updateBytes(I[BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/Adler32;->adler:I

    .line 79
    return-void
.end method
