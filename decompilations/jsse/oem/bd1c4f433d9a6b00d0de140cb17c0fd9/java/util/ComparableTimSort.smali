.class Ljava/util/ComparableTimSort;
.super Ljava/lang/Object;
.source "ComparableTimSort.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private final a:[Ljava/lang/Object;

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;

.field private tmpBase:I

.field private tmpLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/ComparableTimSort;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    .line 42
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;II)V
    .registers 11
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "work"    # [Ljava/lang/Object;
    .param p3, "workBase"    # I
    .param p4, "workLen"    # I

    .prologue
    const/4 v5, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v3, 0x7

    iput v3, p0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 108
    iput v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 121
    iput-object p1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 124
    array-length v0, p1

    .line 125
    .local v0, "len":I
    const/16 v3, 0x200

    if-ge v0, v3, :cond_2c

    .line 126
    ushr-int/lit8 v2, v0, 0x1

    .line 127
    .local v2, "tlen":I
    :goto_12
    if-eqz p2, :cond_16

    if-ge p4, v2, :cond_2f

    .line 128
    :cond_16
    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 129
    iput v5, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 130
    iput v2, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    .line 152
    :goto_1e
    const/16 v3, 0x78

    if-ge v0, v3, :cond_3b

    const/4 v1, 0x5

    .line 155
    .local v1, "stackLen":I
    :goto_23
    new-array v3, v1, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runBase:[I

    .line 156
    new-array v3, v1, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    .line 157
    return-void

    .line 126
    .end local v1    # "stackLen":I
    .end local v2    # "tlen":I
    :cond_2c
    const/16 v2, 0x100

    .restart local v2    # "tlen":I
    goto :goto_12

    .line 127
    :cond_2f
    add-int v3, p3, v2

    array-length v4, p2

    if-gt v3, v4, :cond_16

    .line 133
    iput-object p2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 134
    iput p3, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 135
    iput p4, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    goto :goto_1e

    .line 153
    :cond_3b
    const/16 v3, 0x606

    if-ge v0, v3, :cond_42

    const/16 v1, 0xa

    .restart local v1    # "stackLen":I
    goto :goto_23

    .line 154
    .end local v1    # "stackLen":I
    :cond_42
    const v3, 0x1d16f

    if-ge v0, v3, :cond_4a

    const/16 v1, 0x18

    .restart local v1    # "stackLen":I
    goto :goto_23

    .end local v1    # "stackLen":I
    :cond_4a
    const/16 v1, 0x31

    .restart local v1    # "stackLen":I
    goto :goto_23
.end method

.method private static binarySort([Ljava/lang/Object;III)V
    .registers 11
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I

    .prologue
    .line 245
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_e

    if-gt p1, p3, :cond_8

    if-le p3, p2, :cond_e

    :cond_8
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 246
    :cond_e
    if-ne p3, p1, :cond_12

    .line 247
    add-int/lit8 p3, p3, 0x1

    .line 248
    :cond_12
    :goto_12
    if-ge p3, p2, :cond_63

    .line 249
    aget-object v3, p0, p3

    check-cast v3, Ljava/lang/Comparable;

    .line 252
    .local v3, "pivot":Ljava/lang/Comparable;
    move v0, p1

    .line 253
    .local v0, "left":I
    move v4, p3

    .line 254
    .local v4, "right":I
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_26

    if-le p1, v4, :cond_26

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 260
    :cond_26
    :goto_26
    if-ge v0, v4, :cond_39

    .line 261
    add-int v5, v0, v4

    ushr-int/lit8 v1, v5, 0x1

    .line 262
    .local v1, "mid":I
    aget-object v5, p0, v1

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_36

    .line 263
    move v4, v1

    goto :goto_26

    .line 265
    :cond_36
    add-int/lit8 v0, v1, 0x1

    goto :goto_26

    .line 267
    .end local v1    # "mid":I
    :cond_39
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_45

    if-eq v0, v4, :cond_45

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 276
    :cond_45
    sub-int v2, p3, v0

    .line 278
    .local v2, "n":I
    packed-switch v2, :pswitch_data_64

    .line 282
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    :goto_4f
    aput-object v3, p0, v0

    .line 248
    add-int/lit8 p3, p3, 0x1

    goto :goto_12

    .line 279
    :pswitch_54
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p0, v6

    aput-object v6, p0, v5

    .line 280
    :pswitch_5c
    add-int/lit8 v5, v0, 0x1

    aget-object v6, p0, v0

    aput-object v6, p0, v5

    goto :goto_4f

    .line 286
    .end local v0    # "left":I
    .end local v2    # "n":I
    .end local v3    # "pivot":Ljava/lang/Comparable;
    .end local v4    # "right":I
    :cond_63
    return-void

    .line 278
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_54
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;II)I
    .registers 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 314
    sget-boolean v2, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_c

    if-lt p1, p2, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 315
    :cond_c
    add-int/lit8 v0, p1, 0x1

    .line 316
    .local v0, "runHi":I
    if-ne v0, p2, :cond_12

    .line 317
    const/4 v2, 0x1

    return v2

    .line 320
    :cond_12
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    aget-object v3, p0, p1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_4d

    move v0, v1

    .line 321
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    :goto_21
    if-ge v0, p2, :cond_34

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_34

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 323
    :cond_34
    invoke-static {p0, p1, v0}, Ljava/util/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    .line 329
    :cond_37
    sub-int v2, v0, p1

    return v2

    .line 325
    :goto_3a
    if-ge v0, p2, :cond_37

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_37

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .end local v0    # "runHi":I
    .restart local v1    # "runHi":I
    :cond_4d
    move v0, v1

    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    goto :goto_3a
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .registers 6
    .param p1, "minCapacity"    # I

    .prologue
    const/4 v3, 0x0

    .line 884
    iget v2, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    if-ge v2, p1, :cond_23

    .line 886
    move v1, p1

    .line 887
    .local v1, "newSize":I
    shr-int/lit8 v2, p1, 0x1

    or-int v1, p1, v2

    .line 888
    shr-int/lit8 v2, v1, 0x2

    or-int/2addr v1, v2

    .line 889
    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v1, v2

    .line 890
    shr-int/lit8 v2, v1, 0x8

    or-int/2addr v1, v2

    .line 891
    shr-int/lit8 v2, v1, 0x10

    or-int/2addr v1, v2

    .line 892
    add-int/lit8 v1, v1, 0x1

    .line 894
    if-gez v1, :cond_26

    .line 895
    move v1, p1

    .line 900
    :goto_1b
    new-array v0, v1, [Ljava/lang/Object;

    .line 901
    .local v0, "newArray":[Ljava/lang/Object;
    iput-object v0, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 902
    iput v1, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    .line 903
    iput v3, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 905
    .end local v0    # "newArray":[Ljava/lang/Object;
    .end local v1    # "newSize":I
    :cond_23
    iget-object v2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    .line 897
    .restart local v1    # "newSize":I
    :cond_26
    iget-object v2, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length v2, v2

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1b
.end method

.method private static gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .registers 11
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_10

    if-lez p3, :cond_8

    if-gez p4, :cond_e

    :cond_8
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_e
    if-ge p4, p3, :cond_8

    .line 507
    :cond_10
    const/4 v0, 0x0

    .line 508
    .local v0, "lastOfs":I
    const/4 v3, 0x1

    .line 509
    .local v3, "ofs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_48

    .line 511
    sub-int v2, p3, p4

    .line 512
    .local v2, "maxOfs":I
    :cond_1e
    :goto_1e
    if-ge v3, v2, :cond_34

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_34

    .line 513
    move v0, v3

    .line 514
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 515
    if-gtz v3, :cond_1e

    .line 516
    move v3, v2

    goto :goto_1e

    .line 518
    :cond_34
    if-le v3, v2, :cond_37

    .line 519
    move v3, v2

    .line 522
    :cond_37
    add-int/2addr v0, p4

    .line 523
    add-int/2addr v3, p4

    .line 541
    :goto_39
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_6b

    const/4 v5, -0x1

    if-gt v5, v0, :cond_42

    if-lt v0, v3, :cond_69

    :cond_42
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 526
    .end local v2    # "maxOfs":I
    :cond_48
    add-int/lit8 v2, p4, 0x1

    .line 527
    .restart local v2    # "maxOfs":I
    :cond_4a
    :goto_4a
    if-ge v3, v2, :cond_60

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_60

    .line 528
    move v0, v3

    .line 529
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 530
    if-gtz v3, :cond_4a

    .line 531
    move v3, v2

    goto :goto_4a

    .line 533
    :cond_60
    if-le v3, v2, :cond_63

    .line 534
    move v3, v2

    .line 537
    :cond_63
    move v4, v0

    .line 538
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 539
    sub-int v3, p4, v4

    goto :goto_39

    .line 541
    .end local v4    # "tmp":I
    :cond_69
    if-gt v3, p3, :cond_42

    .line 548
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    .line 549
    :goto_6d
    if-ge v0, v3, :cond_84

    .line 550
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 552
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_82

    .line 553
    add-int/lit8 v0, v1, 0x1

    goto :goto_6d

    .line 555
    :cond_82
    move v3, v1

    goto :goto_6d

    .line 557
    .end local v1    # "m":I
    :cond_84
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_90

    if-eq v0, v3, :cond_90

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 558
    :cond_90
    return v3
.end method

.method private static gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .registers 11
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .prologue
    .line 575
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_10

    if-lez p3, :cond_8

    if-gez p4, :cond_e

    :cond_8
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_e
    if-ge p4, p3, :cond_8

    .line 577
    :cond_10
    const/4 v3, 0x1

    .line 578
    .local v3, "ofs":I
    const/4 v0, 0x0

    .line 579
    .local v0, "lastOfs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_4b

    .line 581
    add-int/lit8 v2, p4, 0x1

    .line 582
    .local v2, "maxOfs":I
    :cond_1e
    :goto_1e
    if-ge v3, v2, :cond_34

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_34

    .line 583
    move v0, v3

    .line 584
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 585
    if-gtz v3, :cond_1e

    .line 586
    move v3, v2

    goto :goto_1e

    .line 588
    :cond_34
    if-le v3, v2, :cond_37

    .line 589
    move v3, v2

    .line 592
    :cond_37
    move v4, v0

    .line 593
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 594
    sub-int v3, p4, v4

    .line 611
    .end local v4    # "tmp":I
    :goto_3c
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_6b

    const/4 v5, -0x1

    if-gt v5, v0, :cond_45

    if-lt v0, v3, :cond_69

    :cond_45
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 597
    .end local v2    # "maxOfs":I
    :cond_4b
    sub-int v2, p3, p4

    .line 598
    .restart local v2    # "maxOfs":I
    :cond_4d
    :goto_4d
    if-ge v3, v2, :cond_63

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_63

    .line 599
    move v0, v3

    .line 600
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 601
    if-gtz v3, :cond_4d

    .line 602
    move v3, v2

    goto :goto_4d

    .line 604
    :cond_63
    if-le v3, v2, :cond_66

    .line 605
    move v3, v2

    .line 608
    :cond_66
    add-int/2addr v0, p4

    .line 609
    add-int/2addr v3, p4

    goto :goto_3c

    .line 611
    :cond_69
    if-gt v3, p3, :cond_45

    .line 618
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    .line 619
    :goto_6d
    if-ge v0, v3, :cond_84

    .line 620
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 622
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_81

    .line 623
    move v3, v1

    goto :goto_6d

    .line 625
    :cond_81
    add-int/lit8 v0, v1, 0x1

    goto :goto_6d

    .line 627
    .end local v1    # "m":I
    :cond_84
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_90

    if-eq v0, v3, :cond_90

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 628
    :cond_90
    return v3
.end method

.method private mergeAt(I)V
    .registers 12
    .param p1, "i"    # I

    .prologue
    const/4 v9, 0x0

    .line 435
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_10

    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_10

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 436
    :cond_10
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_1c

    if-gez p1, :cond_1c

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 437
    :cond_1c
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_32

    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x2

    if-eq p1, v5, :cond_32

    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x3

    if-eq p1, v5, :cond_32

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 439
    :cond_32
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    aget v0, v5, p1

    .line 440
    .local v0, "base1":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v3, v5, p1

    .line 441
    .local v3, "len1":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v6, p1, 0x1

    aget v1, v5, v6

    .line 442
    .local v1, "base2":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v6, p1, 0x1

    aget v4, v5, v6

    .line 443
    .local v4, "len2":I
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_54

    if-lez v3, :cond_4e

    if-gtz v4, :cond_54

    :cond_4e
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 444
    :cond_54
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_62

    add-int v5, v0, v3

    if-eq v5, v1, :cond_62

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 451
    :cond_62
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int v6, v3, v4

    aput v6, v5, p1

    .line 452
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x3

    if-ne p1, v5, :cond_86

    .line 453
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v8, p1, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    .line 454
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v8, p1, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    .line 456
    :cond_86
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 462
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    invoke-static {v5, v6, v0, v3, v9}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    .line 463
    .local v2, "k":I
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_a4

    if-gez v2, :cond_a4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 464
    :cond_a4
    add-int/2addr v0, v2

    .line 465
    sub-int/2addr v3, v2

    .line 466
    if-nez v3, :cond_a9

    .line 467
    return-void

    .line 473
    :cond_a9
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int v6, v0, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 474
    add-int/lit8 v7, v4, -0x1

    .line 473
    invoke-static {v5, v6, v1, v4, v7}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v4

    .line 475
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_c7

    if-gez v4, :cond_c7

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 476
    :cond_c7
    if-nez v4, :cond_ca

    .line 477
    return-void

    .line 480
    :cond_ca
    if-gt v3, v4, :cond_d0

    .line 481
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeLo(IIII)V

    .line 484
    :goto_cf
    return-void

    .line 483
    :cond_d0
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeHi(IIII)V

    goto :goto_cf
.end method

.method private mergeCollapse()V
    .registers 6

    .prologue
    .line 399
    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_42

    .line 400
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 401
    .local v0, "n":I
    if-lez v0, :cond_32

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_32

    .line 402
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_2e

    .line 403
    add-int/lit8 v0, v0, -0x1

    .line 404
    :cond_2e
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 405
    :cond_32
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_42

    .line 406
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 411
    .end local v0    # "n":I
    :cond_42
    return-void
.end method

.method private mergeForceCollapse()V
    .registers 5

    .prologue
    .line 418
    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1f

    .line 419
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 420
    .local v0, "n":I
    if-lez v0, :cond_1b

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_1b

    .line 421
    add-int/lit8 v0, v0, -0x1

    .line 422
    :cond_1b
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 424
    .end local v0    # "n":I
    :cond_1f
    return-void
.end method

.method private mergeHi(IIII)V
    .registers 21
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 766
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v14, :cond_14

    if-lez p2, :cond_8

    if-gtz p4, :cond_e

    :cond_8
    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_e
    add-int v14, p1, p2

    move/from16 v0, p3

    if-ne v14, v0, :cond_8

    .line 769
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 770
    .local v2, "a":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v12

    .line 771
    .local v12, "tmp":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 772
    .local v13, "tmpBase":I
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v0, v12, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    add-int v14, p1, p2

    add-int/lit8 v5, v14, -0x1

    .line 775
    .local v5, "cursor1":I
    add-int v14, v13, p4

    add-int/lit8 v7, v14, -0x1

    .line 776
    .local v7, "cursor2":I
    add-int v14, p3, p4

    add-int/lit8 v9, v14, -0x1

    .line 779
    .local v9, "dest":I
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .local v10, "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .local v6, "cursor1":I
    aget-object v14, v2, v5

    aput-object v14, v2, v9

    .line 780
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_4d

    .line 781
    add-int/lit8 v14, p4, -0x1

    sub-int v14, v10, v14

    move/from16 v0, p4

    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    return-void

    .line 784
    :cond_4d
    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_64

    .line 785
    sub-int v9, v10, p2

    .line 786
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    sub-int v5, v6, p2

    .line 787
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    add-int/lit8 v14, v5, 0x1

    add-int/lit8 v15, v9, 0x1

    move/from16 v0, p2

    invoke-static {v2, v14, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    aget-object v14, v12, v7

    aput-object v14, v2, v9

    .line 789
    return-void

    .line 792
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_64
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    .local v11, "minGallop":I
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 795
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :goto_6a
    const/4 v3, 0x0

    .line 796
    .local v3, "count1":I
    const/4 v4, 0x0

    .line 803
    .local v4, "count2":I
    :cond_6c
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v14, :cond_7d

    if-lez p2, :cond_77

    const/4 v14, 0x1

    move/from16 v0, p4

    if-gt v0, v14, :cond_7d

    :cond_77
    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 804
    :cond_7d
    aget-object v14, v12, v7

    check-cast v14, Ljava/lang/Comparable;

    aget-object v15, v2, v5

    invoke-interface {v14, v15}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_b3

    .line 805
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .restart local v6    # "cursor1":I
    aget-object v14, v2, v5

    aput-object v14, v2, v9

    .line 806
    add-int/lit8 v3, v3, 0x1

    .line 807
    const/4 v4, 0x0

    .line 808
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_1a4

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 857
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :cond_9a
    :goto_9a
    const/4 v14, 0x1

    if-ge v11, v14, :cond_9e

    const/4 v11, 0x1

    .end local v11    # "minGallop":I
    :cond_9e
    move-object/from16 v0, p0

    iput v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 859
    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_174

    .line 860
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v14, :cond_162

    if-gtz p2, :cond_162

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 811
    .restart local v11    # "minGallop":I
    :cond_b3
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v8, v7, -0x1

    .end local v7    # "cursor2":I
    .local v8, "cursor2":I
    aget-object v14, v12, v7

    aput-object v14, v2, v9

    .line 812
    add-int/lit8 v4, v4, 0x1

    .line 813
    const/4 v3, 0x0

    .line 814
    add-int/lit8 p4, p4, -0x1

    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_c8

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .line 815
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_9a

    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_c8
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .line 817
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    :goto_ca
    or-int v14, v3, v4

    if-lt v14, v11, :cond_6c

    .line 825
    :goto_ce
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v14, :cond_df

    if-lez p2, :cond_d9

    const/4 v14, 0x1

    move/from16 v0, p4

    if-gt v0, v14, :cond_df

    :cond_d9
    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 826
    :cond_df
    aget-object v14, v12, v7

    check-cast v14, Ljava/lang/Comparable;

    add-int/lit8 v15, p2, -0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v14, v2, v0, v1, v15}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v14

    sub-int v3, p2, v14

    .line 827
    if-eqz v3, :cond_fe

    .line 828
    sub-int/2addr v9, v3

    .line 829
    sub-int/2addr v5, v3

    .line 830
    sub-int p2, p2, v3

    .line 831
    add-int/lit8 v14, v5, 0x1

    add-int/lit8 v15, v9, 0x1

    invoke-static {v2, v14, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    if-eqz p2, :cond_9a

    .line 835
    :cond_fe
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v8, v7, -0x1

    .end local v7    # "cursor2":I
    .restart local v8    # "cursor2":I
    aget-object v14, v12, v7

    aput-object v14, v2, v9

    .line 836
    add-int/lit8 p4, p4, -0x1

    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_110

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .line 837
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_9a

    .line 839
    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_110
    aget-object v14, v2, v5

    check-cast v14, Ljava/lang/Comparable;

    add-int/lit8 v15, p4, -0x1

    move/from16 v0, p4

    invoke-static {v14, v12, v13, v0, v15}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v14

    sub-int v4, p4, v14

    .line 840
    if-eqz v4, :cond_1a1

    .line 841
    sub-int v9, v10, v4

    .line 842
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    sub-int v7, v8, v4

    .line 843
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    sub-int p4, p4, v4

    .line 844
    add-int/lit8 v14, v7, 0x1

    add-int/lit8 v15, v9, 0x1

    invoke-static {v12, v14, v2, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 845
    const/4 v14, 0x1

    move/from16 v0, p4

    if-le v0, v14, :cond_9a

    .line 848
    :goto_132
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .restart local v6    # "cursor1":I
    aget-object v14, v2, v5

    aput-object v14, v2, v9

    .line 849
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_142

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 850
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_9a

    .line 851
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_142
    add-int/lit8 v11, v11, -0x1

    .line 852
    const/4 v14, 0x7

    if-lt v3, v14, :cond_154

    const/4 v14, 0x1

    move v15, v14

    :goto_149
    const/4 v14, 0x7

    if-lt v4, v14, :cond_157

    const/4 v14, 0x1

    :goto_14d
    or-int/2addr v14, v15

    if-eqz v14, :cond_159

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_ce

    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_154
    const/4 v14, 0x0

    move v15, v14

    goto :goto_149

    :cond_157
    const/4 v14, 0x0

    goto :goto_14d

    .line 853
    :cond_159
    if-gez v11, :cond_15c

    .line 854
    const/4 v11, 0x0

    .line 855
    :cond_15c
    add-int/lit8 v11, v11, 0x2

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_6a

    .line 861
    .end local v11    # "minGallop":I
    :cond_162
    sub-int v9, v9, p2

    .line 862
    sub-int v5, v5, p2

    .line 863
    add-int/lit8 v14, v5, 0x1

    add-int/lit8 v15, v9, 0x1

    move/from16 v0, p2

    invoke-static {v2, v14, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 864
    aget-object v14, v12, v7

    aput-object v14, v2, v9

    .line 873
    :goto_173
    return-void

    .line 865
    :cond_174
    if-nez p4, :cond_17f

    .line 866
    new-instance v14, Ljava/lang/IllegalArgumentException;

    .line 867
    const-string/jumbo v15, "Comparison method violates its general contract!"

    .line 866
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 869
    :cond_17f
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v14, :cond_18b

    if-eqz p2, :cond_18b

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 870
    :cond_18b
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v14, :cond_197

    if-gtz p4, :cond_197

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 871
    :cond_197
    add-int/lit8 v14, p4, -0x1

    sub-int v14, v9, v14

    move/from16 v0, p4

    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_173

    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    .restart local v11    # "minGallop":I
    :cond_1a1
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_132

    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_1a4
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_ca
.end method

.method private mergeLo(IIII)V
    .registers 19
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 649
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v12, :cond_14

    if-lez p2, :cond_8

    if-gtz p4, :cond_e

    :cond_8
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_e
    add-int v12, p1, p2

    move/from16 v0, p3

    if-ne v12, v0, :cond_8

    .line 652
    :cond_14
    iget-object v1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 653
    .local v1, "a":[Ljava/lang/Object;
    move/from16 v0, p2

    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v11

    .line 655
    .local v11, "tmp":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 656
    .local v4, "cursor1":I
    move/from16 v6, p3

    .line 657
    .local v6, "cursor2":I
    move v8, p1

    .line 658
    .local v8, "dest":I
    move/from16 v0, p2

    invoke-static {v1, p1, v11, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    add-int/lit8 v8, p1, 0x1

    add-int/lit8 v6, p3, 0x1

    aget-object v12, v1, p3

    aput-object v12, v1, p1

    .line 662
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_38

    .line 663
    move/from16 v0, p2

    invoke-static {v11, v4, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 664
    return-void

    .line 666
    :cond_38
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_49

    .line 667
    move/from16 v0, p4

    invoke-static {v1, v6, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    add-int v12, v8, p4

    aget-object v13, v11, v4

    aput-object v13, v1, v12

    .line 669
    return-void

    .line 672
    :cond_49
    iget v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 675
    .local v10, "minGallop":I
    :goto_4b
    const/4 v2, 0x0

    .line 676
    .local v2, "count1":I
    const/4 v3, 0x0

    .line 683
    .local v3, "count2":I
    :cond_4d
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v12, :cond_5e

    const/4 v12, 0x1

    move/from16 v0, p2

    if-le v0, v12, :cond_58

    if-gtz p4, :cond_5e

    :cond_58
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 684
    :cond_5e
    aget-object v12, v1, v6

    check-cast v12, Ljava/lang/Comparable;

    aget-object v13, v11, v4

    invoke-interface {v12, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_92

    .line 685
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .local v9, "dest":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cursor2":I
    .local v7, "cursor2":I
    aget-object v12, v1, v6

    aput-object v12, v1, v8

    .line 686
    add-int/lit8 v3, v3, 0x1

    .line 687
    const/4 v2, 0x0

    .line 688
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_16b

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 737
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    :cond_7b
    :goto_7b
    const/4 v12, 0x1

    if-ge v10, v12, :cond_7f

    const/4 v10, 0x1

    .end local v10    # "minGallop":I
    :cond_7f
    iput v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 739
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_13c

    .line 740
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v12, :cond_130

    if-gtz p4, :cond_130

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 691
    .restart local v10    # "minGallop":I
    :cond_92
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "cursor1":I
    .local v5, "cursor1":I
    aget-object v12, v11, v4

    aput-object v12, v1, v8

    .line 692
    add-int/lit8 v2, v2, 0x1

    .line 693
    const/4 v3, 0x0

    .line 694
    add-int/lit8 p2, p2, -0x1

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_a7

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 695
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto :goto_7b

    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_a7
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 697
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    :goto_a9
    or-int v12, v2, v3

    if-lt v12, v10, :cond_4d

    .line 705
    :goto_ad
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v12, :cond_be

    const/4 v12, 0x1

    move/from16 v0, p2

    if-le v0, v12, :cond_b8

    if-gtz p4, :cond_be

    :cond_b8
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 706
    :cond_be
    aget-object v12, v1, v6

    check-cast v12, Ljava/lang/Comparable;

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-static {v12, v11, v4, v0, v13}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    .line 707
    if-eqz v2, :cond_d7

    .line 708
    invoke-static {v11, v4, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    add-int/2addr v8, v2

    .line 710
    add-int/2addr v4, v2

    .line 711
    sub-int p2, p2, v2

    .line 712
    const/4 v12, 0x1

    move/from16 v0, p2

    if-le v0, v12, :cond_7b

    .line 715
    :cond_d7
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cursor2":I
    .restart local v7    # "cursor2":I
    aget-object v12, v1, v6

    aput-object v12, v1, v8

    .line 716
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_e6

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 717
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_7b

    .line 719
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_e6
    aget-object v12, v11, v4

    check-cast v12, Ljava/lang/Comparable;

    const/4 v13, 0x0

    move/from16 v0, p4

    invoke-static {v12, v1, v7, v0, v13}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v3

    .line 720
    if-eqz v3, :cond_168

    .line 721
    invoke-static {v1, v7, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 722
    add-int v8, v9, v3

    .line 723
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    add-int v6, v7, v3

    .line 724
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    sub-int p4, p4, v3

    .line 725
    if-eqz p4, :cond_7b

    .line 728
    :goto_fe
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "cursor1":I
    .restart local v5    # "cursor1":I
    aget-object v12, v11, v4

    aput-object v12, v1, v8

    .line 729
    add-int/lit8 p2, p2, -0x1

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_111

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 730
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_7b

    .line 731
    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_111
    add-int/lit8 v10, v10, -0x1

    .line 732
    const/4 v12, 0x7

    if-lt v2, v12, :cond_122

    const/4 v12, 0x1

    move v13, v12

    :goto_118
    const/4 v12, 0x7

    if-lt v3, v12, :cond_125

    const/4 v12, 0x1

    :goto_11c
    or-int/2addr v12, v13

    if-eqz v12, :cond_127

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto :goto_ad

    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_122
    const/4 v12, 0x0

    move v13, v12

    goto :goto_118

    :cond_125
    const/4 v12, 0x0

    goto :goto_11c

    .line 733
    :cond_127
    if-gez v10, :cond_12a

    .line 734
    const/4 v10, 0x0

    .line 735
    :cond_12a
    add-int/lit8 v10, v10, 0x2

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_4b

    .line 741
    .end local v10    # "minGallop":I
    :cond_130
    move/from16 v0, p4

    invoke-static {v1, v6, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    add-int v12, v8, p4

    aget-object v13, v11, v4

    aput-object v13, v1, v12

    .line 751
    :goto_13b
    return-void

    .line 743
    :cond_13c
    if-nez p2, :cond_147

    .line 744
    new-instance v12, Ljava/lang/IllegalArgumentException;

    .line 745
    const-string/jumbo v13, "Comparison method violates its general contract!"

    .line 744
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 747
    :cond_147
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v12, :cond_153

    if-eqz p4, :cond_153

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 748
    :cond_153
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v12, :cond_162

    const/4 v12, 0x1

    move/from16 v0, p2

    if-gt v0, v12, :cond_162

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 749
    :cond_162
    move/from16 v0, p2

    invoke-static {v11, v4, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13b

    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    .restart local v10    # "minGallop":I
    :cond_168
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_fe

    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_16b
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto/16 :goto_a9
.end method

.method private static minRunLength(I)I
    .registers 3
    .param p0, "n"    # I

    .prologue
    .line 366
    sget-boolean v1, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v1, :cond_c

    if-gez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 367
    :cond_c
    const/4 v0, 0x0

    .line 368
    .local v0, "r":I
    :goto_d
    const/16 v1, 0x20

    if-lt p0, v1, :cond_17

    .line 369
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 370
    shr-int/lit8 p0, p0, 0x1

    goto :goto_d

    .line 372
    :cond_17
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .registers 5
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    .prologue
    .line 382
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runBase:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p1, v0, v1

    .line 383
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runLen:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p2, v0, v1

    .line 384
    iget v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 385
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .registers 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 340
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    .end local p2    # "hi":I
    .local v0, "hi":I
    move v1, p1

    .line 341
    .end local p1    # "lo":I
    .local v1, "lo":I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 342
    aget-object v2, p0, v1

    .line 343
    .local v2, "t":Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "lo":I
    .restart local p1    # "lo":I
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 344
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "hi":I
    .restart local p2    # "hi":I
    aput-object v2, p0, v0

    move v0, p2

    .end local p2    # "hi":I
    .restart local v0    # "hi":I
    move v1, p1

    .end local p1    # "lo":I
    .restart local v1    # "lo":I
    goto :goto_4

    .line 346
    .end local v2    # "t":Ljava/lang/Object;
    :cond_15
    return-void
.end method

.method static sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V
    .registers 14
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "work"    # [Ljava/lang/Object;
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 180
    sget-boolean v6, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v6, :cond_13

    if-eqz p0, :cond_8

    if-gez p1, :cond_e

    :cond_8
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_e
    if-gt p1, p2, :cond_8

    array-length v6, p0

    if-gt p2, v6, :cond_8

    .line 182
    :cond_13
    sub-int v3, p2, p1

    .line 183
    .local v3, "nRemaining":I
    const/4 v6, 0x2

    if-ge v3, v6, :cond_19

    .line 184
    return-void

    .line 187
    :cond_19
    const/16 v6, 0x20

    if-ge v3, v6, :cond_27

    .line 188
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v1

    .line 189
    .local v1, "initRunLen":I
    add-int v6, p1, v1

    invoke-static {p0, p1, p2, v6}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 190
    return-void

    .line 198
    .end local v1    # "initRunLen":I
    :cond_27
    new-instance v5, Ljava/util/ComparableTimSort;

    invoke-direct {v5, p0, p3, p4, p5}, Ljava/util/ComparableTimSort;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    .line 199
    .local v5, "ts":Ljava/util/ComparableTimSort;
    invoke-static {v3}, Ljava/util/ComparableTimSort;->minRunLength(I)I

    move-result v2

    .line 202
    .local v2, "minRun":I
    :cond_30
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v4

    .line 205
    .local v4, "runLen":I
    if-ge v4, v2, :cond_41

    .line 206
    if-gt v3, v2, :cond_57

    move v0, v3

    .line 207
    .local v0, "force":I
    :goto_39
    add-int v6, p1, v0

    add-int v7, p1, v4

    invoke-static {p0, p1, v6, v7}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 208
    move v4, v0

    .line 212
    .end local v0    # "force":I
    :cond_41
    invoke-direct {v5, p1, v4}, Ljava/util/ComparableTimSort;->pushRun(II)V

    .line 213
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeCollapse()V

    .line 216
    add-int/2addr p1, v4

    .line 217
    sub-int/2addr v3, v4

    .line 218
    if-nez v3, :cond_30

    .line 221
    sget-boolean v6, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v6, :cond_59

    if-eq p1, p2, :cond_59

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 206
    :cond_57
    move v0, v2

    .restart local v0    # "force":I
    goto :goto_39

    .line 222
    .end local v0    # "force":I
    :cond_59
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeForceCollapse()V

    .line 223
    sget-boolean v6, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v6, :cond_6b

    iget v6, v5, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6b

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 224
    :cond_6b
    return-void
.end method
