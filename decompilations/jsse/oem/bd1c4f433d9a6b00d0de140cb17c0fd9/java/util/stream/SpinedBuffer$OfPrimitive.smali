.class public abstract Ljava/util/stream/SpinedBuffer$OfPrimitive;
.super Ljava/util/stream/AbstractSpinedBuffer;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractSpinedBuffer;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# instance fields
.field curChunk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field

.field spine:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT_ARR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 462
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-direct {p0}, Ljava/util/stream/AbstractSpinedBuffer;-><init>()V

    .line 463
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 464
    return-void
.end method

.method constructor <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .prologue
    .line 454
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/AbstractSpinedBuffer;-><init>(I)V

    .line 455
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 456
    return-void
.end method

.method private inflateSpine()V
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    const/16 v1, 0x8

    .line 492
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-nez v0, :cond_17

    .line 493
    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArrayArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 494
    new-array v0, v1, [J

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 495
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 497
    :cond_17
    return-void
.end method


# virtual methods
.method protected abstract arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;IITT_CONS;)V"
        }
    .end annotation
.end method

.method protected abstract arrayLength(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;)I"
        }
    .end annotation
.end method

.method public asPrimitiveArray()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ARR;"
        }
    .end annotation

    .prologue
    .line 559
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v2

    .line 560
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    cmp-long v1, v2, v4

    if-ltz v1, :cond_14

    .line 561
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Stream size exceeds max array size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_14
    long-to-int v1, v2

    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    .line 563
    .local v0, "result":Ljava/lang/Object;, "TT_ARR;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    .line 564
    return-object v0
.end method

.method protected capacity()J
    .registers 5

    .prologue
    .line 486
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-nez v0, :cond_c

    .line 487
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    .line 486
    :goto_b
    return-wide v0

    .line 488
    :cond_c
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-wide v0, v0, v1

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_b
.end method

.method protected chunkFor(J)I
    .registers 10
    .param p1, "index"    # J

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    const/4 v4, 0x0

    .line 522
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-nez v1, :cond_17

    .line 523
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_d

    .line 524
    return v4

    .line 526
    :cond_d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 529
    :cond_17
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-ltz v1, :cond_29

    .line 530
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_29
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2a
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-gt v0, v1, :cond_44

    .line 533
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_41

    .line 534
    return v0

    .line 532
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 536
    :cond_44
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 579
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-eqz v0, :cond_10

    .line 580
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 581
    iput-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 582
    iput-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 584
    :cond_10
    iput v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    .line 585
    iput v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    .line 586
    return-void
.end method

.method public copyInto(Ljava/lang/Object;I)V
    .registers 12
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    .local p1, "array":Ljava/lang/Object;, "TT_ARR;"
    const/4 v8, 0x0

    .line 540
    int-to-long v4, p2

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v6

    add-long v0, v4, v6

    .line 541
    .local v0, "finalOffset":J
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-gtz v3, :cond_16

    int-to-long v4, p2

    cmp-long v3, v0, v4

    if-gez v3, :cond_1f

    .line 542
    :cond_16
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v4, "does not fit"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 545
    :cond_1f
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-nez v3, :cond_2b

    .line 546
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 556
    :cond_2a
    :goto_2a
    return-void

    .line 549
    :cond_2b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-ge v2, v3, :cond_4b

    .line 550
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr p2, v3

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 553
    :cond_4b
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    if-lez v3, :cond_2a

    .line 554
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2a
.end method

.method public bridge synthetic count()J
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final ensureCapacity(J)V
    .registers 14
    .param p1, "targetSize"    # J

    .prologue
    .line 500
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->capacity()J

    move-result-wide v0

    .line 501
    .local v0, "capacity":J
    cmp-long v5, p1, v0

    if-lez v5, :cond_54

    .line 502
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->inflateSpine()V

    .line 503
    iget v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v2, v5, 0x1

    .local v2, "i":I
    :goto_f
    cmp-long v5, p1, v0

    if-lez v5, :cond_54

    .line 504
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v5, v5

    if-lt v2, v5, :cond_2d

    .line 505
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v5, v5

    mul-int/lit8 v3, v5, 0x2

    .line 506
    .local v3, "newSpineSize":I
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 507
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 509
    .end local v3    # "newSpineSize":I
    :cond_2d
    invoke-virtual {p0, v2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->chunkSize(I)I

    move-result v4

    .line 510
    .local v4, "nextChunkSize":I
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    invoke-virtual {p0, v4}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    .line 511
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget-object v6, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    add-int/lit8 v7, v2, -0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    invoke-virtual {p0, v8}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v5, v2

    .line 512
    int-to-long v6, v4

    add-long/2addr v0, v6

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 515
    .end local v2    # "i":I
    .end local v4    # "nextChunkSize":I
    :cond_54
    return-void
.end method

.method public forEach(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    const/4 v3, 0x0

    .line 591
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-ge v0, v1, :cond_18

    .line 592
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v1, v3, v2, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 595
    :cond_18
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-virtual {p0, v1, v3, v2, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 596
    return-void
.end method

.method public abstract forEach(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation
.end method

.method protected increaseCapacity()V
    .registers 5

    .prologue
    .line 518
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->capacity()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->ensureCapacity(J)V

    .line 519
    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractSpinedBuffer;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public abstract newArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_ARR;"
        }
    .end annotation
.end method

.method protected abstract newArrayArray(I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT_ARR;"
        }
    .end annotation
.end method

.method protected preAccept()V
    .registers 3

    .prologue
    .line 568
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_34

    .line 569
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->inflateSpine()V

    .line 570
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_23

    .line 571
    :cond_20
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->increaseCapacity()V

    .line 572
    :cond_23
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    .line 573
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    .line 574
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 576
    :cond_34
    return-void
.end method
