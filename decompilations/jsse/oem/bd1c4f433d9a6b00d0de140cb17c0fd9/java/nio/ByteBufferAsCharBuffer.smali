.class Ljava/nio/ByteBufferAsCharBuffer;
.super Ljava/nio/CharBuffer;
.source "ByteBufferAsCharBuffer.java"


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
    const-class v0, Ljava/nio/ByteBufferAsCharBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/ByteBufferAsCharBuffer;->-assertionsDisabled:Z

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
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .registers 9

    .prologue
    .line 78
    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

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

    .line 83
    iget v6, p0, Ljava/nio/ByteBufferAsCharBuffer;->offset:I

    .line 84
    iget-object v7, p0, Ljava/nio/ByteBufferAsCharBuffer;->order:Ljava/nio/ByteOrder;

    .line 78
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->isReadOnly:Z

    if-eqz v0, :cond_b

    .line 136
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 138
    :cond_b
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->position()I

    move-result v7

    .line 139
    .local v7, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->limit()I

    move-result v6

    .line 140
    .local v6, "lim":I
    sget-boolean v0, Ljava/nio/ByteBufferAsCharBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_1f

    if-le v7, v6, :cond_1f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 141
    :cond_1f
    if-gt v7, v6, :cond_50

    sub-int v8, v6, v7

    .line 142
    .local v8, "rem":I
    :goto_23
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-nez v0, :cond_52

    .line 143
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v3

    shl-int/lit8 v4, v8, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 147
    :goto_42
    invoke-virtual {p0, v8}, Ljava/nio/ByteBufferAsCharBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsCharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 149
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->discardMark()V

    .line 150
    return-object p0

    .line 141
    .end local v8    # "rem":I
    :cond_50
    const/4 v8, 0x0

    .restart local v8    # "rem":I
    goto :goto_23

    .line 145
    :cond_52
    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v1

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v3

    shl-int/lit8 v0, v8, 0x1

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    goto :goto_42
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .registers 9

    .prologue
    .line 68
    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

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

    .line 73
    iget v6, p0, Ljava/nio/ByteBufferAsCharBuffer;->offset:I

    .line 74
    iget-object v7, p0, Ljava/nio/ByteBufferAsCharBuffer;->order:Ljava/nio/ByteOrder;

    .line 68
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public get()C
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->nextGetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsCharBuffer;->get(I)C

    move-result v0

    return v0
.end method

.method public get(I)C
    .registers 4
    .param p1, "i"    # I

    .prologue
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

.method public get([CII)Ljava/nio/CharBuffer;
    .registers 6
    .param p1, "dst"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 100
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsCharBuffer;->checkBounds(III)V

    .line 101
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_10

    .line 102
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 103
    :cond_10
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
.end method

.method getUnchecked(I)C
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 109
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getCharUnchecked(I)C

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 88
    shl-int/lit8 v0, p1, 0x1

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public put(C)Ljava/nio/CharBuffer;
    .registers 3
    .param p1, "x"    # C

    .prologue
    .line 113
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->nextPutIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/nio/ByteBufferAsCharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 114
    return-object p0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # C

    .prologue
    .line 118
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 119
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 121
    :cond_a
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsCharBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsCharBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putCharUnchecked(IC)V

    .line 122
    return-object p0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .registers 6
    .param p1, "src"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 126
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsCharBuffer;->checkBounds(III)V

    .line 127
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_10

    .line 128
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 129
    :cond_10
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
.end method

.method public slice()Ljava/nio/CharBuffer;
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->position()I

    move-result v9

    .line 59
    .local v9, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->limit()I

    move-result v8

    .line 60
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/ByteBufferAsCharBuffer;->-assertionsDisabled:Z

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

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->offset:I

    add-int v6, v0, v1

    .line 63
    .local v6, "off":I
    sget-boolean v0, Ljava/nio/ByteBufferAsCharBuffer;->-assertionsDisabled:Z

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
    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Ljava/nio/ByteBufferAsCharBuffer;->order:Ljava/nio/ByteOrder;

    const/4 v2, -0x1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 178
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBufferAsCharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public subSequence(II)Ljava/nio/CharBuffer;
    .registers 14
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 181
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->position()I

    move-result v10

    .line 182
    .local v10, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->limit()I

    move-result v9

    .line 183
    .local v9, "lim":I
    sget-boolean v0, Ljava/nio/ByteBufferAsCharBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_14

    if-le v10, v9, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 184
    :cond_14
    if-gt v10, v9, :cond_22

    .line 185
    :goto_16
    sub-int v8, v9, v10

    .line 187
    .local v8, "len":I
    if-ltz p1, :cond_1c

    if-le p2, v8, :cond_24

    .line 188
    :cond_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 184
    .end local v8    # "len":I
    :cond_22
    move v10, v9

    goto :goto_16

    .line 187
    .restart local v8    # "len":I
    :cond_24
    if-gt p1, p2, :cond_1c

    .line 189
    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 191
    add-int v3, v10, p1

    .line 192
    add-int v4, v10, p2

    .line 193
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->capacity()I

    move-result v5

    .line 194
    iget v6, p0, Ljava/nio/ByteBufferAsCharBuffer;->offset:I

    .line 195
    iget-object v7, p0, Ljava/nio/ByteBufferAsCharBuffer;->order:Ljava/nio/ByteOrder;

    .line 190
    const/4 v2, -0x1

    .line 189
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public toString(II)Ljava/lang/String;
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->limit()I

    move-result v5

    if-gt p2, v5, :cond_8

    if-le p1, p2, :cond_e

    .line 163
    :cond_8
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 165
    :cond_e
    sub-int v3, p2, p1

    .line 166
    .local v3, "len":I
    :try_start_10
    new-array v0, v3, [C

    .line 167
    .local v0, "ca":[C
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 168
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v2

    .line 169
    .local v2, "db":Ljava/nio/CharBuffer;
    invoke-virtual {v2, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    invoke-virtual {v2, p2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 172
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_28
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_10 .. :try_end_28} :catch_29

    return-object v5

    .line 173
    .end local v0    # "ca":[C
    .end local v1    # "cb":Ljava/nio/CharBuffer;
    .end local v2    # "db":Ljava/nio/CharBuffer;
    :catch_29
    move-exception v4

    .line 174
    .local v4, "x":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5
.end method
