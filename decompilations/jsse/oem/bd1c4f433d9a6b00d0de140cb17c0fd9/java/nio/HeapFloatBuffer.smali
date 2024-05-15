.class Ljava/nio/HeapFloatBuffer;
.super Ljava/nio/FloatBuffer;
.source "HeapFloatBuffer.java"


# direct methods
.method constructor <init>(II)V
    .registers 4
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapFloatBuffer;-><init>(IIZ)V

    .line 46
    return-void
.end method

.method constructor <init>(IIZ)V
    .registers 11
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 49
    new-array v5, p1, [F

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ljava/nio/FloatBuffer;-><init>(IIII[FI)V

    .line 50
    iput-boolean p3, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    .line 51
    return-void
.end method

.method constructor <init>([FII)V
    .registers 5
    .param p1, "buf"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapFloatBuffer;-><init>([FIIZ)V

    .line 55
    return-void
.end method

.method protected constructor <init>([FIIIII)V
    .registers 15
    .param p1, "buf"    # [F
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    .prologue
    .line 65
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    .line 66
    return-void
.end method

.method protected constructor <init>([FIIIIIZ)V
    .registers 15
    .param p1, "buf"    # [F
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    .prologue
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    move v6, p6

    .line 71
    invoke-direct/range {v0 .. v6}, Ljava/nio/FloatBuffer;-><init>(IIII[FI)V

    .line 72
    iput-boolean p7, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    .line 73
    return-void
.end method

.method constructor <init>([FIIZ)V
    .registers 12
    .param p1, "buf"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

    .prologue
    .line 58
    add-int v3, p2, p3

    array-length v4, p1

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/FloatBuffer;-><init>(IIII[FI)V

    .line 59
    iput-boolean p4, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    .line 60
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .registers 9

    .prologue
    .line 96
    new-instance v0, Ljava/nio/HeapFloatBuffer;

    iget-object v1, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    .line 97
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->markValue()I

    move-result v2

    .line 98
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v3

    .line 99
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->limit()I

    move-result v4

    .line 100
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->capacity()I

    move-result v5

    .line 101
    iget v6, p0, Ljava/nio/HeapFloatBuffer;->offset:I

    const/4 v7, 0x1

    .line 96
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    return-object v0
.end method

.method public compact()Ljava/nio/FloatBuffer;
    .registers 6

    .prologue
    .line 190
    iget-boolean v0, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 191
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 193
    :cond_a
    iget-object v0, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 194
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapFloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 195
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapFloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 196
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->discardMark()V

    .line 197
    return-object p0
.end method

.method public duplicate()Ljava/nio/FloatBuffer;
    .registers 9

    .prologue
    .line 86
    new-instance v0, Ljava/nio/HeapFloatBuffer;

    iget-object v1, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    .line 87
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->markValue()I

    move-result v2

    .line 88
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v3

    .line 89
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->limit()I

    move-result v4

    .line 90
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->capacity()I

    move-result v5

    .line 91
    iget v6, p0, Ljava/nio/HeapFloatBuffer;->offset:I

    .line 92
    iget-boolean v7, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    .line 86
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    return-object v0
.end method

.method public get()F
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public get(I)F
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 113
    iget-object v0, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0, p1}, Ljava/nio/HeapFloatBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public get([FII)Ljava/nio/FloatBuffer;
    .registers 6
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 117
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapFloatBuffer;->checkBounds(III)V

    .line 118
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_10

    .line 119
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 120
    :cond_10
    iget-object v0, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 121
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapFloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    return-object p0
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 105
    iget v0, p0, Ljava/nio/HeapFloatBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 201
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(F)Ljava/nio/FloatBuffer;
    .registers 4
    .param p1, "x"    # F

    .prologue
    .line 134
    iget-boolean v0, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 135
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 137
    :cond_a
    iget-object v0, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    aput p1, v0, v1

    .line 138
    return-object p0
.end method

.method public put(IF)Ljava/nio/FloatBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # F

    .prologue
    .line 142
    iget-boolean v0, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 143
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 145
    :cond_a
    iget-object v0, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0, p1}, Ljava/nio/HeapFloatBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    aput p2, v0, v1

    .line 146
    return-object p0
.end method

.method public put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .registers 8
    .param p1, "src"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 162
    if-ne p1, p0, :cond_8

    .line 163
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 165
    :cond_8
    iget-boolean v2, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    if-eqz v2, :cond_12

    .line 166
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v2

    .line 168
    :cond_12
    instance-of v2, p1, Ljava/nio/HeapFloatBuffer;

    if-eqz v2, :cond_51

    move-object v1, p1

    .line 169
    check-cast v1, Ljava/nio/HeapFloatBuffer;

    .line 170
    .local v1, "sb":Ljava/nio/HeapFloatBuffer;
    invoke-virtual {v1}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v0

    .line 171
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_29

    .line 172
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 173
    :cond_29
    iget-object v2, v1, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {v1}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v3

    .line 174
    iget-object v4, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v5

    .line 173
    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 175
    invoke-virtual {v1}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/HeapFloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/HeapFloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    .end local v0    # "n":I
    .end local v1    # "sb":Ljava/nio/HeapFloatBuffer;
    :goto_50
    return-object p0

    .line 177
    :cond_51
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 178
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    .line 179
    .restart local v0    # "n":I
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_67

    .line 180
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 181
    :cond_67
    iget-object v2, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 182
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/HeapFloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_50

    .line 184
    .end local v0    # "n":I
    :cond_7d
    invoke-super {p0, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_50
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .registers 6
    .param p1, "src"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 150
    iget-boolean v0, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 151
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 153
    :cond_a
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapFloatBuffer;->checkBounds(III)V

    .line 154
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1a

    .line 155
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 156
    :cond_1a
    iget-object v0, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 157
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapFloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    return-object p0
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .registers 9

    .prologue
    .line 76
    new-instance v0, Ljava/nio/HeapFloatBuffer;

    iget-object v1, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    .line 79
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v4

    .line 80
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v5

    .line 81
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapFloatBuffer;->offset:I

    add-int v6, v2, v3

    .line 82
    iget-boolean v7, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    .line 77
    const/4 v2, -0x1

    .line 78
    const/4 v3, 0x0

    .line 76
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    return-object v0
.end method
