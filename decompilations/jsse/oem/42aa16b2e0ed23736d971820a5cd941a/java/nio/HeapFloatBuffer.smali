.class Ljava/nio/HeapFloatBuffer;
.super Ljava/nio/FloatBuffer;
.source "HeapFloatBuffer.java"


# direct methods
.method constructor blacklist <init>(II)V
    .registers 4
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapFloatBuffer;-><init>(IIZ)V

    .line 46
    return-void
.end method

.method constructor blacklist <init>(IIZ)V
    .registers 11
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    .line 49
    new-array v5, p1, [F

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/FloatBuffer;-><init>(IIII[FI)V

    .line 50
    iput-boolean p3, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    .line 51
    return-void
.end method

.method constructor blacklist <init>([FII)V
    .registers 5
    .param p1, "buf"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapFloatBuffer;-><init>([FIIZ)V

    .line 55
    return-void
.end method

.method protected constructor blacklist <init>([FIIIII)V
    .registers 15
    .param p1, "buf"    # [F
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

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

.method protected constructor blacklist <init>([FIIIIIZ)V
    .registers 15
    .param p1, "buf"    # [F
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    .line 71
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/FloatBuffer;-><init>(IIII[FI)V

    .line 72
    iput-boolean p7, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    .line 73
    return-void
.end method

.method constructor blacklist <init>([FIIZ)V
    .registers 12
    .param p1, "buf"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

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
.method public whitelist core-platform-api test-api asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .registers 10

    .line 96
    new-instance v8, Ljava/nio/HeapFloatBuffer;

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

    iget v6, p0, Ljava/nio/HeapFloatBuffer;->offset:I

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    .line 96
    return-object v8
.end method

.method public whitelist core-platform-api test-api compact()Ljava/nio/FloatBuffer;
    .registers 6

    .line 190
    iget-boolean v0, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    if-nez v0, :cond_2e

    .line 193
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

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    .line 191
    :cond_2e
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api duplicate()Ljava/nio/FloatBuffer;
    .registers 10

    .line 86
    new-instance v8, Ljava/nio/HeapFloatBuffer;

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

    iget v6, p0, Ljava/nio/HeapFloatBuffer;->offset:I

    iget-boolean v7, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    .line 86
    return-object v8
.end method

.method public whitelist core-platform-api test-api get()F
    .registers 3

    .line 109
    iget-object v0, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api get(I)F
    .registers 4
    .param p1, "i"    # I

    .line 113
    iget-object v0, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0, p1}, Ljava/nio/HeapFloatBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api get([FII)Ljava/nio/FloatBuffer;
    .registers 6
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 117
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapFloatBuffer;->checkBounds(III)V

    .line 118
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_20

    .line 120
    iget-object v0, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapFloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    return-object p0

    .line 119
    :cond_20
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api isDirect()Z
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api isReadOnly()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    return v0
.end method

.method protected blacklist ix(I)I
    .registers 3
    .param p1, "i"    # I

    .line 105
    iget v0, p0, Ljava/nio/HeapFloatBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public whitelist core-platform-api test-api order()Ljava/nio/ByteOrder;
    .registers 2

    .line 201
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api put(F)Ljava/nio/FloatBuffer;
    .registers 4
    .param p1, "x"    # F

    .line 134
    iget-boolean v0, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    if-nez v0, :cond_11

    .line 137
    iget-object v0, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    aput p1, v0, v1

    .line 138
    return-object p0

    .line 135
    :cond_11
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api put(IF)Ljava/nio/FloatBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # F

    .line 142
    iget-boolean v0, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    if-nez v0, :cond_11

    .line 145
    iget-object v0, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0, p1}, Ljava/nio/HeapFloatBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    aput p2, v0, v1

    .line 146
    return-object p0

    .line 143
    :cond_11
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .registers 8
    .param p1, "src"    # Ljava/nio/FloatBuffer;

    .line 162
    if-eq p1, p0, :cond_7b

    .line 165
    iget-boolean v0, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    if-nez v0, :cond_75

    .line 168
    instance-of v0, p1, Ljava/nio/HeapFloatBuffer;

    if-eqz v0, :cond_45

    .line 169
    move-object v0, p1

    check-cast v0, Ljava/nio/HeapFloatBuffer;

    .line 170
    .local v0, "sb":Ljava/nio/HeapFloatBuffer;
    invoke-virtual {v0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v1

    .line 171
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v2

    if-gt v1, v2, :cond_3f

    .line 173
    iget-object v2, v0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {v0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v3

    iget-object v4, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    .line 174
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v5

    .line 173
    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    invoke-virtual {v0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/HeapFloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/nio/HeapFloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    .end local v0    # "sb":Ljava/nio/HeapFloatBuffer;
    .end local v1    # "n":I
    goto :goto_74

    .line 172
    .restart local v0    # "sb":Ljava/nio/HeapFloatBuffer;
    .restart local v1    # "n":I
    :cond_3f
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 177
    .end local v0    # "sb":Ljava/nio/HeapFloatBuffer;
    .end local v1    # "n":I
    :cond_45
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 178
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    .line 179
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_6b

    .line 181
    iget-object v1, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 182
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    .end local v0    # "n":I
    goto :goto_74

    .line 180
    .restart local v0    # "n":I
    :cond_6b
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 184
    .end local v0    # "n":I
    :cond_71
    invoke-super {p0, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 186
    :goto_74
    return-object p0

    .line 166
    :cond_75
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 163
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api put([FII)Ljava/nio/FloatBuffer;
    .registers 6
    .param p1, "src"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 150
    iget-boolean v0, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    if-nez v0, :cond_2a

    .line 153
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapFloatBuffer;->checkBounds(III)V

    .line 154
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_24

    .line 156
    iget-object v0, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapFloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    return-object p0

    .line 155
    :cond_24
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 151
    :cond_2a
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api slice()Ljava/nio/FloatBuffer;
    .registers 10

    .line 76
    new-instance v8, Ljava/nio/HeapFloatBuffer;

    iget-object v1, p0, Ljava/nio/HeapFloatBuffer;->hb:[F

    .line 79
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v4

    .line 80
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->remaining()I

    move-result v5

    .line 81
    invoke-virtual {p0}, Ljava/nio/HeapFloatBuffer;->position()I

    move-result v0

    iget v2, p0, Ljava/nio/HeapFloatBuffer;->offset:I

    add-int v6, v0, v2

    iget-boolean v7, p0, Ljava/nio/HeapFloatBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    .line 76
    return-object v8
.end method
