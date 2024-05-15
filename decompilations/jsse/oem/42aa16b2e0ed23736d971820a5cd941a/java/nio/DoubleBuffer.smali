.class public abstract Ljava/nio/DoubleBuffer;
.super Ljava/nio/Buffer;
.source "DoubleBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable<",
        "Ljava/nio/DoubleBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o hb:[D

.field greylist-max-o isReadOnly:Z

.field final greylist-max-o offset:I


# direct methods
.method constructor greylist-max-o <init>(IIII)V
    .registers 12
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I

    .line 122
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    .line 123
    return-void
.end method

.method constructor greylist-max-o <init>(IIII[DI)V
    .registers 13
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [D
    .param p6, "offset"    # I

    .line 114
    const/4 v5, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    .line 115
    iput-object p5, p0, Ljava/nio/DoubleBuffer;->hb:[D

    .line 116
    iput p6, p0, Ljava/nio/DoubleBuffer;->offset:I

    .line 117
    return-void
.end method

.method public static whitelist core-platform-api test-api allocate(I)Ljava/nio/DoubleBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .line 143
    if-ltz p0, :cond_8

    .line 145
    new-instance v0, Ljava/nio/HeapDoubleBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapDoubleBuffer;-><init>(II)V

    return-object v0

    .line 144
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o compare(DD)I
    .registers 8
    .param p0, "x"    # D
    .param p2, "y"    # D

    .line 845
    cmpg-double v0, p0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-gez v0, :cond_9

    move v1, v3

    goto :goto_24

    .line 846
    :cond_9
    cmpl-double v0, p0, p2

    if-lez v0, :cond_f

    move v1, v2

    goto :goto_24

    .line 847
    :cond_f
    cmpl-double v0, p0, p2

    if-nez v0, :cond_14

    goto :goto_24

    .line 848
    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_24

    :cond_21
    move v1, v2

    goto :goto_24

    :cond_23
    move v1, v3

    .line 845
    :goto_24
    return v1
.end method

.method private static greylist-max-o equals(DD)Z
    .registers 5
    .param p0, "x"    # D
    .param p2, "y"    # D

    .line 808
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_13

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static whitelist core-platform-api test-api wrap([D)Ljava/nio/DoubleBuffer;
    .registers 3
    .param p0, "array"    # [D

    .line 206
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/DoubleBuffer;->wrap([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api wrap([DII)Ljava/nio/DoubleBuffer;
    .registers 5
    .param p0, "array"    # [D
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 183
    :try_start_0
    new-instance v0, Ljava/nio/HeapDoubleBuffer;

    invoke-direct {v0, p0, p1, p2}, Ljava/nio/HeapDoubleBuffer;-><init>([DII)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 184
    :catch_6
    move-exception v0

    .line 185
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api array()Ljava/lang/Object;
    .registers 2

    .line 94
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->array()[D

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api array()[D
    .registers 3

    .line 605
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    if-eqz v0, :cond_f

    .line 607
    iget-boolean v1, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    if-nez v1, :cond_9

    .line 609
    return-object v0

    .line 608
    :cond_9
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 606
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist core-platform-api test-api arrayOffset()I
    .registers 2

    .line 633
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    if-eqz v0, :cond_11

    .line 635
    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    if-nez v0, :cond_b

    .line 637
    iget v0, p0, Ljava/nio/DoubleBuffer;->offset:I

    return v0

    .line 636
    :cond_b
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 634
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist core-platform-api test-api asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public whitelist core-platform-api test-api clear()Ljava/nio/Buffer;
    .registers 2

    .line 668
    invoke-super {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist clear()Ljava/nio/DoubleBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/DoubleBuffer;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api compact()Ljava/nio/DoubleBuffer;
.end method

.method public bridge synthetic whitelist core-platform-api test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 94
    check-cast p1, Ljava/nio/DoubleBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/DoubleBuffer;->compareTo(Ljava/nio/DoubleBuffer;)I

    move-result p1

    return p1
.end method

.method public whitelist core-platform-api test-api compareTo(Ljava/nio/DoubleBuffer;)I
    .registers 9
    .param p1, "that"    # Ljava/nio/DoubleBuffer;

    .line 834
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 835
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->position()I

    move-result v2

    .local v2, "j":I
    :goto_19
    if-ge v1, v0, :cond_2f

    .line 836
    invoke-virtual {p0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v3

    invoke-virtual {p1, v2}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/nio/DoubleBuffer;->compare(DD)I

    move-result v3

    .line 837
    .local v3, "cmp":I
    if-eqz v3, :cond_2a

    .line 838
    return v3

    .line 835
    .end local v3    # "cmp":I
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 840
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2f
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public abstract whitelist core-platform-api test-api duplicate()Ljava/nio/DoubleBuffer;
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "ob"    # Ljava/lang/Object;

    .line 792
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 793
    return v0

    .line 794
    :cond_4
    instance-of v1, p1, Ljava/nio/DoubleBuffer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 795
    return v2

    .line 796
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/nio/DoubleBuffer;

    .line 797
    .local v1, "that":Ljava/nio/DoubleBuffer;
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 798
    return v2

    .line 799
    :cond_18
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v3

    .line 800
    .local v3, "p":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "i":I
    invoke-virtual {v1}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v0

    .local v5, "j":I
    :goto_26
    if-lt v4, v3, :cond_3c

    .line 801
    invoke-virtual {p0, v4}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v6

    invoke-virtual {v1, v5}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/nio/DoubleBuffer;->equals(DD)Z

    move-result v6

    if-nez v6, :cond_37

    .line 802
    return v2

    .line 800
    :cond_37
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_26

    .line 803
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_3c
    return v0
.end method

.method public whitelist core-platform-api test-api flip()Ljava/nio/Buffer;
    .registers 2

    .line 674
    invoke-super {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist flip()Ljava/nio/DoubleBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/DoubleBuffer;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api get()D
.end method

.method public abstract whitelist core-platform-api test-api get(I)D
.end method

.method public whitelist core-platform-api test-api get([D)Ljava/nio/DoubleBuffer;
    .registers 4
    .param p1, "dst"    # [D

    .line 420
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api get([DII)Ljava/nio/DoubleBuffer;
    .registers 8
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 391
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/DoubleBuffer;->checkBounds(III)V

    .line 392
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_19

    .line 394
    add-int v0, p2, p3

    .line 395
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_18

    .line 396
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 397
    .end local v1    # "i":I
    :cond_18
    return-object p0

    .line 393
    .end local v0    # "end":I
    :cond_19
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public final whitelist core-platform-api test-api hasArray()Z
    .registers 2

    .line 582
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 7

    .line 752
    const/4 v0, 0x1

    .line 753
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v1

    .line 754
    .local v1, "p":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_b
    if-lt v2, v1, :cond_19

    .line 755
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v4

    double-to-int v4, v4

    add-int v0, v3, v4

    .line 754
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 756
    .end local v2    # "i":I
    :cond_19
    return v0
.end method

.method public abstract whitelist core-platform-api test-api isDirect()Z
.end method

.method public whitelist core-platform-api test-api limit(I)Ljava/nio/Buffer;
    .registers 3
    .param p1, "newLimit"    # I

    .line 650
    invoke-super {p0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist limit(I)Ljava/nio/DoubleBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/DoubleBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/DoubleBuffer;

    return-object p1
.end method

.method public whitelist core-platform-api test-api mark()Ljava/nio/Buffer;
    .registers 2

    .line 656
    invoke-super {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist mark()Ljava/nio/DoubleBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/DoubleBuffer;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api order()Ljava/nio/ByteOrder;
.end method

.method public whitelist core-platform-api test-api position(I)Ljava/nio/Buffer;
    .registers 3
    .param p1, "newPosition"    # I

    .line 644
    invoke-super {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist position(I)Ljava/nio/DoubleBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/DoubleBuffer;

    return-object p1
.end method

.method public abstract whitelist core-platform-api test-api put(D)Ljava/nio/DoubleBuffer;
.end method

.method public abstract whitelist core-platform-api test-api put(ID)Ljava/nio/DoubleBuffer;
.end method

.method public whitelist core-platform-api test-api put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "src"    # Ljava/nio/DoubleBuffer;

    .line 468
    if-eq p1, p0, :cond_2c

    .line 470
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_26

    .line 472
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v0

    .line 473
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_20

    .line 475
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1f

    .line 476
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 477
    .end local v1    # "i":I
    :cond_1f
    return-object p0

    .line 474
    :cond_20
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 471
    .end local v0    # "n":I
    :cond_26
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 469
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final whitelist core-platform-api test-api put([D)Ljava/nio/DoubleBuffer;
    .registers 4
    .param p1, "src"    # [D

    .line 564
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/DoubleBuffer;->put([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api put([DII)Ljava/nio/DoubleBuffer;
    .registers 8
    .param p1, "src"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 532
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/DoubleBuffer;->checkBounds(III)V

    .line 533
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_18

    .line 535
    add-int v0, p2, p3

    .line 536
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_17

    .line 537
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 538
    .end local v1    # "i":I
    :cond_17
    return-object p0

    .line 534
    .end local v0    # "end":I
    :cond_18
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api reset()Ljava/nio/Buffer;
    .registers 2

    .line 662
    invoke-super {p0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist reset()Ljava/nio/DoubleBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/DoubleBuffer;

    return-object v0
.end method

.method public whitelist core-platform-api test-api rewind()Ljava/nio/Buffer;
    .registers 2

    .line 680
    invoke-super {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist rewind()Ljava/nio/DoubleBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/DoubleBuffer;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api slice()Ljava/nio/DoubleBuffer;
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 725
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 726
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 727
    const-string v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 729
    const-string v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 730
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 731
    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 732
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 733
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 734
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
