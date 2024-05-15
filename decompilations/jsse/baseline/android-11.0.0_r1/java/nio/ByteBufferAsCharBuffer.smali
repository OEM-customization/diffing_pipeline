.class Ljava/nio/ByteBufferAsCharBuffer;
.super Ljava/nio/CharBuffer;
.source "ByteBufferAsCharBuffer.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field protected final blacklist bb:Ljava/nio/ByteBuffer;

.field protected final blacklist offset:I

.field private final blacklist order:Ljava/nio/ByteOrder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 30
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V
    .registers 12
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "order"    # Ljava/nio/ByteOrder;

    .line 39
    invoke-direct {p0, p2, p3, p4, p5}, Ljava/nio/CharBuffer;-><init>(IIII)V

    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 41
    iget-boolean v0, p1, Ljava/nio/ByteBuffer;->isReadOnly:Z

    iput-boolean v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->isReadOnly:Z

    .line 49
    instance-of v0, p1, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_17

    .line 50
    iget-wide v0, p1, Ljava/nio/ByteBuffer;->address:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->address:J

    .line 52
    :cond_17
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    iput-object p7, p0, Ljava/nio/ByteBufferAsCharBuffer;->order:Ljava/nio/ByteOrder;

    .line 54
    iput p6, p0, Ljava/nio/ByteBufferAsCharBuffer;->offset:I

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .registers 10

    .line 78
    new-instance v8, Ljava/nio/ByteBufferAsCharBuffer;

    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->markValue()I

    move-result v2

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->position()I

    move-result v3

    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->limit()I

    move-result v4

    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/ByteBufferAsCharBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsCharBuffer;->order:Ljava/nio/ByteOrder;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 78
    return-object v8
.end method

.method public whitelist core-platform-api test-api compact()Ljava/nio/CharBuffer;
    .registers 15

    .line 135
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->isReadOnly:Z

    if-nez v0, :cond_50

    .line 138
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->position()I

    move-result v0

    .line 139
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->limit()I

    move-result v1

    .line 140
    .local v1, "lim":I
    nop

    .line 141
    const/4 v2, 0x0

    if-gt v0, v1, :cond_13

    sub-int v3, v1, v0

    goto :goto_14

    :cond_13
    move v3, v2

    .line 142
    .local v3, "rem":I
    :goto_14
    iget-object v4, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    instance-of v5, v4, Ljava/nio/DirectByteBuffer;

    if-nez v5, :cond_32

    .line 143
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v5

    iget-object v6, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v2

    shl-int/lit8 v7, v3, 0x1

    invoke-static {v4, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_42

    .line 145
    :cond_32
    invoke-virtual {p0, v2}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v9

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v11

    shl-int/lit8 v2, v3, 0x1

    int-to-long v12, v2

    move-object v8, p0

    move-object v10, p0

    invoke-static/range {v8 .. v13}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 147
    :goto_42
    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsCharBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBufferAsCharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 149
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->discardMark()V

    .line 150
    return-object p0

    .line 136
    .end local v0    # "pos":I
    .end local v1    # "lim":I
    .end local v3    # "rem":I
    :cond_50
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api duplicate()Ljava/nio/CharBuffer;
    .registers 10

    .line 68
    new-instance v8, Ljava/nio/ByteBufferAsCharBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->markValue()I

    move-result v2

    .line 70
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->position()I

    move-result v3

    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->limit()I

    move-result v4

    .line 72
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/ByteBufferAsCharBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsCharBuffer;->order:Ljava/nio/ByteOrder;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 68
    return-object v8
.end method

.method public whitelist core-platform-api test-api get()C
    .registers 2

    .line 92
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->nextGetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsCharBuffer;->get(I)C

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api get(I)C
    .registers 4
    .param p1, "i"    # I

    .line 96
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsCharBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getCharUnchecked(I)C

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api get([CII)Ljava/nio/CharBuffer;
    .registers 6
    .param p1, "dst"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 100
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsCharBuffer;->checkBounds(III)V

    .line 101
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_1b

    .line 103
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->getUnchecked(I[CII)V

    .line 104
    iget v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    .line 105
    return-object p0

    .line 102
    :cond_1b
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method blacklist getUnchecked(I)C
    .registers 4
    .param p1, "i"    # I

    .line 109
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getCharUnchecked(I)C

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isDirect()Z
    .registers 2

    .line 154
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isReadOnly()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->isReadOnly:Z

    return v0
.end method

.method protected blacklist ix(I)I
    .registers 4
    .param p1, "i"    # I

    .line 88
    shl-int/lit8 v0, p1, 0x1

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api order()Ljava/nio/ByteOrder;
    .registers 2

    .line 199
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public whitelist core-platform-api test-api put(C)Ljava/nio/CharBuffer;
    .registers 3
    .param p1, "x"    # C

    .line 113
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->nextPutIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/nio/ByteBufferAsCharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 114
    return-object p0
.end method

.method public whitelist core-platform-api test-api put(IC)Ljava/nio/CharBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # C

    .line 118
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->isReadOnly:Z

    if-nez v0, :cond_12

    .line 121
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsCharBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putCharUnchecked(IC)V

    .line 122
    return-object p0

    .line 119
    :cond_12
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api put([CII)Ljava/nio/CharBuffer;
    .registers 6
    .param p1, "src"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 126
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsCharBuffer;->checkBounds(III)V

    .line 127
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_1b

    .line 129
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->putUnchecked(I[CII)V

    .line 130
    iget v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    .line 131
    return-object p0

    .line 128
    :cond_1b
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api slice()Ljava/nio/CharBuffer;
    .registers 13

    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->position()I

    move-result v0

    .line 59
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->limit()I

    move-result v1

    .line 60
    .local v1, "lim":I
    nop

    .line 61
    if-gt v0, v1, :cond_e

    sub-int v2, v1, v0

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    move v7, v2

    .line 62
    .local v7, "rem":I
    shl-int/lit8 v2, v0, 0x1

    iget v3, p0, Ljava/nio/ByteBufferAsCharBuffer;->offset:I

    add-int/2addr v2, v3

    .line 63
    .local v2, "off":I
    nop

    .line 64
    new-instance v11, Ljava/nio/ByteBufferAsCharBuffer;

    iget-object v4, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    const/4 v5, -0x1

    const/4 v6, 0x0

    iget-object v10, p0, Ljava/nio/ByteBufferAsCharBuffer;->order:Ljava/nio/ByteOrder;

    move-object v3, v11

    move v8, v7

    move v9, v2

    invoke-direct/range {v3 .. v10}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v11
.end method

.method public bridge synthetic whitelist core-platform-api test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 3

    .line 30
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBufferAsCharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api subSequence(II)Ljava/nio/CharBuffer;
    .registers 15
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 181
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->position()I

    move-result v0

    .line 182
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->limit()I

    move-result v1

    .line 183
    .local v1, "lim":I
    nop

    .line 184
    if-gt v0, v1, :cond_d

    move v2, v0

    goto :goto_e

    :cond_d
    move v2, v1

    :goto_e
    move v0, v2

    .line 185
    sub-int v2, v1, v0

    .line 187
    .local v2, "len":I
    if-ltz p1, :cond_2d

    if-gt p2, v2, :cond_2d

    if-gt p1, p2, :cond_2d

    .line 189
    new-instance v11, Ljava/nio/ByteBufferAsCharBuffer;

    iget-object v4, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    const/4 v5, -0x1

    add-int v6, v0, p1

    add-int v7, v0, p2

    .line 193
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->capacity()I

    move-result v8

    iget v9, p0, Ljava/nio/ByteBufferAsCharBuffer;->offset:I

    iget-object v10, p0, Ljava/nio/ByteBufferAsCharBuffer;->order:Ljava/nio/ByteOrder;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 189
    return-object v11

    .line 188
    :cond_2d
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method public blacklist toString(II)Ljava/lang/String;
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 162
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->limit()I

    move-result v0

    if-gt p2, v0, :cond_2a

    if-gt p1, p2, :cond_2a

    .line 165
    sub-int v0, p2, p1

    .line 166
    .local v0, "len":I
    :try_start_a
    new-array v1, v0, [C

    .line 167
    .local v1, "ca":[C
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 168
    .local v2, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v3

    .line 169
    .local v3, "db":Ljava/nio/CharBuffer;
    invoke-virtual {v3, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    invoke-virtual {v3, p2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 172
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_22
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_a .. :try_end_22} :catch_23

    return-object v4

    .line 173
    .end local v0    # "len":I
    .end local v1    # "ca":[C
    .end local v2    # "cb":Ljava/nio/CharBuffer;
    .end local v3    # "db":Ljava/nio/CharBuffer;
    :catch_23
    move-exception v0

    .line 174
    .local v0, "x":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 163
    .end local v0    # "x":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_2a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
