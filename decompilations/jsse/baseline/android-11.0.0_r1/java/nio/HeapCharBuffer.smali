.class Ljava/nio/HeapCharBuffer;
.super Ljava/nio/CharBuffer;
.source "HeapCharBuffer.java"


# direct methods
.method constructor blacklist <init>(II)V
    .registers 4
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapCharBuffer;-><init>(IIZ)V

    .line 46
    return-void
.end method

.method constructor blacklist <init>(IIZ)V
    .registers 11
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    .line 49
    new-array v5, p1, [C

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    .line 50
    iput-boolean p3, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    .line 51
    return-void
.end method

.method constructor blacklist <init>([CII)V
    .registers 5
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapCharBuffer;-><init>([CIIZ)V

    .line 55
    return-void
.end method

.method protected constructor blacklist <init>([CIIIII)V
    .registers 15
    .param p1, "buf"    # [C
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

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    .line 66
    return-void
.end method

.method protected constructor blacklist <init>([CIIIIIZ)V
    .registers 15
    .param p1, "buf"    # [C
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

    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    .line 72
    iput-boolean p7, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    .line 73
    return-void
.end method

.method constructor blacklist <init>([CIIZ)V
    .registers 12
    .param p1, "buf"    # [C
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

    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    .line 59
    iput-boolean p4, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .registers 10

    .line 97
    new-instance v8, Ljava/nio/HeapCharBuffer;

    iget-object v1, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    .line 98
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->markValue()I

    move-result v2

    .line 99
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v3

    .line 100
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->limit()I

    move-result v4

    .line 101
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapCharBuffer;->offset:I

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    .line 97
    return-object v8
.end method

.method public whitelist core-platform-api test-api compact()Ljava/nio/CharBuffer;
    .registers 6

    .line 196
    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    if-nez v0, :cond_2e

    .line 199
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    .line 201
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapCharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 202
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->discardMark()V

    .line 203
    return-object p0

    .line 197
    :cond_2e
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api duplicate()Ljava/nio/CharBuffer;
    .registers 10

    .line 86
    new-instance v8, Ljava/nio/HeapCharBuffer;

    iget-object v1, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    .line 87
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->markValue()I

    move-result v2

    .line 88
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v3

    .line 89
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->limit()I

    move-result v4

    .line 90
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapCharBuffer;->offset:I

    iget-boolean v7, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    .line 86
    return-object v8
.end method

.method public whitelist core-platform-api test-api get()C
    .registers 3

    .line 111
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api get(I)C
    .registers 4
    .param p1, "i"    # I

    .line 115
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0, p1}, Ljava/nio/HeapCharBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api get([CII)Ljava/nio/CharBuffer;
    .registers 6
    .param p1, "dst"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 123
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapCharBuffer;->checkBounds(III)V

    .line 124
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_20

    .line 126
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    return-object p0

    .line 125
    :cond_20
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method blacklist getUnchecked(I)C
    .registers 4
    .param p1, "i"    # I

    .line 119
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0, p1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api isDirect()Z
    .registers 2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api isReadOnly()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    return v0
.end method

.method protected blacklist ix(I)I
    .registers 3
    .param p1, "i"    # I

    .line 107
    iget v0, p0, Ljava/nio/HeapCharBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public whitelist core-platform-api test-api order()Ljava/nio/ByteOrder;
    .registers 2

    .line 229
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api put(C)Ljava/nio/CharBuffer;
    .registers 4
    .param p1, "x"    # C

    .line 140
    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    if-nez v0, :cond_11

    .line 143
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    aput-char p1, v0, v1

    .line 144
    return-object p0

    .line 141
    :cond_11
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api put(IC)Ljava/nio/CharBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # C

    .line 148
    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    if-nez v0, :cond_11

    .line 151
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0, p1}, Ljava/nio/HeapCharBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    aput-char p2, v0, v1

    .line 152
    return-object p0

    .line 149
    :cond_11
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .registers 8
    .param p1, "src"    # Ljava/nio/CharBuffer;

    .line 168
    if-eq p1, p0, :cond_7b

    .line 171
    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    if-nez v0, :cond_75

    .line 174
    instance-of v0, p1, Ljava/nio/HeapCharBuffer;

    if-eqz v0, :cond_45

    .line 175
    move-object v0, p1

    check-cast v0, Ljava/nio/HeapCharBuffer;

    .line 176
    .local v0, "sb":Ljava/nio/HeapCharBuffer;
    invoke-virtual {v0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v1

    .line 177
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v2

    if-gt v1, v2, :cond_3f

    .line 179
    iget-object v2, v0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {v0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v3

    iget-object v4, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    .line 180
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v5

    .line 179
    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    invoke-virtual {v0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    .line 182
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    .end local v0    # "sb":Ljava/nio/HeapCharBuffer;
    .end local v1    # "n":I
    goto :goto_74

    .line 178
    .restart local v0    # "sb":Ljava/nio/HeapCharBuffer;
    .restart local v1    # "n":I
    :cond_3f
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 183
    .end local v0    # "sb":Ljava/nio/HeapCharBuffer;
    .end local v1    # "n":I
    :cond_45
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 184
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 185
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_6b

    .line 187
    iget-object v1, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    .line 188
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    .end local v0    # "n":I
    goto :goto_74

    .line 186
    .restart local v0    # "n":I
    :cond_6b
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 190
    .end local v0    # "n":I
    :cond_71
    invoke-super {p0, p1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 192
    :goto_74
    return-object p0

    .line 172
    :cond_75
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 169
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api put([CII)Ljava/nio/CharBuffer;
    .registers 6
    .param p1, "src"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 156
    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    if-nez v0, :cond_2a

    .line 159
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapCharBuffer;->checkBounds(III)V

    .line 160
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_24

    .line 162
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    return-object p0

    .line 161
    :cond_24
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 157
    :cond_2a
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api slice()Ljava/nio/CharBuffer;
    .registers 10

    .line 76
    new-instance v8, Ljava/nio/HeapCharBuffer;

    iget-object v1, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    .line 79
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v4

    .line 80
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v5

    .line 81
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v0

    iget v2, p0, Ljava/nio/HeapCharBuffer;->offset:I

    add-int v6, v0, v2

    iget-boolean v7, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    .line 76
    return-object v8
.end method

.method public bridge synthetic whitelist core-platform-api test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Ljava/nio/HeapCharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api subSequence(II)Ljava/nio/CharBuffer;
    .registers 13
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 215
    if-ltz p1, :cond_24

    .line 216
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->length()I

    move-result v0

    if-gt p2, v0, :cond_24

    if-gt p1, p2, :cond_24

    .line 219
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v0

    .line 220
    .local v0, "pos":I
    new-instance v9, Ljava/nio/HeapCharBuffer;

    iget-object v2, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    const/4 v3, -0x1

    add-int v4, v0, p1

    add-int v5, v0, p2

    .line 224
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->capacity()I

    move-result v6

    iget v7, p0, Ljava/nio/HeapCharBuffer;->offset:I

    iget-boolean v8, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    .line 220
    return-object v9

    .line 218
    .end local v0    # "pos":I
    :cond_24
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method blacklist toString(II)Ljava/lang/String;
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 208
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    iget v2, p0, Ljava/nio/HeapCharBuffer;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
    :try_end_c
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 209
    :catch_d
    move-exception v0

    .line 210
    .local v0, "x":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method
