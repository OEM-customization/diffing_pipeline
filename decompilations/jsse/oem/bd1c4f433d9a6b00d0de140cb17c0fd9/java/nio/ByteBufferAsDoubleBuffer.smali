.class Ljava/nio/ByteBufferAsDoubleBuffer;
.super Ljava/nio/DoubleBuffer;
.source "ByteBufferAsDoubleBuffer.java"


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
    const-class v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/ByteBufferAsDoubleBuffer;->-assertionsDisabled:Z

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
.method public asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .registers 9

    .prologue
    .line 79
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

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

    .line 84
    iget v6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    .line 85
    iget-object v7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    .line 79
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public compact()Ljava/nio/DoubleBuffer;
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    if-eqz v0, :cond_b

    .line 133
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 135
    :cond_b
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    move-result v7

    .line 136
    .local v7, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v6

    .line 137
    .local v6, "lim":I
    sget-boolean v0, Ljava/nio/ByteBufferAsDoubleBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_1f

    if-le v7, v6, :cond_1f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 138
    :cond_1f
    if-gt v7, v6, :cond_50

    sub-int v8, v6, v7

    .line 139
    .local v8, "rem":I
    :goto_23
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-nez v0, :cond_52

    .line 140
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v3

    shl-int/lit8 v4, v8, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 144
    :goto_42
    invoke-virtual {p0, v8}, Ljava/nio/ByteBufferAsDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 145
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit(I)Ljava/nio/Buffer;

    .line 146
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->discardMark()V

    .line 147
    return-object p0

    .line 138
    .end local v8    # "rem":I
    :cond_50
    const/4 v8, 0x0

    .restart local v8    # "rem":I
    goto :goto_23

    .line 142
    :cond_52
    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v3

    shl-int/lit8 v0, v8, 0x3

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    goto :goto_42
.end method

.method public duplicate()Ljava/nio/DoubleBuffer;
    .registers 9

    .prologue
    .line 69
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

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

    .line 74
    iget v6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    .line 75
    iget-object v7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    .line 69
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public get()D
    .registers 3

    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->nextGetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public get(I)D
    .registers 4
    .param p1, "i"    # I

    .prologue
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

.method public get([DII)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 101
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkBounds(III)V

    .line 102
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_10

    .line 103
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 104
    :cond_10
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
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 155
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 89
    shl-int/lit8 v0, p1, 0x3

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public put(D)Ljava/nio/DoubleBuffer;
    .registers 4
    .param p1, "x"    # D

    .prologue
    .line 110
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->nextPutIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/nio/ByteBufferAsDoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 111
    return-object p0
.end method

.method public put(ID)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .prologue
    .line 115
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 116
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 118
    :cond_a
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ByteBuffer;->putDoubleUnchecked(ID)V

    .line 119
    return-object p0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "src"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 123
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkBounds(III)V

    .line 124
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_10

    .line 125
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 126
    :cond_10
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
.end method

.method public slice()Ljava/nio/DoubleBuffer;
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    move-result v9

    .line 60
    .local v9, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v8

    .line 61
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/ByteBufferAsDoubleBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_15

    if-le v9, v8, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_15
    if-gt v9, v8, :cond_2b

    sub-int v4, v8, v9

    .line 63
    .local v4, "rem":I
    :goto_19
    shl-int/lit8 v0, v9, 0x3

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    add-int v6, v0, v1

    .line 64
    .local v6, "off":I
    sget-boolean v0, Ljava/nio/ByteBufferAsDoubleBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_2d

    if-gez v6, :cond_2d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    .end local v4    # "rem":I
    .end local v6    # "off":I
    :cond_2b
    const/4 v4, 0x0

    .restart local v4    # "rem":I
    goto :goto_19

    .line 65
    .restart local v6    # "off":I
    :cond_2d
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    const/4 v2, -0x1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method
