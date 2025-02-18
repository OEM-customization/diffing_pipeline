.class public Ljava/util/stream/SpinedBuffer;
.super Ljava/util/stream/AbstractSpinedBuffer;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SpinedBuffer$OfDouble;,
        Ljava/util/stream/SpinedBuffer$OfInt;,
        Ljava/util/stream/SpinedBuffer$OfLong;,
        Ljava/util/stream/SpinedBuffer$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractSpinedBuffer;",
        "Ljava/util/function/Consumer",
        "<TE;>;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final SPLITERATOR_CHARACTERISTICS:I = 0x4050


# instance fields
.field protected curChunk:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected spine:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TE;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -java_util_stream_SpinedBuffer-mthref-0(Ljava/util/List;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 270
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 107
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-direct {p0}, Ljava/util/stream/AbstractSpinedBuffer;-><init>()V

    .line 108
    iget v0, p0, Ljava/util/stream/SpinedBuffer;->initialChunkPower:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .prologue
    .line 98
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/AbstractSpinedBuffer;-><init>(I)V

    .line 99
    iget v0, p0, Ljava/util/stream/SpinedBuffer;->initialChunkPower:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    .line 100
    return-void
.end method

.method private inflateSpine()V
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    const/16 v1, 0x8

    .line 122
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-nez v0, :cond_15

    .line 123
    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    .line 124
    new-array v0, v1, [J

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    .line 125
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 127
    :cond_15
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_31

    .line 257
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer;->inflateSpine()V

    .line 258
    iget v0, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_20

    .line 259
    :cond_1d
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->increaseCapacity()V

    .line 260
    :cond_20
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    .line 261
    iget v0, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    .line 262
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    .line 264
    :cond_31
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    aput-object p1, v0, v1

    .line 265
    return-void
.end method

.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TE;>;)[TE;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "arrayFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->count()J

    move-result-wide v2

    .line 213
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    cmp-long v1, v2, v4

    if-ltz v1, :cond_14

    .line 214
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Stream size exceeds max array size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_14
    long-to-int v1, v2

    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 216
    .local v0, "result":[Ljava/lang/Object;, "[TE;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    .line 217
    return-object v0
.end method

.method protected capacity()J
    .registers 5

    .prologue
    .line 115
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    if-nez v0, :cond_9

    .line 116
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    .line 115
    :goto_8
    return-wide v0

    .line 117
    :cond_9
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    iget v1, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    aget-wide v0, v0, v1

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v3, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    aget-object v2, v2, v3

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_8
.end method

.method public clear()V
    .registers 5

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 222
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-eqz v1, :cond_22

    .line 223
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v1, v1, v3

    iput-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 225
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 226
    :cond_19
    iput-object v2, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    .line 227
    iput-object v2, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    .line 233
    :cond_1d
    iput v3, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    .line 234
    iput v3, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    .line 235
    return-void

    .line 230
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_23
    iget v1, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    if-ge v0, v1, :cond_1d

    .line 231
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_23
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .registers 12
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    const/4 v8, 0x0

    .line 189
    int-to-long v4, p2

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->count()J

    move-result-wide v6

    add-long v0, v4, v6

    .line 190
    .local v0, "finalOffset":J
    array-length v3, p1

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-gtz v3, :cond_13

    int-to-long v4, p2

    cmp-long v3, v0, v4

    if-gez v3, :cond_1c

    .line 191
    :cond_13
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v4, "does not fit"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 194
    :cond_1c
    iget v3, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    if-nez v3, :cond_28

    .line 195
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    :cond_27
    :goto_27
    return-void

    .line 198
    :cond_28
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    iget v3, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    if-ge v2, v3, :cond_42

    .line 199
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v4, v4, v2

    array-length v4, v4

    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v3, v3, v2

    array-length v3, v3

    add-int/2addr p2, v3

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 202
    :cond_42
    iget v3, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    if-lez v3, :cond_27

    .line 203
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27
.end method

.method public bridge synthetic count()J
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final ensureCapacity(J)V
    .registers 14
    .param p1, "targetSize"    # J

    .prologue
    .line 134
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->capacity()J

    move-result-wide v0

    .line 135
    .local v0, "capacity":J
    cmp-long v5, p1, v0

    if-lez v5, :cond_51

    .line 136
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer;->inflateSpine()V

    .line 137
    iget v5, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    add-int/lit8 v2, v5, 0x1

    .local v2, "i":I
    :goto_f
    cmp-long v5, p1, v0

    if-lez v5, :cond_51

    .line 138
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    array-length v5, v5

    if-lt v2, v5, :cond_2f

    .line 139
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    array-length v5, v5

    mul-int/lit8 v3, v5, 0x2

    .line 140
    .local v3, "newSpineSize":I
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/Object;

    iput-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    .line 141
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    .line 143
    .end local v3    # "newSpineSize":I
    :cond_2f
    invoke-virtual {p0, v2}, Ljava/util/stream/SpinedBuffer;->chunkSize(I)I

    move-result v4

    .line 144
    .local v4, "nextChunkSize":I
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v6, v5, v2

    .line 145
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    iget-object v6, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    add-int/lit8 v7, v2, -0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    array-length v8, v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v5, v2

    .line 146
    int-to-long v6, v4

    add-long/2addr v0, v6

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 149
    .end local v2    # "i":I
    .end local v4    # "nextChunkSize":I
    :cond_51
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    if-ge v1, v3, :cond_18

    .line 246
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v4, v3, v1

    const/4 v3, 0x0

    array-length v5, v4

    :goto_b
    if-ge v3, v5, :cond_15

    aget-object v2, v4, v3

    .line 247
    .local v2, "t":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 245
    .end local v2    # "t":Ljava/lang/Object;, "TE;"
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 250
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget v3, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    if-ge v0, v3, :cond_27

    .line 251
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 252
    :cond_27
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .registers 10
    .param p1, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    iget v1, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    if-nez v1, :cond_1b

    .line 168
    iget v1, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_11

    .line 169
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    long-to-int v2, p1

    aget-object v1, v1, v2

    return-object v1

    .line 171
    :cond_11
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_1b
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->count()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-ltz v1, :cond_2d

    .line 175
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_2d
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2e
    iget v1, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    if-gt v0, v1, :cond_52

    .line 178
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    array-length v1, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_4f

    .line 179
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    aget-wide v2, v2, v0

    sub-long v2, p1, v2

    long-to-int v2, v2

    aget-object v1, v1, v2

    return-object v1

    .line 177
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 181
    :cond_52
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected increaseCapacity()V
    .registers 5

    .prologue
    .line 155
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->capacity()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/SpinedBuffer;->ensureCapacity(J)V

    .line 156
    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractSpinedBuffer;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    const/4 v2, 0x0

    .line 400
    new-instance v0, Ljava/util/stream/SpinedBuffer$1Splitr;

    iget v3, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    iget v5, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    move-object v1, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer;IIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 269
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/stream/-$Lambda$pApzQPgXBO-Aaix1vtJbLypDt1M;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/util/stream/-$Lambda$pApzQPgXBO-Aaix1vtJbLypDt1M;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer;->forEach(Ljava/util/function/Consumer;)V

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SpinedBuffer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
