.class Ljava/nio/ByteBufferAsShortBuffer;
.super Ljava/nio/ShortBuffer;
.source "ByteBufferAsShortBuffer.java"


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
    const-class v0, Ljava/nio/ByteBufferAsShortBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/ByteBufferAsShortBuffer;->-assertionsDisabled:Z

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
    invoke-direct {p0, p2, p3, p4, p5}, Ljava/nio/ShortBuffer;-><init>(IIII)V

    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 41
    iget-boolean v0, p1, Ljava/nio/ByteBuffer;->isReadOnly:Z

    iput-boolean v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->isReadOnly:Z

    .line 49
    instance-of v0, p1, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_17

    .line 50
    iget-wide v0, p1, Ljava/nio/ByteBuffer;->address:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->address:J

    .line 52
    :cond_17
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    iput-object p7, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    .line 54
    iput p6, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    .line 55
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ShortBuffer;
    .registers 9

    .prologue
    .line 77
    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

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

    .line 82
    iget v6, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    .line 77
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public compact()Ljava/nio/ShortBuffer;
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->isReadOnly:Z

    if-eqz v0, :cond_b

    .line 131
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 133
    :cond_b
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->position()I

    move-result v7

    .line 134
    .local v7, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->limit()I

    move-result v6

    .line 135
    .local v6, "lim":I
    sget-boolean v0, Ljava/nio/ByteBufferAsShortBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_1f

    if-le v7, v6, :cond_1f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :cond_1f
    if-gt v7, v6, :cond_50

    sub-int v8, v6, v7

    .line 137
    .local v8, "rem":I
    :goto_23
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-nez v0, :cond_52

    .line 138
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v3

    shl-int/lit8 v4, v8, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 142
    :goto_42
    invoke-virtual {p0, v8}, Ljava/nio/ByteBufferAsShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 144
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->discardMark()V

    .line 145
    return-object p0

    .line 136
    .end local v8    # "rem":I
    :cond_50
    const/4 v8, 0x0

    .restart local v8    # "rem":I
    goto :goto_23

    .line 140
    :cond_52
    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v1

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v3

    shl-int/lit8 v0, v8, 0x1

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    goto :goto_42
.end method

.method public duplicate()Ljava/nio/ShortBuffer;
    .registers 9

    .prologue
    .line 68
    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

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

    .line 73
    iget v6, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    .line 68
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public get([SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 99
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsShortBuffer;->checkBounds(III)V

    .line 100
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_10

    .line 101
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 102
    :cond_10
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
.end method

.method public get()S
    .registers 2

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->nextGetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsShortBuffer;->get(I)S

    move-result v0

    return v0
.end method

.method public get(I)S
    .registers 4
    .param p1, "i"    # I

    .prologue
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

.method public isDirect()Z
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 86
    shl-int/lit8 v0, p1, 0x1

    iget v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public put(IS)Ljava/nio/ShortBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # S

    .prologue
    .line 113
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 114
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 116
    :cond_a
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsShortBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putShortUnchecked(IS)V

    .line 117
    return-object p0
.end method

.method public put(S)Ljava/nio/ShortBuffer;
    .registers 3
    .param p1, "x"    # S

    .prologue
    .line 108
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->nextPutIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/nio/ByteBufferAsShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 109
    return-object p0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "src"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 121
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsShortBuffer;->checkBounds(III)V

    .line 122
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_10

    .line 123
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 124
    :cond_10
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
.end method

.method public slice()Ljava/nio/ShortBuffer;
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->position()I

    move-result v9

    .line 59
    .local v9, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->limit()I

    move-result v8

    .line 60
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/ByteBufferAsShortBuffer;->-assertionsDisabled:Z

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
    shl-int/lit8 v0, v9, 0x1

    iget v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    add-int v6, v0, v1

    .line 63
    .local v6, "off":I
    sget-boolean v0, Ljava/nio/ByteBufferAsShortBuffer;->-assertionsDisabled:Z

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
    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    const/4 v2, -0x1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method
