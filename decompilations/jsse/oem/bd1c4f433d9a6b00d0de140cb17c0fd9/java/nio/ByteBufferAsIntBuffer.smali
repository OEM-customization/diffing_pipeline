.class Ljava/nio/ByteBufferAsIntBuffer;
.super Ljava/nio/IntBuffer;
.source "ByteBufferAsIntBuffer.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected final bb:Ljava/nio/ByteBuffer;

.field protected final offset:I

.field private final order:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/nio/ByteBufferAsIntBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/ByteBufferAsIntBuffer;->-assertionsDisabled:Z

    .line 30
    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V
    .registers 12
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 39
    invoke-direct {p0, p2, p3, p4, p5}, Ljava/nio/IntBuffer;-><init>(IIII)V

    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 41
    iget-boolean v0, p1, Ljava/nio/ByteBuffer;->isReadOnly:Z

    iput-boolean v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->isReadOnly:Z

    .line 49
    instance-of v0, p1, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_17

    .line 50
    iget-wide v0, p1, Ljava/nio/ByteBuffer;->address:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->address:J

    .line 52
    :cond_17
    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    iput-object p7, p0, Ljava/nio/ByteBufferAsIntBuffer;->order:Ljava/nio/ByteOrder;

    .line 54
    iput p6, p0, Ljava/nio/ByteBufferAsIntBuffer;->offset:I

    .line 55
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/IntBuffer;
    .registers 9

    .prologue
    .line 78
    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->markValue()I

    move-result v2

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->position()I

    move-result v3

    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->limit()I

    move-result v4

    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->capacity()I

    move-result v5

    .line 83
    iget v6, p0, Ljava/nio/ByteBufferAsIntBuffer;->offset:I

    .line 84
    iget-object v7, p0, Ljava/nio/ByteBufferAsIntBuffer;->order:Ljava/nio/ByteOrder;

    .line 78
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public compact()Ljava/nio/IntBuffer;
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->isReadOnly:Z

    if-eqz v0, :cond_b

    .line 132
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 134
    :cond_b
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->position()I

    move-result v7

    .line 135
    .local v7, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->limit()I

    move-result v6

    .line 136
    .local v6, "lim":I
    sget-boolean v0, Ljava/nio/ByteBufferAsIntBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_1f

    if-le v7, v6, :cond_1f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 137
    :cond_1f
    if-gt v7, v6, :cond_50

    sub-int v8, v6, v7

    .line 138
    .local v8, "rem":I
    :goto_23
    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-nez v0, :cond_52

    .line 139
    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v3

    shl-int/lit8 v4, v8, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 143
    :goto_42
    invoke-virtual {p0, v8}, Ljava/nio/ByteBufferAsIntBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsIntBuffer;->limit(I)Ljava/nio/Buffer;

    .line 145
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->discardMark()V

    .line 146
    return-object p0

    .line 137
    .end local v8    # "rem":I
    :cond_50
    const/4 v8, 0x0

    .restart local v8    # "rem":I
    goto :goto_23

    .line 141
    :cond_52
    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v1

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v3

    shl-int/lit8 v0, v8, 0x2

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    goto :goto_42
.end method

.method public duplicate()Ljava/nio/IntBuffer;
    .registers 9

    .prologue
    .line 68
    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->markValue()I

    move-result v2

    .line 70
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->position()I

    move-result v3

    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->limit()I

    move-result v4

    .line 72
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->capacity()I

    move-result v5

    .line 73
    iget v6, p0, Ljava/nio/ByteBufferAsIntBuffer;->offset:I

    .line 74
    iget-object v7, p0, Ljava/nio/ByteBufferAsIntBuffer;->order:Ljava/nio/ByteOrder;

    .line 68
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public get()I
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->nextGetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsIntBuffer;->get(I)I

    move-result v0

    return v0
.end method

.method public get(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 96
    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsIntBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getIntUnchecked(I)I

    move-result v0

    return v0
.end method

.method public get([III)Ljava/nio/IntBuffer;
    .registers 6
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 100
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsIntBuffer;->checkBounds(III)V

    .line 101
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_10

    .line 102
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 103
    :cond_10
    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsIntBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->getUnchecked(I[III)V

    .line 104
    iget v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->position:I

    .line 105
    return-object p0
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 154
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 88
    shl-int/lit8 v0, p1, 0x2

    iget v1, p0, Ljava/nio/ByteBufferAsIntBuffer;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public put(I)Ljava/nio/IntBuffer;
    .registers 3
    .param p1, "x"    # I

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->nextPutIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/nio/ByteBufferAsIntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 110
    return-object p0
.end method

.method public put(II)Ljava/nio/IntBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # I

    .prologue
    .line 114
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 115
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 117
    :cond_a
    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsIntBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putIntUnchecked(II)V

    .line 118
    return-object p0
.end method

.method public put([III)Ljava/nio/IntBuffer;
    .registers 6
    .param p1, "src"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 122
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsIntBuffer;->checkBounds(III)V

    .line 123
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_10

    .line 124
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 125
    :cond_10
    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsIntBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->putUnchecked(I[III)V

    .line 126
    iget v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->position:I

    .line 127
    return-object p0
.end method

.method public slice()Ljava/nio/IntBuffer;
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->position()I

    move-result v9

    .line 59
    .local v9, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->limit()I

    move-result v8

    .line 60
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/ByteBufferAsIntBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_15

    if-le v9, v8, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_15
    if-gt v9, v8, :cond_2b

    sub-int v4, v8, v9

    .line 62
    .local v4, "rem":I
    :goto_19
    shl-int/lit8 v0, v9, 0x2

    iget v1, p0, Ljava/nio/ByteBufferAsIntBuffer;->offset:I

    add-int v6, v0, v1

    .line 63
    .local v6, "off":I
    sget-boolean v0, Ljava/nio/ByteBufferAsIntBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_2d

    if-gez v6, :cond_2d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    .end local v4    # "rem":I
    .end local v6    # "off":I
    :cond_2b
    const/4 v4, 0x0

    .restart local v4    # "rem":I
    goto :goto_19

    .line 64
    .restart local v6    # "off":I
    :cond_2d
    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Ljava/nio/ByteBufferAsIntBuffer;->order:Ljava/nio/ByteOrder;

    const/4 v2, -0x1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method
