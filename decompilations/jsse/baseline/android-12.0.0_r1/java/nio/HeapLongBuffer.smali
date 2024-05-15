.class Ljava/nio/HeapLongBuffer;
.super Ljava/nio/LongBuffer;
.source "HeapLongBuffer.java"


# direct methods
.method constructor blacklist <init>(II)V
    .registers 4
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapLongBuffer;-><init>(IIZ)V

    .line 47
    return-void
.end method

.method constructor blacklist <init>(IIZ)V
    .registers 11
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    .line 50
    new-array v5, p1, [J

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/LongBuffer;-><init>(IIII[JI)V

    .line 51
    iput-boolean p3, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    .line 52
    return-void
.end method

.method constructor blacklist <init>([JII)V
    .registers 5
    .param p1, "buf"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapLongBuffer;-><init>([JIIZ)V

    .line 56
    return-void
.end method

.method protected constructor blacklist <init>([JIIIII)V
    .registers 15
    .param p1, "buf"    # [J
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

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

.method protected constructor blacklist <init>([JIIIIIZ)V
    .registers 15
    .param p1, "buf"    # [J
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    .line 72
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/LongBuffer;-><init>(IIII[JI)V

    .line 73
    iput-boolean p7, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    .line 74
    return-void
.end method

.method constructor blacklist <init>([JIIZ)V
    .registers 12
    .param p1, "buf"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

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
.method public whitelist test-api asReadOnlyBuffer()Ljava/nio/LongBuffer;
    .registers 10

    .line 97
    new-instance v8, Ljava/nio/HeapLongBuffer;

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

    iget v6, p0, Ljava/nio/HeapLongBuffer;->offset:I

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    .line 97
    return-object v8
.end method

.method public whitelist test-api compact()Ljava/nio/LongBuffer;
    .registers 6

    .line 192
    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-nez v0, :cond_2e

    .line 195
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

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    .line 193
    :cond_2e
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api duplicate()Ljava/nio/LongBuffer;
    .registers 10

    .line 87
    new-instance v8, Ljava/nio/HeapLongBuffer;

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

    iget v6, p0, Ljava/nio/HeapLongBuffer;->offset:I

    iget-boolean v7, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    .line 87
    return-object v8
.end method

.method public whitelist test-api get()J
    .registers 3

    .line 111
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public whitelist test-api get(I)J
    .registers 4
    .param p1, "i"    # I

    .line 115
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0, p1}, Ljava/nio/HeapLongBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public whitelist test-api get([JII)Ljava/nio/LongBuffer;
    .registers 6
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 119
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapLongBuffer;->checkBounds(III)V

    .line 120
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_20

    .line 122
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    return-object p0

    .line 121
    :cond_20
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isDirect()Z
    .registers 2

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isReadOnly()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    return v0
.end method

.method protected blacklist ix(I)I
    .registers 3
    .param p1, "i"    # I

    .line 107
    iget v0, p0, Ljava/nio/HeapLongBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public whitelist test-api order()Ljava/nio/ByteOrder;
    .registers 2

    .line 203
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(IJ)Ljava/nio/LongBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # J

    .line 144
    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-nez v0, :cond_11

    .line 147
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0, p1}, Ljava/nio/HeapLongBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    aput-wide p2, v0, v1

    .line 148
    return-object p0

    .line 145
    :cond_11
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put(J)Ljava/nio/LongBuffer;
    .registers 5
    .param p1, "x"    # J

    .line 136
    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-nez v0, :cond_11

    .line 139
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    aput-wide p1, v0, v1

    .line 140
    return-object p0

    .line 137
    :cond_11
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;
    .registers 8
    .param p1, "src"    # Ljava/nio/LongBuffer;

    .line 164
    if-eq p1, p0, :cond_7b

    .line 167
    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-nez v0, :cond_75

    .line 170
    instance-of v0, p1, Ljava/nio/HeapLongBuffer;

    if-eqz v0, :cond_45

    .line 171
    move-object v0, p1

    check-cast v0, Ljava/nio/HeapLongBuffer;

    .line 172
    .local v0, "sb":Ljava/nio/HeapLongBuffer;
    invoke-virtual {v0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v1

    .line 173
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v2

    if-gt v1, v2, :cond_3f

    .line 175
    iget-object v2, v0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {v0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v3

    iget-object v4, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    .line 176
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v5

    .line 175
    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    invoke-virtual {v0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    .end local v0    # "sb":Ljava/nio/HeapLongBuffer;
    .end local v1    # "n":I
    goto :goto_74

    .line 174
    .restart local v0    # "sb":Ljava/nio/HeapLongBuffer;
    .restart local v1    # "n":I
    :cond_3f
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 179
    .end local v0    # "sb":Ljava/nio/HeapLongBuffer;
    .end local v1    # "n":I
    :cond_45
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 180
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

    .line 181
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_6b

    .line 183
    iget-object v1, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/LongBuffer;->get([JII)Ljava/nio/LongBuffer;

    .line 184
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    .end local v0    # "n":I
    goto :goto_74

    .line 182
    .restart local v0    # "n":I
    :cond_6b
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 186
    .end local v0    # "n":I
    :cond_71
    invoke-super {p0, p1}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    .line 188
    :goto_74
    return-object p0

    .line 168
    :cond_75
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 165
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put([JII)Ljava/nio/LongBuffer;
    .registers 6
    .param p1, "src"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 152
    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-nez v0, :cond_2a

    .line 155
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapLongBuffer;->checkBounds(III)V

    .line 156
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_24

    .line 158
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    return-object p0

    .line 157
    :cond_24
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 153
    :cond_2a
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api slice()Ljava/nio/LongBuffer;
    .registers 10

    .line 77
    new-instance v8, Ljava/nio/HeapLongBuffer;

    iget-object v1, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    .line 80
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v4

    .line 81
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v5

    .line 82
    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v0

    iget v2, p0, Ljava/nio/HeapLongBuffer;->offset:I

    add-int v6, v0, v2

    iget-boolean v7, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    .line 77
    return-object v8
.end method
