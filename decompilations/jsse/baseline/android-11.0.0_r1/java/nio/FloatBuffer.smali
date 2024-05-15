.class public abstract Ljava/nio/FloatBuffer;
.super Ljava/nio/Buffer;
.source "FloatBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable<",
        "Ljava/nio/FloatBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o hb:[F

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

    invoke-direct/range {v0 .. v6}, Ljava/nio/FloatBuffer;-><init>(IIII[FI)V

    .line 123
    return-void
.end method

.method constructor greylist-max-o <init>(IIII[FI)V
    .registers 13
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [F
    .param p6, "offset"    # I

    .line 114
    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    .line 115
    iput-object p5, p0, Ljava/nio/FloatBuffer;->hb:[F

    .line 116
    iput p6, p0, Ljava/nio/FloatBuffer;->offset:I

    .line 117
    return-void
.end method

.method public static whitelist core-platform-api test-api allocate(I)Ljava/nio/FloatBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .line 143
    if-ltz p0, :cond_8

    .line 145
    new-instance v0, Ljava/nio/HeapFloatBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapFloatBuffer;-><init>(II)V

    return-object v0

    .line 144
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o compare(FF)I
    .registers 6
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 848
    cmpg-float v0, p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-gez v0, :cond_9

    move v1, v3

    goto :goto_24

    .line 849
    :cond_9
    cmpl-float v0, p0, p1

    if-lez v0, :cond_f

    move v1, v2

    goto :goto_24

    .line 850
    :cond_f
    cmpl-float v0, p0, p1

    if-nez v0, :cond_14

    goto :goto_24

    .line 851
    :cond_14
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_24

    :cond_21
    move v1, v2

    goto :goto_24

    :cond_23
    move v1, v3

    .line 848
    :goto_24
    return v1
.end method

.method private static greylist-max-o equals(FF)Z
    .registers 3
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 808
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_13

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

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

.method public static whitelist core-platform-api test-api wrap([F)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0, "array"    # [F

    .line 206
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/FloatBuffer;->wrap([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api wrap([FII)Ljava/nio/FloatBuffer;
    .registers 5
    .param p0, "array"    # [F
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 183
    :try_start_0
    new-instance v0, Ljava/nio/HeapFloatBuffer;

    invoke-direct {v0, p0, p1, p2}, Ljava/nio/HeapFloatBuffer;-><init>([FII)V
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
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api array()[F
    .registers 3

    .line 605
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    if-eqz v0, :cond_f

    .line 607
    iget-boolean v1, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

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
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    if-eqz v0, :cond_11

    .line 635
    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    if-nez v0, :cond_b

    .line 637
    iget v0, p0, Ljava/nio/FloatBuffer;->offset:I

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

.method public abstract whitelist core-platform-api test-api asReadOnlyBuffer()Ljava/nio/FloatBuffer;
.end method

.method public whitelist core-platform-api test-api clear()Ljava/nio/Buffer;
    .registers 2

    .line 668
    invoke-super {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist clear()Ljava/nio/FloatBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api compact()Ljava/nio/FloatBuffer;
.end method

.method public bridge synthetic whitelist core-platform-api test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 94
    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->compareTo(Ljava/nio/FloatBuffer;)I

    move-result p1

    return p1
.end method

.method public whitelist core-platform-api test-api compareTo(Ljava/nio/FloatBuffer;)I
    .registers 7
    .param p1, "that"    # Ljava/nio/FloatBuffer;

    .line 837
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 838
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    .local v2, "j":I
    :goto_19
    if-ge v1, v0, :cond_2f

    .line 839
    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/nio/FloatBuffer;->compare(FF)I

    move-result v3

    .line 840
    .local v3, "cmp":I
    if-eqz v3, :cond_2a

    .line 841
    return v3

    .line 838
    .end local v3    # "cmp":I
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 843
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2f
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public abstract whitelist core-platform-api test-api duplicate()Ljava/nio/FloatBuffer;
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "ob"    # Ljava/lang/Object;

    .line 792
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 793
    return v0

    .line 794
    :cond_4
    instance-of v1, p1, Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 795
    return v2

    .line 796
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/nio/FloatBuffer;

    .line 797
    .local v1, "that":Ljava/nio/FloatBuffer;
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 798
    return v2

    .line 799
    :cond_18
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v3

    .line 800
    .local v3, "p":I
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "i":I
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v0

    .local v5, "j":I
    :goto_26
    if-lt v4, v3, :cond_3c

    .line 801
    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-static {v6, v7}, Ljava/nio/FloatBuffer;->equals(FF)Z

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

.method public bridge synthetic whitelist flip()Ljava/nio/FloatBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api get()F
.end method

.method public abstract whitelist core-platform-api test-api get(I)F
.end method

.method public whitelist core-platform-api test-api get([F)Ljava/nio/FloatBuffer;
    .registers 4
    .param p1, "dst"    # [F

    .line 420
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api get([FII)Ljava/nio/FloatBuffer;
    .registers 7
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 391
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/FloatBuffer;->checkBounds(III)V

    .line 392
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

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
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    aput v2, p1, v1

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
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 6

    .line 752
    const/4 v0, 0x1

    .line 753
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    .line 754
    .local v1, "p":I
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_b
    if-lt v2, v1, :cond_19

    .line 755
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    float-to-int v4, v4

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

.method public bridge synthetic whitelist limit(I)Ljava/nio/FloatBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method public whitelist core-platform-api test-api mark()Ljava/nio/Buffer;
    .registers 2

    .line 656
    invoke-super {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist mark()Ljava/nio/FloatBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

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

.method public bridge synthetic whitelist position(I)Ljava/nio/FloatBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method public abstract whitelist core-platform-api test-api put(F)Ljava/nio/FloatBuffer;
.end method

.method public abstract whitelist core-platform-api test-api put(IF)Ljava/nio/FloatBuffer;
.end method

.method public whitelist core-platform-api test-api put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .registers 5
    .param p1, "src"    # Ljava/nio/FloatBuffer;

    .line 468
    if-eq p1, p0, :cond_2c

    .line 470
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_26

    .line 472
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    .line 473
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_20

    .line 475
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1f

    .line 476
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

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

.method public final whitelist core-platform-api test-api put([F)Ljava/nio/FloatBuffer;
    .registers 4
    .param p1, "src"    # [F

    .line 564
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api put([FII)Ljava/nio/FloatBuffer;
    .registers 7
    .param p1, "src"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 532
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/FloatBuffer;->checkBounds(III)V

    .line 533
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

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
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

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

.method public bridge synthetic whitelist reset()Ljava/nio/FloatBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public whitelist core-platform-api test-api rewind()Ljava/nio/Buffer;
    .registers 2

    .line 680
    invoke-super {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist rewind()Ljava/nio/FloatBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api slice()Ljava/nio/FloatBuffer;
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
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 729
    const-string v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 730
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 731
    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 732
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->capacity()I

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
