.class Ljava/nio/HeapShortBuffer;
.super Ljava/nio/ShortBuffer;
.source "HeapShortBuffer.java"


# direct methods
.method constructor blacklist <init>(II)V
    .registers 4
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapShortBuffer;-><init>(IIZ)V

    .line 46
    return-void
.end method

.method constructor blacklist <init>(IIZ)V
    .registers 11
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    .line 49
    new-array v5, p1, [S

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/ShortBuffer;-><init>(IIII[SI)V

    .line 50
    iput-boolean p3, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    .line 51
    return-void
.end method

.method constructor blacklist <init>([SII)V
    .registers 5
    .param p1, "buf"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapShortBuffer;-><init>([SIIZ)V

    .line 55
    return-void
.end method

.method protected constructor blacklist <init>([SIIIII)V
    .registers 15
    .param p1, "buf"    # [S
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

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapShortBuffer;-><init>([SIIIIIZ)V

    .line 66
    return-void
.end method

.method protected constructor blacklist <init>([SIIIIIZ)V
    .registers 15
    .param p1, "buf"    # [S
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

    invoke-direct/range {v0 .. v6}, Ljava/nio/ShortBuffer;-><init>(IIII[SI)V

    .line 72
    iput-boolean p7, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    .line 73
    return-void
.end method

.method constructor blacklist <init>([SIIZ)V
    .registers 12
    .param p1, "buf"    # [S
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

    invoke-direct/range {v0 .. v6}, Ljava/nio/ShortBuffer;-><init>(IIII[SI)V

    .line 59
    iput-boolean p4, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist test-api asReadOnlyBuffer()Ljava/nio/ShortBuffer;
    .registers 10

    .line 97
    new-instance v8, Ljava/nio/HeapShortBuffer;

    iget-object v1, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    .line 98
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->markValue()I

    move-result v2

    .line 99
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v3

    .line 100
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->limit()I

    move-result v4

    .line 101
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapShortBuffer;->offset:I

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapShortBuffer;-><init>([SIIIIIZ)V

    .line 97
    return-object v8
.end method

.method public whitelist test-api compact()Ljava/nio/ShortBuffer;
    .registers 6

    .line 191
    iget-boolean v0, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    if-nez v0, :cond_2e

    .line 194
    iget-object v0, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 197
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->discardMark()V

    .line 198
    return-object p0

    .line 192
    :cond_2e
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api duplicate()Ljava/nio/ShortBuffer;
    .registers 10

    .line 86
    new-instance v8, Ljava/nio/HeapShortBuffer;

    iget-object v1, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    .line 87
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->markValue()I

    move-result v2

    .line 88
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v3

    .line 89
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->limit()I

    move-result v4

    .line 90
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapShortBuffer;->offset:I

    iget-boolean v7, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapShortBuffer;-><init>([SIIIIIZ)V

    .line 86
    return-object v8
.end method

.method public whitelist test-api get([SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 118
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapShortBuffer;->checkBounds(III)V

    .line 119
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_20

    .line 121
    iget-object v0, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    return-object p0

    .line 120
    :cond_20
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public whitelist test-api get()S
    .registers 3

    .line 110
    iget-object v0, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    aget-short v0, v0, v1

    return v0
.end method

.method public whitelist test-api get(I)S
    .registers 4
    .param p1, "i"    # I

    .line 114
    iget-object v0, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0, p1}, Ljava/nio/HeapShortBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    aget-short v0, v0, v1

    return v0
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
    iget-boolean v0, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    return v0
.end method

.method protected blacklist ix(I)I
    .registers 3
    .param p1, "i"    # I

    .line 106
    iget v0, p0, Ljava/nio/HeapShortBuffer;->offset:I

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

.method public whitelist test-api put(IS)Ljava/nio/ShortBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # S

    .line 143
    iget-boolean v0, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    if-nez v0, :cond_11

    .line 146
    iget-object v0, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0, p1}, Ljava/nio/HeapShortBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    aput-short p2, v0, v1

    .line 147
    return-object p0

    .line 144
    :cond_11
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .registers 8
    .param p1, "src"    # Ljava/nio/ShortBuffer;

    .line 163
    if-eq p1, p0, :cond_7b

    .line 166
    iget-boolean v0, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    if-nez v0, :cond_75

    .line 169
    instance-of v0, p1, Ljava/nio/HeapShortBuffer;

    if-eqz v0, :cond_45

    .line 170
    move-object v0, p1

    check-cast v0, Ljava/nio/HeapShortBuffer;

    .line 171
    .local v0, "sb":Ljava/nio/HeapShortBuffer;
    invoke-virtual {v0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v1

    .line 172
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v2

    if-gt v1, v2, :cond_3f

    .line 174
    iget-object v2, v0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {v0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v3

    iget-object v4, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    .line 175
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v5

    .line 174
    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    invoke-virtual {v0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/HeapShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/nio/HeapShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    .end local v0    # "sb":Ljava/nio/HeapShortBuffer;
    .end local v1    # "n":I
    goto :goto_74

    .line 173
    .restart local v0    # "sb":Ljava/nio/HeapShortBuffer;
    .restart local v1    # "n":I
    :cond_3f
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 178
    .end local v0    # "sb":Ljava/nio/HeapShortBuffer;
    .end local v1    # "n":I
    :cond_45
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 179
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    .line 180
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_6b

    .line 182
    iget-object v1, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 183
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->position(I)Ljava/nio/Buffer;

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
    invoke-super {p0, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

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

.method public whitelist test-api put(S)Ljava/nio/ShortBuffer;
    .registers 4
    .param p1, "x"    # S

    .line 135
    iget-boolean v0, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    if-nez v0, :cond_11

    .line 138
    iget-object v0, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    aput-short p1, v0, v1

    .line 139
    return-object p0

    .line 136
    :cond_11
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put([SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "src"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 151
    iget-boolean v0, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    if-nez v0, :cond_2a

    .line 154
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapShortBuffer;->checkBounds(III)V

    .line 155
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_24

    .line 157
    iget-object v0, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapShortBuffer;->position(I)Ljava/nio/Buffer;

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

.method public whitelist test-api slice()Ljava/nio/ShortBuffer;
    .registers 10

    .line 76
    new-instance v8, Ljava/nio/HeapShortBuffer;

    iget-object v1, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    .line 79
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v4

    .line 80
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v5

    .line 81
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v0

    iget v2, p0, Ljava/nio/HeapShortBuffer;->offset:I

    add-int v6, v0, v2

    iget-boolean v7, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapShortBuffer;-><init>([SIIIIIZ)V

    .line 76
    return-object v8
.end method