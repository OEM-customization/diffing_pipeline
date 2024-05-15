.class public abstract Ljava/nio/IntBuffer;
.super Ljava/nio/Buffer;
.source "IntBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable<",
        "Ljava/nio/IntBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o hb:[I

.field greylist-max-o isReadOnly:Z

.field final greylist-max-o offset:I


# direct methods
.method constructor greylist-max-o <init>(IIII)V
    .registers 12
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I

    .line 123
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/nio/IntBuffer;-><init>(IIII[II)V

    .line 124
    return-void
.end method

.method constructor greylist-max-o <init>(IIII[II)V
    .registers 13
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [I
    .param p6, "offset"    # I

    .line 115
    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    .line 116
    iput-object p5, p0, Ljava/nio/IntBuffer;->hb:[I

    .line 117
    iput p6, p0, Ljava/nio/IntBuffer;->offset:I

    .line 118
    return-void
.end method

.method public static whitelist core-platform-api test-api allocate(I)Ljava/nio/IntBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .line 144
    if-ltz p0, :cond_8

    .line 146
    new-instance v0, Ljava/nio/HeapIntBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapIntBuffer;-><init>(II)V

    return-object v0

    .line 145
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o compare(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 850
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o equals(II)Z
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 810
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static whitelist core-platform-api test-api wrap([I)Ljava/nio/IntBuffer;
    .registers 3
    .param p0, "array"    # [I

    .line 207
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/IntBuffer;->wrap([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api wrap([III)Ljava/nio/IntBuffer;
    .registers 5
    .param p0, "array"    # [I
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 184
    :try_start_0
    new-instance v0, Ljava/nio/HeapIntBuffer;

    invoke-direct {v0, p0, p1, p2}, Ljava/nio/HeapIntBuffer;-><init>([III)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 185
    :catch_6
    move-exception v0

    .line 186
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api array()Ljava/lang/Object;
    .registers 2

    .line 95
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api array()[I
    .registers 3

    .line 606
    iget-object v0, p0, Ljava/nio/IntBuffer;->hb:[I

    if-eqz v0, :cond_f

    .line 608
    iget-boolean v1, p0, Ljava/nio/IntBuffer;->isReadOnly:Z

    if-nez v1, :cond_9

    .line 610
    return-object v0

    .line 609
    :cond_9
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 607
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist core-platform-api test-api arrayOffset()I
    .registers 2

    .line 634
    iget-object v0, p0, Ljava/nio/IntBuffer;->hb:[I

    if-eqz v0, :cond_11

    .line 636
    iget-boolean v0, p0, Ljava/nio/IntBuffer;->isReadOnly:Z

    if-nez v0, :cond_b

    .line 638
    iget v0, p0, Ljava/nio/IntBuffer;->offset:I

    return v0

    .line 637
    :cond_b
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 635
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist core-platform-api test-api asReadOnlyBuffer()Ljava/nio/IntBuffer;
.end method

.method public whitelist core-platform-api test-api clear()Ljava/nio/Buffer;
    .registers 2

    .line 669
    invoke-super {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist clear()Ljava/nio/IntBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api compact()Ljava/nio/IntBuffer;
.end method

.method public bridge synthetic whitelist core-platform-api test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 95
    check-cast p1, Ljava/nio/IntBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->compareTo(Ljava/nio/IntBuffer;)I

    move-result p1

    return p1
.end method

.method public whitelist core-platform-api test-api compareTo(Ljava/nio/IntBuffer;)I
    .registers 7
    .param p1, "that"    # Ljava/nio/IntBuffer;

    .line 838
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 839
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    move-result v2

    .local v2, "j":I
    :goto_19
    if-ge v1, v0, :cond_2f

    .line 840
    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/nio/IntBuffer;->compare(II)I

    move-result v3

    .line 841
    .local v3, "cmp":I
    if-eqz v3, :cond_2a

    .line 842
    return v3

    .line 839
    .end local v3    # "cmp":I
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 844
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2f
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public abstract whitelist core-platform-api test-api duplicate()Ljava/nio/IntBuffer;
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "ob"    # Ljava/lang/Object;

    .line 793
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 794
    return v0

    .line 795
    :cond_4
    instance-of v1, p1, Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 796
    return v2

    .line 797
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/nio/IntBuffer;

    .line 798
    .local v1, "that":Ljava/nio/IntBuffer;
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 799
    return v2

    .line 800
    :cond_18
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v3

    .line 801
    .local v3, "p":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "i":I
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v0

    .local v5, "j":I
    :goto_26
    if-lt v4, v3, :cond_3c

    .line 802
    invoke-virtual {p0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/nio/IntBuffer;->equals(II)Z

    move-result v6

    if-nez v6, :cond_37

    .line 803
    return v2

    .line 801
    :cond_37
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_26

    .line 804
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_3c
    return v0
.end method

.method public whitelist core-platform-api test-api flip()Ljava/nio/Buffer;
    .registers 2

    .line 675
    invoke-super {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist flip()Ljava/nio/IntBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api get()I
.end method

.method public abstract whitelist core-platform-api test-api get(I)I
.end method

.method public whitelist core-platform-api test-api get([I)Ljava/nio/IntBuffer;
    .registers 4
    .param p1, "dst"    # [I

    .line 421
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api get([III)Ljava/nio/IntBuffer;
    .registers 7
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 392
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/IntBuffer;->checkBounds(III)V

    .line 393
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_19

    .line 395
    add-int v0, p2, p3

    .line 396
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_18

    .line 397
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    aput v2, p1, v1

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 398
    .end local v1    # "i":I
    :cond_18
    return-object p0

    .line 394
    .end local v0    # "end":I
    :cond_19
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public final whitelist core-platform-api test-api hasArray()Z
    .registers 2

    .line 583
    iget-object v0, p0, Ljava/nio/IntBuffer;->hb:[I

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ljava/nio/IntBuffer;->isReadOnly:Z

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

    .line 753
    const/4 v0, 0x1

    .line 754
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    .line 755
    .local v1, "p":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_b
    if-lt v2, v1, :cond_18

    .line 756
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    add-int v0, v3, v4

    .line 755
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 757
    .end local v2    # "i":I
    :cond_18
    return v0
.end method

.method public abstract whitelist core-platform-api test-api isDirect()Z
.end method

.method public whitelist core-platform-api test-api limit(I)Ljava/nio/Buffer;
    .registers 3
    .param p1, "newLimit"    # I

    .line 651
    invoke-super {p0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist limit(I)Ljava/nio/IntBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/IntBuffer;

    return-object p1
.end method

.method public whitelist core-platform-api test-api mark()Ljava/nio/Buffer;
    .registers 2

    .line 657
    invoke-super {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist mark()Ljava/nio/IntBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api order()Ljava/nio/ByteOrder;
.end method

.method public whitelist core-platform-api test-api position(I)Ljava/nio/Buffer;
    .registers 3
    .param p1, "newPosition"    # I

    .line 645
    invoke-super {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist position(I)Ljava/nio/IntBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/IntBuffer;

    return-object p1
.end method

.method public abstract whitelist core-platform-api test-api put(I)Ljava/nio/IntBuffer;
.end method

.method public abstract whitelist core-platform-api test-api put(II)Ljava/nio/IntBuffer;
.end method

.method public whitelist core-platform-api test-api put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .registers 5
    .param p1, "src"    # Ljava/nio/IntBuffer;

    .line 469
    if-eq p1, p0, :cond_2c

    .line 471
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_26

    .line 473
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    .line 474
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_20

    .line 476
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1f

    .line 477
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 478
    .end local v1    # "i":I
    :cond_1f
    return-object p0

    .line 475
    :cond_20
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 472
    .end local v0    # "n":I
    :cond_26
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 470
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final whitelist core-platform-api test-api put([I)Ljava/nio/IntBuffer;
    .registers 4
    .param p1, "src"    # [I

    .line 565
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api put([III)Ljava/nio/IntBuffer;
    .registers 7
    .param p1, "src"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 533
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/IntBuffer;->checkBounds(III)V

    .line 534
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_18

    .line 536
    add-int v0, p2, p3

    .line 537
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_17

    .line 538
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 539
    .end local v1    # "i":I
    :cond_17
    return-object p0

    .line 535
    .end local v0    # "end":I
    :cond_18
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api reset()Ljava/nio/Buffer;
    .registers 2

    .line 663
    invoke-super {p0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist reset()Ljava/nio/IntBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public whitelist core-platform-api test-api rewind()Ljava/nio/Buffer;
    .registers 2

    .line 681
    invoke-super {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist rewind()Ljava/nio/IntBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api slice()Ljava/nio/IntBuffer;
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 726
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 727
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    const-string v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 730
    const-string v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 731
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 732
    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 734
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 735
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
