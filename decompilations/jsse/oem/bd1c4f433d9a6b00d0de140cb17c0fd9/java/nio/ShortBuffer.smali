.class public abstract Ljava/nio/ShortBuffer;
.super Ljava/nio/Buffer;
.source "ShortBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/ShortBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final hb:[S

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
    .line 107
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/nio/ShortBuffer;-><init>(IIII[SI)V

    .line 108
    return-void
.end method

.method constructor <init>(IIII[SI)V
    .registers 13
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [S
    .param p6, "offset"    # I

    .prologue
    .line 99
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    .line 100
    iput-object p5, p0, Ljava/nio/ShortBuffer;->hb:[S

    .line 101
    iput p6, p0, Ljava/nio/ShortBuffer;->offset:I

    .line 102
    return-void
.end method

.method public static allocate(I)Ljava/nio/ShortBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .prologue
    .line 125
    if-gez p0, :cond_8

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 127
    :cond_8
    new-instance v0, Ljava/nio/HeapShortBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapShortBuffer;-><init>(II)V

    return-object v0
.end method

.method private static compare(SS)I
    .registers 3
    .param p0, "x"    # S
    .param p1, "y"    # S

    .prologue
    .line 702
    invoke-static {p0, p1}, Ljava/lang/Short;->compare(SS)I

    move-result v0

    return v0
.end method

.method private static equals(SS)Z
    .registers 3
    .param p0, "x"    # S
    .param p1, "y"    # S

    .prologue
    .line 662
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static wrap([S)Ljava/nio/ShortBuffer;
    .registers 3
    .param p0, "array"    # [S

    .prologue
    .line 178
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([SII)Ljava/nio/ShortBuffer;
    .registers 5
    .param p0, "array"    # [S
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 157
    :try_start_0
    new-instance v1, Ljava/nio/HeapShortBuffer;

    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapShortBuffer;-><init>([SII)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 158
    :catch_6
    move-exception v0

    .line 159
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 495
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v0

    return-object v0
.end method

.method public final array()[S
    .registers 2

    .prologue
    .line 511
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    if-nez v0, :cond_a

    .line 512
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 513
    :cond_a
    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    if-eqz v0, :cond_14

    .line 514
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 515
    :cond_14
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 535
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    if-nez v0, :cond_a

    .line 536
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 537
    :cond_a
    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    if-eqz v0, :cond_14

    .line 538
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 539
    :cond_14
    iget v0, p0, Ljava/nio/ShortBuffer;->offset:I

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract compact()Ljava/nio/ShortBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 666
    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->compareTo(Ljava/nio/ShortBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/ShortBuffer;)I
    .registers 9
    .param p1, "that"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 690
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v3, v4, v5

    .line 691
    .local v3, "n":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    .local v2, "j":I
    :goto_1a
    if-ge v1, v3, :cond_30

    .line 692
    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v5

    invoke-static {v4, v5}, Ljava/nio/ShortBuffer;->compare(SS)I

    move-result v0

    .line 693
    .local v0, "cmp":I
    if-eqz v0, :cond_2b

    .line 694
    return v0

    .line 691
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 696
    .end local v0    # "cmp":I
    :cond_30
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v5

    sub-int/2addr v4, v5

    return v4
.end method

.method public abstract duplicate()Ljava/nio/ShortBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 645
    if-ne p0, p1, :cond_5

    .line 646
    return v7

    .line 647
    :cond_5
    instance-of v4, p1, Ljava/nio/ShortBuffer;

    if-nez v4, :cond_a

    .line 648
    return v6

    :cond_a
    move-object v3, p1

    .line 649
    check-cast v3, Ljava/nio/ShortBuffer;

    .line 650
    .local v3, "that":Ljava/nio/ShortBuffer;
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v5

    if-eq v4, v5, :cond_18

    .line 651
    return v6

    .line 652
    :cond_18
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    .line 653
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->limit()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_28
    if-lt v0, v2, :cond_3e

    .line 654
    invoke-virtual {p0, v0}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-virtual {v3, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v5

    invoke-static {v4, v5}, Ljava/nio/ShortBuffer;->equals(SS)Z

    move-result v4

    if-nez v4, :cond_39

    .line 655
    return v6

    .line 653
    :cond_39
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 656
    :cond_3e
    return v7
.end method

.method public get([S)Ljava/nio/ShortBuffer;
    .registers 4
    .param p1, "dst"    # [S

    .prologue
    .line 359
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([SII)Ljava/nio/ShortBuffer;
    .registers 7
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 335
    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/ShortBuffer;->checkBounds(III)V

    .line 336
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_10

    .line 337
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 338
    :cond_10
    add-int v0, p2, p3

    .line 339
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1e

    .line 340
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    move-result v2

    aput-short v2, p1, v1

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 341
    :cond_1e
    return-object p0
.end method

.method public abstract get()S
.end method

.method public abstract get(I)S
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

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
    .line 606
    const/4 v0, 0x1

    .line 607
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    .line 608
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_b
    if-lt v1, v2, :cond_18

    .line 609
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    add-int v0, v3, v4

    .line 608
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 610
    :cond_18
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract put(IS)Ljava/nio/ShortBuffer;
.end method

.method public put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .registers 5
    .param p1, "src"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 399
    if-ne p1, p0, :cond_8

    .line 400
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 401
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    .line 402
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 403
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 404
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v1, :cond_25

    .line 405
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 406
    :cond_25
    return-object p0
.end method

.method public abstract put(S)Ljava/nio/ShortBuffer;
.end method

.method public final put([S)Ljava/nio/ShortBuffer;
    .registers 4
    .param p1, "src"    # [S

    .prologue
    .line 474
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
    .registers 7
    .param p1, "src"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 449
    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/ShortBuffer;->checkBounds(III)V

    .line 450
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_10

    .line 451
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 452
    :cond_10
    add-int v0, p2, p3

    .line 453
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1d

    .line 454
    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 455
    :cond_1d
    return-object p0
.end method

.method public abstract slice()Ljava/nio/ShortBuffer;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 579
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 580
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    const-string/jumbo v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 583
    const-string/jumbo v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 585
    const-string/jumbo v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 587
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
