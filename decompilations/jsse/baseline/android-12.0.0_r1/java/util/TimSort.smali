.class Ljava/util/TimSort;
.super Ljava/lang/Object;
.source "TimSort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final blacklist MIN_GALLOP:I = 0x7

.field private static final blacklist MIN_MERGE:I = 0x20


# instance fields
.field private final blacklist a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final blacklist c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private blacklist minGallop:I

.field private final blacklist runBase:[I

.field private final blacklist runLen:[I

.field private blacklist stackSize:I

.field private blacklist tmp:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private blacklist tmpBase:I

.field private blacklist tmpLen:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 62
    return-void
.end method

.method private constructor blacklist <init>([Ljava/lang/Object;Ljava/util/Comparator;[Ljava/lang/Object;II)V
    .registers 11
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;[TT;II)V"
        }
    .end annotation

    .line 146
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p3, "work":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x7

    iput v0, p0, Ljava/util/TimSort;->minGallop:I

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    .line 147
    iput-object p1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 148
    iput-object p2, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    .line 151
    array-length v1, p1

    .line 152
    .local v1, "len":I
    const/16 v2, 0x200

    if-ge v1, v2, :cond_15

    .line 153
    ushr-int/lit8 v2, v1, 0x1

    goto :goto_17

    :cond_15
    const/16 v2, 0x100

    .line 154
    .local v2, "tlen":I
    :goto_17
    if-eqz p3, :cond_28

    if-lt p5, v2, :cond_28

    add-int v3, p4, v2

    array-length v4, p3

    if-le v3, v4, :cond_21

    goto :goto_28

    .line 163
    :cond_21
    iput-object p3, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 164
    iput p4, p0, Ljava/util/TimSort;->tmpBase:I

    .line 165
    iput p5, p0, Ljava/util/TimSort;->tmpLen:I

    goto :goto_3e

    .line 156
    :cond_28
    :goto_28
    nop

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 158
    .local v3, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v3, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 159
    iput v0, p0, Ljava/util/TimSort;->tmpBase:I

    .line 160
    iput v2, p0, Ljava/util/TimSort;->tmpLen:I

    .line 161
    .end local v3    # "newArray":[Ljava/lang/Object;, "[TT;"
    nop

    .line 182
    :goto_3e
    const/16 v0, 0x78

    if-ge v1, v0, :cond_44

    const/4 v0, 0x5

    goto :goto_55

    .line 183
    :cond_44
    const/16 v0, 0x606

    if-ge v1, v0, :cond_4b

    const/16 v0, 0xa

    goto :goto_55

    .line 184
    :cond_4b
    const v0, 0x1d16f

    if-ge v1, v0, :cond_53

    const/16 v0, 0x18

    goto :goto_55

    :cond_53
    const/16 v0, 0x31

    :goto_55
    nop

    .line 185
    .local v0, "stackLen":I
    new-array v3, v0, [I

    iput-object v3, p0, Ljava/util/TimSort;->runBase:[I

    .line 186
    new-array v3, v0, [I

    iput-object v3, p0, Ljava/util/TimSort;->runLen:[I

    .line 187
    return-void
.end method

.method private static blacklist binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .registers 11
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 279
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    nop

    .line 280
    if-ne p3, p1, :cond_5

    .line 281
    add-int/lit8 p3, p3, 0x1

    .line 282
    :cond_5
    :goto_5
    if-ge p3, p2, :cond_3f

    .line 283
    aget-object v0, p0, p3

    .line 286
    .local v0, "pivot":Ljava/lang/Object;, "TT;"
    move v1, p1

    .line 287
    .local v1, "left":I
    move v2, p3

    .line 288
    .local v2, "right":I
    nop

    .line 294
    :goto_c
    if-ge v1, v2, :cond_1f

    .line 295
    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 296
    .local v3, "mid":I
    aget-object v4, p0, v3

    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1c

    .line 297
    move v2, v3

    goto :goto_1e

    .line 299
    :cond_1c
    add-int/lit8 v1, v3, 0x1

    .line 300
    .end local v3    # "mid":I
    :goto_1e
    goto :goto_c

    .line 301
    :cond_1f
    nop

    .line 310
    sub-int v3, p3, v1

    .line 312
    .local v3, "n":I
    packed-switch v3, :pswitch_data_40

    .line 316
    add-int/lit8 v4, v1, 0x1

    invoke-static {p0, v1, p0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3a

    .line 313
    :pswitch_2b
    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p0, v5

    aput-object v5, p0, v4

    .line 314
    :pswitch_33
    add-int/lit8 v4, v1, 0x1

    aget-object v5, p0, v1

    aput-object v5, p0, v4

    .line 315
    nop

    .line 318
    :goto_3a
    aput-object v0, p0, v1

    .line 282
    .end local v0    # "pivot":Ljava/lang/Object;, "TT;"
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "n":I
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 320
    :cond_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2b
    .end packed-switch
.end method

.method private static blacklist countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .registers 7
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 349
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    nop

    .line 350
    add-int/lit8 v0, p1, 0x1

    .line 351
    .local v0, "runHi":I
    if-ne v0, p2, :cond_7

    .line 352
    const/4 v1, 0x1

    return v1

    .line 355
    :cond_7
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v0, p0, v0

    aget-object v2, p0, p1

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_28

    .line 356
    :goto_13
    if-ge v1, p2, :cond_24

    aget-object v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_24

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 358
    :cond_24
    invoke-static {p0, p1, v1}, Ljava/util/TimSort;->reverseRange([Ljava/lang/Object;II)V

    goto :goto_39

    .line 360
    :cond_28
    :goto_28
    if-ge v1, p2, :cond_39

    aget-object v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_39

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 364
    :cond_39
    :goto_39
    sub-int v0, v1, p1

    return v0
.end method

.method private blacklist ensureCapacity(I)[Ljava/lang/Object;
    .registers 5
    .param p1, "minCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 917
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    iget v0, p0, Ljava/util/TimSort;->tmpLen:I

    if-ge v0, p1, :cond_3a

    .line 919
    move v0, p1

    .line 920
    .local v0, "newSize":I
    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 921
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 922
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 923
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 924
    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 925
    add-int/lit8 v0, v0, 0x1

    .line 927
    if-gez v0, :cond_1a

    .line 928
    move v0, p1

    goto :goto_23

    .line 930
    :cond_1a
    iget-object v1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    array-length v1, v1

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 933
    :goto_23
    iget-object v1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 934
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 935
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v1, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 936
    iput v0, p0, Ljava/util/TimSort;->tmpLen:I

    .line 937
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/TimSort;->tmpBase:I

    .line 939
    .end local v0    # "newSize":I
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_3a
    iget-object v0, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    return-object v0
.end method

.method private static blacklist gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .registers 10
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 539
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    nop

    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "lastOfs":I
    const/4 v1, 0x1

    .line 542
    .local v1, "ofs":I
    add-int v2, p2, p4

    aget-object v2, p1, v2

    invoke-interface {p5, p0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_2b

    .line 544
    sub-int v2, p3, p4

    .line 545
    .local v2, "maxOfs":I
    :cond_f
    :goto_f
    if-ge v1, v2, :cond_25

    add-int v3, p2, p4

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_25

    .line 546
    move v0, v1

    .line 547
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 548
    if-gtz v1, :cond_f

    .line 549
    move v1, v2

    goto :goto_f

    .line 551
    :cond_25
    if-le v1, v2, :cond_28

    .line 552
    move v1, v2

    .line 555
    :cond_28
    add-int/2addr v0, p4

    .line 556
    add-int/2addr v1, p4

    .line 557
    .end local v2    # "maxOfs":I
    goto :goto_4b

    .line 559
    :cond_2b
    add-int/lit8 v2, p4, 0x1

    .line 560
    .restart local v2    # "maxOfs":I
    :cond_2d
    :goto_2d
    if-ge v1, v2, :cond_43

    add-int v3, p2, p4

    sub-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_43

    .line 561
    move v0, v1

    .line 562
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 563
    if-gtz v1, :cond_2d

    .line 564
    move v1, v2

    goto :goto_2d

    .line 566
    :cond_43
    if-le v1, v2, :cond_46

    .line 567
    move v1, v2

    .line 570
    :cond_46
    move v3, v0

    .line 571
    .local v3, "tmp":I
    sub-int v0, p4, v1

    .line 572
    sub-int v1, p4, v3

    .line 574
    .end local v2    # "maxOfs":I
    .end local v3    # "tmp":I
    :goto_4b
    nop

    .line 581
    add-int/lit8 v0, v0, 0x1

    .line 582
    :goto_4e
    if-ge v0, v1, :cond_64

    .line 583
    sub-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    .line 585
    .local v2, "m":I
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_62

    .line 586
    add-int/lit8 v0, v2, 0x1

    goto :goto_63

    .line 588
    :cond_62
    move v1, v2

    .line 589
    .end local v2    # "m":I
    :goto_63
    goto :goto_4e

    .line 590
    :cond_64
    nop

    .line 591
    return v1
.end method

.method private static blacklist gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .registers 10
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 609
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    nop

    .line 611
    const/4 v0, 0x1

    .line 612
    .local v0, "ofs":I
    const/4 v1, 0x0

    .line 613
    .local v1, "lastOfs":I
    add-int v2, p2, p4

    aget-object v2, p1, v2

    invoke-interface {p5, p0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2e

    .line 615
    add-int/lit8 v2, p4, 0x1

    .line 616
    .local v2, "maxOfs":I
    :cond_f
    :goto_f
    if-ge v0, v2, :cond_25

    add-int v3, p2, p4

    sub-int/2addr v3, v0

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_25

    .line 617
    move v1, v0

    .line 618
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 619
    if-gtz v0, :cond_f

    .line 620
    move v0, v2

    goto :goto_f

    .line 622
    :cond_25
    if-le v0, v2, :cond_28

    .line 623
    move v0, v2

    .line 626
    :cond_28
    move v3, v1

    .line 627
    .local v3, "tmp":I
    sub-int v1, p4, v0

    .line 628
    sub-int v0, p4, v3

    .line 629
    .end local v2    # "maxOfs":I
    .end local v3    # "tmp":I
    goto :goto_4b

    .line 631
    :cond_2e
    sub-int v2, p3, p4

    .line 632
    .restart local v2    # "maxOfs":I
    :cond_30
    :goto_30
    if-ge v0, v2, :cond_46

    add-int v3, p2, p4

    add-int/2addr v3, v0

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_46

    .line 633
    move v1, v0

    .line 634
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 635
    if-gtz v0, :cond_30

    .line 636
    move v0, v2

    goto :goto_30

    .line 638
    :cond_46
    if-le v0, v2, :cond_49

    .line 639
    move v0, v2

    .line 642
    :cond_49
    add-int/2addr v1, p4

    .line 643
    add-int/2addr v0, p4

    .line 645
    .end local v2    # "maxOfs":I
    :goto_4b
    nop

    .line 652
    add-int/lit8 v1, v1, 0x1

    .line 653
    :goto_4e
    if-ge v1, v0, :cond_64

    .line 654
    sub-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    .line 656
    .local v2, "m":I
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_61

    .line 657
    move v0, v2

    goto :goto_63

    .line 659
    :cond_61
    add-int/lit8 v1, v2, 0x1

    .line 660
    .end local v2    # "m":I
    :goto_63
    goto :goto_4e

    .line 661
    :cond_64
    nop

    .line 662
    return v0
.end method

.method private blacklist mergeAt(I)V
    .registers 20
    .param p1, "i"    # I

    .line 469
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 470
    nop

    .line 471
    nop

    .line 473
    iget-object v2, v0, Ljava/util/TimSort;->runBase:[I

    aget v9, v2, v1

    .line 474
    .local v9, "base1":I
    iget-object v3, v0, Ljava/util/TimSort;->runLen:[I

    aget v10, v3, v1

    .line 475
    .local v10, "len1":I
    add-int/lit8 v4, v1, 0x1

    aget v15, v2, v4

    .line 476
    .local v15, "base2":I
    add-int/lit8 v4, v1, 0x1

    aget v17, v3, v4

    .line 477
    .local v17, "len2":I
    nop

    .line 478
    nop

    .line 485
    add-int v4, v10, v17

    aput v4, v3, v1

    .line 486
    iget v4, v0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v5, v4, -0x3

    if-ne v1, v5, :cond_32

    .line 487
    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v1, 0x2

    aget v6, v2, v6

    aput v6, v2, v5

    .line 488
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v5, v1, 0x2

    aget v5, v3, v5

    aput v5, v3, v2

    .line 490
    :cond_32
    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Ljava/util/TimSort;->stackSize:I

    .line 496
    iget-object v4, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    aget-object v3, v4, v15

    const/4 v7, 0x0

    iget-object v8, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    move v5, v9

    move v6, v10

    invoke-static/range {v3 .. v8}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    .line 497
    .local v2, "k":I
    nop

    .line 498
    add-int/2addr v9, v2

    .line 499
    sub-int/2addr v10, v2

    .line 500
    if-nez v10, :cond_49

    .line 501
    return-void

    .line 507
    :cond_49
    iget-object v12, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    add-int v3, v9, v10

    add-int/lit8 v3, v3, -0x1

    aget-object v11, v12, v3

    add-int/lit8 v3, v17, -0x1

    iget-object v4, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    move v13, v15

    move/from16 v14, v17

    move v5, v15

    .end local v15    # "base2":I
    .local v5, "base2":I
    move v15, v3

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v3

    .line 508
    .end local v17    # "len2":I
    .local v3, "len2":I
    nop

    .line 509
    if-nez v3, :cond_64

    .line 510
    return-void

    .line 513
    :cond_64
    if-gt v10, v3, :cond_6a

    .line 514
    invoke-direct {v0, v9, v10, v5, v3}, Ljava/util/TimSort;->mergeLo(IIII)V

    goto :goto_6d

    .line 516
    :cond_6a
    invoke-direct {v0, v9, v10, v5, v3}, Ljava/util/TimSort;->mergeHi(IIII)V

    .line 517
    :goto_6d
    return-void
.end method

.method private blacklist mergeCollapse()V
    .registers 6

    .line 434
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    :goto_0
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_36

    .line 435
    add-int/lit8 v0, v0, -0x2

    .line 436
    .local v0, "n":I
    if-lez v0, :cond_28

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    aget v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget v4, v1, v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_28

    .line 437
    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_24

    .line 438
    add-int/lit8 v0, v0, -0x1

    .line 439
    :cond_24
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_35

    .line 440
    :cond_28
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    aget v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-gt v2, v1, :cond_36

    .line 441
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    .line 445
    .end local v0    # "n":I
    :goto_35
    goto :goto_0

    .line 446
    :cond_36
    return-void
.end method

.method private blacklist mergeForceCollapse()V
    .registers 5

    .line 453
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    :goto_0
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1b

    .line 454
    add-int/lit8 v0, v0, -0x2

    .line 455
    .local v0, "n":I
    if-lez v0, :cond_17

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_17

    .line 456
    add-int/lit8 v0, v0, -0x1

    .line 457
    :cond_17
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    .line 458
    .end local v0    # "n":I
    goto :goto_0

    .line 459
    :cond_1b
    return-void
.end method

.method private blacklist mergeHi(IIII)V
    .registers 28
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .line 798
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 801
    iget-object v8, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 802
    .local v8, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {v0, v2}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v9

    .line 803
    .local v9, "tmp":[Ljava/lang/Object;, "[TT;"
    iget v10, v0, Ljava/util/TimSort;->tmpBase:I

    .line 804
    .local v10, "tmpBase":I
    invoke-static {v8, v1, v9, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 806
    add-int v3, p1, p2

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    .line 807
    .local v3, "cursor1":I
    add-int v4, v10, v2

    sub-int/2addr v4, v11

    .line 808
    .local v4, "cursor2":I
    add-int v5, v1, v2

    sub-int/2addr v5, v11

    .line 811
    .local v5, "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "dest":I
    .local v6, "dest":I
    add-int/lit8 v7, v3, -0x1

    .end local v3    # "cursor1":I
    .local v7, "cursor1":I
    aget-object v3, v8, v3

    aput-object v3, v8, v5

    .line 812
    add-int/lit8 v3, p2, -0x1

    .end local p2    # "len1":I
    .local v3, "len1":I
    if-nez v3, :cond_2f

    .line 813
    add-int/lit8 v5, v2, -0x1

    sub-int v5, v6, v5

    invoke-static {v9, v10, v8, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    return-void

    .line 816
    :cond_2f
    if-ne v2, v11, :cond_3f

    .line 817
    sub-int/2addr v6, v3

    .line 818
    sub-int/2addr v7, v3

    .line 819
    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v11, v6, 0x1

    invoke-static {v8, v5, v8, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    aget-object v5, v9, v4

    aput-object v5, v8, v6

    .line 821
    return-void

    .line 824
    :cond_3f
    iget-object v12, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    .line 825
    .local v12, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget v5, v0, Ljava/util/TimSort;->minGallop:I

    .line 828
    .end local p4    # "len2":I
    .local v2, "len2":I
    .local v5, "minGallop":I
    :goto_43
    const/4 v13, 0x0

    .line 829
    .local v13, "count1":I
    const/4 v14, 0x0

    .line 836
    .local v14, "count2":I
    :goto_45
    nop

    .line 837
    aget-object v15, v9, v4

    aget-object v11, v8, v7

    invoke-interface {v12, v15, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    if-gez v11, :cond_66

    .line 838
    add-int/lit8 v11, v6, -0x1

    .end local v6    # "dest":I
    .local v11, "dest":I
    add-int/lit8 v15, v7, -0x1

    .end local v7    # "cursor1":I
    .local v15, "cursor1":I
    aget-object v7, v8, v7

    aput-object v7, v8, v6

    .line 839
    add-int/lit8 v13, v13, 0x1

    .line 840
    const/4 v6, 0x0

    .line 841
    .end local v14    # "count2":I
    .local v6, "count2":I
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_62

    .line 842
    move v7, v15

    goto/16 :goto_114

    .line 841
    :cond_62
    move v14, v6

    move v6, v11

    move v7, v15

    goto :goto_7c

    .line 844
    .end local v11    # "dest":I
    .end local v15    # "cursor1":I
    .local v6, "dest":I
    .restart local v7    # "cursor1":I
    .restart local v14    # "count2":I
    :cond_66
    add-int/lit8 v11, v6, -0x1

    .end local v6    # "dest":I
    .restart local v11    # "dest":I
    add-int/lit8 v15, v4, -0x1

    .end local v4    # "cursor2":I
    .local v15, "cursor2":I
    aget-object v4, v9, v4

    aput-object v4, v8, v6

    .line 845
    add-int/lit8 v14, v14, 0x1

    .line 846
    const/4 v4, 0x0

    .line 847
    .end local v13    # "count1":I
    .local v4, "count1":I
    add-int/lit8 v2, v2, -0x1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_79

    .line 848
    move v4, v15

    goto/16 :goto_114

    .line 847
    :cond_79
    move v13, v4

    move v6, v11

    move v4, v15

    .line 850
    .end local v11    # "dest":I
    .end local v15    # "cursor2":I
    .local v4, "cursor2":I
    .restart local v6    # "dest":I
    .restart local v13    # "count1":I
    :goto_7c
    or-int v11, v13, v14

    if-lt v11, v5, :cond_16b

    move v11, v2

    move v15, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v13

    move/from16 v20, v14

    move v13, v3

    move v14, v4

    .line 858
    .end local v2    # "len2":I
    .end local v3    # "len1":I
    .end local v4    # "cursor2":I
    .end local v5    # "minGallop":I
    .end local v6    # "dest":I
    .end local v7    # "cursor1":I
    .local v11, "len2":I
    .local v13, "len1":I
    .local v14, "cursor2":I
    .local v15, "minGallop":I
    .local v17, "dest":I
    .local v18, "cursor1":I
    .local v19, "count1":I
    .local v20, "count2":I
    :goto_8c
    nop

    .line 859
    aget-object v2, v9, v14

    add-int/lit8 v6, v13, -0x1

    move-object v3, v8

    move/from16 v4, p1

    move v5, v13

    move-object v7, v12

    invoke-static/range {v2 .. v7}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v7, v13, v2

    .line 860
    .end local v19    # "count1":I
    .local v7, "count1":I
    if-eqz v7, :cond_bd

    .line 861
    sub-int v2, v17, v7

    .line 862
    .end local v17    # "dest":I
    .local v2, "dest":I
    sub-int v3, v18, v7

    .line 863
    .end local v18    # "cursor1":I
    .local v3, "cursor1":I
    sub-int v4, v13, v7

    .line 864
    .end local v13    # "len1":I
    .local v4, "len1":I
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-static {v8, v5, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    if-nez v4, :cond_b8

    .line 866
    move v7, v3

    move v3, v4

    move v4, v14

    move v5, v15

    move/from16 v22, v11

    move v11, v2

    move/from16 v2, v22

    goto/16 :goto_114

    .line 865
    :cond_b8
    move/from16 v17, v2

    move/from16 v18, v3

    move v13, v4

    .line 868
    .end local v2    # "dest":I
    .end local v3    # "cursor1":I
    .end local v4    # "len1":I
    .restart local v13    # "len1":I
    .restart local v17    # "dest":I
    .restart local v18    # "cursor1":I
    :cond_bd
    add-int/lit8 v19, v17, -0x1

    .end local v17    # "dest":I
    .local v19, "dest":I
    add-int/lit8 v21, v14, -0x1

    .end local v14    # "cursor2":I
    .local v21, "cursor2":I
    aget-object v2, v9, v14

    aput-object v2, v8, v17

    .line 869
    add-int/lit8 v11, v11, -0x1

    const/4 v2, 0x1

    if-ne v11, v2, :cond_d4

    .line 870
    move v2, v11

    move v3, v13

    move v5, v15

    move/from16 v7, v18

    move/from16 v11, v19

    move/from16 v4, v21

    goto :goto_114

    .line 872
    :cond_d4
    aget-object v2, v8, v18

    add-int/lit8 v6, v11, -0x1

    move-object v3, v9

    move v4, v10

    move v5, v11

    move v14, v7

    .end local v7    # "count1":I
    .local v14, "count1":I
    move-object v7, v12

    invoke-static/range {v2 .. v7}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v2, v11, v2

    .line 873
    .end local v20    # "count2":I
    .local v2, "count2":I
    if-eqz v2, :cond_100

    .line 874
    sub-int v3, v19, v2

    .line 875
    .end local v19    # "dest":I
    .local v3, "dest":I
    sub-int v4, v21, v2

    .line 876
    .end local v21    # "cursor2":I
    .local v4, "cursor2":I
    sub-int v5, v11, v2

    .line 877
    .end local v11    # "len2":I
    .local v5, "len2":I
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v3, 0x1

    invoke-static {v9, v6, v8, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    const/4 v6, 0x1

    if-gt v5, v6, :cond_fc

    .line 879
    move v11, v3

    move v2, v5

    move v3, v13

    move v5, v15

    move/from16 v7, v18

    goto :goto_114

    .line 878
    :cond_fc
    move/from16 v19, v3

    move v11, v5

    goto :goto_102

    .line 873
    .end local v3    # "dest":I
    .end local v4    # "cursor2":I
    .end local v5    # "len2":I
    .restart local v11    # "len2":I
    .restart local v19    # "dest":I
    .restart local v21    # "cursor2":I
    :cond_100
    move/from16 v4, v21

    .line 881
    .end local v21    # "cursor2":I
    .restart local v4    # "cursor2":I
    :goto_102
    add-int/lit8 v17, v19, -0x1

    .end local v19    # "dest":I
    .restart local v17    # "dest":I
    add-int/lit8 v3, v18, -0x1

    .end local v18    # "cursor1":I
    .local v3, "cursor1":I
    aget-object v5, v8, v18

    aput-object v5, v8, v19

    .line 882
    add-int/lit8 v13, v13, -0x1

    if-nez v13, :cond_141

    .line 883
    move v7, v3

    move v2, v11

    move v3, v13

    move v5, v15

    move/from16 v11, v17

    .line 890
    .end local v13    # "len1":I
    .end local v14    # "count1":I
    .end local v15    # "minGallop":I
    .end local v17    # "dest":I
    .local v2, "len2":I
    .local v3, "len1":I
    .local v5, "minGallop":I
    .local v7, "cursor1":I
    .local v11, "dest":I
    :goto_114
    const/4 v6, 0x1

    if-ge v5, v6, :cond_119

    move v13, v6

    goto :goto_11a

    :cond_119
    move v13, v5

    :goto_11a
    iput v13, v0, Ljava/util/TimSort;->minGallop:I

    .line 892
    if-ne v2, v6, :cond_12d

    .line 893
    nop

    .line 894
    sub-int/2addr v11, v3

    .line 895
    sub-int/2addr v7, v3

    .line 896
    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v13, v11, 0x1

    invoke-static {v8, v6, v8, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 897
    aget-object v6, v9, v4

    aput-object v6, v8, v11

    goto :goto_138

    .line 898
    :cond_12d
    if-eqz v2, :cond_139

    .line 902
    nop

    .line 903
    nop

    .line 904
    add-int/lit8 v6, v2, -0x1

    sub-int v6, v11, v6

    invoke-static {v9, v10, v8, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 906
    :goto_138
    return-void

    .line 899
    :cond_139
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v13, "Comparison method violates its general contract!"

    invoke-direct {v6, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 884
    .end local v5    # "minGallop":I
    .end local v7    # "cursor1":I
    .local v2, "count2":I
    .local v3, "cursor1":I
    .local v11, "len2":I
    .restart local v13    # "len1":I
    .restart local v14    # "count1":I
    .restart local v15    # "minGallop":I
    .restart local v17    # "dest":I
    :cond_141
    const/4 v6, 0x1

    add-int/lit8 v15, v15, -0x1

    .line 885
    const/4 v5, 0x0

    const/4 v7, 0x7

    if-lt v14, v7, :cond_14b

    move/from16 v16, v6

    goto :goto_14d

    :cond_14b
    move/from16 v16, v5

    :goto_14d
    if-lt v2, v7, :cond_150

    move v5, v6

    :cond_150
    or-int v5, v16, v5

    if-nez v5, :cond_162

    .line 886
    if-gez v15, :cond_157

    .line 887
    const/4 v15, 0x0

    .line 888
    :cond_157
    nop

    .end local v2    # "count2":I
    .end local v14    # "count1":I
    add-int/lit8 v5, v15, 0x2

    .line 889
    .end local v15    # "minGallop":I
    .restart local v5    # "minGallop":I
    move v7, v3

    move v2, v11

    move v3, v13

    move v11, v6

    move/from16 v6, v17

    goto/16 :goto_43

    .line 885
    .end local v5    # "minGallop":I
    .restart local v2    # "count2":I
    .restart local v14    # "count1":I
    .restart local v15    # "minGallop":I
    :cond_162
    move/from16 v20, v2

    move/from16 v18, v3

    move/from16 v19, v14

    move v14, v4

    goto/16 :goto_8c

    .line 850
    .end local v11    # "len2":I
    .end local v15    # "minGallop":I
    .end local v17    # "dest":I
    .local v2, "len2":I
    .local v3, "len1":I
    .restart local v5    # "minGallop":I
    .restart local v6    # "dest":I
    .restart local v7    # "cursor1":I
    .local v13, "count1":I
    .local v14, "count2":I
    :cond_16b
    const/4 v11, 0x1

    goto/16 :goto_45
.end method

.method private blacklist mergeLo(IIII)V
    .registers 26
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .line 682
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 685
    iget-object v7, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 686
    .local v7, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v8

    .line 687
    .local v8, "tmp":[Ljava/lang/Object;, "[TT;"
    iget v2, v0, Ljava/util/TimSort;->tmpBase:I

    .line 688
    .local v2, "cursor1":I
    move/from16 v3, p3

    .line 689
    .local v3, "cursor2":I
    move/from16 v4, p1

    .line 690
    .local v4, "dest":I
    move/from16 v9, p1

    invoke-static {v7, v9, v8, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 693
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dest":I
    .local v5, "dest":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "cursor2":I
    .local v6, "cursor2":I
    aget-object v3, v7, v3

    aput-object v3, v7, v4

    .line 694
    add-int/lit8 v3, p4, -0x1

    .end local p4    # "len2":I
    .local v3, "len2":I
    if-nez v3, :cond_25

    .line 695
    invoke-static {v8, v2, v7, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    return-void

    .line 698
    :cond_25
    const/4 v10, 0x1

    if-ne v1, v10, :cond_32

    .line 699
    invoke-static {v7, v6, v7, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    add-int v4, v5, v3

    aget-object v10, v8, v2

    aput-object v10, v7, v4

    .line 701
    return-void

    .line 704
    :cond_32
    iget-object v11, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    .line 705
    .local v11, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget v4, v0, Ljava/util/TimSort;->minGallop:I

    .line 708
    .end local p2    # "len1":I
    .local v1, "len1":I
    .local v4, "minGallop":I
    :goto_36
    const/4 v12, 0x0

    .line 709
    .local v12, "count1":I
    const/4 v13, 0x0

    .line 716
    .local v13, "count2":I
    :goto_38
    nop

    .line 717
    aget-object v14, v7, v6

    aget-object v15, v8, v2

    invoke-interface {v11, v14, v15}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_5a

    .line 718
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "dest":I
    .local v14, "dest":I
    add-int/lit8 v15, v6, 0x1

    .end local v6    # "cursor2":I
    .local v15, "cursor2":I
    aget-object v6, v7, v6

    aput-object v6, v7, v5

    .line 719
    add-int/lit8 v13, v13, 0x1

    .line 720
    const/4 v5, 0x0

    .line 721
    .end local v12    # "count1":I
    .local v5, "count1":I
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_56

    .line 722
    move v9, v10

    move v6, v15

    goto/16 :goto_fc

    .line 721
    :cond_56
    move v12, v5

    move v5, v14

    move v6, v15

    goto :goto_70

    .line 724
    .end local v14    # "dest":I
    .end local v15    # "cursor2":I
    .local v5, "dest":I
    .restart local v6    # "cursor2":I
    .restart local v12    # "count1":I
    :cond_5a
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "dest":I
    .restart local v14    # "dest":I
    add-int/lit8 v15, v2, 0x1

    .end local v2    # "cursor1":I
    .local v15, "cursor1":I
    aget-object v2, v8, v2

    aput-object v2, v7, v5

    .line 725
    add-int/lit8 v12, v12, 0x1

    .line 726
    const/4 v2, 0x0

    .line 727
    .end local v13    # "count2":I
    .local v2, "count2":I
    add-int/lit8 v1, v1, -0x1

    if-ne v1, v10, :cond_6d

    .line 728
    move v9, v10

    move v2, v15

    goto/16 :goto_fc

    .line 727
    :cond_6d
    move v13, v2

    move v5, v14

    move v2, v15

    .line 730
    .end local v14    # "dest":I
    .end local v15    # "cursor1":I
    .local v2, "cursor1":I
    .restart local v5    # "dest":I
    .restart local v13    # "count2":I
    :goto_70
    or-int v14, v12, v13

    if-lt v14, v4, :cond_14c

    move v14, v3

    move v15, v4

    move/from16 v16, v6

    move/from16 v17, v12

    move/from16 v18, v13

    move v12, v1

    move v13, v2

    move v6, v5

    .line 738
    .end local v1    # "len1":I
    .end local v2    # "cursor1":I
    .end local v3    # "len2":I
    .end local v4    # "minGallop":I
    .end local v5    # "dest":I
    .local v6, "dest":I
    .local v12, "len1":I
    .local v13, "cursor1":I
    .local v14, "len2":I
    .local v15, "minGallop":I
    .local v16, "cursor2":I
    .local v17, "count1":I
    .local v18, "count2":I
    :goto_7f
    nop

    .line 739
    aget-object v1, v7, v16

    const/4 v5, 0x0

    move-object v2, v8

    move v3, v13

    move v4, v12

    move v10, v6

    .end local v6    # "dest":I
    .local v10, "dest":I
    move-object v6, v11

    invoke-static/range {v1 .. v6}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v6

    .line 740
    .end local v17    # "count1":I
    .local v6, "count1":I
    if-eqz v6, :cond_a9

    .line 741
    invoke-static {v8, v13, v7, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    add-int v1, v10, v6

    .line 743
    .end local v10    # "dest":I
    .local v1, "dest":I
    add-int v2, v13, v6

    .line 744
    .end local v13    # "cursor1":I
    .restart local v2    # "cursor1":I
    sub-int v3, v12, v6

    .line 745
    .end local v12    # "len1":I
    .local v3, "len1":I
    const/4 v4, 0x1

    if-gt v3, v4, :cond_a6

    .line 746
    move v4, v15

    move/from16 v6, v16

    const/4 v9, 0x1

    move/from16 v20, v14

    move v14, v1

    move v1, v3

    move/from16 v3, v20

    goto/16 :goto_fc

    .line 745
    :cond_a6
    move v13, v2

    move v12, v3

    goto :goto_aa

    .line 740
    .end local v1    # "dest":I
    .end local v2    # "cursor1":I
    .end local v3    # "len1":I
    .restart local v10    # "dest":I
    .restart local v12    # "len1":I
    .restart local v13    # "cursor1":I
    :cond_a9
    move v1, v10

    .line 748
    .end local v10    # "dest":I
    .restart local v1    # "dest":I
    :goto_aa
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "cursor2":I
    .local v5, "cursor2":I
    aget-object v2, v7, v16

    aput-object v2, v7, v1

    .line 749
    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_be

    .line 750
    move v6, v5

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    const/4 v9, 0x1

    move v14, v10

    goto :goto_fc

    .line 752
    :cond_be
    aget-object v1, v8, v13

    const/16 v16, 0x0

    move-object v2, v7

    move v3, v5

    move v4, v14

    move v9, v5

    .end local v5    # "cursor2":I
    .local v9, "cursor2":I
    move/from16 v5, v16

    move/from16 v19, v6

    .end local v6    # "count1":I
    .local v19, "count1":I
    move-object v6, v11

    invoke-static/range {v1 .. v6}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    .line 753
    .end local v18    # "count2":I
    .local v1, "count2":I
    if-eqz v1, :cond_e7

    .line 754
    invoke-static {v7, v9, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    add-int v2, v10, v1

    .line 756
    .end local v10    # "dest":I
    .local v2, "dest":I
    add-int v6, v9, v1

    .line 757
    .end local v9    # "cursor2":I
    .local v6, "cursor2":I
    sub-int v3, v14, v1

    .line 758
    .end local v14    # "len2":I
    .local v3, "len2":I
    if-nez v3, :cond_e2

    .line 759
    move v14, v2

    move v1, v12

    move v2, v13

    move v4, v15

    const/4 v9, 0x1

    goto :goto_fc

    .line 758
    :cond_e2
    move v10, v2

    move v14, v3

    move/from16 v16, v6

    goto :goto_e9

    .line 753
    .end local v2    # "dest":I
    .end local v3    # "len2":I
    .end local v6    # "cursor2":I
    .restart local v9    # "cursor2":I
    .restart local v10    # "dest":I
    .restart local v14    # "len2":I
    :cond_e7
    move/from16 v16, v9

    .line 761
    .end local v9    # "cursor2":I
    .restart local v16    # "cursor2":I
    :goto_e9
    add-int/lit8 v6, v10, 0x1

    .end local v10    # "dest":I
    .local v6, "dest":I
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "cursor1":I
    .local v2, "cursor1":I
    aget-object v3, v8, v13

    aput-object v3, v7, v10

    .line 762
    add-int/lit8 v12, v12, -0x1

    const/4 v9, 0x1

    if-ne v12, v9, :cond_120

    .line 763
    move v1, v12

    move v3, v14

    move v4, v15

    move v14, v6

    move/from16 v6, v16

    .line 770
    .end local v12    # "len1":I
    .end local v15    # "minGallop":I
    .end local v16    # "cursor2":I
    .end local v19    # "count1":I
    .local v1, "len1":I
    .restart local v3    # "len2":I
    .restart local v4    # "minGallop":I
    .local v6, "cursor2":I
    .local v14, "dest":I
    :goto_fc
    if-ge v4, v9, :cond_100

    move v5, v9

    goto :goto_101

    :cond_100
    move v5, v4

    :goto_101
    iput v5, v0, Ljava/util/TimSort;->minGallop:I

    .line 772
    if-ne v1, v9, :cond_110

    .line 773
    nop

    .line 774
    invoke-static {v7, v6, v7, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 775
    add-int v5, v14, v3

    aget-object v9, v8, v2

    aput-object v9, v7, v5

    goto :goto_117

    .line 776
    :cond_110
    if-eqz v1, :cond_118

    .line 780
    nop

    .line 781
    nop

    .line 782
    invoke-static {v8, v2, v7, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    :goto_117
    return-void

    .line 777
    :cond_118
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v9, "Comparison method violates its general contract!"

    invoke-direct {v5, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 764
    .end local v3    # "len2":I
    .end local v4    # "minGallop":I
    .local v1, "count2":I
    .local v6, "dest":I
    .restart local v12    # "len1":I
    .local v14, "len2":I
    .restart local v15    # "minGallop":I
    .restart local v16    # "cursor2":I
    .restart local v19    # "count1":I
    :cond_120
    add-int/lit8 v15, v15, -0x1

    .line 765
    const/4 v4, 0x0

    const/4 v3, 0x7

    move/from16 v5, v19

    .end local v19    # "count1":I
    .local v5, "count1":I
    if-lt v5, v3, :cond_12a

    move v10, v9

    goto :goto_12b

    :cond_12a
    move v10, v4

    :goto_12b
    if-lt v1, v3, :cond_12e

    move v4, v9

    :cond_12e
    or-int v3, v10, v4

    if-nez v3, :cond_142

    .line 766
    if-gez v15, :cond_135

    .line 767
    const/4 v15, 0x0

    .line 768
    :cond_135
    nop

    .end local v1    # "count2":I
    .end local v5    # "count1":I
    add-int/lit8 v4, v15, 0x2

    .line 769
    .end local v15    # "minGallop":I
    .restart local v4    # "minGallop":I
    move v5, v6

    move v10, v9

    move v1, v12

    move v3, v14

    move/from16 v6, v16

    move/from16 v9, p1

    goto/16 :goto_36

    .line 765
    .end local v4    # "minGallop":I
    .restart local v1    # "count2":I
    .restart local v5    # "count1":I
    .restart local v15    # "minGallop":I
    :cond_142
    move/from16 v18, v1

    move v13, v2

    move/from16 v17, v5

    move v10, v9

    move/from16 v9, p1

    goto/16 :goto_7f

    .line 730
    .end local v14    # "len2":I
    .end local v15    # "minGallop":I
    .end local v16    # "cursor2":I
    .local v1, "len1":I
    .restart local v3    # "len2":I
    .restart local v4    # "minGallop":I
    .local v5, "dest":I
    .local v6, "cursor2":I
    .local v12, "count1":I
    .local v13, "count2":I
    :cond_14c
    move v9, v10

    move/from16 v9, p1

    goto/16 :goto_38
.end method

.method private static blacklist minRunLength(I)I
    .registers 3
    .param p0, "n"    # I

    .line 401
    nop

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "r":I
    :goto_2
    const/16 v1, 0x20

    if-lt p0, v1, :cond_c

    .line 404
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 405
    shr-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 407
    :cond_c
    add-int v1, p0, v0

    return v1
.end method

.method private blacklist pushRun(II)V
    .registers 5
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    .line 417
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    aput p1, v0, v1

    .line 418
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    aput p2, v0, v1

    .line 419
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/TimSort;->stackSize:I

    .line 420
    return-void
.end method

.method private static blacklist reverseRange([Ljava/lang/Object;II)V
    .registers 6
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .line 375
    add-int/lit8 p2, p2, -0x1

    .line 376
    :goto_2
    if-ge p1, p2, :cond_13

    .line 377
    aget-object v0, p0, p1

    .line 378
    .local v0, "t":Ljava/lang/Object;
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "lo":I
    .local v1, "lo":I
    aget-object v2, p0, p2

    aput-object v2, p0, p1

    .line 379
    add-int/lit8 p1, p2, -0x1

    .end local p2    # "hi":I
    .local p1, "hi":I
    aput-object v0, p0, p2

    .line 380
    .end local v0    # "t":Ljava/lang/Object;
    move p2, p1

    move p1, v1

    goto :goto_2

    .line 381
    .end local v1    # "lo":I
    .local p1, "lo":I
    .restart local p2    # "hi":I
    :cond_13
    return-void
.end method

.method static blacklist sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V
    .registers 16
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p5, "workBase"    # I
    .param p6, "workLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;[TT;II)V"
        }
    .end annotation

    .line 212
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p4, "work":[Ljava/lang/Object;, "[TT;"
    nop

    .line 214
    sub-int v0, p2, p1

    .line 215
    .local v0, "nRemaining":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    .line 216
    return-void

    .line 219
    :cond_7
    const/16 v1, 0x20

    if-ge v0, v1, :cond_15

    .line 220
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v1

    .line 221
    .local v1, "initRunLen":I
    add-int v2, p1, v1

    invoke-static {p0, p1, p2, v2, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 222
    return-void

    .line 230
    .end local v1    # "initRunLen":I
    :cond_15
    new-instance v1, Ljava/util/TimSort;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v3 .. v8}, Ljava/util/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;[Ljava/lang/Object;II)V

    .line 231
    .local v1, "ts":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    invoke-static {v0}, Ljava/util/TimSort;->minRunLength(I)I

    move-result v2

    .line 234
    .local v2, "minRun":I
    :goto_24
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v3

    .line 237
    .local v3, "runLen":I
    if-ge v3, v2, :cond_37

    .line 238
    if-gt v0, v2, :cond_2e

    move v4, v0

    goto :goto_2f

    :cond_2e
    move v4, v2

    .line 239
    .local v4, "force":I
    :goto_2f
    add-int v5, p1, v4

    add-int v6, p1, v3

    invoke-static {p0, p1, v5, v6, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 240
    move v3, v4

    .line 244
    .end local v4    # "force":I
    :cond_37
    invoke-direct {v1, p1, v3}, Ljava/util/TimSort;->pushRun(II)V

    .line 245
    invoke-direct {v1}, Ljava/util/TimSort;->mergeCollapse()V

    .line 248
    add-int/2addr p1, v3

    .line 249
    sub-int/2addr v0, v3

    .line 250
    .end local v3    # "runLen":I
    if-nez v0, :cond_47

    .line 253
    nop

    .line 254
    invoke-direct {v1}, Ljava/util/TimSort;->mergeForceCollapse()V

    .line 255
    nop

    .line 256
    return-void

    .line 250
    :cond_47
    goto :goto_24
.end method
