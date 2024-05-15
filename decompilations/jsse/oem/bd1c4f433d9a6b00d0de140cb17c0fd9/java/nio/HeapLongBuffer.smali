.class Ljava/nio/HeapLongBuffer;
.super Ljava/nio/LongBuffer;
.source "HeapLongBuffer.java"


# direct methods
.method constructor <init>(II)V
    .registers 4
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapLongBuffer;-><init>(IIZ)V

    .line 47
    return-void
.end method

.method constructor <init>(IIZ)V
    .registers 11
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 50
    new-array v5, p1, [J

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ljava/nio/LongBuffer;-><init>(IIII[JI)V

    .line 51
    iput-boolean p3, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    .line 52
    return-void
.end method

.method constructor <init>([JII)V
    .registers 5
    .param p1, "buf"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapLongBuffer;-><init>([JIIZ)V

    .line 56
    return-void
.end method

.method protected constructor <init>([JIIIII)V
    .registers 15
    .param p1, "buf"    # [J
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    .prologue
    .line 66
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    .line 67
    return-void
.end method

.method protected constructor <init>([JIIIIIZ)V
    .registers 15
    .param p1, "buf"    # [J
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

    .line 72
    invoke-direct/range {v0 .. v6}, Ljava/nio/LongBuffer;-><init>(IIII[JI)V

    .line 73
    iput-boolean p7, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    .line 74
    return-void
.end method

.method constructor <init>([JIIZ)V
    .registers 12
    .param p1, "buf"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

    .prologue
    .line 59
    add-int v3, p2, p3

    array-length v4, p1

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/LongBuffer;-><init>(IIII[JI)V

    .line 60
    iput-boolean p4, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    .line 61
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/LongBuffer;
    .registers 9

    .prologue
    .line 97
    new-instance v0, Ljava/nio/HeapLongBuffer;

    iget-object v1, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    .line 98
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->markValue()I

    move-result v2

    .line 99
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v3

    .line 100
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->limit()I

    move-result v4

    .line 101
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->capacity()I

    move-result v5

    .line 102
    iget v6, p0, Ljava/nio/HeapLongBuffer;->offset:I

    const/4 v7, 0x1

    .line 97
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    return-object v0
.end method

.method public compact()Ljava/nio/LongBuffer;
    .registers 6

    .prologue
    .line 192
    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 193
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 195
    :cond_a
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 196
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapLongBuffer;->limit(I)Ljava/nio/Buffer;

    .line 198
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->discardMark()V

    .line 199
    return-object p0
.end method

.method public duplicate()Ljava/nio/LongBuffer;
    .registers 9

    .prologue
    .line 87
    new-instance v0, Ljava/nio/HeapLongBuffer;

    iget-object v1, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    .line 88
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->markValue()I

    move-result v2

    .line 89
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v3

    .line 90
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->limit()I

    move-result v4

    .line 91
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->capacity()I

    move-result v5

    .line 92
    iget v6, p0, Ljava/nio/HeapLongBuffer;->offset:I

    .line 93
    iget-boolean v7, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    .line 87
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    return-object v0
.end method

.method public get()J
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public get(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 115
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0, p1}, Ljava/nio/HeapLongBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public get([JII)Ljava/nio/LongBuffer;
    .registers 6
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 119
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapLongBuffer;->checkBounds(III)V

    .line 120
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_10

    .line 121
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 122
    :cond_10
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 123
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    return-object p0
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 107
    iget v0, p0, Ljava/nio/HeapLongBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 203
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(IJ)Ljava/nio/LongBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # J

    .prologue
    .line 144
    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 145
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 147
    :cond_a
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0, p1}, Ljava/nio/HeapLongBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    aput-wide p2, v0, v1

    .line 148
    return-object p0
.end method

.method public put(J)Ljava/nio/LongBuffer;
    .registers 6
    .param p1, "x"    # J

    .prologue
    .line 136
    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 137
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 139
    :cond_a
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    aput-wide p1, v0, v1

    .line 140
    return-object p0
.end method

.method public put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;
    .registers 8
    .param p1, "src"    # Ljava/nio/LongBuffer;

    .prologue
    .line 164
    if-ne p1, p0, :cond_8

    .line 165
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 167
    :cond_8
    iget-boolean v2, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-eqz v2, :cond_12

    .line 168
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v2

    .line 170
    :cond_12
    instance-of v2, p1, Ljava/nio/HeapLongBuffer;

    if-eqz v2, :cond_51

    move-object v1, p1

    .line 171
    check-cast v1, Ljava/nio/HeapLongBuffer;

    .line 172
    .local v1, "sb":Ljava/nio/HeapLongBuffer;
    invoke-virtual {v1}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v0

    .line 173
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_29

    .line 174
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 175
    :cond_29
    iget-object v2, v1, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {v1}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v3

    .line 176
    iget-object v4, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v5

    .line 175
    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 177
    invoke-virtual {v1}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    .line 188
    .end local v0    # "n":I
    .end local v1    # "sb":Ljava/nio/HeapLongBuffer;
    :goto_50
    return-object p0

    .line 179
    :cond_51
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 180
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

    .line 181
    .restart local v0    # "n":I
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_67

    .line 182
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 183
    :cond_67
    iget-object v2, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/LongBuffer;->get([JII)Ljava/nio/LongBuffer;

    .line 184
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_50

    .line 186
    .end local v0    # "n":I
    :cond_7d
    invoke-super {p0, p1}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    goto :goto_50
.end method

.method public put([JII)Ljava/nio/LongBuffer;
    .registers 6
    .param p1, "src"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 152
    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 153
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 155
    :cond_a
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapLongBuffer;->checkBounds(III)V

    .line 156
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1a

    .line 157
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 158
    :cond_1a
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 159
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    return-object p0
.end method

.method public slice()Ljava/nio/LongBuffer;
    .registers 9

    .prologue
    .line 77
    new-instance v0, Ljava/nio/HeapLongBuffer;

    iget-object v1, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    .line 80
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v4

    .line 81
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v5

    .line 82
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapLongBuffer;->offset:I

    add-int v6, v2, v3

    .line 83
    iget-boolean v7, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    .line 78
    const/4 v2, -0x1

    .line 79
    const/4 v3, 0x0

    .line 77
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    return-object v0
.end method
