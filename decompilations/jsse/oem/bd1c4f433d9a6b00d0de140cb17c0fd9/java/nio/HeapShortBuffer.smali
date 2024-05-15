.class Ljava/nio/HeapShortBuffer;
.super Ljava/nio/ShortBuffer;
.source "HeapShortBuffer.java"


# direct methods
.method constructor <init>(II)V
    .registers 4
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapShortBuffer;-><init>(IIZ)V

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
    new-array v5, p1, [S

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ljava/nio/ShortBuffer;-><init>(IIII[SI)V

    .line 50
    iput-boolean p3, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    .line 51
    return-void
.end method

.method constructor <init>([SII)V
    .registers 5
    .param p1, "buf"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapShortBuffer;-><init>([SIIZ)V

    .line 55
    return-void
.end method

.method protected constructor <init>([SIIIII)V
    .registers 15
    .param p1, "buf"    # [S
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

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapShortBuffer;-><init>([SIIIIIZ)V

    .line 66
    return-void
.end method

.method protected constructor <init>([SIIIIIZ)V
    .registers 15
    .param p1, "buf"    # [S
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
    invoke-direct/range {v0 .. v6}, Ljava/nio/ShortBuffer;-><init>(IIII[SI)V

    .line 72
    iput-boolean p7, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    .line 73
    return-void
.end method

.method constructor <init>([SIIZ)V
    .registers 12
    .param p1, "buf"    # [S
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

    invoke-direct/range {v0 .. v6}, Ljava/nio/ShortBuffer;-><init>(IIII[SI)V

    .line 59
    iput-boolean p4, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    .line 60
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ShortBuffer;
    .registers 9

    .prologue
    .line 97
    new-instance v0, Ljava/nio/HeapShortBuffer;

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

    .line 102
    iget v6, p0, Ljava/nio/HeapShortBuffer;->offset:I

    const/4 v7, 0x1

    .line 97
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapShortBuffer;-><init>([SIIIIIZ)V

    return-object v0
.end method

.method public compact()Ljava/nio/ShortBuffer;
    .registers 6

    .prologue
    .line 191
    iget-boolean v0, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 192
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 194
    :cond_a
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

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([SI[SII)V

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
.end method

.method public duplicate()Ljava/nio/ShortBuffer;
    .registers 9

    .prologue
    .line 86
    new-instance v0, Ljava/nio/HeapShortBuffer;

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

    .line 91
    iget v6, p0, Ljava/nio/HeapShortBuffer;->offset:I

    .line 92
    iget-boolean v7, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    .line 86
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapShortBuffer;-><init>([SIIIIIZ)V

    return-object v0
.end method

.method public get([SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 118
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapShortBuffer;->checkBounds(III)V

    .line 119
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_10

    .line 120
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 121
    :cond_10
    iget-object v0, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 122
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    return-object p0
.end method

.method public get()S
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    aget-short v0, v0, v1

    return v0
.end method

.method public get(I)S
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 114
    iget-object v0, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0, p1}, Ljava/nio/HeapShortBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    aget-short v0, v0, v1

    return v0
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 131
    iget-boolean v0, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 106
    iget v0, p0, Ljava/nio/HeapShortBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 202
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(IS)Ljava/nio/ShortBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # S

    .prologue
    .line 143
    iget-boolean v0, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 144
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 146
    :cond_a
    iget-object v0, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0, p1}, Ljava/nio/HeapShortBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    aput-short p2, v0, v1

    .line 147
    return-object p0
.end method

.method public put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .registers 8
    .param p1, "src"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 163
    if-ne p1, p0, :cond_8

    .line 164
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 166
    :cond_8
    iget-boolean v2, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    if-eqz v2, :cond_12

    .line 167
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v2

    .line 169
    :cond_12
    instance-of v2, p1, Ljava/nio/HeapShortBuffer;

    if-eqz v2, :cond_51

    move-object v1, p1

    .line 170
    check-cast v1, Ljava/nio/HeapShortBuffer;

    .line 171
    .local v1, "sb":Ljava/nio/HeapShortBuffer;
    invoke-virtual {v1}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v0

    .line 172
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_29

    .line 173
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 174
    :cond_29
    iget-object v2, v1, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {v1}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v3

    .line 175
    iget-object v4, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v5

    .line 174
    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 176
    invoke-virtual {v1}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/HeapShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/HeapShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 187
    .end local v0    # "n":I
    .end local v1    # "sb":Ljava/nio/HeapShortBuffer;
    :goto_50
    return-object p0

    .line 178
    :cond_51
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 179
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    .line 180
    .restart local v0    # "n":I
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_67

    .line 181
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 182
    :cond_67
    iget-object v2, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 183
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/HeapShortBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_50

    .line 185
    .end local v0    # "n":I
    :cond_7d
    invoke-super {p0, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    goto :goto_50
.end method

.method public put(S)Ljava/nio/ShortBuffer;
    .registers 4
    .param p1, "x"    # S

    .prologue
    .line 135
    iget-boolean v0, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 136
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 138
    :cond_a
    iget-object v0, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    aput-short p1, v0, v1

    .line 139
    return-object p0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "src"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 151
    iget-boolean v0, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 152
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 154
    :cond_a
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapShortBuffer;->checkBounds(III)V

    .line 155
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1a

    .line 156
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 157
    :cond_1a
    iget-object v0, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 158
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    return-object p0
.end method

.method public slice()Ljava/nio/ShortBuffer;
    .registers 9

    .prologue
    .line 76
    new-instance v0, Ljava/nio/HeapShortBuffer;

    iget-object v1, p0, Ljava/nio/HeapShortBuffer;->hb:[S

    .line 79
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v4

    .line 80
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->remaining()I

    move-result v5

    .line 81
    invoke-virtual {p0}, Ljava/nio/HeapShortBuffer;->position()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapShortBuffer;->offset:I

    add-int v6, v2, v3

    .line 82
    iget-boolean v7, p0, Ljava/nio/HeapShortBuffer;->isReadOnly:Z

    .line 77
    const/4 v2, -0x1

    .line 78
    const/4 v3, 0x0

    .line 76
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapShortBuffer;-><init>([SIIIIIZ)V

    return-object v0
.end method
