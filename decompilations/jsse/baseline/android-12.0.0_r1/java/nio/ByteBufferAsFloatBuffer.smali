.class Ljava/nio/ByteBufferAsFloatBuffer;
.super Ljava/nio/FloatBuffer;
.source "ByteBufferAsFloatBuffer.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field protected final blacklist bb:Ljava/nio/ByteBuffer;

.field protected final blacklist offset:I

.field private final blacklist order:Ljava/nio/ByteOrder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 30
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V
    .registers 13
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "order"    # Ljava/nio/ByteOrder;

    .line 39
    invoke-direct {p0, p2, p3, p4, p5}, Ljava/nio/FloatBuffer;-><init>(IIII)V

    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 41
    iget-boolean v1, p1, Ljava/nio/ByteBuffer;->isReadOnly:Z

    iput-boolean v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->isReadOnly:Z

    .line 49
    instance-of v1, p1, Ljava/nio/DirectByteBuffer;

    if-eqz v1, :cond_17

    .line 50
    iget-wide v1, p1, Ljava/nio/ByteBuffer;->address:J

    int-to-long v3, p6

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->address:J

    .line 52
    :cond_17
    invoke-virtual {v0, p7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    iput-object p7, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    .line 54
    iput p6, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist test-api asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .registers 10

    .line 78
    new-instance v8, Ljava/nio/ByteBufferAsFloatBuffer;

    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->markValue()I

    move-result v2

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->position()I

    move-result v3

    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->limit()I

    move-result v4

    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 78
    return-object v8
.end method

.method public whitelist test-api compact()Ljava/nio/FloatBuffer;
    .registers 15

    .line 131
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->isReadOnly:Z

    if-nez v0, :cond_50

    .line 134
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->position()I

    move-result v0

    .line 135
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->limit()I

    move-result v1

    .line 136
    .local v1, "lim":I
    nop

    .line 137
    const/4 v2, 0x0

    if-gt v0, v1, :cond_13

    sub-int v3, v1, v0

    goto :goto_14

    :cond_13
    move v3, v2

    .line 138
    .local v3, "rem":I
    :goto_14
    iget-object v4, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    instance-of v5, v4, Ljava/nio/DirectByteBuffer;

    if-nez v5, :cond_32

    .line 139
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v5

    iget-object v6, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v2

    shl-int/lit8 v7, v3, 0x2

    invoke-static {v4, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_42

    .line 141
    :cond_32
    invoke-virtual {p0, v2}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v9

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v11

    shl-int/lit8 v2, v3, 0x2

    int-to-long v12, v2

    move-object v8, p0

    move-object v10, p0

    invoke-static/range {v8 .. v13}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 143
    :goto_42
    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsFloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBufferAsFloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 145
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->discardMark()V

    .line 146
    return-object p0

    .line 132
    .end local v0    # "pos":I
    .end local v1    # "lim":I
    .end local v3    # "rem":I
    :cond_50
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api duplicate()Ljava/nio/FloatBuffer;
    .registers 10

    .line 68
    new-instance v8, Ljava/nio/ByteBufferAsFloatBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->markValue()I

    move-result v2

    .line 70
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->position()I

    move-result v3

    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->limit()I

    move-result v4

    .line 72
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 68
    return-object v8
.end method

.method public whitelist test-api get()F
    .registers 2

    .line 92
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->nextGetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsFloatBuffer;->get(I)F

    move-result v0

    return v0
.end method

.method public whitelist test-api get(I)F
    .registers 4
    .param p1, "i"    # I

    .line 96
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsFloatBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloatUnchecked(I)F

    move-result v0

    return v0
.end method

.method public whitelist test-api get([FII)Ljava/nio/FloatBuffer;
    .registers 6
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 100
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsFloatBuffer;->checkBounds(III)V

    .line 101
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_1b

    .line 103
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->getUnchecked(I[FII)V

    .line 104
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    .line 105
    return-object p0

    .line 102
    :cond_1b
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isDirect()Z
    .registers 2

    .line 150
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isReadOnly()Z
    .registers 2

    .line 154
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->isReadOnly:Z

    return v0
.end method

.method protected blacklist ix(I)I
    .registers 4
    .param p1, "i"    # I

    .line 88
    shl-int/lit8 v0, p1, 0x2

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api order()Ljava/nio/ByteOrder;
    .registers 2

    .line 158
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public whitelist test-api put(F)Ljava/nio/FloatBuffer;
    .registers 3
    .param p1, "x"    # F

    .line 109
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->nextPutIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/nio/ByteBufferAsFloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 110
    return-object p0
.end method

.method public whitelist test-api put(IF)Ljava/nio/FloatBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # F

    .line 114
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->isReadOnly:Z

    if-nez v0, :cond_12

    .line 117
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsFloatBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putFloatUnchecked(IF)V

    .line 118
    return-object p0

    .line 115
    :cond_12
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put([FII)Ljava/nio/FloatBuffer;
    .registers 6
    .param p1, "src"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 122
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsFloatBuffer;->checkBounds(III)V

    .line 123
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_1b

    .line 125
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->putUnchecked(I[FII)V

    .line 126
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    .line 127
    return-object p0

    .line 124
    :cond_1b
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public whitelist test-api slice()Ljava/nio/FloatBuffer;
    .registers 13

    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->position()I

    move-result v0

    .line 59
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->limit()I

    move-result v1

    .line 60
    .local v1, "lim":I
    nop

    .line 61
    if-gt v0, v1, :cond_e

    sub-int v2, v1, v0

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    move v7, v2

    .line 62
    .local v7, "rem":I
    shl-int/lit8 v2, v0, 0x2

    iget v3, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    add-int/2addr v2, v3

    .line 63
    .local v2, "off":I
    nop

    .line 64
    new-instance v11, Ljava/nio/ByteBufferAsFloatBuffer;

    iget-object v4, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    const/4 v5, -0x1

    const/4 v6, 0x0

    iget-object v10, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    move-object v3, v11

    move v8, v7

    move v9, v2

    invoke-direct/range {v3 .. v10}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v11
.end method
