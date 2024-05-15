.class abstract Ljava/lang/AbstractStringBuilder;
.super Ljava/lang/Object;
.source "AbstractStringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7


# instance fields
.field count:I

.field value:[C


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 70
    return-void
.end method

.method private appendNull()Ljava/lang/AbstractStringBuilder;
    .registers 6

    .prologue
    const/16 v4, 0x6c

    .line 498
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 499
    .local v0, "c":I
    add-int/lit8 v3, v0, 0x4

    invoke-direct {p0, v3}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 500
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 501
    .local v2, "value":[C
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .local v1, "c":I
    const/16 v3, 0x6e

    aput-char v3, v2, v0

    .line 502
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    const/16 v3, 0x75

    aput-char v3, v2, v1

    .line 503
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    aput-char v4, v2, v0

    .line 504
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    aput-char v4, v2, v1

    .line 505
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 506
    return-object p0
.end method

.method private ensureCapacityInternal(I)V
    .registers 4
    .param p1, "minimumCapacity"    # I

    .prologue
    .line 124
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_13

    .line 125
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 126
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->newCapacity(I)I

    move-result v1

    .line 125
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 128
    :cond_13
    return-void
.end method

.method private hugeCapacity(I)I
    .registers 4
    .param p1, "minCapacity"    # I

    .prologue
    const v0, 0x7ffffff7

    .line 161
    const v1, 0x7fffffff

    sub-int/2addr v1, p1

    if-gez v1, :cond_f

    .line 162
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 164
    :cond_f
    if-le p1, v0, :cond_12

    .end local p1    # "minCapacity":I
    :goto_11
    return p1

    .restart local p1    # "minCapacity":I
    :cond_12
    move p1, v0

    .line 165
    goto :goto_11
.end method

.method private newCapacity(I)I
    .registers 4
    .param p1, "minCapacity"    # I

    .prologue
    .line 151
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, 0x2

    .line 152
    .local v0, "newCapacity":I
    sub-int v1, v0, p1

    if-gez v1, :cond_c

    .line 153
    move v0, p1

    .line 155
    :cond_c
    if-lez v0, :cond_14

    const v1, 0x7ffffff7

    sub-int/2addr v1, v0

    if-gez v1, :cond_18

    .line 156
    :cond_14
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->hugeCapacity(I)I

    move-result v0

    .line 155
    .end local v0    # "newCapacity":I
    :cond_18
    return v0
.end method

.method private reverseAllValidSurrogatePairs()V
    .registers 7

    .prologue
    .line 1468
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2b

    .line 1469
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v1, v4, v2

    .line 1470
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1471
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v5, v2, 0x1

    aget-char v0, v4, v5

    .line 1472
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1473
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-char v0, v4, v2

    .line 1474
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v1, v4, v3

    move v2, v3

    .line 1468
    .end local v0    # "c1":C
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1478
    .end local v1    # "c2":C
    :cond_2b
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "c"    # C

    .prologue
    .line 660
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 661
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char p1, v0, v1

    .line 662
    return-object p0
.end method

.method public append(D)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "d"    # D

    .prologue
    .line 751
    invoke-static {p1, p2, p0}, Lsun/misc/FloatingDecimal;->appendTo(DLjava/lang/Appendable;)V

    .line 752
    return-object p0
.end method

.method public append(F)Ljava/lang/AbstractStringBuilder;
    .registers 2
    .param p1, "f"    # F

    .prologue
    .line 733
    invoke-static {p1, p0}, Lsun/misc/FloatingDecimal;->appendTo(FLjava/lang/Appendable;)V

    .line 734
    return-object p0
.end method

.method public append(I)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "i"    # I

    .prologue
    .line 679
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_b

    .line 680
    const-string/jumbo v2, "-2147483648"

    invoke-virtual {p0, v2}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    .line 681
    return-object p0

    .line 683
    :cond_b
    if-gez p1, :cond_23

    neg-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->stringSize(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 685
    .local v0, "appendedLength":I
    :goto_14
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v1, v2, v0

    .line 686
    .local v1, "spaceNeeded":I
    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 687
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p1, v1, v2}, Ljava/lang/Integer;->getChars(II[C)V

    .line 688
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 689
    return-object p0

    .line 684
    .end local v0    # "appendedLength":I
    .end local v1    # "spaceNeeded":I
    :cond_23
    invoke-static {p1}, Ljava/lang/Integer;->stringSize(I)I

    move-result v0

    .restart local v0    # "appendedLength":I
    goto :goto_14
.end method

.method public append(J)Ljava/lang/AbstractStringBuilder;
    .registers 8
    .param p1, "l"    # J

    .prologue
    .line 706
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-nez v2, :cond_d

    .line 707
    const-string/jumbo v2, "-9223372036854775808"

    invoke-virtual {p0, v2}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    .line 708
    return-object p0

    .line 710
    :cond_d
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_29

    neg-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->stringSize(J)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 712
    .local v0, "appendedLength":I
    :goto_1a
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v1, v2, v0

    .line 713
    .local v1, "spaceNeeded":I
    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 714
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Long;->getChars(JI[C)V

    .line 715
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 716
    return-object p0

    .line 711
    .end local v0    # "appendedLength":I
    .end local v1    # "spaceNeeded":I
    :cond_29
    invoke-static {p1, p2}, Ljava/lang/Long;->stringSize(J)I

    move-result v0

    .restart local v0    # "appendedLength":I
    goto :goto_1a
.end method

.method append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "asb"    # Ljava/lang/AbstractStringBuilder;

    .prologue
    .line 474
    if-nez p1, :cond_7

    .line 475
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()Ljava/lang/AbstractStringBuilder;

    move-result-object v1

    return-object v1

    .line 476
    :cond_7
    invoke-virtual {p1}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    .line 477
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 478
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V

    .line 479
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 480
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 487
    if-nez p1, :cond_7

    .line 488
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 489
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 490
    check-cast p1, Ljava/lang/String;

    .end local p1    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 491
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_12
    instance-of v0, p1, Ljava/lang/AbstractStringBuilder;

    if-eqz v0, :cond_1d

    .line 492
    check-cast p1, Ljava/lang/AbstractStringBuilder;

    .end local p1    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 494
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_1d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .registers 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 541
    if-nez p1, :cond_5

    .line 542
    const-string/jumbo p1, "null"

    .line 543
    :cond_5
    if-ltz p2, :cond_9

    if-le p2, p3, :cond_3d

    .line 544
    :cond_9
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", s.length() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 546
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 545
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 544
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 543
    :cond_3d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt p3, v3, :cond_9

    .line 547
    sub-int v2, p3, p2

    .line 548
    .local v2, "len":I
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 549
    move v0, p2

    .local v0, "i":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .local v1, "j":I
    :goto_4e
    if-ge v0, p3, :cond_5d

    .line 550
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v3, v1

    .line 549
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 551
    :cond_5d
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v3, v2

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 552
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 425
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 448
    if-nez p1, :cond_7

    .line 449
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()Ljava/lang/AbstractStringBuilder;

    move-result-object v1

    return-object v1

    .line 450
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 451
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 452
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 453
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 454
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 460
    if-nez p1, :cond_7

    .line 461
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()Ljava/lang/AbstractStringBuilder;

    move-result-object v1

    return-object v1

    .line 462
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 463
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 464
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 465
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 466
    return-object p0
.end method

.method public append(Z)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "b"    # Z

    .prologue
    const/16 v3, 0x65

    .line 625
    if-eqz p1, :cond_3a

    .line 626
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 627
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 628
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 629
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 630
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v3, v0, v1

    .line 639
    :goto_39
    return-object p0

    .line 632
    :cond_3a
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 633
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 634
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v2, 0x61

    aput-char v2, v0, v1

    .line 635
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    .line 636
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v2, 0x73

    aput-char v2, v0, v1

    .line 637
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v3, v0, v1

    goto :goto_39
.end method

.method public append([C)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "str"    # [C

    .prologue
    .line 573
    array-length v0, p1

    .line 574
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 575
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 576
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 577
    return-object p0
.end method

.method public append([CII)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 604
    if-lez p3, :cond_8

    .line 605
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 606
    :cond_8
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 607
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 608
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "codePoint"    # I

    .prologue
    .line 806
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 808
    .local v0, "count":I
    invoke-static {p1}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 809
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 810
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    int-to-char v2, p1

    aput-char v2, v1, v0

    .line 811
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 819
    :goto_16
    return-object p0

    .line 812
    :cond_17
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 813
    add-int/lit8 v1, v0, 0x2

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 814
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p1, v1, v0}, Ljava/lang/Character;->toSurrogates(I[CI)V

    .line 815
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_16

    .line 817
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public capacity()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 237
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_c

    .line 238
    :cond_6
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 239
    :cond_c
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public codePointAt(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 264
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_c

    .line 265
    :cond_6
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 267
    :cond_c
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointAtImpl([CII)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .registers 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 292
    add-int/lit8 v0, p1, -0x1

    .line 293
    .local v0, "i":I
    if-ltz v0, :cond_9

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt v0, v1, :cond_f

    .line 294
    :cond_9
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 296
    :cond_f
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v1, p1, v2}, Ljava/lang/Character;->codePointBeforeImpl([CII)I

    move-result v1

    return v1
.end method

.method public codePointCount(II)I
    .registers 5
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 320
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v0, :cond_c

    .line 321
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 320
    :cond_c
    if-gt p1, p2, :cond_6

    .line 323
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCountImpl([CII)I

    move-result v0

    return v0
.end method

.method public delete(II)Ljava/lang/AbstractStringBuilder;
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 771
    if-gez p1, :cond_8

    .line 772
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 773
    :cond_8
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v1, :cond_e

    .line 774
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 775
    :cond_e
    if-le p1, p2, :cond_16

    .line 776
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 777
    :cond_16
    sub-int v0, p2, p1

    .line 778
    .local v0, "len":I
    if-lez v0, :cond_2b

    .line 779
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v2, p1, v0

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p2

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 780
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 782
    :cond_2b
    return-object p0
.end method

.method public deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 841
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_c

    .line 842
    :cond_6
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 843
    :cond_c
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 844
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 845
    return-object p0
.end method

.method public ensureCapacity(I)V
    .registers 2
    .param p1, "minimumCapacity"    # I

    .prologue
    .line 111
    if-lez p1, :cond_5

    .line 112
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 113
    :cond_5
    return-void
.end method

.method public getChars(II[CI)V
    .registers 7
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    .prologue
    .line 383
    if-gez p1, :cond_8

    .line 384
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 385
    :cond_8
    if-ltz p2, :cond_e

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v0, :cond_14

    .line 386
    :cond_e
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 387
    :cond_14
    if-le p1, p2, :cond_1f

    .line 388
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v1, "srcBegin > srcEnd"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_1f
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 390
    return-void
.end method

.method final getValue()[C
    .registers 2

    .prologue
    .line 1497
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .registers 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1379
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1380
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v1

    move v6, p2

    .line 1379
    invoke-static/range {v0 .. v6}, Ljava/lang/String;->indexOf([CII[CIII)I

    move-result v0

    return v0
.end method

.method public insert(IC)Ljava/lang/AbstractStringBuilder;
    .registers 7
    .param p1, "offset"    # I
    .param p2, "c"    # C

    .prologue
    .line 1241
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1242
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1243
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    .line 1244
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1245
    return-object p0
.end method

.method public insert(ID)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .prologue
    .line 1341
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .prologue
    .line 1317
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .prologue
    .line 1269
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .prologue
    .line 1293
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1124
    if-nez p2, :cond_5

    .line 1125
    const-string/jumbo p2, "null"

    .line 1126
    :cond_5
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1127
    check-cast p2, Ljava/lang/String;

    .end local p2    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 1128
    .restart local p2    # "s":Ljava/lang/CharSequence;
    :cond_10
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .registers 12
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 1178
    if-nez p2, :cond_5

    .line 1179
    const-string/jumbo p2, "null"

    .line 1180
    :cond_5
    if-ltz p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v3

    if-le p1, v3, :cond_27

    .line 1181
    :cond_d
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dstOffset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1182
    :cond_27
    if-ltz p3, :cond_2b

    if-gez p4, :cond_5f

    .line 1183
    :cond_2b
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    .line 1184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", s.length() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1185
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1184
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1183
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1182
    :cond_5f
    if-gt p3, p4, :cond_2b

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt p4, v3, :cond_2b

    .line 1186
    sub-int v2, p4, p3

    .line 1187
    .local v2, "len":I
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1188
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v5, p1, v2

    .line 1189
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v6, p1

    .line 1188
    invoke-static {v3, p1, v4, v5, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1190
    move v1, p3

    .local v1, "i":I
    move v0, p1

    .end local p1    # "dstOffset":I
    .local v0, "dstOffset":I
    :goto_7d
    if-ge v1, p4, :cond_8d

    .line 1191
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "dstOffset":I
    .restart local p1    # "dstOffset":I
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v3, v0

    .line 1190
    add-int/lit8 v1, v1, 0x1

    move v0, p1

    .end local p1    # "dstOffset":I
    .restart local v0    # "dstOffset":I
    goto :goto_7d

    .line 1192
    :cond_8d
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v3, v2

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1193
    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1017
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 8
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 1053
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v1

    if-le p1, v1, :cond_e

    .line 1054
    :cond_8
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 1055
    :cond_e
    if-nez p2, :cond_13

    .line 1056
    const-string/jumbo p2, "null"

    .line 1057
    :cond_13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1058
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1059
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v3, p1, v0

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1060
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->getChars([CI)V

    .line 1061
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1062
    return-object p0
.end method

.method public insert(IZ)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .prologue
    .line 1217
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(I[C)Ljava/lang/AbstractStringBuilder;
    .registers 9
    .param p1, "offset"    # I
    .param p2, "str"    # [C

    .prologue
    const/4 v5, 0x0

    .line 1091
    if-ltz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v1

    if-le p1, v1, :cond_f

    .line 1092
    :cond_9
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 1093
    :cond_f
    array-length v0, p2

    .line 1094
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1095
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v3, p1, v0

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1096
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p2, v5, v1, p1, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1097
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1098
    return-object p0
.end method

.method public insert(I[CII)Ljava/lang/AbstractStringBuilder;
    .registers 9
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    .line 983
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    if-le p1, v0, :cond_e

    .line 984
    :cond_8
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 985
    :cond_e
    if-ltz p3, :cond_12

    if-gez p4, :cond_43

    .line 986
    :cond_12
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", str.length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 988
    array-length v2, p2

    .line 987
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 986
    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_43
    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_12

    .line 989
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 990
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v2, p1, p4

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 991
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 992
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 993
    return-object p0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1400
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .registers 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1419
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1420
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v1

    move v6, p2

    .line 1419
    invoke-static/range {v0 .. v6}, Ljava/lang/String;->lastIndexOf([CII[CIII)I

    move-result v0

    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return v0
.end method

.method public offsetByCodePoints(II)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .prologue
    const/4 v2, 0x0

    .line 346
    if-ltz p1, :cond_7

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_d

    .line 347
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 349
    :cond_d
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v2, v1, p1, p2}, Ljava/lang/Character;->offsetByCodePointsImpl([CIIII)I

    move-result v0

    return v0
.end method

.method public replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 869
    if-gez p1, :cond_8

    .line 870
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 871
    :cond_8
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v2, :cond_15

    .line 872
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v3, "start > length()"

    invoke-direct {v2, v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 873
    :cond_15
    if-le p1, p2, :cond_20

    .line 874
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v3, "start > end"

    invoke-direct {v2, v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 876
    :cond_20
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v2, :cond_26

    .line 877
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 878
    :cond_26
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 879
    .local v0, "len":I
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v2, v0

    sub-int v3, p2, p1

    sub-int v1, v2, v3

    .line 880
    .local v1, "newCount":I
    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 882
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v4, p1, v0

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v5, p2

    invoke-static {v2, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 883
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p3, v2, p1}, Ljava/lang/String;->getChars([CI)V

    .line 884
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 885
    return-object p0
.end method

.method public reverse()Ljava/lang/AbstractStringBuilder;
    .registers 8

    .prologue
    .line 1447
    const/4 v2, 0x0

    .line 1448
    .local v2, "hasSurrogates":Z
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v5, v6, -0x1

    .line 1449
    .local v5, "n":I
    add-int/lit8 v6, v5, -0x1

    shr-int/lit8 v3, v6, 0x1

    .local v3, "j":I
    :goto_9
    if-ltz v3, :cond_2d

    .line 1450
    sub-int v4, v5, v3

    .line 1451
    .local v4, "k":I
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v0, v6, v3

    .line 1452
    .local v0, "cj":C
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v1, v6, v4

    .line 1453
    .local v1, "ck":C
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v1, v6, v3

    .line 1454
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v0, v6, v4

    .line 1455
    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_29

    .line 1456
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    .line 1455
    if-eqz v6, :cond_2a

    .line 1457
    :cond_29
    const/4 v2, 0x1

    .line 1449
    :cond_2a
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 1460
    .end local v0    # "cj":C
    .end local v1    # "ck":C
    .end local v4    # "k":I
    :cond_2d
    if-eqz v2, :cond_32

    .line 1461
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->reverseAllValidSurrogatePairs()V

    .line 1463
    :cond_32
    return-object p0
.end method

.method public setCharAt(IC)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    .line 407
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_c

    .line 408
    :cond_6
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 409
    :cond_c
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    .line 410
    return-void
.end method

.method public setLength(I)V
    .registers 5
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 207
    if-gez p1, :cond_9

    .line 208
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 209
    :cond_9
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 211
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v0, p1, :cond_17

    .line 212
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 215
    :cond_17
    iput p1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 216
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 931
    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .registers 3
    .param p1, "start"    # I

    .prologue
    .line 900
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 949
    if-gez p1, :cond_8

    .line 950
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 951
    :cond_8
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v0, :cond_12

    .line 952
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 953
    :cond_12
    if-le p1, p2, :cond_1c

    .line 954
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 955
    :cond_1c
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public trimToSize()V
    .registers 3

    .prologue
    .line 176
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 177
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 179
    :cond_11
    return-void
.end method
