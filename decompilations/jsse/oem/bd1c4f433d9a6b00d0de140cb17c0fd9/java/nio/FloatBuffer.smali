.class public abstract Ljava/nio/FloatBuffer;
.super Ljava/nio/Buffer;
.source "FloatBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/FloatBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final hb:[F

.field isReadOnly:Z

.field final offset:I


# direct methods
.method constructor <init>(IIII)V
    .registers 12
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I

    .prologue
    .line 106
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/nio/FloatBuffer;-><init>(IIII[FI)V

    .line 107
    return-void
.end method

.method constructor <init>(IIII[FI)V
    .registers 13
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [F
    .param p6, "offset"    # I

    .prologue
    .line 98
    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    .line 99
    iput-object p5, p0, Ljava/nio/FloatBuffer;->hb:[F

    .line 100
    iput p6, p0, Ljava/nio/FloatBuffer;->offset:I

    .line 101
    return-void
.end method

.method public static allocate(I)Ljava/nio/FloatBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .prologue
    .line 124
    if-gez p0, :cond_8

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 126
    :cond_8
    new-instance v0, Ljava/nio/HeapFloatBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapFloatBuffer;-><init>(II)V

    return-object v0
.end method

.method private static compare(FF)I
    .registers 6
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 700
    cmpg-float v3, p0, p1

    if-gez v3, :cond_8

    :cond_7
    :goto_7
    return v0

    .line 701
    :cond_8
    cmpl-float v3, p0, p1

    if-lez v3, :cond_e

    move v0, v1

    goto :goto_7

    .line 702
    :cond_e
    cmpl-float v3, p0, p1

    if-nez v3, :cond_14

    move v0, v2

    goto :goto_7

    .line 703
    :cond_14
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v2

    goto :goto_7

    :cond_22
    move v0, v1

    goto :goto_7
.end method

.method private static equals(FF)Z
    .registers 3
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 660
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_f

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static wrap([F)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0, "array"    # [F

    .prologue
    .line 177
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/FloatBuffer;->wrap([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([FII)Ljava/nio/FloatBuffer;
    .registers 5
    .param p0, "array"    # [F
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 156
    :try_start_0
    new-instance v1, Ljava/nio/HeapFloatBuffer;

    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapFloatBuffer;-><init>([FII)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 157
    :catch_6
    move-exception v0

    .line 158
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 494
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v0

    return-object v0
.end method

.method public final array()[F
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    if-nez v0, :cond_a

    .line 511
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 512
    :cond_a
    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    if-eqz v0, :cond_14

    .line 513
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 514
    :cond_14
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    if-nez v0, :cond_a

    .line 535
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 536
    :cond_a
    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    if-eqz v0, :cond_14

    .line 537
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 538
    :cond_14
    iget v0, p0, Ljava/nio/FloatBuffer;->offset:I

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract compact()Ljava/nio/FloatBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 665
    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->compareTo(Ljava/nio/FloatBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/FloatBuffer;)I
    .registers 9
    .param p1, "that"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 689
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v3, v4, v5

    .line 690
    .local v3, "n":I
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    .local v2, "j":I
    :goto_1a
    if-ge v1, v3, :cond_30

    .line 691
    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/nio/FloatBuffer;->compare(FF)I

    move-result v0

    .line 692
    .local v0, "cmp":I
    if-eqz v0, :cond_2b

    .line 693
    return v0

    .line 690
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 695
    .end local v0    # "cmp":I
    :cond_30
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    sub-int/2addr v4, v5

    return v4
.end method

.method public abstract duplicate()Ljava/nio/FloatBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 644
    if-ne p0, p1, :cond_5

    .line 645
    return v7

    .line 646
    :cond_5
    instance-of v4, p1, Ljava/nio/FloatBuffer;

    if-nez v4, :cond_a

    .line 647
    return v6

    :cond_a
    move-object v3, p1

    .line 648
    check-cast v3, Ljava/nio/FloatBuffer;

    .line 649
    .local v3, "that":Ljava/nio/FloatBuffer;
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    if-eq v4, v5, :cond_18

    .line 650
    return v6

    .line 651
    :cond_18
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    .line 652
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_28
    if-lt v0, v2, :cond_3e

    .line 653
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/nio/FloatBuffer;->equals(FF)Z

    move-result v4

    if-nez v4, :cond_39

    .line 654
    return v6

    .line 652
    :cond_39
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 655
    :cond_3e
    return v7
.end method

.method public abstract get()F
.end method

.method public abstract get(I)F
.end method

.method public get([F)Ljava/nio/FloatBuffer;
    .registers 4
    .param p1, "dst"    # [F

    .prologue
    .line 358
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([FII)Ljava/nio/FloatBuffer;
    .registers 7
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 334
    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/FloatBuffer;->checkBounds(III)V

    .line 335
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_10

    .line 336
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 337
    :cond_10
    add-int v0, p2, p3

    .line 338
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1e

    .line 339
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    aput v2, p1, v1

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 340
    :cond_1e
    return-object p0
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 605
    const/4 v0, 0x1

    .line 606
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    .line 607
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_b
    if-lt v1, v2, :cond_19

    .line 608
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 607
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 609
    :cond_19
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract put(F)Ljava/nio/FloatBuffer;
.end method

.method public abstract put(IF)Ljava/nio/FloatBuffer;
.end method

.method public put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .registers 5
    .param p1, "src"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 398
    if-ne p1, p0, :cond_8

    .line 399
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 400
    :cond_8
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    .line 401
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 402
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 403
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v1, :cond_25

    .line 404
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 405
    :cond_25
    return-object p0
.end method

.method public final put([F)Ljava/nio/FloatBuffer;
    .registers 4
    .param p1, "src"    # [F

    .prologue
    .line 473
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .registers 7
    .param p1, "src"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 448
    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/FloatBuffer;->checkBounds(III)V

    .line 449
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_10

    .line 450
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 451
    :cond_10
    add-int v0, p2, p3

    .line 452
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1d

    .line 453
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 454
    :cond_1d
    return-object p0
.end method

.method public abstract slice()Ljava/nio/FloatBuffer;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 578
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 579
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    const-string/jumbo v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 582
    const-string/jumbo v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 584
    const-string/jumbo v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 586
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
