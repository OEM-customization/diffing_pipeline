.class Ljava/nio/HeapDoubleBuffer;
.super Ljava/nio/DoubleBuffer;
.source "HeapDoubleBuffer.java"


# direct methods
.method constructor blacklist <init>(II)V
    .registers 4
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapDoubleBuffer;-><init>(IIZ)V

    .line 46
    return-void
.end method

.method constructor blacklist <init>(IIZ)V
    .registers 11
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    .line 59
    new-array v5, p1, [D

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    .line 60
    iput-boolean p3, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    .line 61
    return-void
.end method

.method constructor blacklist <init>([DII)V
    .registers 5
    .param p1, "buf"    # [D
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIZ)V

    .line 50
    return-void
.end method

.method protected constructor blacklist <init>([DIIIII)V
    .registers 15
    .param p1, "buf"    # [D
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    .line 55
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    .line 56
    return-void
.end method

.method protected constructor blacklist <init>([DIIIIIZ)V
    .registers 15
    .param p1, "buf"    # [D
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

    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    .line 72
    iput-boolean p7, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    .line 73
    return-void
.end method

.method constructor blacklist <init>([DIIZ)V
    .registers 12
    .param p1, "buf"    # [D
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

    .line 64
    add-int v3, p2, p3

    array-length v4, p1

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    .line 65
    iput-boolean p4, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist test-api asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .registers 10

    .line 97
    new-instance v8, Ljava/nio/HeapDoubleBuffer;

    iget-object v1, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    .line 98
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->markValue()I

    move-result v2

    .line 99
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v3

    .line 100
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->limit()I

    move-result v4

    .line 101
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapDoubleBuffer;->offset:I

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    .line 97
    return-object v8
.end method

.method public whitelist test-api compact()Ljava/nio/DoubleBuffer;
    .registers 6

    .line 191
    iget-boolean v0, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    if-nez v0, :cond_2e

    .line 194
    iget-object v0, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapDoubleBuffer;->limit(I)Ljava/nio/Buffer;

    .line 197
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->discardMark()V

    .line 198
    return-object p0

    .line 192
    :cond_2e
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api duplicate()Ljava/nio/DoubleBuffer;
    .registers 10

    .line 87
    new-instance v8, Ljava/nio/HeapDoubleBuffer;

    iget-object v1, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    .line 88
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->markValue()I

    move-result v2

    .line 89
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v3

    .line 90
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->limit()I

    move-result v4

    .line 91
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapDoubleBuffer;->offset:I

    iget-boolean v7, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    .line 87
    return-object v8
.end method

.method public whitelist test-api get()D
    .registers 3

    .line 110
    iget-object v0, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public whitelist test-api get(I)D
    .registers 4
    .param p1, "i"    # I

    .line 114
    iget-object v0, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {p0, p1}, Ljava/nio/HeapDoubleBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public whitelist test-api get([DII)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 118
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapDoubleBuffer;->checkBounds(III)V

    .line 119
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_20

    .line 121
    iget-object v0, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    return-object p0

    .line 120
    :cond_20
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isDirect()Z
    .registers 2

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isReadOnly()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    return v0
.end method

.method protected blacklist ix(I)I
    .registers 3
    .param p1, "i"    # I

    .line 106
    iget v0, p0, Ljava/nio/HeapDoubleBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public whitelist test-api order()Ljava/nio/ByteOrder;
    .registers 2

    .line 202
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(D)Ljava/nio/DoubleBuffer;
    .registers 5
    .param p1, "x"    # D

    .line 135
    iget-boolean v0, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    if-nez v0, :cond_11

    .line 138
    iget-object v0, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    aput-wide p1, v0, v1

    .line 139
    return-object p0

    .line 136
    :cond_11
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put(ID)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .line 143
    iget-boolean v0, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    if-nez v0, :cond_11

    .line 146
    iget-object v0, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {p0, p1}, Ljava/nio/HeapDoubleBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    aput-wide p2, v0, v1

    .line 147
    return-object p0

    .line 144
    :cond_11
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .registers 8
    .param p1, "src"    # Ljava/nio/DoubleBuffer;

    .line 163
    if-eq p1, p0, :cond_7b

    .line 166
    iget-boolean v0, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    if-nez v0, :cond_75

    .line 169
    instance-of v0, p1, Ljava/nio/HeapDoubleBuffer;

    if-eqz v0, :cond_45

    .line 170
    move-object v0, p1

    check-cast v0, Ljava/nio/HeapDoubleBuffer;

    .line 171
    .local v0, "sb":Ljava/nio/HeapDoubleBuffer;
    invoke-virtual {v0}, Ljava/nio/HeapDoubleBuffer;->remaining()I

    move-result v1

    .line 172
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->remaining()I

    move-result v2

    if-gt v1, v2, :cond_3f

    .line 174
    iget-object v2, v0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {v0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v3

    iget-object v4, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    .line 175
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v5

    .line 174
    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    invoke-virtual {v0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/HeapDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/nio/HeapDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    .end local v0    # "sb":Ljava/nio/HeapDoubleBuffer;
    .end local v1    # "n":I
    goto :goto_74

    .line 173
    .restart local v0    # "sb":Ljava/nio/HeapDoubleBuffer;
    .restart local v1    # "n":I
    :cond_3f
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 178
    .end local v0    # "sb":Ljava/nio/HeapDoubleBuffer;
    .end local v1    # "n":I
    :cond_45
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 179
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v0

    .line 180
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_6b

    .line 182
    iget-object v1, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    .line 183
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    .end local v0    # "n":I
    goto :goto_74

    .line 181
    .restart local v0    # "n":I
    :cond_6b
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 185
    .end local v0    # "n":I
    :cond_71
    invoke-super {p0, p1}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    .line 187
    :goto_74
    return-object p0

    .line 167
    :cond_75
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 164
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put([DII)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "src"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 151
    iget-boolean v0, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    if-nez v0, :cond_2a

    .line 154
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapDoubleBuffer;->checkBounds(III)V

    .line 155
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_24

    .line 157
    iget-object v0, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    return-object p0

    .line 156
    :cond_24
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 152
    :cond_2a
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api slice()Ljava/nio/DoubleBuffer;
    .registers 10

    .line 77
    new-instance v8, Ljava/nio/HeapDoubleBuffer;

    iget-object v1, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    .line 80
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->remaining()I

    move-result v4

    .line 81
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->remaining()I

    move-result v5

    .line 82
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v0

    iget v2, p0, Ljava/nio/HeapDoubleBuffer;->offset:I

    add-int v6, v0, v2

    iget-boolean v7, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    .line 77
    return-object v8
.end method
