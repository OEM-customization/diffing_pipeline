.class Ljava/nio/ByteBufferAsShortBuffer;
.super Ljava/nio/ShortBuffer;
.source "ByteBufferAsShortBuffer.java"


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
    invoke-direct {p0, p2, p3, p4, p5}, Ljava/nio/ShortBuffer;-><init>(IIII)V

    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 41
    iget-boolean v1, p1, Ljava/nio/ByteBuffer;->isReadOnly:Z

    iput-boolean v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->isReadOnly:Z

    .line 49
    instance-of v1, p1, Ljava/nio/DirectByteBuffer;

    if-eqz v1, :cond_17

    .line 50
    iget-wide v1, p1, Ljava/nio/ByteBuffer;->address:J

    int-to-long v3, p6

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->address:J

    .line 52
    :cond_17
    invoke-virtual {v0, p7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    iput-object p7, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    .line 54
    iput p6, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist test-api asReadOnlyBuffer()Ljava/nio/ShortBuffer;
    .registers 10

    .line 77
    new-instance v8, Ljava/nio/ByteBufferAsShortBuffer;

    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->markValue()I

    move-result v2

    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->position()I

    move-result v3

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->limit()I

    move-result v4

    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 77
    return-object v8
.end method

.method public whitelist test-api compact()Ljava/nio/ShortBuffer;
    .registers 15

    .line 130
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->isReadOnly:Z

    if-nez v0, :cond_50

    .line 133
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->position()I

    move-result v0

    .line 134
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->limit()I

    move-result v1

    .line 135
    .local v1, "lim":I
    nop

    .line 136
    const/4 v2, 0x0

    if-gt v0, v1, :cond_13

    sub-int v3, v1, v0

    goto :goto_14

    :cond_13
    move v3, v2

    .line 137
    .local v3, "rem":I
    :goto_14
    iget-object v4, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    instance-of v5, v4, Ljava/nio/DirectByteBuffer;

    if-nez v5, :cond_32

    .line 138
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v5

    iget-object v6, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v2

    shl-int/lit8 v7, v3, 0x1

    invoke-static {v4, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_42

    .line 140
    :cond_32
    invoke-virtual {p0, v2}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v9

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v11

    shl-int/lit8 v2, v3, 0x1

    int-to-long v12, v2

    move-object v8, p0

    move-object v10, p0

    invoke-static/range {v8 .. v13}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 142
    :goto_42
    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBufferAsShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 144
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->discardMark()V

    .line 145
    return-object p0

    .line 131
    .end local v0    # "pos":I
    .end local v1    # "lim":I
    .end local v3    # "rem":I
    :cond_50
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api duplicate()Ljava/nio/ShortBuffer;
    .registers 10

    .line 68
    new-instance v8, Ljava/nio/ByteBufferAsShortBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->markValue()I

    move-result v2

    .line 70
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->position()I

    move-result v3

    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->limit()I

    move-result v4

    .line 72
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 68
    return-object v8
.end method

.method public whitelist test-api get([SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 99
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsShortBuffer;->checkBounds(III)V

    .line 100
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_1b

    .line 102
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->getUnchecked(I[SII)V

    .line 103
    iget v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->position:I

    .line 104
    return-object p0

    .line 101
    :cond_1b
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public whitelist test-api get()S
    .registers 2

    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->nextGetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsShortBuffer;->get(I)S

    move-result v0

    return v0
.end method

.method public whitelist test-api get(I)S
    .registers 4
    .param p1, "i"    # I

    .line 94
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsShortBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShortUnchecked(I)S

    move-result v0

    return v0
.end method

.method public whitelist test-api isDirect()Z
    .registers 2

    .line 149
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isReadOnly()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->isReadOnly:Z

    return v0
.end method

.method protected blacklist ix(I)I
    .registers 4
    .param p1, "i"    # I

    .line 86
    shl-int/lit8 v0, p1, 0x1

    iget v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api order()Ljava/nio/ByteOrder;
    .registers 2

    .line 157
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public whitelist test-api put(IS)Ljava/nio/ShortBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # S

    .line 113
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->isReadOnly:Z

    if-nez v0, :cond_12

    .line 116
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsShortBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putShortUnchecked(IS)V

    .line 117
    return-object p0

    .line 114
    :cond_12
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put(S)Ljava/nio/ShortBuffer;
    .registers 3
    .param p1, "x"    # S

    .line 108
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->nextPutIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/nio/ByteBufferAsShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 109
    return-object p0
.end method

.method public whitelist test-api put([SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "src"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 121
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsShortBuffer;->checkBounds(III)V

    .line 122
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_1b

    .line 124
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->putUnchecked(I[SII)V

    .line 125
    iget v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->position:I

    .line 126
    return-object p0

    .line 123
    :cond_1b
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public whitelist test-api slice()Ljava/nio/ShortBuffer;
    .registers 13

    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->position()I

    move-result v0

    .line 59
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->limit()I

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
    shl-int/lit8 v2, v0, 0x1

    iget v3, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    add-int/2addr v2, v3

    .line 63
    .local v2, "off":I
    nop

    .line 64
    new-instance v11, Ljava/nio/ByteBufferAsShortBuffer;

    iget-object v4, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    const/4 v5, -0x1

    const/4 v6, 0x0

    iget-object v10, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    move-object v3, v11

    move v8, v7

    move v9, v2

    invoke-direct/range {v3 .. v10}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v11
.end method
