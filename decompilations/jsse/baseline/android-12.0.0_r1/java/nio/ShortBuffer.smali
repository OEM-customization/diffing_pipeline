.class public abstract Ljava/nio/ShortBuffer;
.super Ljava/nio/Buffer;
.source "ShortBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable<",
        "Ljava/nio/ShortBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o hb:[S

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

    invoke-direct/range {v0 .. v6}, Ljava/nio/ShortBuffer;-><init>(IIII[SI)V

    .line 123
    return-void
.end method

.method constructor greylist-max-o <init>(IIII[SI)V
    .registers 13
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [S
    .param p6, "offset"    # I

    .line 114
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    .line 115
    iput-object p5, p0, Ljava/nio/ShortBuffer;->hb:[S

    .line 116
    iput p6, p0, Ljava/nio/ShortBuffer;->offset:I

    .line 117
    return-void
.end method

.method public static whitelist test-api allocate(I)Ljava/nio/ShortBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .line 143
    if-ltz p0, :cond_8

    .line 145
    new-instance v0, Ljava/nio/HeapShortBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapShortBuffer;-><init>(II)V

    return-object v0

    .line 144
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o compare(SS)I
    .registers 3
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 843
    invoke-static {p0, p1}, Ljava/lang/Short;->compare(SS)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o equals(SS)Z
    .registers 3
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 803
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static whitelist test-api wrap([S)Ljava/nio/ShortBuffer;
    .registers 3
    .param p0, "array"    # [S

    .line 206
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api wrap([SII)Ljava/nio/ShortBuffer;
    .registers 5
    .param p0, "array"    # [S
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 183
    :try_start_0
    new-instance v0, Ljava/nio/HeapShortBuffer;

    invoke-direct {v0, p0, p1, p2}, Ljava/nio/HeapShortBuffer;-><init>([SII)V
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
.method public bridge synthetic whitelist test-api array()Ljava/lang/Object;
    .registers 2

    .line 94
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api array()[S
    .registers 3

    .line 605
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    if-eqz v0, :cond_f

    .line 607
    iget-boolean v1, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

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

.method public final whitelist test-api arrayOffset()I
    .registers 2

    .line 633
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    if-eqz v0, :cond_11

    .line 635
    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    if-nez v0, :cond_b

    .line 637
    iget v0, p0, Ljava/nio/ShortBuffer;->offset:I

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

.method public abstract whitelist test-api asReadOnlyBuffer()Ljava/nio/ShortBuffer;
.end method

.method public whitelist test-api clear()Ljava/nio/Buffer;
    .registers 2

    .line 668
    invoke-super {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clear()Ljava/nio/ShortBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public abstract whitelist test-api compact()Ljava/nio/ShortBuffer;
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 94
    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->compareTo(Ljava/nio/ShortBuffer;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/nio/ShortBuffer;)I
    .registers 7
    .param p1, "that"    # Ljava/nio/ShortBuffer;

    .line 831
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 832
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    .local v2, "j":I
    :goto_19
    if-ge v1, v0, :cond_2f

    .line 833
    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-static {v3, v4}, Ljava/nio/ShortBuffer;->compare(SS)I

    move-result v3

    .line 834
    .local v3, "cmp":I
    if-eqz v3, :cond_2a

    .line 835
    return v3

    .line 832
    .end local v3    # "cmp":I
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 837
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2f
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public abstract whitelist test-api duplicate()Ljava/nio/ShortBuffer;
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "ob"    # Ljava/lang/Object;

    .line 786
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 787
    return v0

    .line 788
    :cond_4
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 789
    return v2

    .line 790
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/nio/ShortBuffer;

    .line 791
    .local v1, "that":Ljava/nio/ShortBuffer;
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 792
    return v2

    .line 793
    :cond_18
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v3

    .line 794
    .local v3, "p":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "i":I
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v0

    .local v5, "j":I
    :goto_26
    if-lt v4, v3, :cond_3c

    .line 795
    invoke-virtual {p0, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v6

    invoke-virtual {v1, v5}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v7

    invoke-static {v6, v7}, Ljava/nio/ShortBuffer;->equals(SS)Z

    move-result v6

    if-nez v6, :cond_37

    .line 796
    return v2

    .line 794
    :cond_37
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_26

    .line 797
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_3c
    return v0
.end method

.method public whitelist test-api flip()Ljava/nio/Buffer;
    .registers 2

    .line 674
    invoke-super {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api flip()Ljava/nio/ShortBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public whitelist test-api get([S)Ljava/nio/ShortBuffer;
    .registers 4
    .param p1, "dst"    # [S

    .line 420
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get([SII)Ljava/nio/ShortBuffer;
    .registers 7
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 391
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ShortBuffer;->checkBounds(III)V

    .line 392
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

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
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    move-result v2

    aput-short v2, p1, v1

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

.method public abstract whitelist test-api get()S
.end method

.method public abstract whitelist test-api get(I)S
.end method

.method public final whitelist test-api hasArray()Z
    .registers 2

    .line 582
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 752
    const/4 v0, 0x1

    .line 753
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    .line 754
    .local v1, "p":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_b
    if-lt v2, v1, :cond_18

    .line 755
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    add-int v0, v3, v4

    .line 754
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 756
    .end local v2    # "i":I
    :cond_18
    return v0
.end method

.method public abstract whitelist test-api isDirect()Z
.end method

.method public whitelist test-api limit(I)Ljava/nio/Buffer;
    .registers 3
    .param p1, "newLimit"    # I

    .line 650
    invoke-super {p0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api limit(I)Ljava/nio/ShortBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ShortBuffer;

    return-object p1
.end method

.method public whitelist test-api mark()Ljava/nio/Buffer;
    .registers 2

    .line 656
    invoke-super {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api mark()Ljava/nio/ShortBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public abstract whitelist test-api order()Ljava/nio/ByteOrder;
.end method

.method public whitelist test-api position(I)Ljava/nio/Buffer;
    .registers 3
    .param p1, "newPosition"    # I

    .line 644
    invoke-super {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api position(I)Ljava/nio/ShortBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ShortBuffer;

    return-object p1
.end method

.method public abstract whitelist test-api put(IS)Ljava/nio/ShortBuffer;
.end method

.method public whitelist test-api put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .registers 5
    .param p1, "src"    # Ljava/nio/ShortBuffer;

    .line 468
    if-eq p1, p0, :cond_2c

    .line 470
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_26

    .line 472
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    .line 473
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_20

    .line 475
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1f

    .line 476
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

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

.method public abstract whitelist test-api put(S)Ljava/nio/ShortBuffer;
.end method

.method public final whitelist test-api put([S)Ljava/nio/ShortBuffer;
    .registers 4
    .param p1, "src"    # [S

    .line 564
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put([SII)Ljava/nio/ShortBuffer;
    .registers 7
    .param p1, "src"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 532
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ShortBuffer;->checkBounds(III)V

    .line 533
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

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
    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

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

.method public whitelist test-api reset()Ljava/nio/Buffer;
    .registers 2

    .line 662
    invoke-super {p0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reset()Ljava/nio/ShortBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public whitelist test-api rewind()Ljava/nio/Buffer;
    .registers 2

    .line 680
    invoke-super {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api rewind()Ljava/nio/ShortBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public abstract whitelist test-api slice()Ljava/nio/ShortBuffer;
.end method

.method public whitelist test-api toString()Ljava/lang/String;
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
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 729
    const-string v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 730
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 731
    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 732
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->capacity()I

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
