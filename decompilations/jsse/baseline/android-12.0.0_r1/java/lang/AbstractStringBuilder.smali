.class abstract Ljava/lang/AbstractStringBuilder;
.super Ljava/lang/Object;
.source "AbstractStringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final greylist-max-o MAX_ARRAY_SIZE:I = 0x7ffffff7


# instance fields
.field greylist-max-o count:I

.field greylist value:[C


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 69
    return-void
.end method

.method private greylist-max-o appendNull()Ljava/lang/AbstractStringBuilder;
    .registers 5

    .line 492
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 493
    .local v0, "c":I
    add-int/lit8 v1, v0, 0x4

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 494
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 495
    .local v1, "value":[C
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "c":I
    .local v2, "c":I
    const/16 v3, 0x6e

    aput-char v3, v1, v0

    .line 496
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "c":I
    .restart local v0    # "c":I
    const/16 v3, 0x75

    aput-char v3, v1, v2

    .line 497
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "c":I
    .restart local v2    # "c":I
    const/16 v3, 0x6c

    aput-char v3, v1, v0

    .line 498
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "c":I
    .restart local v0    # "c":I
    aput-char v3, v1, v2

    .line 499
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 500
    return-object p0
.end method

.method private greylist-max-o ensureCapacityInternal(I)V
    .registers 4
    .param p1, "minimumCapacity"    # I

    .line 123
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v0

    sub-int v1, p1, v1

    if-lez v1, :cond_12

    .line 124
    nop

    .line 125
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->newCapacity(I)I

    move-result v1

    .line 124
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 127
    :cond_12
    return-void
.end method

.method private greylist-max-o hugeCapacity(I)I
    .registers 3
    .param p1, "minCapacity"    # I

    .line 160
    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    if-ltz v0, :cond_f

    .line 163
    const v0, 0x7ffffff7

    if-le p1, v0, :cond_d

    .line 164
    move v0, p1

    goto :goto_e

    :cond_d
    nop

    .line 163
    :goto_e
    return v0

    .line 161
    :cond_f
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
.end method

.method private greylist-max-o newCapacity(I)I
    .registers 4
    .param p1, "minCapacity"    # I

    .line 150
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    .line 151
    .local v0, "newCapacity":I
    sub-int v1, v0, p1

    if-gez v1, :cond_c

    .line 152
    move v0, p1

    .line 154
    :cond_c
    if-lez v0, :cond_17

    const v1, 0x7ffffff7

    sub-int/2addr v1, v0

    if-gez v1, :cond_15

    goto :goto_17

    .line 156
    :cond_15
    move v1, v0

    goto :goto_1b

    .line 155
    :cond_17
    :goto_17
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->hugeCapacity(I)I

    move-result v1

    .line 154
    :goto_1b
    return v1
.end method

.method private greylist-max-o reverseAllValidSurrogatePairs()V
    .registers 6

    .line 1434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_29

    .line 1435
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v1, v1, v0

    .line 1436
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1437
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    .line 1438
    .local v2, "c1":C
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1439
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    aput-char v2, v3, v0

    .line 1440
    aput-char v1, v3, v4

    move v0, v4

    .line 1434
    .end local v1    # "c2":C
    .end local v2    # "c1":C
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1444
    .end local v0    # "i":I
    :cond_29
    return-void
.end method


# virtual methods
.method public blacklist append(C)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "c"    # C

    .line 649
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 650
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char p1, v0, v1

    .line 651
    return-object p0
.end method

.method public greylist-max-o append(D)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .param p1, "d"    # D

    .line 736
    invoke-static {p1, p2, p0}, Lsun/misc/FloatingDecimal;->appendTo(DLjava/lang/Appendable;)V

    .line 737
    return-object p0
.end method

.method public greylist-max-o append(F)Ljava/lang/AbstractStringBuilder;
    .registers 2
    .param p1, "f"    # F

    .line 719
    invoke-static {p1, p0}, Lsun/misc/FloatingDecimal;->appendTo(FLjava/lang/Appendable;)V

    .line 720
    return-object p0
.end method

.method public greylist-max-o append(I)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "i"    # I

    .line 667
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_a

    .line 668
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    .line 669
    return-object p0

    .line 671
    :cond_a
    if-gez p1, :cond_14

    neg-int v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 672
    :cond_14
    invoke-static {p1}, Ljava/lang/Integer;->stringSize(I)I

    move-result v0

    :goto_18
    nop

    .line 673
    .local v0, "appendedLength":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    .line 674
    .local v1, "spaceNeeded":I
    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 675
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p1, v1, v2}, Ljava/lang/Integer;->getChars(II[C)V

    .line 676
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 677
    return-object p0
.end method

.method public greylist-max-o append(J)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "l"    # J

    .line 693
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 694
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    .line 695
    return-object p0

    .line 697
    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1a

    neg-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 698
    :cond_1a
    invoke-static {p1, p2}, Ljava/lang/Long;->stringSize(J)I

    move-result v0

    :goto_1e
    nop

    .line 699
    .local v0, "appendedLength":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    .line 700
    .local v1, "spaceNeeded":I
    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 701
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Long;->getChars(JI[C)V

    .line 702
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 703
    return-object p0
.end method

.method greylist-max-o append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "asb"    # Ljava/lang/AbstractStringBuilder;

    .line 469
    if-nez p1, :cond_7

    .line 470
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 471
    :cond_7
    invoke-virtual {p1}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    .line 472
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 473
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V

    .line 474
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 475
    return-object p0
.end method

.method public blacklist append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 481
    if-nez p1, :cond_7

    .line 482
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 483
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 484
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 485
    :cond_13
    instance-of v0, p1, Ljava/lang/AbstractStringBuilder;

    if-eqz v0, :cond_1f

    .line 486
    move-object v0, p1

    check-cast v0, Ljava/lang/AbstractStringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 488
    :cond_1f
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .registers 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 534
    if-nez p1, :cond_4

    .line 535
    const-string p1, "null"

    .line 536
    :cond_4
    if-ltz p2, :cond_2e

    if-gt p2, p3, :cond_2e

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_2e

    .line 540
    sub-int v0, p3, p2

    .line 541
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 542
    move v1, p2

    .local v1, "i":I
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .local v2, "j":I
    :goto_19
    if-ge v1, p3, :cond_28

    .line 543
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v3, v2

    .line 542
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 544
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_28
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 545
    return-object p0

    .line 537
    .end local v0    # "len":I
    :cond_2e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", s.length() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o append(Ljava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 423
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .line 445
    if-nez p1, :cond_7

    .line 446
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 447
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 448
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 449
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 450
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 451
    return-object p0
.end method

.method public greylist-max-o append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 456
    if-nez p1, :cond_7

    .line 457
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 458
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 459
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 460
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 461
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 462
    return-object p0
.end method

.method public greylist-max-o append(Z)Ljava/lang/AbstractStringBuilder;
    .registers 7
    .param p1, "b"    # Z

    .line 615
    const/16 v0, 0x65

    if-eqz p1, :cond_2e

    .line 616
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 617
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v4, 0x74

    aput-char v4, v1, v2

    .line 618
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v4, 0x72

    aput-char v4, v1, v3

    .line 619
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v4, 0x75

    aput-char v4, v1, v2

    .line 620
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v0, v1, v3

    goto :goto_5f

    .line 622
    :cond_2e
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x5

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 623
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v4, 0x66

    aput-char v4, v1, v2

    .line 624
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v4, 0x61

    aput-char v4, v1, v3

    .line 625
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v4, 0x6c

    aput-char v4, v1, v2

    .line 626
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v4, 0x73

    aput-char v4, v1, v3

    .line 627
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v0, v1, v2

    .line 629
    :goto_5f
    return-object p0
.end method

.method public greylist-max-o append([C)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "str"    # [C

    .line 565
    array-length v0, p1

    .line 566
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 567
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 569
    return-object p0
.end method

.method public greylist-max-o append([CII)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 595
    if-lez p3, :cond_8

    .line 596
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 597
    :cond_8
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 599
    return-object p0
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "codePoint"    # I

    .line 789
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 791
    .local v0, "count":I
    invoke-static {p1}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 792
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 793
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    int-to-char v2, p1

    aput-char v2, v1, v0

    .line 794
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_2b

    .line 795
    :cond_17
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 796
    add-int/lit8 v1, v0, 0x2

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 797
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p1, v1, v0}, Ljava/lang/Character;->toSurrogates(I[CI)V

    .line 798
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 802
    :goto_2b
    return-object p0

    .line 800
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public greylist-max-o capacity()I
    .registers 2

    .line 90
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v0

    return v0
.end method

.method public whitelist test-api charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .line 236
    if-ltz p1, :cond_b

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge p1, v0, :cond_b

    .line 238
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v0, v0, p1

    return v0

    .line 237
    :cond_b
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public greylist-max-o codePointAt(I)I
    .registers 4
    .param p1, "index"    # I

    .line 263
    if-ltz p1, :cond_d

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge p1, v0, :cond_d

    .line 266
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v1, p1, v0}, Ljava/lang/Character;->codePointAtImpl([CII)I

    move-result v0

    return v0

    .line 264
    :cond_d
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public greylist-max-o codePointBefore(I)I
    .registers 5
    .param p1, "index"    # I

    .line 291
    add-int/lit8 v0, p1, -0x1

    .line 292
    .local v0, "i":I
    if-ltz v0, :cond_10

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v0, v1, :cond_10

    .line 295
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Ljava/lang/Character;->codePointBeforeImpl([CII)I

    move-result v1

    return v1

    .line 293
    :cond_10
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1
.end method

.method public greylist-max-o codePointCount(II)I
    .registers 5
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 319
    if-ltz p1, :cond_11

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_11

    if-gt p1, p2, :cond_11

    .line 322
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCountImpl([CII)I

    move-result v0

    return v0

    .line 320
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o delete(II)Ljava/lang/AbstractStringBuilder;
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 755
    if-ltz p1, :cond_22

    .line 757
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v0, :cond_8

    .line 758
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 759
    :cond_8
    if-gt p1, p2, :cond_1c

    .line 761
    sub-int v1, p2, p1

    .line 762
    .local v1, "len":I
    if-lez v1, :cond_1b

    .line 763
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v3, p1, v1

    sub-int/2addr v0, p2

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 766
    :cond_1b
    return-object p0

    .line 760
    .end local v1    # "len":I
    :cond_1c
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 756
    :cond_22
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public greylist-max-o deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "index"    # I

    .line 823
    if-ltz p1, :cond_17

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge p1, v0, :cond_17

    .line 825
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 826
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 827
    return-object p0

    .line 824
    :cond_17
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public greylist-max-o ensureCapacity(I)V
    .registers 2
    .param p1, "minimumCapacity"    # I

    .line 110
    if-lez p1, :cond_5

    .line 111
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 112
    :cond_5
    return-void
.end method

.method public greylist-max-o getChars(II[CI)V
    .registers 7
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    .line 382
    if-ltz p1, :cond_20

    .line 384
    if-ltz p2, :cond_1a

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_1a

    .line 386
    if-gt p1, p2, :cond_12

    .line 388
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    return-void

    .line 387
    :cond_12
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "srcBegin > srcEnd"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_1a
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 383
    :cond_20
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method final greylist-max-o getValue()[C
    .registers 2

    .line 1463
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-object v0
.end method

.method public greylist-max-o indexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o indexOf(Ljava/lang/String;I)I
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 1348
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/lang/String;->indexOf([CIILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o insert(IC)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "offset"    # I
    .param p2, "c"    # C

    .line 1214
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1215
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1216
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    .line 1217
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1218
    return-object p0
.end method

.method public greylist-max-o insert(ID)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .line 1310
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o insert(IF)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .line 1287
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o insert(II)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .line 1241
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o insert(IJ)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .line 1264
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .line 1100
    if-nez p2, :cond_4

    .line 1101
    const-string p2, "null"

    .line 1102
    :cond_4
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1103
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 1104
    :cond_10
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .registers 10
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 1153
    if-nez p2, :cond_4

    .line 1154
    const-string p2, "null"

    .line 1155
    :cond_4
    if-ltz p1, :cond_6c

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    if-gt p1, v0, :cond_6c

    .line 1157
    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    if-gt p3, p4, :cond_41

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p4, v0, :cond_41

    .line 1161
    sub-int v0, p4, p3

    .line 1162
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1163
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v2, p1, v0

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1165
    move v1, p3

    .local v1, "i":I
    :goto_2b
    if-ge v1, p4, :cond_3b

    .line 1166
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, p1, 0x1

    .end local p1    # "dstOffset":I
    .local v3, "dstOffset":I
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v2, p1

    .line 1165
    add-int/lit8 v1, v1, 0x1

    move p1, v3

    goto :goto_2b

    .line 1167
    .end local v1    # "i":I
    .end local v3    # "dstOffset":I
    .restart local p1    # "dstOffset":I
    :cond_3b
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1168
    return-object p0

    .line 1158
    .end local v0    # "len":I
    :cond_41
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", s.length() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_6c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dstOffset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 996
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 7
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 1031
    if-ltz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    if-gt p1, v0, :cond_2b

    .line 1033
    if-nez p2, :cond_c

    .line 1034
    const-string p2, "null"

    .line 1035
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1036
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1037
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v2, p1, v0

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1038
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->getChars([CI)V

    .line 1039
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1040
    return-object p0

    .line 1032
    .end local v0    # "len":I
    :cond_2b
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public greylist-max-o insert(IZ)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .line 1191
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o insert(I[C)Ljava/lang/AbstractStringBuilder;
    .registers 7
    .param p1, "offset"    # I
    .param p2, "str"    # [C

    .line 1068
    if-ltz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    if-gt p1, v0, :cond_25

    .line 1070
    array-length v0, p2

    .line 1071
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1072
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v2, p1, v0

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1073
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1074
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1075
    return-object p0

    .line 1069
    .end local v0    # "len":I
    :cond_25
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public greylist-max-o insert(I[CII)Ljava/lang/AbstractStringBuilder;
    .registers 8
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .line 963
    if-ltz p1, :cond_53

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    if-gt p1, v0, :cond_53

    .line 965
    if-ltz p3, :cond_2b

    if-ltz p4, :cond_2b

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_2b

    .line 969
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 970
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v1, p1, p4

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 971
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 972
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 973
    return-object p0

    .line 966
    :cond_2b
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", str.length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_53
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public greylist-max-o lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1368
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o lastIndexOf(Ljava/lang/String;I)I
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 1387
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/lang/String;->lastIndexOf([CIILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 79
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return v0
.end method

.method public greylist-max-o offsetByCodePoints(II)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .line 345
    if-ltz p1, :cond_e

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_e

    .line 348
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p1, p2}, Ljava/lang/Character;->offsetByCodePointsImpl([CIIII)I

    move-result v0

    return v0

    .line 346
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    .line 850
    if-ltz p1, :cond_3b

    .line 852
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_33

    .line 854
    if-gt p1, p2, :cond_2b

    .line 857
    if-le p2, v0, :cond_c

    .line 858
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 859
    :cond_c
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 860
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    sub-int v2, p2, p1

    sub-int/2addr v1, v2

    .line 861
    .local v1, "newCount":I
    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 863
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v3, p1, v0

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p2

    invoke-static {v2, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 864
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p3, v2, p1}, Ljava/lang/String;->getChars([CI)V

    .line 865
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 866
    return-object p0

    .line 855
    .end local v0    # "len":I
    .end local v1    # "newCount":I
    :cond_2b
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "start > end"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_33
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "start > length()"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_3b
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public greylist-max-o reverse()Ljava/lang/AbstractStringBuilder;
    .registers 8

    .line 1413
    const/4 v0, 0x0

    .line 1414
    .local v0, "hasSurrogates":Z
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 1415
    .local v1, "n":I
    add-int/lit8 v2, v1, -0x1

    shr-int/lit8 v2, v2, 0x1

    .local v2, "j":I
    :goto_9
    if-ltz v2, :cond_27

    .line 1416
    sub-int v3, v1, v2

    .line 1417
    .local v3, "k":I
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v5, v4, v2

    .line 1418
    .local v5, "cj":C
    aget-char v6, v4, v3

    .line 1419
    .local v6, "ck":C
    aput-char v6, v4, v2

    .line 1420
    aput-char v5, v4, v3

    .line 1421
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_23

    .line 1422
    invoke-static {v6}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1423
    :cond_23
    const/4 v0, 0x1

    .line 1415
    .end local v3    # "k":I
    .end local v5    # "cj":C
    .end local v6    # "ck":C
    :cond_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 1426
    .end local v2    # "j":I
    :cond_27
    if-eqz v0, :cond_2c

    .line 1427
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->reverseAllValidSurrogatePairs()V

    .line 1429
    :cond_2c
    return-object p0
.end method

.method public greylist-max-o setCharAt(IC)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .line 406
    if-ltz p1, :cond_b

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge p1, v0, :cond_b

    .line 408
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    .line 409
    return-void

    .line 407
    :cond_b
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public greylist-max-o setLength(I)V
    .registers 5
    .param p1, "newLength"    # I

    .line 206
    if-ltz p1, :cond_12

    .line 208
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 210
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v0, p1, :cond_f

    .line 211
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 214
    :cond_f
    iput p1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 215
    return-void

    .line 207
    :cond_12
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 912
    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o substring(I)Ljava/lang/String;
    .registers 3
    .param p1, "start"    # I

    .line 881
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o substring(II)Ljava/lang/String;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 930
    if-ltz p1, :cond_20

    .line 932
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_1a

    .line 934
    if-gt p1, p2, :cond_12

    .line 936
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 935
    :cond_12
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 933
    :cond_1a
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 931
    :cond_20
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

.method public greylist-max-o trimToSize()V
    .registers 4

    .line 175
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v1

    if-ge v0, v2, :cond_d

    .line 176
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 178
    :cond_d
    return-void
.end method
