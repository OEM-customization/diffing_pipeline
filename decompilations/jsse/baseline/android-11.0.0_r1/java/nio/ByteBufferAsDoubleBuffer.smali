.class Ljava/nio/ByteBufferAsDoubleBuffer;
.super Ljava/nio/DoubleBuffer;
.source "ByteBufferAsDoubleBuffer.java"


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
    .registers 12
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "order"    # Ljava/nio/ByteOrder;

    .line 40
    invoke-direct {p0, p2, p3, p4, p5}, Ljava/nio/DoubleBuffer;-><init>(IIII)V

    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 42
    iget-boolean v0, p1, Ljava/nio/ByteBuffer;->isReadOnly:Z

    iput-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    .line 50
    instance-of v0, p1, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_17

    .line 51
    iget-wide v0, p1, Ljava/nio/ByteBuffer;->address:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->address:J

    .line 53
    :cond_17
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 54
    iput-object p7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    .line 55
    iput p6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .registers 10

    .line 79
    new-instance v8, Ljava/nio/ByteBufferAsDoubleBuffer;

    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->markValue()I

    move-result v2

    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    move-result v3

    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v4

    .line 83
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 79
    return-object v8
.end method

.method public whitelist core-platform-api test-api compact()Ljava/nio/DoubleBuffer;
    .registers 15

    .line 132
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    if-nez v0, :cond_50

    .line 135
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    move-result v0

    .line 136
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v1

    .line 137
    .local v1, "lim":I
    nop

    .line 138
    const/4 v2, 0x0

    if-gt v0, v1, :cond_13

    sub-int v3, v1, v0

    goto :goto_14

    :cond_13
    move v3, v2

    .line 139
    .local v3, "rem":I
    :goto_14
    iget-object v4, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    instance-of v5, v4, Ljava/nio/DirectByteBuffer;

    if-nez v5, :cond_32

    .line 140
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v5

    iget-object v6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v2

    shl-int/lit8 v7, v3, 0x3

    invoke-static {v4, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_42

    .line 142
    :cond_32
    invoke-virtual {p0, v2}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v9

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v11

    shl-int/lit8 v2, v3, 0x3

    int-to-long v12, v2

    move-object v8, p0

    move-object v10, p0

    invoke-static/range {v8 .. v13}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 144
    :goto_42
    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 145
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit(I)Ljava/nio/Buffer;

    .line 146
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->discardMark()V

    .line 147
    return-object p0

    .line 133
    .end local v0    # "pos":I
    .end local v1    # "lim":I
    .end local v3    # "rem":I
    :cond_50
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api duplicate()Ljava/nio/DoubleBuffer;
    .registers 10

    .line 69
    new-instance v8, Ljava/nio/ByteBufferAsDoubleBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->markValue()I

    move-result v2

    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    move-result v3

    .line 72
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v4

    .line 73
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 69
    return-object v8
.end method

.method public whitelist core-platform-api test-api get()D
    .registers 3

    .line 93
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->nextGetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api get(I)D
    .registers 4
    .param p1, "i"    # I

    .line 97
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDoubleUnchecked(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api get([DII)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 101
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkBounds(III)V

    .line 102
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_1b

    .line 104
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->getUnchecked(I[DII)V

    .line 105
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    .line 106
    return-object p0

    .line 103
    :cond_1b
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api isDirect()Z
    .registers 2

    .line 151
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isReadOnly()Z
    .registers 2

    .line 155
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    return v0
.end method

.method protected blacklist ix(I)I
    .registers 4
    .param p1, "i"    # I

    .line 89
    shl-int/lit8 v0, p1, 0x3

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api order()Ljava/nio/ByteOrder;
    .registers 2

    .line 159
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public whitelist core-platform-api test-api put(D)Ljava/nio/DoubleBuffer;
    .registers 4
    .param p1, "x"    # D

    .line 110
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->nextPutIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/nio/ByteBufferAsDoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 111
    return-object p0
.end method

.method public whitelist core-platform-api test-api put(ID)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .line 115
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    if-nez v0, :cond_12

    .line 118
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ByteBuffer;->putDoubleUnchecked(ID)V

    .line 119
    return-object p0

    .line 116
    :cond_12
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api put([DII)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "src"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 123
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkBounds(III)V

    .line 124
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_1b

    .line 126
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->putUnchecked(I[DII)V

    .line 127
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    .line 128
    return-object p0

    .line 125
    :cond_1b
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api slice()Ljava/nio/DoubleBuffer;
    .registers 13

    .line 59
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    move-result v0

    .line 60
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v1

    .line 61
    .local v1, "lim":I
    nop

    .line 62
    if-gt v0, v1, :cond_e

    sub-int v2, v1, v0

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    move v7, v2

    .line 63
    .local v7, "rem":I
    shl-int/lit8 v2, v0, 0x3

    iget v3, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    add-int/2addr v2, v3

    .line 64
    .local v2, "off":I
    nop

    .line 65
    new-instance v11, Ljava/nio/ByteBufferAsDoubleBuffer;

    iget-object v4, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    const/4 v5, -0x1

    const/4 v6, 0x0

    iget-object v10, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    move-object v3, v11

    move v8, v7

    move v9, v2

    invoke-direct/range {v3 .. v10}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v11
.end method
