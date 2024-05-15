.class public abstract Ljava/nio/IntBuffer;
.super Ljava/nio/Buffer;
.source "IntBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/IntBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final hb:[I

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
    .line 108
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/nio/IntBuffer;-><init>(IIII[II)V

    .line 109
    return-void
.end method

.method constructor <init>(IIII[II)V
    .registers 13
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [I
    .param p6, "offset"    # I

    .prologue
    .line 100
    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    .line 101
    iput-object p5, p0, Ljava/nio/IntBuffer;->hb:[I

    .line 102
    iput p6, p0, Ljava/nio/IntBuffer;->offset:I

    .line 103
    return-void
.end method

.method public static allocate(I)Ljava/nio/IntBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .prologue
    .line 126
    if-gez p0, :cond_8

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 128
    :cond_8
    new-instance v0, Ljava/nio/HeapIntBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapIntBuffer;-><init>(II)V

    return-object v0
.end method

.method private static compare(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 703
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private static equals(II)Z
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 663
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static wrap([I)Ljava/nio/IntBuffer;
    .registers 3
    .param p0, "array"    # [I

    .prologue
    .line 179
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/IntBuffer;->wrap([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([III)Ljava/nio/IntBuffer;
    .registers 5
    .param p0, "array"    # [I
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 158
    :try_start_0
    new-instance v1, Ljava/nio/HeapIntBuffer;

    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapIntBuffer;-><init>([III)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 159
    :catch_6
    move-exception v0

    .line 160
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 496
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    return-object v0
.end method

.method public final array()[I
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Ljava/nio/IntBuffer;->hb:[I

    if-nez v0, :cond_a

    .line 513
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 514
    :cond_a
    iget-boolean v0, p0, Ljava/nio/IntBuffer;->isReadOnly:Z

    if-eqz v0, :cond_14

    .line 515
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 516
    :cond_14
    iget-object v0, p0, Ljava/nio/IntBuffer;->hb:[I

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, Ljava/nio/IntBuffer;->hb:[I

    if-nez v0, :cond_a

    .line 537
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 538
    :cond_a
    iget-boolean v0, p0, Ljava/nio/IntBuffer;->isReadOnly:Z

    if-eqz v0, :cond_14

    .line 539
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 540
    :cond_14
    iget v0, p0, Ljava/nio/IntBuffer;->offset:I

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract compact()Ljava/nio/IntBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 667
    check-cast p1, Ljava/nio/IntBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->compareTo(Ljava/nio/IntBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/IntBuffer;)I
    .registers 9
    .param p1, "that"    # Ljava/nio/IntBuffer;

    .prologue
    .line 691
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v3, v4, v5

    .line 692
    .local v3, "n":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    move-result v2

    .local v2, "j":I
    :goto_1a
    if-ge v1, v3, :cond_30

    .line 693
    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/nio/IntBuffer;->compare(II)I

    move-result v0

    .line 694
    .local v0, "cmp":I
    if-eqz v0, :cond_2b

    .line 695
    return v0

    .line 692
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 697
    .end local v0    # "cmp":I
    :cond_30
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    sub-int/2addr v4, v5

    return v4
.end method

.method public abstract duplicate()Ljava/nio/IntBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 646
    if-ne p0, p1, :cond_5

    .line 647
    return v7

    .line 648
    :cond_5
    instance-of v4, p1, Ljava/nio/IntBuffer;

    if-nez v4, :cond_a

    .line 649
    return v6

    :cond_a
    move-object v3, p1

    .line 650
    check-cast v3, Ljava/nio/IntBuffer;

    .line 651
    .local v3, "that":Ljava/nio/IntBuffer;
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    if-eq v4, v5, :cond_18

    .line 652
    return v6

    .line 653
    :cond_18
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v2

    .line 654
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->limit()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_28
    if-lt v0, v2, :cond_3e

    .line 655
    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {v3, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/nio/IntBuffer;->equals(II)Z

    move-result v4

    if-nez v4, :cond_39

    .line 656
    return v6

    .line 654
    :cond_39
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 657
    :cond_3e
    return v7
.end method

.method public abstract get()I
.end method

.method public abstract get(I)I
.end method

.method public get([I)Ljava/nio/IntBuffer;
    .registers 4
    .param p1, "dst"    # [I

    .prologue
    .line 360
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([III)Ljava/nio/IntBuffer;
    .registers 7
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 336
    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/IntBuffer;->checkBounds(III)V

    .line 337
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_10

    .line 338
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 339
    :cond_10
    add-int v0, p2, p3

    .line 340
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1e

    .line 341
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    aput v2, p1, v1

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 342
    :cond_1e
    return-object p0
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Ljava/nio/IntBuffer;->hb:[I

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Ljava/nio/IntBuffer;->isReadOnly:Z

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
    .line 607
    const/4 v0, 0x1

    .line 608
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v2

    .line 609
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_b
    if-lt v1, v2, :cond_18

    .line 610
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    add-int v0, v3, v4

    .line 609
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 611
    :cond_18
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract put(I)Ljava/nio/IntBuffer;
.end method

.method public abstract put(II)Ljava/nio/IntBuffer;
.end method

.method public put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .registers 5
    .param p1, "src"    # Ljava/nio/IntBuffer;

    .prologue
    .line 400
    if-ne p1, p0, :cond_8

    .line 401
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 402
    :cond_8
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    .line 403
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 404
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 405
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v1, :cond_25

    .line 406
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 407
    :cond_25
    return-object p0
.end method

.method public final put([I)Ljava/nio/IntBuffer;
    .registers 4
    .param p1, "src"    # [I

    .prologue
    .line 475
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([III)Ljava/nio/IntBuffer;
    .registers 7
    .param p1, "src"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 450
    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/IntBuffer;->checkBounds(III)V

    .line 451
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_10

    .line 452
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 453
    :cond_10
    add-int v0, p2, p3

    .line 454
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1d

    .line 455
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 456
    :cond_1d
    return-object p0
.end method

.method public abstract slice()Ljava/nio/IntBuffer;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 580
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 581
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    const-string/jumbo v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 584
    const-string/jumbo v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 586
    const-string/jumbo v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 588
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
