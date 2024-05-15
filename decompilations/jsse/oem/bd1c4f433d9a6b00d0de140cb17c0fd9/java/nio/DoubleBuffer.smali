.class public abstract Ljava/nio/DoubleBuffer;
.super Ljava/nio/Buffer;
.source "DoubleBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/DoubleBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final hb:[D

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
    .line 105
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    .line 106
    return-void
.end method

.method constructor <init>(IIII[DI)V
    .registers 13
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [D
    .param p6, "offset"    # I

    .prologue
    .line 97
    const/4 v5, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    .line 98
    iput-object p5, p0, Ljava/nio/DoubleBuffer;->hb:[D

    .line 99
    iput p6, p0, Ljava/nio/DoubleBuffer;->offset:I

    .line 100
    return-void
.end method

.method public static allocate(I)Ljava/nio/DoubleBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .prologue
    .line 123
    if-gez p0, :cond_8

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 125
    :cond_8
    new-instance v0, Ljava/nio/HeapDoubleBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapDoubleBuffer;-><init>(II)V

    return-object v0
.end method

.method private static compare(DD)I
    .registers 8
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 701
    cmpg-double v3, p0, p2

    if-gez v3, :cond_8

    :cond_7
    :goto_7
    return v0

    .line 702
    :cond_8
    cmpl-double v3, p0, p2

    if-lez v3, :cond_e

    move v0, v1

    goto :goto_7

    .line 703
    :cond_e
    cmpl-double v3, p0, p2

    if-nez v3, :cond_14

    move v0, v2

    goto :goto_7

    .line 704
    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v2

    goto :goto_7

    :cond_22
    move v0, v1

    goto :goto_7
.end method

.method private static equals(DD)Z
    .registers 6
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 659
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_f

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

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

.method public static wrap([D)Ljava/nio/DoubleBuffer;
    .registers 3
    .param p0, "array"    # [D

    .prologue
    .line 176
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/DoubleBuffer;->wrap([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([DII)Ljava/nio/DoubleBuffer;
    .registers 5
    .param p0, "array"    # [D
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 155
    :try_start_0
    new-instance v1, Ljava/nio/HeapDoubleBuffer;

    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapDoubleBuffer;-><init>([DII)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 156
    :catch_6
    move-exception v0

    .line 157
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 493
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->array()[D

    move-result-object v0

    return-object v0
.end method

.method public final array()[D
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    if-nez v0, :cond_a

    .line 510
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 511
    :cond_a
    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    if-eqz v0, :cond_14

    .line 512
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 513
    :cond_14
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    if-nez v0, :cond_a

    .line 534
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 535
    :cond_a
    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    if-eqz v0, :cond_14

    .line 536
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 537
    :cond_14
    iget v0, p0, Ljava/nio/DoubleBuffer;->offset:I

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract compact()Ljava/nio/DoubleBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 664
    check-cast p1, Ljava/nio/DoubleBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/DoubleBuffer;->compareTo(Ljava/nio/DoubleBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/DoubleBuffer;)I
    .registers 10
    .param p1, "that"    # Ljava/nio/DoubleBuffer;

    .prologue
    .line 688
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v3, v4, v5

    .line 689
    .local v3, "n":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->position()I

    move-result v2

    .local v2, "j":I
    :goto_1a
    if-ge v1, v3, :cond_30

    .line 692
    invoke-virtual {p0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v4

    invoke-virtual {p1, v2}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    .line 693
    .local v0, "cmp":I
    if-eqz v0, :cond_2b

    .line 694
    return v0

    .line 689
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 696
    .end local v0    # "cmp":I
    :cond_30
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v5

    sub-int/2addr v4, v5

    return v4
.end method

.method public abstract duplicate()Ljava/nio/DoubleBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 643
    if-ne p0, p1, :cond_5

    .line 644
    return v9

    .line 645
    :cond_5
    instance-of v4, p1, Ljava/nio/DoubleBuffer;

    if-nez v4, :cond_a

    .line 646
    return v8

    :cond_a
    move-object v3, p1

    .line 647
    check-cast v3, Ljava/nio/DoubleBuffer;

    .line 648
    .local v3, "that":Ljava/nio/DoubleBuffer;
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v5

    if-eq v4, v5, :cond_18

    .line 649
    return v8

    .line 650
    :cond_18
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v2

    .line 651
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_28
    if-lt v0, v2, :cond_3e

    .line 652
    invoke-virtual {p0, v0}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v4

    invoke-virtual {v3, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/nio/DoubleBuffer;->equals(DD)Z

    move-result v4

    if-nez v4, :cond_39

    .line 653
    return v8

    .line 651
    :cond_39
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 654
    :cond_3e
    return v9
.end method

.method public abstract get()D
.end method

.method public abstract get(I)D
.end method

.method public get([D)Ljava/nio/DoubleBuffer;
    .registers 4
    .param p1, "dst"    # [D

    .prologue
    .line 357
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([DII)Ljava/nio/DoubleBuffer;
    .registers 8
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 333
    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/DoubleBuffer;->checkBounds(III)V

    .line 334
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_10

    .line 335
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 336
    :cond_10
    add-int v0, p2, p3

    .line 337
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1e

    .line 338
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 339
    :cond_1e
    return-object p0
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 604
    const/4 v0, 0x1

    .line 605
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v2

    .line 606
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_b
    if-lt v1, v2, :cond_19

    .line 607
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v4

    double-to-int v4, v4

    add-int v0, v3, v4

    .line 606
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 608
    :cond_19
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract put(D)Ljava/nio/DoubleBuffer;
.end method

.method public abstract put(ID)Ljava/nio/DoubleBuffer;
.end method

.method public put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "src"    # Ljava/nio/DoubleBuffer;

    .prologue
    .line 397
    if-ne p1, p0, :cond_8

    .line 398
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 399
    :cond_8
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    .line 400
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 401
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 402
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v1, :cond_25

    .line 403
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 404
    :cond_25
    return-object p0
.end method

.method public final put([D)Ljava/nio/DoubleBuffer;
    .registers 4
    .param p1, "src"    # [D

    .prologue
    .line 472
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/DoubleBuffer;->put([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .registers 8
    .param p1, "src"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 447
    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/DoubleBuffer;->checkBounds(III)V

    .line 448
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_10

    .line 449
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 450
    :cond_10
    add-int v0, p2, p3

    .line 451
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1d

    .line 452
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 453
    :cond_1d
    return-object p0
.end method

.method public abstract slice()Ljava/nio/DoubleBuffer;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 577
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 578
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    const-string/jumbo v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 581
    const-string/jumbo v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 583
    const-string/jumbo v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 585
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
