.class final Ljava/util/DualPivotQuicksort;
.super Ljava/lang/Object;
.source "DualPivotQuicksort.java"


# static fields
.field private static final blacklist COUNTING_SORT_THRESHOLD_FOR_BYTE:I = 0x1d

.field private static final blacklist COUNTING_SORT_THRESHOLD_FOR_SHORT_OR_CHAR:I = 0xc80

.field private static final blacklist INSERTION_SORT_THRESHOLD:I = 0x2f

.field private static final blacklist MAX_RUN_COUNT:I = 0x43

.field private static final blacklist MAX_RUN_LENGTH:I = 0x21

.field private static final blacklist NUM_BYTE_VALUES:I = 0x100

.field private static final blacklist NUM_CHAR_VALUES:I = 0x10000

.field private static final blacklist NUM_SHORT_VALUES:I = 0x10000

.field private static final blacklist QUICKSORT_THRESHOLD:I = 0x11e


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist doSort([CII[CII)V
    .registers 26
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [C
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .line 1526
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    sub-int v4, v2, v1

    const/4 v5, 0x1

    const/16 v6, 0x11e

    if-ge v4, v6, :cond_13

    .line 1527
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1528
    return-void

    .line 1535
    :cond_13
    const/16 v4, 0x44

    new-array v4, v4, [I

    .line 1536
    .local v4, "run":[I
    const/4 v6, 0x0

    .local v6, "count":I
    const/4 v7, 0x0

    aput v1, v4, v7

    .line 1539
    move/from16 v8, p1

    .local v8, "k":I
    :goto_1d
    if-ge v8, v2, :cond_7c

    .line 1540
    aget-char v9, v0, v8

    add-int/lit8 v10, v8, 0x1

    aget-char v10, v0, v10

    if-ge v9, v10, :cond_33

    .line 1541
    :goto_27
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_6f

    add-int/lit8 v9, v8, -0x1

    aget-char v9, v0, v9

    aget-char v10, v0, v8

    if-gt v9, v10, :cond_6f

    goto :goto_27

    .line 1542
    :cond_33
    aget-char v9, v0, v8

    add-int/lit8 v10, v8, 0x1

    aget-char v10, v0, v10

    if-le v9, v10, :cond_5a

    .line 1543
    :goto_3b
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_47

    add-int/lit8 v9, v8, -0x1

    aget-char v9, v0, v9

    aget-char v10, v0, v8

    if-lt v9, v10, :cond_47

    goto :goto_3b

    .line 1544
    :cond_47
    aget v9, v4, v6

    sub-int/2addr v9, v5

    .local v9, "lo":I
    move v10, v8

    .local v10, "hi":I
    :goto_4b
    add-int/2addr v9, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_59

    .line 1545
    aget-char v11, v0, v9

    .local v11, "t":C
    aget-char v12, v0, v10

    aput-char v12, v0, v9

    aput-char v11, v0, v10

    .line 1546
    .end local v11    # "t":C
    goto :goto_4b

    .end local v9    # "lo":I
    .end local v10    # "hi":I
    :cond_59
    goto :goto_6f

    .line 1548
    :cond_5a
    const/16 v9, 0x21

    .local v9, "m":I
    :cond_5c
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_6f

    add-int/lit8 v10, v8, -0x1

    aget-char v10, v0, v10

    aget-char v11, v0, v8

    if-ne v10, v11, :cond_6f

    .line 1549
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_5c

    .line 1550
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1551
    return-void

    .line 1560
    .end local v9    # "m":I
    :cond_6f
    :goto_6f
    add-int/lit8 v6, v6, 0x1

    const/16 v9, 0x43

    if-ne v6, v9, :cond_79

    .line 1561
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1562
    return-void

    .line 1539
    :cond_79
    aput v8, v4, v6

    goto :goto_1d

    .line 1568
    .end local v8    # "k":I
    :cond_7c
    aget v8, v4, v6

    add-int/lit8 v9, v2, 0x1

    .end local p2    # "right":I
    .local v9, "right":I
    if-ne v8, v2, :cond_87

    .line 1569
    add-int/lit8 v6, v6, 0x1

    aput v9, v4, v6

    goto :goto_8a

    .line 1570
    :cond_87
    if-ne v6, v5, :cond_8a

    .line 1571
    return-void

    .line 1575
    :cond_8a
    :goto_8a
    const/4 v2, 0x0

    .line 1576
    .local v2, "odd":B
    const/4 v8, 0x1

    .local v8, "n":I
    :goto_8c
    shl-int/lit8 v10, v8, 0x1

    move v8, v10

    if-ge v10, v6, :cond_95

    xor-int/lit8 v10, v2, 0x1

    int-to-byte v2, v10

    goto :goto_8c

    .line 1581
    .end local v8    # "n":I
    :cond_95
    sub-int v8, v9, v1

    .line 1582
    .local v8, "blen":I
    if-eqz v3, :cond_a6

    move/from16 v10, p5

    if-lt v10, v8, :cond_a8

    add-int v11, p4, v8

    array-length v12, v3

    if-le v11, v12, :cond_a3

    goto :goto_a8

    :cond_a3
    move/from16 v11, p4

    goto :goto_ab

    :cond_a6
    move/from16 v10, p5

    .line 1583
    :cond_a8
    :goto_a8
    new-array v3, v8, [C

    .line 1584
    .end local p3    # "work":[C
    .local v3, "work":[C
    const/4 v11, 0x0

    .line 1586
    .end local p4    # "workBase":I
    .local v11, "workBase":I
    :goto_ab
    if-nez v2, :cond_b7

    .line 1587
    invoke-static {v0, v1, v3, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1588
    move-object/from16 v12, p0

    .line 1589
    .local v12, "b":[C
    const/4 v13, 0x0

    .line 1590
    .local v13, "bo":I
    move-object v0, v3

    .line 1591
    .end local p0    # "a":[C
    .local v0, "a":[C
    sub-int v14, v11, v1

    .local v14, "ao":I
    goto :goto_bb

    .line 1593
    .end local v0    # "a":[C
    .end local v12    # "b":[C
    .end local v13    # "bo":I
    .end local v14    # "ao":I
    .restart local p0    # "a":[C
    :cond_b7
    move-object v12, v3

    .line 1594
    .restart local v12    # "b":[C
    const/4 v14, 0x0

    .line 1595
    .restart local v14    # "ao":I
    sub-int v13, v11, v1

    .line 1599
    .end local p0    # "a":[C
    .restart local v0    # "a":[C
    .restart local v13    # "bo":I
    :goto_bb
    if-le v6, v5, :cond_15a

    .line 1600
    move v15, v7

    .local v15, "last":I
    const/16 v16, 0x2

    move/from16 v5, v16

    .local v5, "k":I
    :goto_c2
    if-gt v5, v6, :cond_125

    .line 1601
    aget v7, v4, v5

    .local v7, "hi":I
    add-int/lit8 v17, v5, -0x1

    aget v1, v4, v17

    .line 1602
    .local v1, "mi":I
    add-int/lit8 v17, v5, -0x2

    aget v17, v4, v17

    .local v17, "i":I
    move/from16 v18, v17

    .local v18, "p":I
    move/from16 v19, v1

    move/from16 p2, v2

    move/from16 v2, v17

    move-object/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v8

    move/from16 v8, v19

    .local v2, "i":I
    .local v3, "p":I
    .local v8, "q":I
    .local v17, "work":[C
    .local v18, "blen":I
    .local p2, "odd":B
    :goto_de
    if-ge v2, v7, :cond_111

    .line 1603
    if-ge v8, v7, :cond_fe

    if-ge v3, v1, :cond_f1

    add-int v19, v3, v14

    move/from16 p0, v1

    .end local v1    # "mi":I
    .local p0, "mi":I
    aget-char v1, v0, v19

    add-int v19, v8, v14

    aget-char v10, v0, v19

    if-gt v1, v10, :cond_f3

    goto :goto_100

    .end local p0    # "mi":I
    .restart local v1    # "mi":I
    :cond_f1
    move/from16 p0, v1

    .line 1606
    .end local v1    # "mi":I
    .restart local p0    # "mi":I
    :cond_f3
    add-int v1, v2, v13

    add-int/lit8 v10, v8, 0x1

    .end local v8    # "q":I
    .local v10, "q":I
    add-int/2addr v8, v14

    aget-char v8, v0, v8

    aput-char v8, v12, v1

    move v8, v10

    goto :goto_10a

    .line 1603
    .end local v10    # "q":I
    .end local p0    # "mi":I
    .restart local v1    # "mi":I
    .restart local v8    # "q":I
    :cond_fe
    move/from16 p0, v1

    .line 1604
    .end local v1    # "mi":I
    .restart local p0    # "mi":I
    :goto_100
    add-int v1, v2, v13

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "p":I
    .local v10, "p":I
    add-int/2addr v3, v14

    aget-char v3, v0, v3

    aput-char v3, v12, v1

    move v3, v10

    .line 1602
    .end local v10    # "p":I
    .restart local v3    # "p":I
    :goto_10a
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, p0

    move/from16 v10, p5

    goto :goto_de

    .end local p0    # "mi":I
    .restart local v1    # "mi":I
    :cond_111
    move/from16 p0, v1

    .line 1609
    .end local v1    # "mi":I
    .end local v2    # "i":I
    .end local v3    # "p":I
    .end local v8    # "q":I
    .restart local p0    # "mi":I
    add-int/lit8 v15, v15, 0x1

    aput v7, v4, v15

    .line 1600
    .end local v7    # "hi":I
    .end local p0    # "mi":I
    add-int/lit8 v5, v5, 0x2

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v10, p5

    move-object/from16 v3, v17

    move/from16 v8, v18

    const/4 v7, 0x0

    goto :goto_c2

    .end local v17    # "work":[C
    .end local v18    # "blen":I
    .end local p2    # "odd":B
    .local v2, "odd":B
    .local v3, "work":[C
    .local v8, "blen":I
    :cond_125
    move/from16 p2, v2

    move-object/from16 v17, v3

    move/from16 v18, v8

    .line 1611
    .end local v2    # "odd":B
    .end local v3    # "work":[C
    .end local v5    # "k":I
    .end local v8    # "blen":I
    .restart local v17    # "work":[C
    .restart local v18    # "blen":I
    .restart local p2    # "odd":B
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_145

    .line 1612
    move v1, v9

    .local v1, "i":I
    add-int/lit8 v2, v6, -0x1

    aget v2, v4, v2

    .local v2, "lo":I
    :goto_134
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v2, :cond_141

    .line 1613
    add-int v3, v1, v13

    add-int v5, v1, v14

    aget-char v5, v0, v5

    aput-char v5, v12, v3

    goto :goto_134

    .line 1615
    .end local v1    # "i":I
    .end local v2    # "lo":I
    :cond_141
    add-int/lit8 v15, v15, 0x1

    aput v9, v4, v15

    .line 1617
    :cond_145
    move-object v1, v0

    .local v1, "t":[C
    move-object v0, v12

    move-object v12, v1

    .line 1618
    move v2, v14

    .local v2, "o":I
    move v14, v13

    move v13, v2

    .line 1599
    .end local v1    # "t":[C
    .end local v2    # "o":I
    move v6, v15

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v10, p5

    move-object/from16 v3, v17

    move/from16 v8, v18

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_bb

    .line 1620
    .end local v15    # "last":I
    .end local v17    # "work":[C
    .end local v18    # "blen":I
    .end local p2    # "odd":B
    .local v2, "odd":B
    .restart local v3    # "work":[C
    .restart local v8    # "blen":I
    :cond_15a
    return-void
.end method

.method private static blacklist doSort([DII[DII)V
    .registers 29
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [D
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .line 2645
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    sub-int v4, v2, v1

    const/4 v5, 0x1

    const/16 v6, 0x11e

    if-ge v4, v6, :cond_13

    .line 2646
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2647
    return-void

    .line 2654
    :cond_13
    const/16 v4, 0x44

    new-array v4, v4, [I

    .line 2655
    .local v4, "run":[I
    const/4 v6, 0x0

    .local v6, "count":I
    const/4 v7, 0x0

    aput v1, v4, v7

    .line 2658
    move/from16 v8, p1

    .local v8, "k":I
    :goto_1d
    if-ge v8, v2, :cond_86

    .line 2659
    aget-wide v9, v0, v8

    add-int/lit8 v11, v8, 0x1

    aget-wide v11, v0, v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_37

    .line 2660
    :goto_29
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_79

    add-int/lit8 v9, v8, -0x1

    aget-wide v9, v0, v9

    aget-wide v11, v0, v8

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_79

    goto :goto_29

    .line 2661
    :cond_37
    aget-wide v9, v0, v8

    add-int/lit8 v11, v8, 0x1

    aget-wide v11, v0, v11

    cmpl-double v9, v9, v11

    if-lez v9, :cond_62

    .line 2662
    :goto_41
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_4f

    add-int/lit8 v9, v8, -0x1

    aget-wide v9, v0, v9

    aget-wide v11, v0, v8

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_4f

    goto :goto_41

    .line 2663
    :cond_4f
    aget v9, v4, v6

    sub-int/2addr v9, v5

    .local v9, "lo":I
    move v10, v8

    .local v10, "hi":I
    :goto_53
    add-int/2addr v9, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_61

    .line 2664
    aget-wide v11, v0, v9

    .local v11, "t":D
    aget-wide v13, v0, v10

    aput-wide v13, v0, v9

    aput-wide v11, v0, v10

    .line 2665
    .end local v11    # "t":D
    goto :goto_53

    .end local v9    # "lo":I
    .end local v10    # "hi":I
    :cond_61
    goto :goto_79

    .line 2667
    :cond_62
    const/16 v9, 0x21

    .local v9, "m":I
    :cond_64
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_79

    add-int/lit8 v10, v8, -0x1

    aget-wide v10, v0, v10

    aget-wide v12, v0, v8

    cmpl-double v10, v10, v12

    if-nez v10, :cond_79

    .line 2668
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_64

    .line 2669
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2670
    return-void

    .line 2679
    .end local v9    # "m":I
    :cond_79
    :goto_79
    add-int/lit8 v6, v6, 0x1

    const/16 v9, 0x43

    if-ne v6, v9, :cond_83

    .line 2680
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2681
    return-void

    .line 2658
    :cond_83
    aput v8, v4, v6

    goto :goto_1d

    .line 2687
    .end local v8    # "k":I
    :cond_86
    aget v8, v4, v6

    add-int/lit8 v9, v2, 0x1

    .end local p2    # "right":I
    .local v9, "right":I
    if-ne v8, v2, :cond_91

    .line 2688
    add-int/lit8 v6, v6, 0x1

    aput v9, v4, v6

    goto :goto_94

    .line 2689
    :cond_91
    if-ne v6, v5, :cond_94

    .line 2690
    return-void

    .line 2694
    :cond_94
    :goto_94
    const/4 v2, 0x0

    .line 2695
    .local v2, "odd":B
    const/4 v8, 0x1

    .local v8, "n":I
    :goto_96
    shl-int/lit8 v10, v8, 0x1

    move v8, v10

    if-ge v10, v6, :cond_9f

    xor-int/lit8 v10, v2, 0x1

    int-to-byte v2, v10

    goto :goto_96

    .line 2700
    .end local v8    # "n":I
    :cond_9f
    sub-int v8, v9, v1

    .line 2701
    .local v8, "blen":I
    if-eqz v3, :cond_b0

    move/from16 v10, p5

    if-lt v10, v8, :cond_b2

    add-int v11, p4, v8

    array-length v12, v3

    if-le v11, v12, :cond_ad

    goto :goto_b2

    :cond_ad
    move/from16 v11, p4

    goto :goto_b5

    :cond_b0
    move/from16 v10, p5

    .line 2702
    :cond_b2
    :goto_b2
    new-array v3, v8, [D

    .line 2703
    .end local p3    # "work":[D
    .local v3, "work":[D
    const/4 v11, 0x0

    .line 2705
    .end local p4    # "workBase":I
    .local v11, "workBase":I
    :goto_b5
    if-nez v2, :cond_c1

    .line 2706
    invoke-static {v0, v1, v3, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2707
    move-object/from16 v12, p0

    .line 2708
    .local v12, "b":[D
    const/4 v13, 0x0

    .line 2709
    .local v13, "bo":I
    move-object v0, v3

    .line 2710
    .end local p0    # "a":[D
    .local v0, "a":[D
    sub-int v14, v11, v1

    .local v14, "ao":I
    goto :goto_c5

    .line 2712
    .end local v0    # "a":[D
    .end local v12    # "b":[D
    .end local v13    # "bo":I
    .end local v14    # "ao":I
    .restart local p0    # "a":[D
    :cond_c1
    move-object v12, v3

    .line 2713
    .restart local v12    # "b":[D
    const/4 v14, 0x0

    .line 2714
    .restart local v14    # "ao":I
    sub-int v13, v11, v1

    .line 2718
    .end local p0    # "a":[D
    .restart local v0    # "a":[D
    .restart local v13    # "bo":I
    :goto_c5
    if-le v6, v5, :cond_158

    .line 2719
    move v15, v7

    .local v15, "last":I
    const/16 v16, 0x2

    move/from16 v5, v16

    .local v5, "k":I
    :goto_cc
    if-gt v5, v6, :cond_125

    .line 2720
    aget v7, v4, v5

    .local v7, "hi":I
    add-int/lit8 v17, v5, -0x1

    aget v1, v4, v17

    .line 2721
    .local v1, "mi":I
    add-int/lit8 v17, v5, -0x2

    aget v17, v4, v17

    .local v17, "i":I
    move/from16 v18, v17

    .local v18, "p":I
    move/from16 v19, v1

    move/from16 p2, v2

    move/from16 v2, v17

    move-object/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v8

    move/from16 v8, v19

    .local v2, "i":I
    .local v3, "p":I
    .local v8, "q":I
    .local v17, "work":[D
    .local v18, "blen":I
    .local p2, "odd":B
    :goto_e8
    if-ge v2, v7, :cond_115

    .line 2722
    if-ge v8, v7, :cond_107

    if-ge v3, v1, :cond_fb

    add-int v19, v3, v14

    aget-wide v19, v0, v19

    add-int v21, v8, v14

    aget-wide v21, v0, v21

    cmpg-double v19, v19, v21

    if-gtz v19, :cond_fb

    goto :goto_107

    .line 2725
    :cond_fb
    add-int v19, v2, v13

    add-int/lit8 v20, v8, 0x1

    .end local v8    # "q":I
    .local v20, "q":I
    add-int/2addr v8, v14

    aget-wide v21, v0, v8

    aput-wide v21, v12, v19

    move/from16 v8, v20

    goto :goto_112

    .line 2723
    .end local v20    # "q":I
    .restart local v8    # "q":I
    :cond_107
    :goto_107
    add-int v19, v2, v13

    add-int/lit8 v20, v3, 0x1

    .end local v3    # "p":I
    .local v20, "p":I
    add-int/2addr v3, v14

    aget-wide v21, v0, v3

    aput-wide v21, v12, v19

    move/from16 v3, v20

    .line 2721
    .end local v20    # "p":I
    .restart local v3    # "p":I
    :goto_112
    add-int/lit8 v2, v2, 0x1

    goto :goto_e8

    .line 2728
    .end local v2    # "i":I
    .end local v3    # "p":I
    .end local v8    # "q":I
    :cond_115
    add-int/lit8 v15, v15, 0x1

    aput v7, v4, v15

    .line 2719
    .end local v1    # "mi":I
    .end local v7    # "hi":I
    add-int/lit8 v5, v5, 0x2

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v8, v18

    const/4 v7, 0x0

    goto :goto_cc

    .end local v17    # "work":[D
    .end local v18    # "blen":I
    .end local p2    # "odd":B
    .local v2, "odd":B
    .local v3, "work":[D
    .local v8, "blen":I
    :cond_125
    move/from16 p2, v2

    move-object/from16 v17, v3

    move/from16 v18, v8

    .line 2730
    .end local v2    # "odd":B
    .end local v3    # "work":[D
    .end local v5    # "k":I
    .end local v8    # "blen":I
    .restart local v17    # "work":[D
    .restart local v18    # "blen":I
    .restart local p2    # "odd":B
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_145

    .line 2731
    move v1, v9

    .local v1, "i":I
    add-int/lit8 v2, v6, -0x1

    aget v2, v4, v2

    .local v2, "lo":I
    :goto_134
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v2, :cond_141

    .line 2732
    add-int v3, v1, v13

    add-int v5, v1, v14

    aget-wide v7, v0, v5

    aput-wide v7, v12, v3

    goto :goto_134

    .line 2734
    .end local v1    # "i":I
    .end local v2    # "lo":I
    :cond_141
    add-int/lit8 v15, v15, 0x1

    aput v9, v4, v15

    .line 2736
    :cond_145
    move-object v1, v0

    .local v1, "t":[D
    move-object v0, v12

    move-object v12, v1

    .line 2737
    move v2, v14

    .local v2, "o":I
    move v14, v13

    move v13, v2

    .line 2718
    .end local v1    # "t":[D
    .end local v2    # "o":I
    move v6, v15

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v8, v18

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_c5

    .line 2739
    .end local v15    # "last":I
    .end local v17    # "work":[D
    .end local v18    # "blen":I
    .end local p2    # "odd":B
    .local v2, "odd":B
    .restart local v3    # "work":[D
    .restart local v8    # "blen":I
    :cond_158
    return-void
.end method

.method private static blacklist doSort([FII[FII)V
    .registers 27
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [F
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .line 2106
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    sub-int v4, v2, v1

    const/4 v5, 0x1

    const/16 v6, 0x11e

    if-ge v4, v6, :cond_13

    .line 2107
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2108
    return-void

    .line 2115
    :cond_13
    const/16 v4, 0x44

    new-array v4, v4, [I

    .line 2116
    .local v4, "run":[I
    const/4 v6, 0x0

    .local v6, "count":I
    const/4 v7, 0x0

    aput v1, v4, v7

    .line 2119
    move/from16 v8, p1

    .local v8, "k":I
    :goto_1d
    if-ge v8, v2, :cond_86

    .line 2120
    aget v9, v0, v8

    add-int/lit8 v10, v8, 0x1

    aget v10, v0, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_37

    .line 2121
    :goto_29
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_79

    add-int/lit8 v9, v8, -0x1

    aget v9, v0, v9

    aget v10, v0, v8

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_79

    goto :goto_29

    .line 2122
    :cond_37
    aget v9, v0, v8

    add-int/lit8 v10, v8, 0x1

    aget v10, v0, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_62

    .line 2123
    :goto_41
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_4f

    add-int/lit8 v9, v8, -0x1

    aget v9, v0, v9

    aget v10, v0, v8

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4f

    goto :goto_41

    .line 2124
    :cond_4f
    aget v9, v4, v6

    sub-int/2addr v9, v5

    .local v9, "lo":I
    move v10, v8

    .local v10, "hi":I
    :goto_53
    add-int/2addr v9, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_61

    .line 2125
    aget v11, v0, v9

    .local v11, "t":F
    aget v12, v0, v10

    aput v12, v0, v9

    aput v11, v0, v10

    .line 2126
    .end local v11    # "t":F
    goto :goto_53

    .end local v9    # "lo":I
    .end local v10    # "hi":I
    :cond_61
    goto :goto_79

    .line 2128
    :cond_62
    const/16 v9, 0x21

    .local v9, "m":I
    :cond_64
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_79

    add-int/lit8 v10, v8, -0x1

    aget v10, v0, v10

    aget v11, v0, v8

    cmpl-float v10, v10, v11

    if-nez v10, :cond_79

    .line 2129
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_64

    .line 2130
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2131
    return-void

    .line 2140
    .end local v9    # "m":I
    :cond_79
    :goto_79
    add-int/lit8 v6, v6, 0x1

    const/16 v9, 0x43

    if-ne v6, v9, :cond_83

    .line 2141
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2142
    return-void

    .line 2119
    :cond_83
    aput v8, v4, v6

    goto :goto_1d

    .line 2148
    .end local v8    # "k":I
    :cond_86
    aget v8, v4, v6

    add-int/lit8 v9, v2, 0x1

    .end local p2    # "right":I
    .local v9, "right":I
    if-ne v8, v2, :cond_91

    .line 2149
    add-int/lit8 v6, v6, 0x1

    aput v9, v4, v6

    goto :goto_94

    .line 2150
    :cond_91
    if-ne v6, v5, :cond_94

    .line 2151
    return-void

    .line 2155
    :cond_94
    :goto_94
    const/4 v2, 0x0

    .line 2156
    .local v2, "odd":B
    const/4 v8, 0x1

    .local v8, "n":I
    :goto_96
    shl-int/lit8 v10, v8, 0x1

    move v8, v10

    if-ge v10, v6, :cond_9f

    xor-int/lit8 v10, v2, 0x1

    int-to-byte v2, v10

    goto :goto_96

    .line 2161
    .end local v8    # "n":I
    :cond_9f
    sub-int v8, v9, v1

    .line 2162
    .local v8, "blen":I
    if-eqz v3, :cond_b0

    move/from16 v10, p5

    if-lt v10, v8, :cond_b2

    add-int v11, p4, v8

    array-length v12, v3

    if-le v11, v12, :cond_ad

    goto :goto_b2

    :cond_ad
    move/from16 v11, p4

    goto :goto_b5

    :cond_b0
    move/from16 v10, p5

    .line 2163
    :cond_b2
    :goto_b2
    new-array v3, v8, [F

    .line 2164
    .end local p3    # "work":[F
    .local v3, "work":[F
    const/4 v11, 0x0

    .line 2166
    .end local p4    # "workBase":I
    .local v11, "workBase":I
    :goto_b5
    if-nez v2, :cond_c1

    .line 2167
    invoke-static {v0, v1, v3, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2168
    move-object/from16 v12, p0

    .line 2169
    .local v12, "b":[F
    const/4 v13, 0x0

    .line 2170
    .local v13, "bo":I
    move-object v0, v3

    .line 2171
    .end local p0    # "a":[F
    .local v0, "a":[F
    sub-int v14, v11, v1

    .local v14, "ao":I
    goto :goto_c5

    .line 2173
    .end local v0    # "a":[F
    .end local v12    # "b":[F
    .end local v13    # "bo":I
    .end local v14    # "ao":I
    .restart local p0    # "a":[F
    :cond_c1
    move-object v12, v3

    .line 2174
    .restart local v12    # "b":[F
    const/4 v14, 0x0

    .line 2175
    .restart local v14    # "ao":I
    sub-int v13, v11, v1

    .line 2179
    .end local p0    # "a":[F
    .restart local v0    # "a":[F
    .restart local v13    # "bo":I
    :goto_c5
    if-le v6, v5, :cond_158

    .line 2180
    move v15, v7

    .local v15, "last":I
    const/16 v16, 0x2

    move/from16 v5, v16

    .local v5, "k":I
    :goto_cc
    if-gt v5, v6, :cond_125

    .line 2181
    aget v7, v4, v5

    .local v7, "hi":I
    add-int/lit8 v17, v5, -0x1

    aget v1, v4, v17

    .line 2182
    .local v1, "mi":I
    add-int/lit8 v17, v5, -0x2

    aget v17, v4, v17

    .local v17, "i":I
    move/from16 v18, v17

    .local v18, "p":I
    move/from16 v19, v1

    move/from16 p2, v2

    move/from16 v2, v17

    move-object/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v8

    move/from16 v8, v19

    .local v2, "i":I
    .local v3, "p":I
    .local v8, "q":I
    .local v17, "work":[F
    .local v18, "blen":I
    .local p2, "odd":B
    :goto_e8
    if-ge v2, v7, :cond_115

    .line 2183
    if-ge v8, v7, :cond_107

    if-ge v3, v1, :cond_fb

    add-int v19, v3, v14

    aget v19, v0, v19

    add-int v20, v8, v14

    aget v20, v0, v20

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_fb

    goto :goto_107

    .line 2186
    :cond_fb
    add-int v19, v2, v13

    add-int/lit8 v20, v8, 0x1

    .end local v8    # "q":I
    .local v20, "q":I
    add-int/2addr v8, v14

    aget v8, v0, v8

    aput v8, v12, v19

    move/from16 v8, v20

    goto :goto_112

    .line 2184
    .end local v20    # "q":I
    .restart local v8    # "q":I
    :cond_107
    :goto_107
    add-int v19, v2, v13

    add-int/lit8 v20, v3, 0x1

    .end local v3    # "p":I
    .local v20, "p":I
    add-int/2addr v3, v14

    aget v3, v0, v3

    aput v3, v12, v19

    move/from16 v3, v20

    .line 2182
    .end local v20    # "p":I
    .restart local v3    # "p":I
    :goto_112
    add-int/lit8 v2, v2, 0x1

    goto :goto_e8

    .line 2189
    .end local v2    # "i":I
    .end local v3    # "p":I
    .end local v8    # "q":I
    :cond_115
    add-int/lit8 v15, v15, 0x1

    aput v7, v4, v15

    .line 2180
    .end local v1    # "mi":I
    .end local v7    # "hi":I
    add-int/lit8 v5, v5, 0x2

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v8, v18

    const/4 v7, 0x0

    goto :goto_cc

    .end local v17    # "work":[F
    .end local v18    # "blen":I
    .end local p2    # "odd":B
    .local v2, "odd":B
    .local v3, "work":[F
    .local v8, "blen":I
    :cond_125
    move/from16 p2, v2

    move-object/from16 v17, v3

    move/from16 v18, v8

    .line 2191
    .end local v2    # "odd":B
    .end local v3    # "work":[F
    .end local v5    # "k":I
    .end local v8    # "blen":I
    .restart local v17    # "work":[F
    .restart local v18    # "blen":I
    .restart local p2    # "odd":B
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_145

    .line 2192
    move v1, v9

    .local v1, "i":I
    add-int/lit8 v2, v6, -0x1

    aget v2, v4, v2

    .local v2, "lo":I
    :goto_134
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v2, :cond_141

    .line 2193
    add-int v3, v1, v13

    add-int v5, v1, v14

    aget v5, v0, v5

    aput v5, v12, v3

    goto :goto_134

    .line 2195
    .end local v1    # "i":I
    .end local v2    # "lo":I
    :cond_141
    add-int/lit8 v15, v15, 0x1

    aput v9, v4, v15

    .line 2197
    :cond_145
    move-object v1, v0

    .local v1, "t":[F
    move-object v0, v12

    move-object v12, v1

    .line 2198
    move v2, v14

    .local v2, "o":I
    move v14, v13

    move v13, v2

    .line 2179
    .end local v1    # "t":[F
    .end local v2    # "o":I
    move v6, v15

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v8, v18

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_c5

    .line 2200
    .end local v15    # "last":I
    .end local v17    # "work":[F
    .end local v18    # "blen":I
    .end local p2    # "odd":B
    .local v2, "odd":B
    .restart local v3    # "work":[F
    .restart local v8    # "blen":I
    :cond_158
    return-void
.end method

.method private static blacklist doSort([SII[SII)V
    .registers 26
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [S
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .line 1042
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    sub-int v4, v2, v1

    const/4 v5, 0x1

    const/16 v6, 0x11e

    if-ge v4, v6, :cond_13

    .line 1043
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1044
    return-void

    .line 1051
    :cond_13
    const/16 v4, 0x44

    new-array v4, v4, [I

    .line 1052
    .local v4, "run":[I
    const/4 v6, 0x0

    .local v6, "count":I
    const/4 v7, 0x0

    aput v1, v4, v7

    .line 1055
    move/from16 v8, p1

    .local v8, "k":I
    :goto_1d
    if-ge v8, v2, :cond_7c

    .line 1056
    aget-short v9, v0, v8

    add-int/lit8 v10, v8, 0x1

    aget-short v10, v0, v10

    if-ge v9, v10, :cond_33

    .line 1057
    :goto_27
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_6f

    add-int/lit8 v9, v8, -0x1

    aget-short v9, v0, v9

    aget-short v10, v0, v8

    if-gt v9, v10, :cond_6f

    goto :goto_27

    .line 1058
    :cond_33
    aget-short v9, v0, v8

    add-int/lit8 v10, v8, 0x1

    aget-short v10, v0, v10

    if-le v9, v10, :cond_5a

    .line 1059
    :goto_3b
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_47

    add-int/lit8 v9, v8, -0x1

    aget-short v9, v0, v9

    aget-short v10, v0, v8

    if-lt v9, v10, :cond_47

    goto :goto_3b

    .line 1060
    :cond_47
    aget v9, v4, v6

    sub-int/2addr v9, v5

    .local v9, "lo":I
    move v10, v8

    .local v10, "hi":I
    :goto_4b
    add-int/2addr v9, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_59

    .line 1061
    aget-short v11, v0, v9

    .local v11, "t":S
    aget-short v12, v0, v10

    aput-short v12, v0, v9

    aput-short v11, v0, v10

    .line 1062
    .end local v11    # "t":S
    goto :goto_4b

    .end local v9    # "lo":I
    .end local v10    # "hi":I
    :cond_59
    goto :goto_6f

    .line 1064
    :cond_5a
    const/16 v9, 0x21

    .local v9, "m":I
    :cond_5c
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_6f

    add-int/lit8 v10, v8, -0x1

    aget-short v10, v0, v10

    aget-short v11, v0, v8

    if-ne v10, v11, :cond_6f

    .line 1065
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_5c

    .line 1066
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1067
    return-void

    .line 1076
    .end local v9    # "m":I
    :cond_6f
    :goto_6f
    add-int/lit8 v6, v6, 0x1

    const/16 v9, 0x43

    if-ne v6, v9, :cond_79

    .line 1077
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1078
    return-void

    .line 1055
    :cond_79
    aput v8, v4, v6

    goto :goto_1d

    .line 1084
    .end local v8    # "k":I
    :cond_7c
    aget v8, v4, v6

    add-int/lit8 v9, v2, 0x1

    .end local p2    # "right":I
    .local v9, "right":I
    if-ne v8, v2, :cond_87

    .line 1085
    add-int/lit8 v6, v6, 0x1

    aput v9, v4, v6

    goto :goto_8a

    .line 1086
    :cond_87
    if-ne v6, v5, :cond_8a

    .line 1087
    return-void

    .line 1091
    :cond_8a
    :goto_8a
    const/4 v2, 0x0

    .line 1092
    .local v2, "odd":B
    const/4 v8, 0x1

    .local v8, "n":I
    :goto_8c
    shl-int/lit8 v10, v8, 0x1

    move v8, v10

    if-ge v10, v6, :cond_95

    xor-int/lit8 v10, v2, 0x1

    int-to-byte v2, v10

    goto :goto_8c

    .line 1097
    .end local v8    # "n":I
    :cond_95
    sub-int v8, v9, v1

    .line 1098
    .local v8, "blen":I
    if-eqz v3, :cond_a6

    move/from16 v10, p5

    if-lt v10, v8, :cond_a8

    add-int v11, p4, v8

    array-length v12, v3

    if-le v11, v12, :cond_a3

    goto :goto_a8

    :cond_a3
    move/from16 v11, p4

    goto :goto_ab

    :cond_a6
    move/from16 v10, p5

    .line 1099
    :cond_a8
    :goto_a8
    new-array v3, v8, [S

    .line 1100
    .end local p3    # "work":[S
    .local v3, "work":[S
    const/4 v11, 0x0

    .line 1102
    .end local p4    # "workBase":I
    .local v11, "workBase":I
    :goto_ab
    if-nez v2, :cond_b7

    .line 1103
    invoke-static {v0, v1, v3, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1104
    move-object/from16 v12, p0

    .line 1105
    .local v12, "b":[S
    const/4 v13, 0x0

    .line 1106
    .local v13, "bo":I
    move-object v0, v3

    .line 1107
    .end local p0    # "a":[S
    .local v0, "a":[S
    sub-int v14, v11, v1

    .local v14, "ao":I
    goto :goto_bb

    .line 1109
    .end local v0    # "a":[S
    .end local v12    # "b":[S
    .end local v13    # "bo":I
    .end local v14    # "ao":I
    .restart local p0    # "a":[S
    :cond_b7
    move-object v12, v3

    .line 1110
    .restart local v12    # "b":[S
    const/4 v14, 0x0

    .line 1111
    .restart local v14    # "ao":I
    sub-int v13, v11, v1

    .line 1115
    .end local p0    # "a":[S
    .restart local v0    # "a":[S
    .restart local v13    # "bo":I
    :goto_bb
    if-le v6, v5, :cond_15a

    .line 1116
    move v15, v7

    .local v15, "last":I
    const/16 v16, 0x2

    move/from16 v5, v16

    .local v5, "k":I
    :goto_c2
    if-gt v5, v6, :cond_125

    .line 1117
    aget v7, v4, v5

    .local v7, "hi":I
    add-int/lit8 v17, v5, -0x1

    aget v1, v4, v17

    .line 1118
    .local v1, "mi":I
    add-int/lit8 v17, v5, -0x2

    aget v17, v4, v17

    .local v17, "i":I
    move/from16 v18, v17

    .local v18, "p":I
    move/from16 v19, v1

    move/from16 p2, v2

    move/from16 v2, v17

    move-object/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v8

    move/from16 v8, v19

    .local v2, "i":I
    .local v3, "p":I
    .local v8, "q":I
    .local v17, "work":[S
    .local v18, "blen":I
    .local p2, "odd":B
    :goto_de
    if-ge v2, v7, :cond_111

    .line 1119
    if-ge v8, v7, :cond_fe

    if-ge v3, v1, :cond_f1

    add-int v19, v3, v14

    move/from16 p0, v1

    .end local v1    # "mi":I
    .local p0, "mi":I
    aget-short v1, v0, v19

    add-int v19, v8, v14

    aget-short v10, v0, v19

    if-gt v1, v10, :cond_f3

    goto :goto_100

    .end local p0    # "mi":I
    .restart local v1    # "mi":I
    :cond_f1
    move/from16 p0, v1

    .line 1122
    .end local v1    # "mi":I
    .restart local p0    # "mi":I
    :cond_f3
    add-int v1, v2, v13

    add-int/lit8 v10, v8, 0x1

    .end local v8    # "q":I
    .local v10, "q":I
    add-int/2addr v8, v14

    aget-short v8, v0, v8

    aput-short v8, v12, v1

    move v8, v10

    goto :goto_10a

    .line 1119
    .end local v10    # "q":I
    .end local p0    # "mi":I
    .restart local v1    # "mi":I
    .restart local v8    # "q":I
    :cond_fe
    move/from16 p0, v1

    .line 1120
    .end local v1    # "mi":I
    .restart local p0    # "mi":I
    :goto_100
    add-int v1, v2, v13

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "p":I
    .local v10, "p":I
    add-int/2addr v3, v14

    aget-short v3, v0, v3

    aput-short v3, v12, v1

    move v3, v10

    .line 1118
    .end local v10    # "p":I
    .restart local v3    # "p":I
    :goto_10a
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, p0

    move/from16 v10, p5

    goto :goto_de

    .end local p0    # "mi":I
    .restart local v1    # "mi":I
    :cond_111
    move/from16 p0, v1

    .line 1125
    .end local v1    # "mi":I
    .end local v2    # "i":I
    .end local v3    # "p":I
    .end local v8    # "q":I
    .restart local p0    # "mi":I
    add-int/lit8 v15, v15, 0x1

    aput v7, v4, v15

    .line 1116
    .end local v7    # "hi":I
    .end local p0    # "mi":I
    add-int/lit8 v5, v5, 0x2

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v10, p5

    move-object/from16 v3, v17

    move/from16 v8, v18

    const/4 v7, 0x0

    goto :goto_c2

    .end local v17    # "work":[S
    .end local v18    # "blen":I
    .end local p2    # "odd":B
    .local v2, "odd":B
    .local v3, "work":[S
    .local v8, "blen":I
    :cond_125
    move/from16 p2, v2

    move-object/from16 v17, v3

    move/from16 v18, v8

    .line 1127
    .end local v2    # "odd":B
    .end local v3    # "work":[S
    .end local v5    # "k":I
    .end local v8    # "blen":I
    .restart local v17    # "work":[S
    .restart local v18    # "blen":I
    .restart local p2    # "odd":B
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_145

    .line 1128
    move v1, v9

    .local v1, "i":I
    add-int/lit8 v2, v6, -0x1

    aget v2, v4, v2

    .local v2, "lo":I
    :goto_134
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v2, :cond_141

    .line 1129
    add-int v3, v1, v13

    add-int v5, v1, v14

    aget-short v5, v0, v5

    aput-short v5, v12, v3

    goto :goto_134

    .line 1131
    .end local v1    # "i":I
    .end local v2    # "lo":I
    :cond_141
    add-int/lit8 v15, v15, 0x1

    aput v9, v4, v15

    .line 1133
    :cond_145
    move-object v1, v0

    .local v1, "t":[S
    move-object v0, v12

    move-object v12, v1

    .line 1134
    move v2, v14

    .local v2, "o":I
    move v14, v13

    move v13, v2

    .line 1115
    .end local v1    # "t":[S
    .end local v2    # "o":I
    move v6, v15

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v10, p5

    move-object/from16 v3, v17

    move/from16 v8, v18

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_bb

    .line 1136
    .end local v15    # "last":I
    .end local v17    # "work":[S
    .end local v18    # "blen":I
    .end local p2    # "odd":B
    .local v2, "odd":B
    .restart local v3    # "work":[S
    .restart local v8    # "blen":I
    :cond_15a
    return-void
.end method

.method static blacklist sort([BII)V
    .registers 8
    .param p0, "a"    # [B
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1972
    sub-int v0, p2, p1

    const/16 v1, 0x1d

    if-le v0, v1, :cond_39

    .line 1973
    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 1975
    .local v0, "count":[I
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_c
    add-int/lit8 v1, v1, 0x1

    if-gt v1, p2, :cond_1b

    .line 1976
    aget-byte v2, p0, v1

    add-int/lit16 v2, v2, 0x80

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    goto :goto_c

    .line 1978
    .end local v1    # "i":I
    :cond_1b
    const/16 v1, 0x100

    .restart local v1    # "i":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "k":I
    :goto_1f
    if-le v2, p1, :cond_38

    .line 1979
    :goto_21
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget v1, v0, v3

    if-nez v1, :cond_29

    move v1, v3

    goto :goto_21

    .line 1980
    :cond_29
    add-int/lit8 v1, v3, -0x80

    int-to-byte v4, v1

    .line 1981
    .local v4, "value":B
    aget v1, v0, v3

    .line 1984
    .local v1, "s":I
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    aput-byte v4, p0, v2

    .line 1985
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_2e

    .line 1986
    .end local v1    # "s":I
    .end local v4    # "value":B
    move v1, v3

    goto :goto_1f

    .line 1987
    .end local v0    # "count":[I
    .end local v2    # "k":I
    .end local v3    # "i":I
    :cond_38
    goto :goto_5b

    .line 1988
    :cond_39
    move v0, p1

    .local v0, "i":I
    move v1, v0

    .local v1, "j":I
    :goto_3b
    if-ge v0, p2, :cond_5b

    .line 1989
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    .line 1990
    .local v2, "ai":B
    :goto_41
    aget-byte v3, p0, v1

    if-ge v2, v3, :cond_53

    .line 1991
    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p0, v1

    aput-byte v4, p0, v3

    .line 1992
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "j":I
    .local v3, "j":I
    if-ne v1, p1, :cond_51

    .line 1993
    move v1, v3

    goto :goto_53

    .line 1992
    :cond_51
    move v1, v3

    goto :goto_41

    .line 1996
    .end local v3    # "j":I
    .restart local v1    # "j":I
    :cond_53
    :goto_53
    add-int/lit8 v3, v1, 0x1

    aput-byte v2, p0, v3

    .line 1988
    .end local v2    # "ai":B
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_3b

    .line 1999
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_5b
    :goto_5b
    return-void
.end method

.method private static blacklist sort([CIIZ)V
    .registers 23
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .line 1631
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sub-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    .line 1634
    .local v4, "length":I
    const/16 v5, 0x2f

    if-ge v4, v5, :cond_8d

    .line 1635
    if-eqz v3, :cond_36

    .line 1641
    move/from16 v5, p1

    .local v5, "i":I
    move v6, v5

    .local v6, "j":I
    :goto_15
    if-ge v5, v2, :cond_35

    .line 1642
    add-int/lit8 v7, v5, 0x1

    aget-char v7, v0, v7

    .line 1643
    .local v7, "ai":C
    :goto_1b
    aget-char v8, v0, v6

    if-ge v7, v8, :cond_2d

    .line 1644
    add-int/lit8 v8, v6, 0x1

    aget-char v9, v0, v6

    aput-char v9, v0, v8

    .line 1645
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "j":I
    .local v8, "j":I
    if-ne v6, v1, :cond_2b

    .line 1646
    move v6, v8

    goto :goto_2d

    .line 1645
    :cond_2b
    move v6, v8

    goto :goto_1b

    .line 1649
    .end local v8    # "j":I
    .restart local v6    # "j":I
    :cond_2d
    :goto_2d
    add-int/lit8 v8, v6, 0x1

    aput-char v7, v0, v8

    .line 1641
    .end local v7    # "ai":C
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    goto :goto_15

    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_35
    goto :goto_8c

    .line 1656
    .end local p1    # "left":I
    .local v1, "left":I
    :cond_36
    if-lt v1, v2, :cond_39

    .line 1657
    return-void

    .line 1659
    :cond_39
    add-int/lit8 v1, v1, 0x1

    aget-char v5, v0, v1

    add-int/lit8 v6, v1, -0x1

    aget-char v6, v0, v6

    if-ge v5, v6, :cond_36

    .line 1669
    move v5, v1

    .local v5, "k":I
    :goto_44
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_79

    .line 1670
    aget-char v6, v0, v5

    .local v6, "a1":C
    aget-char v7, v0, v1

    .line 1672
    .local v7, "a2":C
    if-ge v6, v7, :cond_51

    .line 1673
    move v7, v6

    aget-char v6, v0, v1

    .line 1675
    :cond_51
    :goto_51
    add-int/lit8 v5, v5, -0x1

    aget-char v8, v0, v5

    if-ge v6, v8, :cond_5e

    .line 1676
    add-int/lit8 v8, v5, 0x2

    aget-char v9, v0, v5

    aput-char v9, v0, v8

    goto :goto_51

    .line 1678
    :cond_5e
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v5, 0x1

    aput-char v6, v0, v8

    .line 1680
    :goto_64
    add-int/lit8 v5, v5, -0x1

    aget-char v8, v0, v5

    if-ge v7, v8, :cond_71

    .line 1681
    add-int/lit8 v8, v5, 0x1

    aget-char v9, v0, v5

    aput-char v9, v0, v8

    goto :goto_64

    .line 1683
    :cond_71
    add-int/lit8 v8, v5, 0x1

    aput-char v7, v0, v8

    .line 1669
    .end local v6    # "a1":C
    .end local v7    # "a2":C
    add-int/lit8 v1, v1, 0x1

    move v5, v1

    goto :goto_44

    .line 1685
    .end local v5    # "k":I
    :cond_79
    aget-char v5, v0, v2

    .line 1687
    .end local p2    # "right":I
    .local v2, "right":I
    .local v5, "last":C
    :goto_7b
    add-int/lit8 v2, v2, -0x1

    aget-char v6, v0, v2

    if-ge v5, v6, :cond_88

    .line 1688
    add-int/lit8 v6, v2, 0x1

    aget-char v7, v0, v2

    aput-char v7, v0, v6

    goto :goto_7b

    .line 1690
    :cond_88
    add-int/lit8 v6, v2, 0x1

    aput-char v5, v0, v6

    .line 1692
    .end local v5    # "last":C
    :goto_8c
    return-void

    .line 1696
    .end local v1    # "left":I
    .end local v2    # "right":I
    .restart local p1    # "left":I
    .restart local p2    # "right":I
    :cond_8d
    shr-int/lit8 v5, v4, 0x3

    shr-int/lit8 v6, v4, 0x6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    .line 1705
    .local v5, "seventh":I
    add-int v6, v1, v2

    ushr-int/lit8 v6, v6, 0x1

    .line 1706
    .local v6, "e3":I
    sub-int v7, v6, v5

    .line 1707
    .local v7, "e2":I
    sub-int v8, v7, v5

    .line 1708
    .local v8, "e1":I
    add-int v9, v6, v5

    .line 1709
    .local v9, "e4":I
    add-int v10, v9, v5

    .line 1712
    .local v10, "e5":I
    aget-char v11, v0, v7

    aget-char v12, v0, v8

    if-ge v11, v12, :cond_ae

    aget-char v11, v0, v7

    .local v11, "t":C
    aget-char v12, v0, v8

    aput-char v12, v0, v7

    aput-char v11, v0, v8

    .line 1714
    .end local v11    # "t":C
    :cond_ae
    aget-char v11, v0, v6

    aget-char v12, v0, v7

    if-ge v11, v12, :cond_c6

    aget-char v11, v0, v6

    .restart local v11    # "t":C
    aget-char v12, v0, v7

    aput-char v12, v0, v6

    aput-char v11, v0, v7

    .line 1715
    aget-char v12, v0, v8

    if-ge v11, v12, :cond_c6

    aget-char v12, v0, v8

    aput-char v12, v0, v7

    aput-char v11, v0, v8

    .line 1717
    .end local v11    # "t":C
    :cond_c6
    aget-char v11, v0, v9

    aget-char v12, v0, v6

    if-ge v11, v12, :cond_e8

    aget-char v11, v0, v9

    .restart local v11    # "t":C
    aget-char v12, v0, v6

    aput-char v12, v0, v9

    aput-char v11, v0, v6

    .line 1718
    aget-char v12, v0, v7

    if-ge v11, v12, :cond_e8

    aget-char v12, v0, v7

    aput-char v12, v0, v6

    aput-char v11, v0, v7

    .line 1719
    aget-char v12, v0, v8

    if-ge v11, v12, :cond_e8

    aget-char v12, v0, v8

    aput-char v12, v0, v7

    aput-char v11, v0, v8

    .line 1722
    .end local v11    # "t":C
    :cond_e8
    aget-char v11, v0, v10

    aget-char v12, v0, v9

    if-ge v11, v12, :cond_114

    aget-char v11, v0, v10

    .restart local v11    # "t":C
    aget-char v12, v0, v9

    aput-char v12, v0, v10

    aput-char v11, v0, v9

    .line 1723
    aget-char v12, v0, v6

    if-ge v11, v12, :cond_114

    aget-char v12, v0, v6

    aput-char v12, v0, v9

    aput-char v11, v0, v6

    .line 1724
    aget-char v12, v0, v7

    if-ge v11, v12, :cond_114

    aget-char v12, v0, v7

    aput-char v12, v0, v6

    aput-char v11, v0, v7

    .line 1725
    aget-char v12, v0, v8

    if-ge v11, v12, :cond_114

    aget-char v12, v0, v8

    aput-char v12, v0, v7

    aput-char v11, v0, v8

    .line 1731
    .end local v11    # "t":C
    :cond_114
    move/from16 v11, p1

    .line 1732
    .local v11, "less":I
    move/from16 v12, p2

    .line 1734
    .local v12, "great":I
    aget-char v13, v0, v8

    aget-char v14, v0, v7

    if-eq v13, v14, :cond_203

    aget-char v13, v0, v7

    aget-char v14, v0, v6

    if-eq v13, v14, :cond_203

    aget-char v13, v0, v6

    aget-char v14, v0, v9

    if-eq v13, v14, :cond_203

    aget-char v13, v0, v9

    aget-char v14, v0, v10

    if-eq v13, v14, :cond_203

    .line 1740
    aget-char v13, v0, v7

    .line 1741
    .local v13, "pivot1":C
    aget-char v14, v0, v9

    .line 1749
    .local v14, "pivot2":C
    aget-char v16, v0, v1

    aput-char v16, v0, v7

    .line 1750
    aget-char v16, v0, v2

    aput-char v16, v0, v9

    .line 1755
    :goto_13c
    add-int/lit8 v11, v11, 0x1

    aget-char v15, v0, v11

    if-ge v15, v13, :cond_143

    goto :goto_13c

    .line 1756
    :cond_143
    :goto_143
    add-int/lit8 v12, v12, -0x1

    aget-char v15, v0, v12

    if-le v15, v14, :cond_14a

    goto :goto_143

    .line 1778
    :cond_14a
    add-int/lit8 v15, v11, -0x1

    .local v15, "k":I
    :goto_14c
    add-int/lit8 v15, v15, 0x1

    if-gt v15, v12, :cond_192

    .line 1779
    move/from16 v17, v4

    .end local v4    # "length":I
    .local v17, "length":I
    aget-char v4, v0, v15

    .line 1780
    .local v4, "ak":C
    if-ge v4, v13, :cond_161

    .line 1781
    aget-char v18, v0, v11

    aput-char v18, v0, v15

    .line 1786
    aput-char v4, v0, v11

    .line 1787
    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v5

    goto :goto_18d

    .line 1788
    :cond_161
    if-le v4, v14, :cond_18b

    .line 1789
    :goto_163
    move/from16 v18, v5

    .end local v5    # "seventh":I
    .local v18, "seventh":I
    aget-char v5, v0, v12

    if-le v5, v14, :cond_173

    .line 1790
    add-int/lit8 v5, v12, -0x1

    .end local v12    # "great":I
    .local v5, "great":I
    if-ne v12, v15, :cond_16f

    .line 1791
    move v12, v5

    goto :goto_196

    .line 1790
    :cond_16f
    move v12, v5

    move/from16 v5, v18

    goto :goto_163

    .line 1794
    .end local v5    # "great":I
    .restart local v12    # "great":I
    :cond_173
    aget-char v5, v0, v12

    if-ge v5, v13, :cond_182

    .line 1795
    aget-char v5, v0, v11

    aput-char v5, v0, v15

    .line 1796
    aget-char v5, v0, v12

    aput-char v5, v0, v11

    .line 1797
    add-int/lit8 v11, v11, 0x1

    goto :goto_186

    .line 1799
    :cond_182
    aget-char v5, v0, v12

    aput-char v5, v0, v15

    .line 1805
    :goto_186
    aput-char v4, v0, v12

    .line 1806
    add-int/lit8 v12, v12, -0x1

    goto :goto_18d

    .line 1788
    .end local v18    # "seventh":I
    .local v5, "seventh":I
    :cond_18b
    move/from16 v18, v5

    .line 1808
    .end local v4    # "ak":C
    .end local v5    # "seventh":I
    .restart local v18    # "seventh":I
    :goto_18d
    move/from16 v4, v17

    move/from16 v5, v18

    goto :goto_14c

    .line 1778
    .end local v17    # "length":I
    .end local v18    # "seventh":I
    .local v4, "length":I
    .restart local v5    # "seventh":I
    :cond_192
    move/from16 v17, v4

    move/from16 v18, v5

    .line 1811
    .end local v4    # "length":I
    .end local v5    # "seventh":I
    .end local v15    # "k":I
    .restart local v17    # "length":I
    .restart local v18    # "seventh":I
    :goto_196
    add-int/lit8 v4, v11, -0x1

    aget-char v4, v0, v4

    aput-char v4, v0, v1

    add-int/lit8 v4, v11, -0x1

    aput-char v13, v0, v4

    .line 1812
    add-int/lit8 v4, v12, 0x1

    aget-char v4, v0, v4

    aput-char v4, v0, v2

    add-int/lit8 v4, v12, 0x1

    aput-char v14, v0, v4

    .line 1815
    add-int/lit8 v4, v11, -0x2

    invoke-static {v0, v1, v4, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1816
    add-int/lit8 v4, v12, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v4, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1822
    if-ge v11, v8, :cond_1fe

    if-ge v10, v12, :cond_1fe

    .line 1826
    :goto_1b9
    aget-char v4, v0, v11

    if-ne v4, v13, :cond_1c0

    .line 1827
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b9

    .line 1830
    :cond_1c0
    :goto_1c0
    aget-char v4, v0, v12

    if-ne v4, v14, :cond_1c7

    .line 1831
    add-int/lit8 v12, v12, -0x1

    goto :goto_1c0

    .line 1854
    :cond_1c7
    add-int/lit8 v4, v11, -0x1

    .local v4, "k":I
    :goto_1c9
    add-int/lit8 v4, v4, 0x1

    if-gt v4, v12, :cond_1fe

    .line 1855
    aget-char v5, v0, v4

    .line 1856
    .local v5, "ak":C
    if-ne v5, v13, :cond_1da

    .line 1857
    aget-char v15, v0, v11

    aput-char v15, v0, v4

    .line 1858
    aput-char v5, v0, v11

    .line 1859
    add-int/lit8 v11, v11, 0x1

    goto :goto_1fd

    .line 1860
    :cond_1da
    if-ne v5, v14, :cond_1fd

    .line 1861
    :goto_1dc
    aget-char v15, v0, v12

    if-ne v15, v14, :cond_1e8

    .line 1862
    add-int/lit8 v15, v12, -0x1

    .end local v12    # "great":I
    .local v15, "great":I
    if-ne v12, v4, :cond_1e6

    .line 1863
    move v12, v15

    goto :goto_1fe

    .line 1862
    :cond_1e6
    move v12, v15

    goto :goto_1dc

    .line 1866
    .end local v15    # "great":I
    .restart local v12    # "great":I
    :cond_1e8
    aget-char v15, v0, v12

    if-ne v15, v13, :cond_1f5

    .line 1867
    aget-char v15, v0, v11

    aput-char v15, v0, v4

    .line 1876
    aput-char v13, v0, v11

    .line 1877
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f9

    .line 1879
    :cond_1f5
    aget-char v15, v0, v12

    aput-char v15, v0, v4

    .line 1881
    :goto_1f9
    aput-char v5, v0, v12

    .line 1882
    add-int/lit8 v12, v12, -0x1

    .line 1884
    .end local v5    # "ak":C
    :cond_1fd
    :goto_1fd
    goto :goto_1c9

    .line 1888
    .end local v4    # "k":I
    :cond_1fe
    :goto_1fe
    const/4 v4, 0x0

    invoke-static {v0, v11, v12, v4}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1890
    .end local v13    # "pivot1":C
    .end local v14    # "pivot2":C
    goto :goto_248

    .line 1734
    .end local v17    # "length":I
    .end local v18    # "seventh":I
    .local v4, "length":I
    .local v5, "seventh":I
    :cond_203
    move/from16 v17, v4

    move/from16 v18, v5

    .line 1895
    .end local v4    # "length":I
    .end local v5    # "seventh":I
    .restart local v17    # "length":I
    .restart local v18    # "seventh":I
    aget-char v4, v0, v6

    .line 1917
    .local v4, "pivot":C
    move v5, v11

    .local v5, "k":I
    :goto_20a
    if-gt v5, v12, :cond_23d

    .line 1918
    aget-char v13, v0, v5

    if-ne v13, v4, :cond_211

    .line 1919
    goto :goto_23a

    .line 1921
    :cond_211
    aget-char v13, v0, v5

    .line 1922
    .local v13, "ak":C
    if-ge v13, v4, :cond_21e

    .line 1923
    aget-char v14, v0, v11

    aput-char v14, v0, v5

    .line 1924
    aput-char v13, v0, v11

    .line 1925
    add-int/lit8 v11, v11, 0x1

    goto :goto_23a

    .line 1927
    :cond_21e
    :goto_21e
    aget-char v14, v0, v12

    if-le v14, v4, :cond_225

    .line 1928
    add-int/lit8 v12, v12, -0x1

    goto :goto_21e

    .line 1930
    :cond_225
    aget-char v14, v0, v12

    if-ge v14, v4, :cond_234

    .line 1931
    aget-char v14, v0, v11

    aput-char v14, v0, v5

    .line 1932
    aget-char v14, v0, v12

    aput-char v14, v0, v11

    .line 1933
    add-int/lit8 v11, v11, 0x1

    goto :goto_236

    .line 1943
    :cond_234
    aput-char v4, v0, v5

    .line 1945
    :goto_236
    aput-char v13, v0, v12

    .line 1946
    add-int/lit8 v12, v12, -0x1

    .line 1917
    .end local v13    # "ak":C
    :goto_23a
    add-int/lit8 v5, v5, 0x1

    goto :goto_20a

    .line 1955
    .end local v5    # "k":I
    :cond_23d
    add-int/lit8 v5, v11, -0x1

    invoke-static {v0, v1, v5, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1956
    add-int/lit8 v5, v12, 0x1

    const/4 v13, 0x0

    invoke-static {v0, v5, v2, v13}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1958
    .end local v4    # "pivot":C
    :goto_248
    return-void
.end method

.method static blacklist sort([CII[CII)V
    .registers 11
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [C
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .line 1490
    sub-int v0, p2, p1

    const/16 v1, 0xc80

    if-le v0, v1, :cond_35

    .line 1491
    const/high16 v0, 0x10000

    new-array v0, v0, [I

    .line 1493
    .local v0, "count":[I
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_c
    add-int/lit8 v1, v1, 0x1

    if-gt v1, p2, :cond_19

    .line 1494
    aget-char v2, p0, v1

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    goto :goto_c

    .line 1496
    .end local v1    # "i":I
    :cond_19
    const/high16 v1, 0x10000

    .restart local v1    # "i":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "k":I
    :goto_1d
    if-le v2, p1, :cond_34

    .line 1497
    :goto_1f
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget v1, v0, v3

    if-nez v1, :cond_27

    move v1, v3

    goto :goto_1f

    .line 1498
    :cond_27
    int-to-char v4, v3

    .line 1499
    .local v4, "value":C
    aget v1, v0, v3

    .line 1502
    .local v1, "s":I
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    aput-char v4, p0, v2

    .line 1503
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_2a

    .line 1504
    .end local v1    # "s":I
    .end local v4    # "value":C
    move v1, v3

    goto :goto_1d

    .line 1505
    .end local v0    # "count":[I
    .end local v2    # "k":I
    .end local v3    # "i":I
    :cond_34
    goto :goto_38

    .line 1506
    :cond_35
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([CII[CII)V

    .line 1508
    :goto_38
    return-void
.end method

.method private static blacklist sort([DIIZ)V
    .registers 27
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .line 2750
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sub-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    .line 2753
    .local v4, "length":I
    const/16 v5, 0x2f

    if-ge v4, v5, :cond_99

    .line 2754
    if-eqz v3, :cond_38

    .line 2760
    move/from16 v5, p1

    .local v5, "i":I
    move v6, v5

    .local v6, "j":I
    :goto_15
    if-ge v5, v2, :cond_37

    .line 2761
    add-int/lit8 v7, v5, 0x1

    aget-wide v7, v0, v7

    .line 2762
    .local v7, "ai":D
    :goto_1b
    aget-wide v9, v0, v6

    cmpg-double v9, v7, v9

    if-gez v9, :cond_2f

    .line 2763
    add-int/lit8 v9, v6, 0x1

    aget-wide v10, v0, v6

    aput-wide v10, v0, v9

    .line 2764
    add-int/lit8 v9, v6, -0x1

    .end local v6    # "j":I
    .local v9, "j":I
    if-ne v6, v1, :cond_2d

    .line 2765
    move v6, v9

    goto :goto_2f

    .line 2764
    :cond_2d
    move v6, v9

    goto :goto_1b

    .line 2768
    .end local v9    # "j":I
    .restart local v6    # "j":I
    :cond_2f
    :goto_2f
    add-int/lit8 v9, v6, 0x1

    aput-wide v7, v0, v9

    .line 2760
    .end local v7    # "ai":D
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    goto :goto_15

    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_37
    goto :goto_98

    .line 2775
    .end local p1    # "left":I
    .local v1, "left":I
    :cond_38
    if-lt v1, v2, :cond_3b

    .line 2776
    return-void

    .line 2778
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    aget-wide v5, v0, v1

    add-int/lit8 v7, v1, -0x1

    aget-wide v7, v0, v7

    cmpl-double v5, v5, v7

    if-gez v5, :cond_38

    .line 2788
    move v5, v1

    .local v5, "k":I
    :goto_48
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_83

    .line 2789
    aget-wide v6, v0, v5

    .local v6, "a1":D
    aget-wide v8, v0, v1

    .line 2791
    .local v8, "a2":D
    cmpg-double v10, v6, v8

    if-gez v10, :cond_57

    .line 2792
    move-wide v8, v6

    aget-wide v6, v0, v1

    .line 2794
    :cond_57
    :goto_57
    add-int/lit8 v5, v5, -0x1

    aget-wide v10, v0, v5

    cmpg-double v10, v6, v10

    if-gez v10, :cond_66

    .line 2795
    add-int/lit8 v10, v5, 0x2

    aget-wide v11, v0, v5

    aput-wide v11, v0, v10

    goto :goto_57

    .line 2797
    :cond_66
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v5, 0x1

    aput-wide v6, v0, v10

    .line 2799
    :goto_6c
    add-int/lit8 v5, v5, -0x1

    aget-wide v10, v0, v5

    cmpg-double v10, v8, v10

    if-gez v10, :cond_7b

    .line 2800
    add-int/lit8 v10, v5, 0x1

    aget-wide v11, v0, v5

    aput-wide v11, v0, v10

    goto :goto_6c

    .line 2802
    :cond_7b
    add-int/lit8 v10, v5, 0x1

    aput-wide v8, v0, v10

    .line 2788
    .end local v6    # "a1":D
    .end local v8    # "a2":D
    add-int/lit8 v1, v1, 0x1

    move v5, v1

    goto :goto_48

    .line 2804
    .end local v5    # "k":I
    :cond_83
    aget-wide v5, v0, v2

    .line 2806
    .end local p2    # "right":I
    .local v2, "right":I
    .local v5, "last":D
    :goto_85
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, v0, v2

    cmpg-double v7, v5, v7

    if-gez v7, :cond_94

    .line 2807
    add-int/lit8 v7, v2, 0x1

    aget-wide v8, v0, v2

    aput-wide v8, v0, v7

    goto :goto_85

    .line 2809
    :cond_94
    add-int/lit8 v7, v2, 0x1

    aput-wide v5, v0, v7

    .line 2811
    .end local v5    # "last":D
    :goto_98
    return-void

    .line 2815
    .end local v1    # "left":I
    .end local v2    # "right":I
    .restart local p1    # "left":I
    .restart local p2    # "right":I
    :cond_99
    shr-int/lit8 v5, v4, 0x3

    shr-int/lit8 v6, v4, 0x6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    .line 2824
    .local v5, "seventh":I
    add-int v6, v1, v2

    ushr-int/lit8 v6, v6, 0x1

    .line 2825
    .local v6, "e3":I
    sub-int v7, v6, v5

    .line 2826
    .local v7, "e2":I
    sub-int v8, v7, v5

    .line 2827
    .local v8, "e1":I
    add-int v9, v6, v5

    .line 2828
    .local v9, "e4":I
    add-int v10, v9, v5

    .line 2831
    .local v10, "e5":I
    aget-wide v11, v0, v7

    aget-wide v13, v0, v8

    cmpg-double v11, v11, v13

    if-gez v11, :cond_bc

    aget-wide v11, v0, v7

    .local v11, "t":D
    aget-wide v13, v0, v8

    aput-wide v13, v0, v7

    aput-wide v11, v0, v8

    .line 2833
    .end local v11    # "t":D
    :cond_bc
    aget-wide v11, v0, v6

    aget-wide v13, v0, v7

    cmpg-double v11, v11, v13

    if-gez v11, :cond_d8

    aget-wide v11, v0, v6

    .restart local v11    # "t":D
    aget-wide v13, v0, v7

    aput-wide v13, v0, v6

    aput-wide v11, v0, v7

    .line 2834
    aget-wide v13, v0, v8

    cmpg-double v13, v11, v13

    if-gez v13, :cond_d8

    aget-wide v13, v0, v8

    aput-wide v13, v0, v7

    aput-wide v11, v0, v8

    .line 2836
    .end local v11    # "t":D
    :cond_d8
    aget-wide v11, v0, v9

    aget-wide v13, v0, v6

    cmpg-double v11, v11, v13

    if-gez v11, :cond_100

    aget-wide v11, v0, v9

    .restart local v11    # "t":D
    aget-wide v13, v0, v6

    aput-wide v13, v0, v9

    aput-wide v11, v0, v6

    .line 2837
    aget-wide v13, v0, v7

    cmpg-double v13, v11, v13

    if-gez v13, :cond_100

    aget-wide v13, v0, v7

    aput-wide v13, v0, v6

    aput-wide v11, v0, v7

    .line 2838
    aget-wide v13, v0, v8

    cmpg-double v13, v11, v13

    if-gez v13, :cond_100

    aget-wide v13, v0, v8

    aput-wide v13, v0, v7

    aput-wide v11, v0, v8

    .line 2841
    .end local v11    # "t":D
    :cond_100
    aget-wide v11, v0, v10

    aget-wide v13, v0, v9

    cmpg-double v11, v11, v13

    if-gez v11, :cond_134

    aget-wide v11, v0, v10

    .restart local v11    # "t":D
    aget-wide v13, v0, v9

    aput-wide v13, v0, v10

    aput-wide v11, v0, v9

    .line 2842
    aget-wide v13, v0, v6

    cmpg-double v13, v11, v13

    if-gez v13, :cond_134

    aget-wide v13, v0, v6

    aput-wide v13, v0, v9

    aput-wide v11, v0, v6

    .line 2843
    aget-wide v13, v0, v7

    cmpg-double v13, v11, v13

    if-gez v13, :cond_134

    aget-wide v13, v0, v7

    aput-wide v13, v0, v6

    aput-wide v11, v0, v7

    .line 2844
    aget-wide v13, v0, v8

    cmpg-double v13, v11, v13

    if-gez v13, :cond_134

    aget-wide v13, v0, v8

    aput-wide v13, v0, v7

    aput-wide v11, v0, v8

    .line 2850
    .end local v11    # "t":D
    :cond_134
    move/from16 v11, p1

    .line 2851
    .local v11, "less":I
    move/from16 v12, p2

    .line 2853
    .local v12, "great":I
    aget-wide v13, v0, v8

    aget-wide v15, v0, v7

    cmpl-double v13, v13, v15

    const/4 v14, 0x0

    if-eqz v13, :cond_235

    aget-wide v15, v0, v7

    aget-wide v17, v0, v6

    cmpl-double v13, v15, v17

    if-eqz v13, :cond_235

    aget-wide v15, v0, v6

    aget-wide v17, v0, v9

    cmpl-double v13, v15, v17

    if-eqz v13, :cond_235

    aget-wide v15, v0, v9

    aget-wide v17, v0, v10

    cmpl-double v13, v15, v17

    if-eqz v13, :cond_235

    .line 2859
    aget-wide v15, v0, v7

    .line 2860
    .local v15, "pivot1":D
    aget-wide v17, v0, v9

    .line 2868
    .local v17, "pivot2":D
    aget-wide v19, v0, v1

    aput-wide v19, v0, v7

    .line 2869
    aget-wide v19, v0, v2

    aput-wide v19, v0, v9

    .line 2874
    :goto_165
    add-int/lit8 v11, v11, 0x1

    aget-wide v19, v0, v11

    cmpg-double v13, v19, v15

    if-gez v13, :cond_16e

    goto :goto_165

    .line 2875
    :cond_16e
    :goto_16e
    add-int/lit8 v12, v12, -0x1

    aget-wide v19, v0, v12

    cmpl-double v13, v19, v17

    if-lez v13, :cond_177

    goto :goto_16e

    .line 2897
    :cond_177
    add-int/lit8 v13, v11, -0x1

    .local v13, "k":I
    :goto_179
    add-int/lit8 v13, v13, 0x1

    if-gt v13, v12, :cond_1ba

    .line 2898
    aget-wide v19, v0, v13

    .line 2899
    .local v19, "ak":D
    cmpg-double v21, v19, v15

    if-gez v21, :cond_18c

    .line 2900
    aget-wide v21, v0, v11

    aput-wide v21, v0, v13

    .line 2905
    aput-wide v19, v0, v11

    .line 2906
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b9

    .line 2907
    :cond_18c
    cmpl-double v21, v19, v17

    if-lez v21, :cond_1b9

    .line 2908
    :goto_190
    aget-wide v21, v0, v12

    cmpl-double v21, v21, v17

    if-lez v21, :cond_1a0

    .line 2909
    add-int/lit8 v21, v12, -0x1

    .end local v12    # "great":I
    .local v21, "great":I
    if-ne v12, v13, :cond_19d

    .line 2910
    move/from16 v12, v21

    goto :goto_1ba

    .line 2909
    :cond_19d
    move/from16 v12, v21

    goto :goto_190

    .line 2913
    .end local v21    # "great":I
    .restart local v12    # "great":I
    :cond_1a0
    aget-wide v21, v0, v12

    cmpg-double v21, v21, v15

    if-gez v21, :cond_1b1

    .line 2914
    aget-wide v21, v0, v11

    aput-wide v21, v0, v13

    .line 2915
    aget-wide v21, v0, v12

    aput-wide v21, v0, v11

    .line 2916
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b5

    .line 2918
    :cond_1b1
    aget-wide v21, v0, v12

    aput-wide v21, v0, v13

    .line 2924
    :goto_1b5
    aput-wide v19, v0, v12

    .line 2925
    add-int/lit8 v12, v12, -0x1

    .line 2927
    .end local v19    # "ak":D
    :cond_1b9
    :goto_1b9
    goto :goto_179

    .line 2930
    .end local v13    # "k":I
    :cond_1ba
    :goto_1ba
    add-int/lit8 v13, v11, -0x1

    aget-wide v19, v0, v13

    aput-wide v19, v0, v1

    add-int/lit8 v13, v11, -0x1

    aput-wide v15, v0, v13

    .line 2931
    add-int/lit8 v13, v12, 0x1

    aget-wide v19, v0, v13

    aput-wide v19, v0, v2

    add-int/lit8 v13, v12, 0x1

    aput-wide v17, v0, v13

    .line 2934
    add-int/lit8 v13, v11, -0x2

    invoke-static {v0, v1, v13, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2935
    add-int/lit8 v13, v12, 0x2

    invoke-static {v0, v13, v2, v14}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2941
    if-ge v11, v8, :cond_231

    if-ge v10, v12, :cond_231

    .line 2945
    :goto_1dc
    aget-wide v19, v0, v11

    cmpl-double v13, v19, v15

    if-nez v13, :cond_1e5

    .line 2946
    add-int/lit8 v11, v11, 0x1

    goto :goto_1dc

    .line 2949
    :cond_1e5
    :goto_1e5
    aget-wide v19, v0, v12

    cmpl-double v13, v19, v17

    if-nez v13, :cond_1ee

    .line 2950
    add-int/lit8 v12, v12, -0x1

    goto :goto_1e5

    .line 2973
    :cond_1ee
    add-int/lit8 v13, v11, -0x1

    .restart local v13    # "k":I
    :goto_1f0
    add-int/lit8 v13, v13, 0x1

    if-gt v13, v12, :cond_231

    .line 2974
    aget-wide v19, v0, v13

    .line 2975
    .restart local v19    # "ak":D
    cmpl-double v21, v19, v15

    if-nez v21, :cond_203

    .line 2976
    aget-wide v21, v0, v11

    aput-wide v21, v0, v13

    .line 2977
    aput-wide v19, v0, v11

    .line 2978
    add-int/lit8 v11, v11, 0x1

    goto :goto_230

    .line 2979
    :cond_203
    cmpl-double v21, v19, v17

    if-nez v21, :cond_230

    .line 2980
    :goto_207
    aget-wide v21, v0, v12

    cmpl-double v21, v21, v17

    if-nez v21, :cond_217

    .line 2981
    add-int/lit8 v21, v12, -0x1

    .end local v12    # "great":I
    .restart local v21    # "great":I
    if-ne v12, v13, :cond_214

    .line 2982
    move/from16 v12, v21

    goto :goto_231

    .line 2981
    :cond_214
    move/from16 v12, v21

    goto :goto_207

    .line 2985
    .end local v21    # "great":I
    .restart local v12    # "great":I
    :cond_217
    aget-wide v21, v0, v12

    cmpl-double v21, v21, v15

    if-nez v21, :cond_228

    .line 2986
    aget-wide v21, v0, v11

    aput-wide v21, v0, v13

    .line 2995
    aget-wide v21, v0, v12

    aput-wide v21, v0, v11

    .line 2996
    add-int/lit8 v11, v11, 0x1

    goto :goto_22c

    .line 2998
    :cond_228
    aget-wide v21, v0, v12

    aput-wide v21, v0, v13

    .line 3000
    :goto_22c
    aput-wide v19, v0, v12

    .line 3001
    add-int/lit8 v12, v12, -0x1

    .line 3003
    .end local v19    # "ak":D
    :cond_230
    :goto_230
    goto :goto_1f0

    .line 3007
    .end local v13    # "k":I
    :cond_231
    :goto_231
    invoke-static {v0, v11, v12, v14}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 3009
    .end local v15    # "pivot1":D
    .end local v17    # "pivot2":D
    goto :goto_27f

    .line 3014
    :cond_235
    aget-wide v15, v0, v6

    .line 3036
    .local v15, "pivot":D
    move v13, v11

    .restart local v13    # "k":I
    :goto_238
    if-gt v13, v12, :cond_275

    .line 3037
    aget-wide v17, v0, v13

    cmpl-double v17, v17, v15

    if-nez v17, :cond_241

    .line 3038
    goto :goto_272

    .line 3040
    :cond_241
    aget-wide v17, v0, v13

    .line 3041
    .local v17, "ak":D
    cmpg-double v19, v17, v15

    if-gez v19, :cond_250

    .line 3042
    aget-wide v19, v0, v11

    aput-wide v19, v0, v13

    .line 3043
    aput-wide v17, v0, v11

    .line 3044
    add-int/lit8 v11, v11, 0x1

    goto :goto_272

    .line 3046
    :cond_250
    :goto_250
    aget-wide v19, v0, v12

    cmpl-double v19, v19, v15

    if-lez v19, :cond_259

    .line 3047
    add-int/lit8 v12, v12, -0x1

    goto :goto_250

    .line 3049
    :cond_259
    aget-wide v19, v0, v12

    cmpg-double v19, v19, v15

    if-gez v19, :cond_26a

    .line 3050
    aget-wide v19, v0, v11

    aput-wide v19, v0, v13

    .line 3051
    aget-wide v19, v0, v12

    aput-wide v19, v0, v11

    .line 3052
    add-int/lit8 v11, v11, 0x1

    goto :goto_26e

    .line 3062
    :cond_26a
    aget-wide v19, v0, v12

    aput-wide v19, v0, v13

    .line 3064
    :goto_26e
    aput-wide v17, v0, v12

    .line 3065
    add-int/lit8 v12, v12, -0x1

    .line 3036
    .end local v17    # "ak":D
    :goto_272
    add-int/lit8 v13, v13, 0x1

    goto :goto_238

    .line 3074
    .end local v13    # "k":I
    :cond_275
    add-int/lit8 v13, v11, -0x1

    invoke-static {v0, v1, v13, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 3075
    add-int/lit8 v13, v12, 0x1

    invoke-static {v0, v13, v2, v14}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 3077
    .end local v15    # "pivot":D
    :goto_27f
    return-void
.end method

.method static blacklist sort([DII[DII)V
    .registers 19
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [D
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    move v6, p1

    move v0, p2

    .line 2556
    .end local p2    # "right":I
    .local v0, "right":I
    :goto_2
    if-gt v6, v0, :cond_f

    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2557
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2559
    :cond_f
    move v1, v0

    move v7, v0

    .end local v0    # "right":I
    .local v1, "k":I
    .local v7, "right":I
    :goto_11
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v6, :cond_24

    .line 2560
    aget-wide v2, p0, v1

    .line 2561
    .local v2, "ak":D
    cmpl-double v0, v2, v2

    if-eqz v0, :cond_23

    .line 2562
    aget-wide v4, p0, v7

    aput-wide v4, p0, v1

    .line 2563
    aput-wide v2, p0, v7

    .line 2564
    add-int/lit8 v7, v7, -0x1

    .line 2566
    .end local v2    # "ak":D
    :cond_23
    goto :goto_11

    .line 2571
    .end local v1    # "k":I
    :cond_24
    move-object v0, p0

    move v1, p1

    move v2, v7

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->doSort([DII[DII)V

    .line 2576
    move v0, v7

    .line 2581
    .end local p1    # "left":I
    .local v0, "hi":I
    .local v6, "left":I
    :goto_31
    const-wide/16 v1, 0x0

    if-ge v6, v0, :cond_45

    .line 2582
    add-int v3, v6, v0

    ushr-int/lit8 v3, v3, 0x1

    .line 2583
    .local v3, "middle":I
    aget-wide v4, p0, v3

    .line 2585
    .local v4, "middleValue":D
    cmpg-double v1, v4, v1

    if-gez v1, :cond_43

    .line 2586
    add-int/lit8 v1, v3, 0x1

    move v6, v1

    .end local v6    # "left":I
    .local v1, "left":I
    goto :goto_44

    .line 2588
    .end local v1    # "left":I
    .restart local v6    # "left":I
    :cond_43
    move v0, v3

    .line 2590
    .end local v3    # "middle":I
    .end local v4    # "middleValue":D
    :goto_44
    goto :goto_31

    .line 2595
    :cond_45
    :goto_45
    const-wide/16 v3, 0x0

    if-gt v6, v7, :cond_56

    aget-wide v8, p0, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    cmp-long v5, v8, v3

    if-gez v5, :cond_56

    .line 2596
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 2620
    :cond_56
    move v5, v6

    .local v5, "k":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "p":I
    :goto_59
    add-int/lit8 v5, v5, 0x1

    if-gt v5, v7, :cond_75

    .line 2621
    aget-wide v9, p0, v5

    .line 2622
    .local v9, "ak":D
    cmpl-double v11, v9, v1

    if-eqz v11, :cond_64

    .line 2623
    goto :goto_75

    .line 2625
    :cond_64
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v11

    cmp-long v11, v11, v3

    if-gez v11, :cond_74

    .line 2626
    aput-wide v1, p0, v5

    .line 2627
    add-int/lit8 v8, v8, 0x1

    const-wide/high16 v11, -0x8000000000000000L

    aput-wide v11, p0, v8

    .line 2629
    .end local v9    # "ak":D
    :cond_74
    goto :goto_59

    .line 2630
    .end local v5    # "k":I
    .end local v8    # "p":I
    :cond_75
    :goto_75
    return-void
.end method

.method private static blacklist sort([FIIZ)V
    .registers 22
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .line 2211
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sub-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    .line 2214
    .local v4, "length":I
    const/16 v5, 0x2f

    if-ge v4, v5, :cond_99

    .line 2215
    if-eqz v3, :cond_38

    .line 2221
    move/from16 v5, p1

    .local v5, "i":I
    move v6, v5

    .local v6, "j":I
    :goto_15
    if-ge v5, v2, :cond_37

    .line 2222
    add-int/lit8 v7, v5, 0x1

    aget v7, v0, v7

    .line 2223
    .local v7, "ai":F
    :goto_1b
    aget v8, v0, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_2f

    .line 2224
    add-int/lit8 v8, v6, 0x1

    aget v9, v0, v6

    aput v9, v0, v8

    .line 2225
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "j":I
    .local v8, "j":I
    if-ne v6, v1, :cond_2d

    .line 2226
    move v6, v8

    goto :goto_2f

    .line 2225
    :cond_2d
    move v6, v8

    goto :goto_1b

    .line 2229
    .end local v8    # "j":I
    .restart local v6    # "j":I
    :cond_2f
    :goto_2f
    add-int/lit8 v8, v6, 0x1

    aput v7, v0, v8

    .line 2221
    .end local v7    # "ai":F
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    goto :goto_15

    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_37
    goto :goto_98

    .line 2236
    .end local p1    # "left":I
    .local v1, "left":I
    :cond_38
    if-lt v1, v2, :cond_3b

    .line 2237
    return-void

    .line 2239
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    aget v5, v0, v1

    add-int/lit8 v6, v1, -0x1

    aget v6, v0, v6

    cmpl-float v5, v5, v6

    if-gez v5, :cond_38

    .line 2249
    move v5, v1

    .local v5, "k":I
    :goto_48
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_83

    .line 2250
    aget v6, v0, v5

    .local v6, "a1":F
    aget v7, v0, v1

    .line 2252
    .local v7, "a2":F
    cmpg-float v8, v6, v7

    if-gez v8, :cond_57

    .line 2253
    move v7, v6

    aget v6, v0, v1

    .line 2255
    :cond_57
    :goto_57
    add-int/lit8 v5, v5, -0x1

    aget v8, v0, v5

    cmpg-float v8, v6, v8

    if-gez v8, :cond_66

    .line 2256
    add-int/lit8 v8, v5, 0x2

    aget v9, v0, v5

    aput v9, v0, v8

    goto :goto_57

    .line 2258
    :cond_66
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v5, 0x1

    aput v6, v0, v8

    .line 2260
    :goto_6c
    add-int/lit8 v5, v5, -0x1

    aget v8, v0, v5

    cmpg-float v8, v7, v8

    if-gez v8, :cond_7b

    .line 2261
    add-int/lit8 v8, v5, 0x1

    aget v9, v0, v5

    aput v9, v0, v8

    goto :goto_6c

    .line 2263
    :cond_7b
    add-int/lit8 v8, v5, 0x1

    aput v7, v0, v8

    .line 2249
    .end local v6    # "a1":F
    .end local v7    # "a2":F
    add-int/lit8 v1, v1, 0x1

    move v5, v1

    goto :goto_48

    .line 2265
    .end local v5    # "k":I
    :cond_83
    aget v5, v0, v2

    .line 2267
    .end local p2    # "right":I
    .local v2, "right":I
    .local v5, "last":F
    :goto_85
    add-int/lit8 v2, v2, -0x1

    aget v6, v0, v2

    cmpg-float v6, v5, v6

    if-gez v6, :cond_94

    .line 2268
    add-int/lit8 v6, v2, 0x1

    aget v7, v0, v2

    aput v7, v0, v6

    goto :goto_85

    .line 2270
    :cond_94
    add-int/lit8 v6, v2, 0x1

    aput v5, v0, v6

    .line 2272
    .end local v5    # "last":F
    :goto_98
    return-void

    .line 2276
    .end local v1    # "left":I
    .end local v2    # "right":I
    .restart local p1    # "left":I
    .restart local p2    # "right":I
    :cond_99
    shr-int/lit8 v5, v4, 0x3

    shr-int/lit8 v6, v4, 0x6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    .line 2285
    .local v5, "seventh":I
    add-int v6, v1, v2

    ushr-int/lit8 v6, v6, 0x1

    .line 2286
    .local v6, "e3":I
    sub-int v7, v6, v5

    .line 2287
    .local v7, "e2":I
    sub-int v8, v7, v5

    .line 2288
    .local v8, "e1":I
    add-int v9, v6, v5

    .line 2289
    .local v9, "e4":I
    add-int v10, v9, v5

    .line 2292
    .local v10, "e5":I
    aget v11, v0, v7

    aget v12, v0, v8

    cmpg-float v11, v11, v12

    if-gez v11, :cond_bc

    aget v11, v0, v7

    .local v11, "t":F
    aget v12, v0, v8

    aput v12, v0, v7

    aput v11, v0, v8

    .line 2294
    .end local v11    # "t":F
    :cond_bc
    aget v11, v0, v6

    aget v12, v0, v7

    cmpg-float v11, v11, v12

    if-gez v11, :cond_d8

    aget v11, v0, v6

    .restart local v11    # "t":F
    aget v12, v0, v7

    aput v12, v0, v6

    aput v11, v0, v7

    .line 2295
    aget v12, v0, v8

    cmpg-float v12, v11, v12

    if-gez v12, :cond_d8

    aget v12, v0, v8

    aput v12, v0, v7

    aput v11, v0, v8

    .line 2297
    .end local v11    # "t":F
    :cond_d8
    aget v11, v0, v9

    aget v12, v0, v6

    cmpg-float v11, v11, v12

    if-gez v11, :cond_100

    aget v11, v0, v9

    .restart local v11    # "t":F
    aget v12, v0, v6

    aput v12, v0, v9

    aput v11, v0, v6

    .line 2298
    aget v12, v0, v7

    cmpg-float v12, v11, v12

    if-gez v12, :cond_100

    aget v12, v0, v7

    aput v12, v0, v6

    aput v11, v0, v7

    .line 2299
    aget v12, v0, v8

    cmpg-float v12, v11, v12

    if-gez v12, :cond_100

    aget v12, v0, v8

    aput v12, v0, v7

    aput v11, v0, v8

    .line 2302
    .end local v11    # "t":F
    :cond_100
    aget v11, v0, v10

    aget v12, v0, v9

    cmpg-float v11, v11, v12

    if-gez v11, :cond_134

    aget v11, v0, v10

    .restart local v11    # "t":F
    aget v12, v0, v9

    aput v12, v0, v10

    aput v11, v0, v9

    .line 2303
    aget v12, v0, v6

    cmpg-float v12, v11, v12

    if-gez v12, :cond_134

    aget v12, v0, v6

    aput v12, v0, v9

    aput v11, v0, v6

    .line 2304
    aget v12, v0, v7

    cmpg-float v12, v11, v12

    if-gez v12, :cond_134

    aget v12, v0, v7

    aput v12, v0, v6

    aput v11, v0, v7

    .line 2305
    aget v12, v0, v8

    cmpg-float v12, v11, v12

    if-gez v12, :cond_134

    aget v12, v0, v8

    aput v12, v0, v7

    aput v11, v0, v8

    .line 2311
    .end local v11    # "t":F
    :cond_134
    move/from16 v11, p1

    .line 2312
    .local v11, "less":I
    move/from16 v12, p2

    .line 2314
    .local v12, "great":I
    aget v13, v0, v8

    aget v14, v0, v7

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_23a

    aget v13, v0, v7

    aget v15, v0, v6

    cmpl-float v13, v13, v15

    if-eqz v13, :cond_23a

    aget v13, v0, v6

    aget v15, v0, v9

    cmpl-float v13, v13, v15

    if-eqz v13, :cond_23a

    aget v13, v0, v9

    aget v15, v0, v10

    cmpl-float v13, v13, v15

    if-eqz v13, :cond_23a

    .line 2320
    aget v13, v0, v7

    .line 2321
    .local v13, "pivot1":F
    aget v15, v0, v9

    .line 2329
    .local v15, "pivot2":F
    aget v16, v0, v1

    aput v16, v0, v7

    .line 2330
    aget v16, v0, v2

    aput v16, v0, v9

    .line 2335
    :goto_164
    add-int/lit8 v11, v11, 0x1

    aget v16, v0, v11

    cmpg-float v16, v16, v13

    if-gez v16, :cond_16d

    goto :goto_164

    .line 2336
    :cond_16d
    :goto_16d
    add-int/lit8 v12, v12, -0x1

    aget v16, v0, v12

    cmpl-float v16, v16, v15

    if-lez v16, :cond_176

    goto :goto_16d

    .line 2358
    :cond_176
    add-int/lit8 v16, v11, -0x1

    .local v16, "k":I
    :goto_178
    add-int/lit8 v14, v16, 0x1

    .end local v16    # "k":I
    .local v14, "k":I
    if-gt v14, v12, :cond_1bb

    .line 2359
    aget v16, v0, v14

    .line 2360
    .local v16, "ak":F
    cmpg-float v17, v16, v13

    if-gez v17, :cond_18b

    .line 2361
    aget v17, v0, v11

    aput v17, v0, v14

    .line 2366
    aput v16, v0, v11

    .line 2367
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b8

    .line 2368
    :cond_18b
    cmpl-float v17, v16, v15

    if-lez v17, :cond_1b8

    .line 2369
    :goto_18f
    aget v17, v0, v12

    cmpl-float v17, v17, v15

    if-lez v17, :cond_19f

    .line 2370
    add-int/lit8 v17, v12, -0x1

    .end local v12    # "great":I
    .local v17, "great":I
    if-ne v12, v14, :cond_19c

    .line 2371
    move/from16 v12, v17

    goto :goto_1bb

    .line 2370
    :cond_19c
    move/from16 v12, v17

    goto :goto_18f

    .line 2374
    .end local v17    # "great":I
    .restart local v12    # "great":I
    :cond_19f
    aget v17, v0, v12

    cmpg-float v17, v17, v13

    if-gez v17, :cond_1b0

    .line 2375
    aget v17, v0, v11

    aput v17, v0, v14

    .line 2376
    aget v17, v0, v12

    aput v17, v0, v11

    .line 2377
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b4

    .line 2379
    :cond_1b0
    aget v17, v0, v12

    aput v17, v0, v14

    .line 2385
    :goto_1b4
    aput v16, v0, v12

    .line 2386
    add-int/lit8 v12, v12, -0x1

    .line 2388
    .end local v16    # "ak":F
    :cond_1b8
    :goto_1b8
    move/from16 v16, v14

    goto :goto_178

    .line 2391
    .end local v14    # "k":I
    :cond_1bb
    :goto_1bb
    add-int/lit8 v14, v11, -0x1

    aget v14, v0, v14

    aput v14, v0, v1

    add-int/lit8 v14, v11, -0x1

    aput v13, v0, v14

    .line 2392
    add-int/lit8 v14, v12, 0x1

    aget v14, v0, v14

    aput v14, v0, v2

    add-int/lit8 v14, v12, 0x1

    aput v15, v0, v14

    .line 2395
    add-int/lit8 v14, v11, -0x2

    invoke-static {v0, v1, v14, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2396
    add-int/lit8 v14, v12, 0x2

    move/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "length":I
    .local v16, "length":I
    invoke-static {v0, v14, v2, v4}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2402
    if-ge v11, v8, :cond_235

    if-ge v10, v12, :cond_235

    .line 2406
    :goto_1e0
    aget v4, v0, v11

    cmpl-float v4, v4, v13

    if-nez v4, :cond_1e9

    .line 2407
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e0

    .line 2410
    :cond_1e9
    :goto_1e9
    aget v4, v0, v12

    cmpl-float v4, v4, v15

    if-nez v4, :cond_1f2

    .line 2411
    add-int/lit8 v12, v12, -0x1

    goto :goto_1e9

    .line 2434
    :cond_1f2
    add-int/lit8 v4, v11, -0x1

    .local v4, "k":I
    :goto_1f4
    add-int/lit8 v4, v4, 0x1

    if-gt v4, v12, :cond_235

    .line 2435
    aget v14, v0, v4

    .line 2436
    .local v14, "ak":F
    cmpl-float v17, v14, v13

    if-nez v17, :cond_207

    .line 2437
    aget v17, v0, v11

    aput v17, v0, v4

    .line 2438
    aput v14, v0, v11

    .line 2439
    add-int/lit8 v11, v11, 0x1

    goto :goto_234

    .line 2440
    :cond_207
    cmpl-float v17, v14, v15

    if-nez v17, :cond_234

    .line 2441
    :goto_20b
    aget v17, v0, v12

    cmpl-float v17, v17, v15

    if-nez v17, :cond_21b

    .line 2442
    add-int/lit8 v17, v12, -0x1

    .end local v12    # "great":I
    .restart local v17    # "great":I
    if-ne v12, v4, :cond_218

    .line 2443
    move/from16 v12, v17

    goto :goto_235

    .line 2442
    :cond_218
    move/from16 v12, v17

    goto :goto_20b

    .line 2446
    .end local v17    # "great":I
    .restart local v12    # "great":I
    :cond_21b
    aget v17, v0, v12

    cmpl-float v17, v17, v13

    if-nez v17, :cond_22c

    .line 2447
    aget v17, v0, v11

    aput v17, v0, v4

    .line 2456
    aget v17, v0, v12

    aput v17, v0, v11

    .line 2457
    add-int/lit8 v11, v11, 0x1

    goto :goto_230

    .line 2459
    :cond_22c
    aget v17, v0, v12

    aput v17, v0, v4

    .line 2461
    :goto_230
    aput v14, v0, v12

    .line 2462
    add-int/lit8 v12, v12, -0x1

    .line 2464
    .end local v14    # "ak":F
    :cond_234
    :goto_234
    goto :goto_1f4

    .line 2468
    .end local v4    # "k":I
    :cond_235
    :goto_235
    const/4 v4, 0x0

    invoke-static {v0, v11, v12, v4}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2470
    .end local v13    # "pivot1":F
    .end local v15    # "pivot2":F
    goto :goto_287

    .line 2314
    .end local v16    # "length":I
    .local v4, "length":I
    :cond_23a
    move/from16 v16, v4

    .line 2475
    .end local v4    # "length":I
    .restart local v16    # "length":I
    aget v4, v0, v6

    .line 2497
    .local v4, "pivot":F
    move v13, v11

    .local v13, "k":I
    :goto_23f
    if-gt v13, v12, :cond_27c

    .line 2498
    aget v14, v0, v13

    cmpl-float v14, v14, v4

    if-nez v14, :cond_248

    .line 2499
    goto :goto_279

    .line 2501
    :cond_248
    aget v14, v0, v13

    .line 2502
    .restart local v14    # "ak":F
    cmpg-float v15, v14, v4

    if-gez v15, :cond_257

    .line 2503
    aget v15, v0, v11

    aput v15, v0, v13

    .line 2504
    aput v14, v0, v11

    .line 2505
    add-int/lit8 v11, v11, 0x1

    goto :goto_279

    .line 2507
    :cond_257
    :goto_257
    aget v15, v0, v12

    cmpl-float v15, v15, v4

    if-lez v15, :cond_260

    .line 2508
    add-int/lit8 v12, v12, -0x1

    goto :goto_257

    .line 2510
    :cond_260
    aget v15, v0, v12

    cmpg-float v15, v15, v4

    if-gez v15, :cond_271

    .line 2511
    aget v15, v0, v11

    aput v15, v0, v13

    .line 2512
    aget v15, v0, v12

    aput v15, v0, v11

    .line 2513
    add-int/lit8 v11, v11, 0x1

    goto :goto_275

    .line 2523
    :cond_271
    aget v15, v0, v12

    aput v15, v0, v13

    .line 2525
    :goto_275
    aput v14, v0, v12

    .line 2526
    add-int/lit8 v12, v12, -0x1

    .line 2497
    .end local v14    # "ak":F
    :goto_279
    add-int/lit8 v13, v13, 0x1

    goto :goto_23f

    .line 2535
    .end local v13    # "k":I
    :cond_27c
    add-int/lit8 v13, v11, -0x1

    invoke-static {v0, v1, v13, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2536
    add-int/lit8 v13, v12, 0x1

    const/4 v14, 0x0

    invoke-static {v0, v13, v2, v14}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2538
    .end local v4    # "pivot":F
    :goto_287
    return-void
.end method

.method static blacklist sort([FII[FII)V
    .registers 13
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [F
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .line 2017
    :goto_0
    if-gt p1, p2, :cond_d

    aget v0, p0, p2

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2018
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2020
    :cond_d
    move v0, p2

    .local v0, "k":I
    :goto_e
    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_21

    .line 2021
    aget v1, p0, v0

    .line 2022
    .local v1, "ak":F
    cmpl-float v2, v1, v1

    if-eqz v2, :cond_20

    .line 2023
    aget v2, p0, p2

    aput v2, p0, v0

    .line 2024
    aput v1, p0, p2

    .line 2025
    add-int/lit8 p2, p2, -0x1

    .line 2027
    .end local v1    # "ak":F
    :cond_20
    goto :goto_e

    .line 2032
    .end local v0    # "k":I
    :cond_21
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->doSort([FII[FII)V

    .line 2037
    move v0, p2

    .line 2042
    .local v0, "hi":I
    :goto_2b
    const/4 v1, 0x0

    if-ge p1, v0, :cond_3d

    .line 2043
    add-int v2, p1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 2044
    .local v2, "middle":I
    aget v3, p0, v2

    .line 2046
    .local v3, "middleValue":F
    cmpg-float v1, v3, v1

    if-gez v1, :cond_3b

    .line 2047
    add-int/lit8 p1, v2, 0x1

    goto :goto_3c

    .line 2049
    :cond_3b
    move v0, v2

    .line 2051
    .end local v2    # "middle":I
    .end local v3    # "middleValue":F
    :goto_3c
    goto :goto_2b

    .line 2056
    :cond_3d
    :goto_3d
    if-gt p1, p2, :cond_4a

    aget v2, p0, p1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    if-gez v2, :cond_4a

    .line 2057
    add-int/lit8 p1, p1, 0x1

    goto :goto_3d

    .line 2081
    :cond_4a
    move v2, p1

    .local v2, "k":I
    add-int/lit8 v3, p1, -0x1

    .local v3, "p":I
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    if-gt v2, p2, :cond_67

    .line 2082
    aget v4, p0, v2

    .line 2083
    .local v4, "ak":F
    cmpl-float v5, v4, v1

    if-eqz v5, :cond_58

    .line 2084
    goto :goto_67

    .line 2086
    :cond_58
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    if-gez v5, :cond_66

    .line 2087
    aput v1, p0, v2

    .line 2088
    add-int/lit8 v3, v3, 0x1

    const/high16 v5, -0x80000000

    aput v5, p0, v3

    .line 2090
    .end local v4    # "ak":F
    :cond_66
    goto :goto_4d

    .line 2091
    .end local v2    # "k":I
    .end local v3    # "p":I
    :cond_67
    :goto_67
    return-void
.end method

.method private static blacklist sort([IIIZ)V
    .registers 23
    .param p0, "a"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .line 215
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sub-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    .line 218
    .local v4, "length":I
    const/16 v5, 0x2f

    if-ge v4, v5, :cond_8d

    .line 219
    if-eqz v3, :cond_36

    .line 225
    move/from16 v5, p1

    .local v5, "i":I
    move v6, v5

    .local v6, "j":I
    :goto_15
    if-ge v5, v2, :cond_35

    .line 226
    add-int/lit8 v7, v5, 0x1

    aget v7, v0, v7

    .line 227
    .local v7, "ai":I
    :goto_1b
    aget v8, v0, v6

    if-ge v7, v8, :cond_2d

    .line 228
    add-int/lit8 v8, v6, 0x1

    aget v9, v0, v6

    aput v9, v0, v8

    .line 229
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "j":I
    .local v8, "j":I
    if-ne v6, v1, :cond_2b

    .line 230
    move v6, v8

    goto :goto_2d

    .line 229
    :cond_2b
    move v6, v8

    goto :goto_1b

    .line 233
    .end local v8    # "j":I
    .restart local v6    # "j":I
    :cond_2d
    :goto_2d
    add-int/lit8 v8, v6, 0x1

    aput v7, v0, v8

    .line 225
    .end local v7    # "ai":I
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    goto :goto_15

    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_35
    goto :goto_8c

    .line 240
    .end local p1    # "left":I
    .local v1, "left":I
    :cond_36
    if-lt v1, v2, :cond_39

    .line 241
    return-void

    .line 243
    :cond_39
    add-int/lit8 v1, v1, 0x1

    aget v5, v0, v1

    add-int/lit8 v6, v1, -0x1

    aget v6, v0, v6

    if-ge v5, v6, :cond_36

    .line 253
    move v5, v1

    .local v5, "k":I
    :goto_44
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_79

    .line 254
    aget v6, v0, v5

    .local v6, "a1":I
    aget v7, v0, v1

    .line 256
    .local v7, "a2":I
    if-ge v6, v7, :cond_51

    .line 257
    move v7, v6

    aget v6, v0, v1

    .line 259
    :cond_51
    :goto_51
    add-int/lit8 v5, v5, -0x1

    aget v8, v0, v5

    if-ge v6, v8, :cond_5e

    .line 260
    add-int/lit8 v8, v5, 0x2

    aget v9, v0, v5

    aput v9, v0, v8

    goto :goto_51

    .line 262
    :cond_5e
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v5, 0x1

    aput v6, v0, v8

    .line 264
    :goto_64
    add-int/lit8 v5, v5, -0x1

    aget v8, v0, v5

    if-ge v7, v8, :cond_71

    .line 265
    add-int/lit8 v8, v5, 0x1

    aget v9, v0, v5

    aput v9, v0, v8

    goto :goto_64

    .line 267
    :cond_71
    add-int/lit8 v8, v5, 0x1

    aput v7, v0, v8

    .line 253
    .end local v6    # "a1":I
    .end local v7    # "a2":I
    add-int/lit8 v1, v1, 0x1

    move v5, v1

    goto :goto_44

    .line 269
    .end local v5    # "k":I
    :cond_79
    aget v5, v0, v2

    .line 271
    .end local p2    # "right":I
    .local v2, "right":I
    .local v5, "last":I
    :goto_7b
    add-int/lit8 v2, v2, -0x1

    aget v6, v0, v2

    if-ge v5, v6, :cond_88

    .line 272
    add-int/lit8 v6, v2, 0x1

    aget v7, v0, v2

    aput v7, v0, v6

    goto :goto_7b

    .line 274
    :cond_88
    add-int/lit8 v6, v2, 0x1

    aput v5, v0, v6

    .line 276
    .end local v5    # "last":I
    :goto_8c
    return-void

    .line 280
    .end local v1    # "left":I
    .end local v2    # "right":I
    .restart local p1    # "left":I
    .restart local p2    # "right":I
    :cond_8d
    shr-int/lit8 v5, v4, 0x3

    shr-int/lit8 v6, v4, 0x6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    .line 289
    .local v5, "seventh":I
    add-int v6, v1, v2

    ushr-int/lit8 v6, v6, 0x1

    .line 290
    .local v6, "e3":I
    sub-int v7, v6, v5

    .line 291
    .local v7, "e2":I
    sub-int v8, v7, v5

    .line 292
    .local v8, "e1":I
    add-int v9, v6, v5

    .line 293
    .local v9, "e4":I
    add-int v10, v9, v5

    .line 296
    .local v10, "e5":I
    aget v11, v0, v7

    aget v12, v0, v8

    if-ge v11, v12, :cond_ae

    aget v11, v0, v7

    .local v11, "t":I
    aget v12, v0, v8

    aput v12, v0, v7

    aput v11, v0, v8

    .line 298
    .end local v11    # "t":I
    :cond_ae
    aget v11, v0, v6

    aget v12, v0, v7

    if-ge v11, v12, :cond_c6

    aget v11, v0, v6

    .restart local v11    # "t":I
    aget v12, v0, v7

    aput v12, v0, v6

    aput v11, v0, v7

    .line 299
    aget v12, v0, v8

    if-ge v11, v12, :cond_c6

    aget v12, v0, v8

    aput v12, v0, v7

    aput v11, v0, v8

    .line 301
    .end local v11    # "t":I
    :cond_c6
    aget v11, v0, v9

    aget v12, v0, v6

    if-ge v11, v12, :cond_e8

    aget v11, v0, v9

    .restart local v11    # "t":I
    aget v12, v0, v6

    aput v12, v0, v9

    aput v11, v0, v6

    .line 302
    aget v12, v0, v7

    if-ge v11, v12, :cond_e8

    aget v12, v0, v7

    aput v12, v0, v6

    aput v11, v0, v7

    .line 303
    aget v12, v0, v8

    if-ge v11, v12, :cond_e8

    aget v12, v0, v8

    aput v12, v0, v7

    aput v11, v0, v8

    .line 306
    .end local v11    # "t":I
    :cond_e8
    aget v11, v0, v10

    aget v12, v0, v9

    if-ge v11, v12, :cond_114

    aget v11, v0, v10

    .restart local v11    # "t":I
    aget v12, v0, v9

    aput v12, v0, v10

    aput v11, v0, v9

    .line 307
    aget v12, v0, v6

    if-ge v11, v12, :cond_114

    aget v12, v0, v6

    aput v12, v0, v9

    aput v11, v0, v6

    .line 308
    aget v12, v0, v7

    if-ge v11, v12, :cond_114

    aget v12, v0, v7

    aput v12, v0, v6

    aput v11, v0, v7

    .line 309
    aget v12, v0, v8

    if-ge v11, v12, :cond_114

    aget v12, v0, v8

    aput v12, v0, v7

    aput v11, v0, v8

    .line 315
    .end local v11    # "t":I
    :cond_114
    move/from16 v11, p1

    .line 316
    .local v11, "less":I
    move/from16 v12, p2

    .line 318
    .local v12, "great":I
    aget v13, v0, v8

    aget v14, v0, v7

    if-eq v13, v14, :cond_203

    aget v13, v0, v7

    aget v14, v0, v6

    if-eq v13, v14, :cond_203

    aget v13, v0, v6

    aget v14, v0, v9

    if-eq v13, v14, :cond_203

    aget v13, v0, v9

    aget v14, v0, v10

    if-eq v13, v14, :cond_203

    .line 324
    aget v13, v0, v7

    .line 325
    .local v13, "pivot1":I
    aget v14, v0, v9

    .line 333
    .local v14, "pivot2":I
    aget v16, v0, v1

    aput v16, v0, v7

    .line 334
    aget v16, v0, v2

    aput v16, v0, v9

    .line 339
    :goto_13c
    add-int/lit8 v11, v11, 0x1

    aget v15, v0, v11

    if-ge v15, v13, :cond_143

    goto :goto_13c

    .line 340
    :cond_143
    :goto_143
    add-int/lit8 v12, v12, -0x1

    aget v15, v0, v12

    if-le v15, v14, :cond_14a

    goto :goto_143

    .line 362
    :cond_14a
    add-int/lit8 v15, v11, -0x1

    .local v15, "k":I
    :goto_14c
    add-int/lit8 v15, v15, 0x1

    if-gt v15, v12, :cond_192

    .line 363
    move/from16 v17, v4

    .end local v4    # "length":I
    .local v17, "length":I
    aget v4, v0, v15

    .line 364
    .local v4, "ak":I
    if-ge v4, v13, :cond_161

    .line 365
    aget v18, v0, v11

    aput v18, v0, v15

    .line 370
    aput v4, v0, v11

    .line 371
    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v5

    goto :goto_18d

    .line 372
    :cond_161
    if-le v4, v14, :cond_18b

    .line 373
    :goto_163
    move/from16 v18, v5

    .end local v5    # "seventh":I
    .local v18, "seventh":I
    aget v5, v0, v12

    if-le v5, v14, :cond_173

    .line 374
    add-int/lit8 v5, v12, -0x1

    .end local v12    # "great":I
    .local v5, "great":I
    if-ne v12, v15, :cond_16f

    .line 375
    move v12, v5

    goto :goto_196

    .line 374
    :cond_16f
    move v12, v5

    move/from16 v5, v18

    goto :goto_163

    .line 378
    .end local v5    # "great":I
    .restart local v12    # "great":I
    :cond_173
    aget v5, v0, v12

    if-ge v5, v13, :cond_182

    .line 379
    aget v5, v0, v11

    aput v5, v0, v15

    .line 380
    aget v5, v0, v12

    aput v5, v0, v11

    .line 381
    add-int/lit8 v11, v11, 0x1

    goto :goto_186

    .line 383
    :cond_182
    aget v5, v0, v12

    aput v5, v0, v15

    .line 389
    :goto_186
    aput v4, v0, v12

    .line 390
    add-int/lit8 v12, v12, -0x1

    goto :goto_18d

    .line 372
    .end local v18    # "seventh":I
    .local v5, "seventh":I
    :cond_18b
    move/from16 v18, v5

    .line 392
    .end local v4    # "ak":I
    .end local v5    # "seventh":I
    .restart local v18    # "seventh":I
    :goto_18d
    move/from16 v4, v17

    move/from16 v5, v18

    goto :goto_14c

    .line 362
    .end local v17    # "length":I
    .end local v18    # "seventh":I
    .local v4, "length":I
    .restart local v5    # "seventh":I
    :cond_192
    move/from16 v17, v4

    move/from16 v18, v5

    .line 395
    .end local v4    # "length":I
    .end local v5    # "seventh":I
    .end local v15    # "k":I
    .restart local v17    # "length":I
    .restart local v18    # "seventh":I
    :goto_196
    add-int/lit8 v4, v11, -0x1

    aget v4, v0, v4

    aput v4, v0, v1

    add-int/lit8 v4, v11, -0x1

    aput v13, v0, v4

    .line 396
    add-int/lit8 v4, v12, 0x1

    aget v4, v0, v4

    aput v4, v0, v2

    add-int/lit8 v4, v12, 0x1

    aput v14, v0, v4

    .line 399
    add-int/lit8 v4, v11, -0x2

    invoke-static {v0, v1, v4, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 400
    add-int/lit8 v4, v12, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v4, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 406
    if-ge v11, v8, :cond_1fe

    if-ge v10, v12, :cond_1fe

    .line 410
    :goto_1b9
    aget v4, v0, v11

    if-ne v4, v13, :cond_1c0

    .line 411
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b9

    .line 414
    :cond_1c0
    :goto_1c0
    aget v4, v0, v12

    if-ne v4, v14, :cond_1c7

    .line 415
    add-int/lit8 v12, v12, -0x1

    goto :goto_1c0

    .line 438
    :cond_1c7
    add-int/lit8 v4, v11, -0x1

    .local v4, "k":I
    :goto_1c9
    add-int/lit8 v4, v4, 0x1

    if-gt v4, v12, :cond_1fe

    .line 439
    aget v5, v0, v4

    .line 440
    .local v5, "ak":I
    if-ne v5, v13, :cond_1da

    .line 441
    aget v15, v0, v11

    aput v15, v0, v4

    .line 442
    aput v5, v0, v11

    .line 443
    add-int/lit8 v11, v11, 0x1

    goto :goto_1fd

    .line 444
    :cond_1da
    if-ne v5, v14, :cond_1fd

    .line 445
    :goto_1dc
    aget v15, v0, v12

    if-ne v15, v14, :cond_1e8

    .line 446
    add-int/lit8 v15, v12, -0x1

    .end local v12    # "great":I
    .local v15, "great":I
    if-ne v12, v4, :cond_1e6

    .line 447
    move v12, v15

    goto :goto_1fe

    .line 446
    :cond_1e6
    move v12, v15

    goto :goto_1dc

    .line 450
    .end local v15    # "great":I
    .restart local v12    # "great":I
    :cond_1e8
    aget v15, v0, v12

    if-ne v15, v13, :cond_1f5

    .line 451
    aget v15, v0, v11

    aput v15, v0, v4

    .line 460
    aput v13, v0, v11

    .line 461
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f9

    .line 463
    :cond_1f5
    aget v15, v0, v12

    aput v15, v0, v4

    .line 465
    :goto_1f9
    aput v5, v0, v12

    .line 466
    add-int/lit8 v12, v12, -0x1

    .line 468
    .end local v5    # "ak":I
    :cond_1fd
    :goto_1fd
    goto :goto_1c9

    .line 472
    .end local v4    # "k":I
    :cond_1fe
    :goto_1fe
    const/4 v4, 0x0

    invoke-static {v0, v11, v12, v4}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 474
    .end local v13    # "pivot1":I
    .end local v14    # "pivot2":I
    goto :goto_248

    .line 318
    .end local v17    # "length":I
    .end local v18    # "seventh":I
    .local v4, "length":I
    .local v5, "seventh":I
    :cond_203
    move/from16 v17, v4

    move/from16 v18, v5

    .line 479
    .end local v4    # "length":I
    .end local v5    # "seventh":I
    .restart local v17    # "length":I
    .restart local v18    # "seventh":I
    aget v4, v0, v6

    .line 501
    .local v4, "pivot":I
    move v5, v11

    .local v5, "k":I
    :goto_20a
    if-gt v5, v12, :cond_23d

    .line 502
    aget v13, v0, v5

    if-ne v13, v4, :cond_211

    .line 503
    goto :goto_23a

    .line 505
    :cond_211
    aget v13, v0, v5

    .line 506
    .local v13, "ak":I
    if-ge v13, v4, :cond_21e

    .line 507
    aget v14, v0, v11

    aput v14, v0, v5

    .line 508
    aput v13, v0, v11

    .line 509
    add-int/lit8 v11, v11, 0x1

    goto :goto_23a

    .line 511
    :cond_21e
    :goto_21e
    aget v14, v0, v12

    if-le v14, v4, :cond_225

    .line 512
    add-int/lit8 v12, v12, -0x1

    goto :goto_21e

    .line 514
    :cond_225
    aget v14, v0, v12

    if-ge v14, v4, :cond_234

    .line 515
    aget v14, v0, v11

    aput v14, v0, v5

    .line 516
    aget v14, v0, v12

    aput v14, v0, v11

    .line 517
    add-int/lit8 v11, v11, 0x1

    goto :goto_236

    .line 527
    :cond_234
    aput v4, v0, v5

    .line 529
    :goto_236
    aput v13, v0, v12

    .line 530
    add-int/lit8 v12, v12, -0x1

    .line 501
    .end local v13    # "ak":I
    :goto_23a
    add-int/lit8 v5, v5, 0x1

    goto :goto_20a

    .line 539
    .end local v5    # "k":I
    :cond_23d
    add-int/lit8 v5, v11, -0x1

    invoke-static {v0, v1, v5, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 540
    add-int/lit8 v5, v12, 0x1

    const/4 v13, 0x0

    invoke-static {v0, v5, v2, v13}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 542
    .end local v4    # "pivot":I
    :goto_248
    return-void
.end method

.method static blacklist sort([III[III)V
    .registers 26
    .param p0, "a"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [I
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .line 110
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    sub-int v4, v2, v1

    const/4 v5, 0x1

    const/16 v6, 0x11e

    if-ge v4, v6, :cond_13

    .line 111
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 112
    return-void

    .line 119
    :cond_13
    const/16 v4, 0x44

    new-array v4, v4, [I

    .line 120
    .local v4, "run":[I
    const/4 v6, 0x0

    .local v6, "count":I
    const/4 v7, 0x0

    aput v1, v4, v7

    .line 123
    move/from16 v8, p1

    .local v8, "k":I
    :goto_1d
    if-ge v8, v2, :cond_7c

    .line 124
    aget v9, v0, v8

    add-int/lit8 v10, v8, 0x1

    aget v10, v0, v10

    if-ge v9, v10, :cond_33

    .line 125
    :goto_27
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_6f

    add-int/lit8 v9, v8, -0x1

    aget v9, v0, v9

    aget v10, v0, v8

    if-gt v9, v10, :cond_6f

    goto :goto_27

    .line 126
    :cond_33
    aget v9, v0, v8

    add-int/lit8 v10, v8, 0x1

    aget v10, v0, v10

    if-le v9, v10, :cond_5a

    .line 127
    :goto_3b
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_47

    add-int/lit8 v9, v8, -0x1

    aget v9, v0, v9

    aget v10, v0, v8

    if-lt v9, v10, :cond_47

    goto :goto_3b

    .line 128
    :cond_47
    aget v9, v4, v6

    sub-int/2addr v9, v5

    .local v9, "lo":I
    move v10, v8

    .local v10, "hi":I
    :goto_4b
    add-int/2addr v9, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_59

    .line 129
    aget v11, v0, v9

    .local v11, "t":I
    aget v12, v0, v10

    aput v12, v0, v9

    aput v11, v0, v10

    .line 130
    .end local v11    # "t":I
    goto :goto_4b

    .end local v9    # "lo":I
    .end local v10    # "hi":I
    :cond_59
    goto :goto_6f

    .line 132
    :cond_5a
    const/16 v9, 0x21

    .local v9, "m":I
    :cond_5c
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_6f

    add-int/lit8 v10, v8, -0x1

    aget v10, v0, v10

    aget v11, v0, v8

    if-ne v10, v11, :cond_6f

    .line 133
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_5c

    .line 134
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 135
    return-void

    .line 144
    .end local v9    # "m":I
    :cond_6f
    :goto_6f
    add-int/lit8 v6, v6, 0x1

    const/16 v9, 0x43

    if-ne v6, v9, :cond_79

    .line 145
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 146
    return-void

    .line 123
    :cond_79
    aput v8, v4, v6

    goto :goto_1d

    .line 152
    .end local v8    # "k":I
    :cond_7c
    aget v8, v4, v6

    add-int/lit8 v9, v2, 0x1

    .end local p2    # "right":I
    .local v9, "right":I
    if-ne v8, v2, :cond_87

    .line 153
    add-int/lit8 v6, v6, 0x1

    aput v9, v4, v6

    goto :goto_8a

    .line 154
    :cond_87
    if-ne v6, v5, :cond_8a

    .line 155
    return-void

    .line 159
    :cond_8a
    :goto_8a
    const/4 v2, 0x0

    .line 160
    .local v2, "odd":B
    const/4 v8, 0x1

    .local v8, "n":I
    :goto_8c
    shl-int/lit8 v10, v8, 0x1

    move v8, v10

    if-ge v10, v6, :cond_95

    xor-int/lit8 v10, v2, 0x1

    int-to-byte v2, v10

    goto :goto_8c

    .line 165
    .end local v8    # "n":I
    :cond_95
    sub-int v8, v9, v1

    .line 166
    .local v8, "blen":I
    if-eqz v3, :cond_a6

    move/from16 v10, p5

    if-lt v10, v8, :cond_a8

    add-int v11, p4, v8

    array-length v12, v3

    if-le v11, v12, :cond_a3

    goto :goto_a8

    :cond_a3
    move/from16 v11, p4

    goto :goto_ab

    :cond_a6
    move/from16 v10, p5

    .line 167
    :cond_a8
    :goto_a8
    new-array v3, v8, [I

    .line 168
    .end local p3    # "work":[I
    .local v3, "work":[I
    const/4 v11, 0x0

    .line 170
    .end local p4    # "workBase":I
    .local v11, "workBase":I
    :goto_ab
    if-nez v2, :cond_b7

    .line 171
    invoke-static {v0, v1, v3, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    move-object/from16 v12, p0

    .line 173
    .local v12, "b":[I
    const/4 v13, 0x0

    .line 174
    .local v13, "bo":I
    move-object v0, v3

    .line 175
    .end local p0    # "a":[I
    .local v0, "a":[I
    sub-int v14, v11, v1

    .local v14, "ao":I
    goto :goto_bb

    .line 177
    .end local v0    # "a":[I
    .end local v12    # "b":[I
    .end local v13    # "bo":I
    .end local v14    # "ao":I
    .restart local p0    # "a":[I
    :cond_b7
    move-object v12, v3

    .line 178
    .restart local v12    # "b":[I
    const/4 v14, 0x0

    .line 179
    .restart local v14    # "ao":I
    sub-int v13, v11, v1

    .line 183
    .end local p0    # "a":[I
    .restart local v0    # "a":[I
    .restart local v13    # "bo":I
    :goto_bb
    if-le v6, v5, :cond_15a

    .line 184
    move v15, v7

    .local v15, "last":I
    const/16 v16, 0x2

    move/from16 v5, v16

    .local v5, "k":I
    :goto_c2
    if-gt v5, v6, :cond_125

    .line 185
    aget v7, v4, v5

    .local v7, "hi":I
    add-int/lit8 v17, v5, -0x1

    aget v1, v4, v17

    .line 186
    .local v1, "mi":I
    add-int/lit8 v17, v5, -0x2

    aget v17, v4, v17

    .local v17, "i":I
    move/from16 v18, v17

    .local v18, "p":I
    move/from16 v19, v1

    move/from16 p2, v2

    move/from16 v2, v17

    move-object/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v8

    move/from16 v8, v19

    .local v2, "i":I
    .local v3, "p":I
    .local v8, "q":I
    .local v17, "work":[I
    .local v18, "blen":I
    .local p2, "odd":B
    :goto_de
    if-ge v2, v7, :cond_111

    .line 187
    if-ge v8, v7, :cond_fe

    if-ge v3, v1, :cond_f1

    add-int v19, v3, v14

    move/from16 p0, v1

    .end local v1    # "mi":I
    .local p0, "mi":I
    aget v1, v0, v19

    add-int v19, v8, v14

    aget v10, v0, v19

    if-gt v1, v10, :cond_f3

    goto :goto_100

    .end local p0    # "mi":I
    .restart local v1    # "mi":I
    :cond_f1
    move/from16 p0, v1

    .line 190
    .end local v1    # "mi":I
    .restart local p0    # "mi":I
    :cond_f3
    add-int v1, v2, v13

    add-int/lit8 v10, v8, 0x1

    .end local v8    # "q":I
    .local v10, "q":I
    add-int/2addr v8, v14

    aget v8, v0, v8

    aput v8, v12, v1

    move v8, v10

    goto :goto_10a

    .line 187
    .end local v10    # "q":I
    .end local p0    # "mi":I
    .restart local v1    # "mi":I
    .restart local v8    # "q":I
    :cond_fe
    move/from16 p0, v1

    .line 188
    .end local v1    # "mi":I
    .restart local p0    # "mi":I
    :goto_100
    add-int v1, v2, v13

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "p":I
    .local v10, "p":I
    add-int/2addr v3, v14

    aget v3, v0, v3

    aput v3, v12, v1

    move v3, v10

    .line 186
    .end local v10    # "p":I
    .restart local v3    # "p":I
    :goto_10a
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, p0

    move/from16 v10, p5

    goto :goto_de

    .end local p0    # "mi":I
    .restart local v1    # "mi":I
    :cond_111
    move/from16 p0, v1

    .line 193
    .end local v1    # "mi":I
    .end local v2    # "i":I
    .end local v3    # "p":I
    .end local v8    # "q":I
    .restart local p0    # "mi":I
    add-int/lit8 v15, v15, 0x1

    aput v7, v4, v15

    .line 184
    .end local v7    # "hi":I
    .end local p0    # "mi":I
    add-int/lit8 v5, v5, 0x2

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v10, p5

    move-object/from16 v3, v17

    move/from16 v8, v18

    const/4 v7, 0x0

    goto :goto_c2

    .end local v17    # "work":[I
    .end local v18    # "blen":I
    .end local p2    # "odd":B
    .local v2, "odd":B
    .local v3, "work":[I
    .local v8, "blen":I
    :cond_125
    move/from16 p2, v2

    move-object/from16 v17, v3

    move/from16 v18, v8

    .line 195
    .end local v2    # "odd":B
    .end local v3    # "work":[I
    .end local v5    # "k":I
    .end local v8    # "blen":I
    .restart local v17    # "work":[I
    .restart local v18    # "blen":I
    .restart local p2    # "odd":B
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_145

    .line 196
    move v1, v9

    .local v1, "i":I
    add-int/lit8 v2, v6, -0x1

    aget v2, v4, v2

    .local v2, "lo":I
    :goto_134
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v2, :cond_141

    .line 197
    add-int v3, v1, v13

    add-int v5, v1, v14

    aget v5, v0, v5

    aput v5, v12, v3

    goto :goto_134

    .line 199
    .end local v1    # "i":I
    .end local v2    # "lo":I
    :cond_141
    add-int/lit8 v15, v15, 0x1

    aput v9, v4, v15

    .line 201
    :cond_145
    move-object v1, v0

    .local v1, "t":[I
    move-object v0, v12

    move-object v12, v1

    .line 202
    move v2, v14

    .local v2, "o":I
    move v14, v13

    move v13, v2

    .line 183
    .end local v1    # "t":[I
    .end local v2    # "o":I
    move v6, v15

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v10, p5

    move-object/from16 v3, v17

    move/from16 v8, v18

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_bb

    .line 204
    .end local v15    # "last":I
    .end local v17    # "work":[I
    .end local v18    # "blen":I
    .end local p2    # "odd":B
    .local v2, "odd":B
    .restart local v3    # "work":[I
    .restart local v8    # "blen":I
    :cond_15a
    return-void
.end method

.method private static blacklist sort([JIIZ)V
    .registers 27
    .param p0, "a"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .line 663
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sub-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    .line 666
    .local v4, "length":I
    const/16 v5, 0x2f

    if-ge v4, v5, :cond_99

    .line 667
    if-eqz v3, :cond_38

    .line 673
    move/from16 v5, p1

    .local v5, "i":I
    move v6, v5

    .local v6, "j":I
    :goto_15
    if-ge v5, v2, :cond_37

    .line 674
    add-int/lit8 v7, v5, 0x1

    aget-wide v7, v0, v7

    .line 675
    .local v7, "ai":J
    :goto_1b
    aget-wide v9, v0, v6

    cmp-long v9, v7, v9

    if-gez v9, :cond_2f

    .line 676
    add-int/lit8 v9, v6, 0x1

    aget-wide v10, v0, v6

    aput-wide v10, v0, v9

    .line 677
    add-int/lit8 v9, v6, -0x1

    .end local v6    # "j":I
    .local v9, "j":I
    if-ne v6, v1, :cond_2d

    .line 678
    move v6, v9

    goto :goto_2f

    .line 677
    :cond_2d
    move v6, v9

    goto :goto_1b

    .line 681
    .end local v9    # "j":I
    .restart local v6    # "j":I
    :cond_2f
    :goto_2f
    add-int/lit8 v9, v6, 0x1

    aput-wide v7, v0, v9

    .line 673
    .end local v7    # "ai":J
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    goto :goto_15

    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_37
    goto :goto_98

    .line 688
    .end local p1    # "left":I
    .local v1, "left":I
    :cond_38
    if-lt v1, v2, :cond_3b

    .line 689
    return-void

    .line 691
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    aget-wide v5, v0, v1

    add-int/lit8 v7, v1, -0x1

    aget-wide v7, v0, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_38

    .line 701
    move v5, v1

    .local v5, "k":I
    :goto_48
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_83

    .line 702
    aget-wide v6, v0, v5

    .local v6, "a1":J
    aget-wide v8, v0, v1

    .line 704
    .local v8, "a2":J
    cmp-long v10, v6, v8

    if-gez v10, :cond_57

    .line 705
    move-wide v8, v6

    aget-wide v6, v0, v1

    .line 707
    :cond_57
    :goto_57
    add-int/lit8 v5, v5, -0x1

    aget-wide v10, v0, v5

    cmp-long v10, v6, v10

    if-gez v10, :cond_66

    .line 708
    add-int/lit8 v10, v5, 0x2

    aget-wide v11, v0, v5

    aput-wide v11, v0, v10

    goto :goto_57

    .line 710
    :cond_66
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v5, 0x1

    aput-wide v6, v0, v10

    .line 712
    :goto_6c
    add-int/lit8 v5, v5, -0x1

    aget-wide v10, v0, v5

    cmp-long v10, v8, v10

    if-gez v10, :cond_7b

    .line 713
    add-int/lit8 v10, v5, 0x1

    aget-wide v11, v0, v5

    aput-wide v11, v0, v10

    goto :goto_6c

    .line 715
    :cond_7b
    add-int/lit8 v10, v5, 0x1

    aput-wide v8, v0, v10

    .line 701
    .end local v6    # "a1":J
    .end local v8    # "a2":J
    add-int/lit8 v1, v1, 0x1

    move v5, v1

    goto :goto_48

    .line 717
    .end local v5    # "k":I
    :cond_83
    aget-wide v5, v0, v2

    .line 719
    .end local p2    # "right":I
    .local v2, "right":I
    .local v5, "last":J
    :goto_85
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, v0, v2

    cmp-long v7, v5, v7

    if-gez v7, :cond_94

    .line 720
    add-int/lit8 v7, v2, 0x1

    aget-wide v8, v0, v2

    aput-wide v8, v0, v7

    goto :goto_85

    .line 722
    :cond_94
    add-int/lit8 v7, v2, 0x1

    aput-wide v5, v0, v7

    .line 724
    .end local v5    # "last":J
    :goto_98
    return-void

    .line 728
    .end local v1    # "left":I
    .end local v2    # "right":I
    .restart local p1    # "left":I
    .restart local p2    # "right":I
    :cond_99
    shr-int/lit8 v5, v4, 0x3

    shr-int/lit8 v6, v4, 0x6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    .line 737
    .local v5, "seventh":I
    add-int v6, v1, v2

    ushr-int/lit8 v6, v6, 0x1

    .line 738
    .local v6, "e3":I
    sub-int v7, v6, v5

    .line 739
    .local v7, "e2":I
    sub-int v8, v7, v5

    .line 740
    .local v8, "e1":I
    add-int v9, v6, v5

    .line 741
    .local v9, "e4":I
    add-int v10, v9, v5

    .line 744
    .local v10, "e5":I
    aget-wide v11, v0, v7

    aget-wide v13, v0, v8

    cmp-long v11, v11, v13

    if-gez v11, :cond_bc

    aget-wide v11, v0, v7

    .local v11, "t":J
    aget-wide v13, v0, v8

    aput-wide v13, v0, v7

    aput-wide v11, v0, v8

    .line 746
    .end local v11    # "t":J
    :cond_bc
    aget-wide v11, v0, v6

    aget-wide v13, v0, v7

    cmp-long v11, v11, v13

    if-gez v11, :cond_d8

    aget-wide v11, v0, v6

    .restart local v11    # "t":J
    aget-wide v13, v0, v7

    aput-wide v13, v0, v6

    aput-wide v11, v0, v7

    .line 747
    aget-wide v13, v0, v8

    cmp-long v13, v11, v13

    if-gez v13, :cond_d8

    aget-wide v13, v0, v8

    aput-wide v13, v0, v7

    aput-wide v11, v0, v8

    .line 749
    .end local v11    # "t":J
    :cond_d8
    aget-wide v11, v0, v9

    aget-wide v13, v0, v6

    cmp-long v11, v11, v13

    if-gez v11, :cond_100

    aget-wide v11, v0, v9

    .restart local v11    # "t":J
    aget-wide v13, v0, v6

    aput-wide v13, v0, v9

    aput-wide v11, v0, v6

    .line 750
    aget-wide v13, v0, v7

    cmp-long v13, v11, v13

    if-gez v13, :cond_100

    aget-wide v13, v0, v7

    aput-wide v13, v0, v6

    aput-wide v11, v0, v7

    .line 751
    aget-wide v13, v0, v8

    cmp-long v13, v11, v13

    if-gez v13, :cond_100

    aget-wide v13, v0, v8

    aput-wide v13, v0, v7

    aput-wide v11, v0, v8

    .line 754
    .end local v11    # "t":J
    :cond_100
    aget-wide v11, v0, v10

    aget-wide v13, v0, v9

    cmp-long v11, v11, v13

    if-gez v11, :cond_134

    aget-wide v11, v0, v10

    .restart local v11    # "t":J
    aget-wide v13, v0, v9

    aput-wide v13, v0, v10

    aput-wide v11, v0, v9

    .line 755
    aget-wide v13, v0, v6

    cmp-long v13, v11, v13

    if-gez v13, :cond_134

    aget-wide v13, v0, v6

    aput-wide v13, v0, v9

    aput-wide v11, v0, v6

    .line 756
    aget-wide v13, v0, v7

    cmp-long v13, v11, v13

    if-gez v13, :cond_134

    aget-wide v13, v0, v7

    aput-wide v13, v0, v6

    aput-wide v11, v0, v7

    .line 757
    aget-wide v13, v0, v8

    cmp-long v13, v11, v13

    if-gez v13, :cond_134

    aget-wide v13, v0, v8

    aput-wide v13, v0, v7

    aput-wide v11, v0, v8

    .line 763
    .end local v11    # "t":J
    :cond_134
    move/from16 v11, p1

    .line 764
    .local v11, "less":I
    move/from16 v12, p2

    .line 766
    .local v12, "great":I
    aget-wide v13, v0, v8

    aget-wide v15, v0, v7

    cmp-long v13, v13, v15

    const/4 v14, 0x0

    if-eqz v13, :cond_233

    aget-wide v15, v0, v7

    aget-wide v17, v0, v6

    cmp-long v13, v15, v17

    if-eqz v13, :cond_233

    aget-wide v15, v0, v6

    aget-wide v17, v0, v9

    cmp-long v13, v15, v17

    if-eqz v13, :cond_233

    aget-wide v15, v0, v9

    aget-wide v17, v0, v10

    cmp-long v13, v15, v17

    if-eqz v13, :cond_233

    .line 772
    aget-wide v15, v0, v7

    .line 773
    .local v15, "pivot1":J
    aget-wide v17, v0, v9

    .line 781
    .local v17, "pivot2":J
    aget-wide v19, v0, v1

    aput-wide v19, v0, v7

    .line 782
    aget-wide v19, v0, v2

    aput-wide v19, v0, v9

    .line 787
    :goto_165
    add-int/lit8 v11, v11, 0x1

    aget-wide v19, v0, v11

    cmp-long v13, v19, v15

    if-gez v13, :cond_16e

    goto :goto_165

    .line 788
    :cond_16e
    :goto_16e
    add-int/lit8 v12, v12, -0x1

    aget-wide v19, v0, v12

    cmp-long v13, v19, v17

    if-lez v13, :cond_177

    goto :goto_16e

    .line 810
    :cond_177
    add-int/lit8 v13, v11, -0x1

    .local v13, "k":I
    :goto_179
    add-int/lit8 v13, v13, 0x1

    if-gt v13, v12, :cond_1ba

    .line 811
    aget-wide v19, v0, v13

    .line 812
    .local v19, "ak":J
    cmp-long v21, v19, v15

    if-gez v21, :cond_18c

    .line 813
    aget-wide v21, v0, v11

    aput-wide v21, v0, v13

    .line 818
    aput-wide v19, v0, v11

    .line 819
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b9

    .line 820
    :cond_18c
    cmp-long v21, v19, v17

    if-lez v21, :cond_1b9

    .line 821
    :goto_190
    aget-wide v21, v0, v12

    cmp-long v21, v21, v17

    if-lez v21, :cond_1a0

    .line 822
    add-int/lit8 v21, v12, -0x1

    .end local v12    # "great":I
    .local v21, "great":I
    if-ne v12, v13, :cond_19d

    .line 823
    move/from16 v12, v21

    goto :goto_1ba

    .line 822
    :cond_19d
    move/from16 v12, v21

    goto :goto_190

    .line 826
    .end local v21    # "great":I
    .restart local v12    # "great":I
    :cond_1a0
    aget-wide v21, v0, v12

    cmp-long v21, v21, v15

    if-gez v21, :cond_1b1

    .line 827
    aget-wide v21, v0, v11

    aput-wide v21, v0, v13

    .line 828
    aget-wide v21, v0, v12

    aput-wide v21, v0, v11

    .line 829
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b5

    .line 831
    :cond_1b1
    aget-wide v21, v0, v12

    aput-wide v21, v0, v13

    .line 837
    :goto_1b5
    aput-wide v19, v0, v12

    .line 838
    add-int/lit8 v12, v12, -0x1

    .line 840
    .end local v19    # "ak":J
    :cond_1b9
    :goto_1b9
    goto :goto_179

    .line 843
    .end local v13    # "k":I
    :cond_1ba
    :goto_1ba
    add-int/lit8 v13, v11, -0x1

    aget-wide v19, v0, v13

    aput-wide v19, v0, v1

    add-int/lit8 v13, v11, -0x1

    aput-wide v15, v0, v13

    .line 844
    add-int/lit8 v13, v12, 0x1

    aget-wide v19, v0, v13

    aput-wide v19, v0, v2

    add-int/lit8 v13, v12, 0x1

    aput-wide v17, v0, v13

    .line 847
    add-int/lit8 v13, v11, -0x2

    invoke-static {v0, v1, v13, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 848
    add-int/lit8 v13, v12, 0x2

    invoke-static {v0, v13, v2, v14}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 854
    if-ge v11, v8, :cond_22f

    if-ge v10, v12, :cond_22f

    .line 858
    :goto_1dc
    aget-wide v19, v0, v11

    cmp-long v13, v19, v15

    if-nez v13, :cond_1e5

    .line 859
    add-int/lit8 v11, v11, 0x1

    goto :goto_1dc

    .line 862
    :cond_1e5
    :goto_1e5
    aget-wide v19, v0, v12

    cmp-long v13, v19, v17

    if-nez v13, :cond_1ee

    .line 863
    add-int/lit8 v12, v12, -0x1

    goto :goto_1e5

    .line 886
    :cond_1ee
    add-int/lit8 v13, v11, -0x1

    .restart local v13    # "k":I
    :goto_1f0
    add-int/lit8 v13, v13, 0x1

    if-gt v13, v12, :cond_22f

    .line 887
    aget-wide v19, v0, v13

    .line 888
    .restart local v19    # "ak":J
    cmp-long v21, v19, v15

    if-nez v21, :cond_203

    .line 889
    aget-wide v21, v0, v11

    aput-wide v21, v0, v13

    .line 890
    aput-wide v19, v0, v11

    .line 891
    add-int/lit8 v11, v11, 0x1

    goto :goto_22e

    .line 892
    :cond_203
    cmp-long v21, v19, v17

    if-nez v21, :cond_22e

    .line 893
    :goto_207
    aget-wide v21, v0, v12

    cmp-long v21, v21, v17

    if-nez v21, :cond_217

    .line 894
    add-int/lit8 v21, v12, -0x1

    .end local v12    # "great":I
    .restart local v21    # "great":I
    if-ne v12, v13, :cond_214

    .line 895
    move/from16 v12, v21

    goto :goto_22f

    .line 894
    :cond_214
    move/from16 v12, v21

    goto :goto_207

    .line 898
    .end local v21    # "great":I
    .restart local v12    # "great":I
    :cond_217
    aget-wide v21, v0, v12

    cmp-long v21, v21, v15

    if-nez v21, :cond_226

    .line 899
    aget-wide v21, v0, v11

    aput-wide v21, v0, v13

    .line 908
    aput-wide v15, v0, v11

    .line 909
    add-int/lit8 v11, v11, 0x1

    goto :goto_22a

    .line 911
    :cond_226
    aget-wide v21, v0, v12

    aput-wide v21, v0, v13

    .line 913
    :goto_22a
    aput-wide v19, v0, v12

    .line 914
    add-int/lit8 v12, v12, -0x1

    .line 916
    .end local v19    # "ak":J
    :cond_22e
    :goto_22e
    goto :goto_1f0

    .line 920
    .end local v13    # "k":I
    :cond_22f
    :goto_22f
    invoke-static {v0, v11, v12, v14}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 922
    .end local v15    # "pivot1":J
    .end local v17    # "pivot2":J
    goto :goto_27b

    .line 927
    :cond_233
    aget-wide v15, v0, v6

    .line 949
    .local v15, "pivot":J
    move v13, v11

    .restart local v13    # "k":I
    :goto_236
    if-gt v13, v12, :cond_271

    .line 950
    aget-wide v17, v0, v13

    cmp-long v17, v17, v15

    if-nez v17, :cond_23f

    .line 951
    goto :goto_26e

    .line 953
    :cond_23f
    aget-wide v17, v0, v13

    .line 954
    .local v17, "ak":J
    cmp-long v19, v17, v15

    if-gez v19, :cond_24e

    .line 955
    aget-wide v19, v0, v11

    aput-wide v19, v0, v13

    .line 956
    aput-wide v17, v0, v11

    .line 957
    add-int/lit8 v11, v11, 0x1

    goto :goto_26e

    .line 959
    :cond_24e
    :goto_24e
    aget-wide v19, v0, v12

    cmp-long v19, v19, v15

    if-lez v19, :cond_257

    .line 960
    add-int/lit8 v12, v12, -0x1

    goto :goto_24e

    .line 962
    :cond_257
    aget-wide v19, v0, v12

    cmp-long v19, v19, v15

    if-gez v19, :cond_268

    .line 963
    aget-wide v19, v0, v11

    aput-wide v19, v0, v13

    .line 964
    aget-wide v19, v0, v12

    aput-wide v19, v0, v11

    .line 965
    add-int/lit8 v11, v11, 0x1

    goto :goto_26a

    .line 975
    :cond_268
    aput-wide v15, v0, v13

    .line 977
    :goto_26a
    aput-wide v17, v0, v12

    .line 978
    add-int/lit8 v12, v12, -0x1

    .line 949
    .end local v17    # "ak":J
    :goto_26e
    add-int/lit8 v13, v13, 0x1

    goto :goto_236

    .line 987
    .end local v13    # "k":I
    :cond_271
    add-int/lit8 v13, v11, -0x1

    invoke-static {v0, v1, v13, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 988
    add-int/lit8 v13, v12, 0x1

    invoke-static {v0, v13, v2, v14}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 990
    .end local v15    # "pivot":J
    :goto_27b
    return-void
.end method

.method static blacklist sort([JII[JII)V
    .registers 29
    .param p0, "a"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [J
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .line 558
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    sub-int v4, v2, v1

    const/4 v5, 0x1

    const/16 v6, 0x11e

    if-ge v4, v6, :cond_13

    .line 559
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 560
    return-void

    .line 567
    :cond_13
    const/16 v4, 0x44

    new-array v4, v4, [I

    .line 568
    .local v4, "run":[I
    const/4 v6, 0x0

    .local v6, "count":I
    const/4 v7, 0x0

    aput v1, v4, v7

    .line 571
    move/from16 v8, p1

    .local v8, "k":I
    :goto_1d
    if-ge v8, v2, :cond_86

    .line 572
    aget-wide v9, v0, v8

    add-int/lit8 v11, v8, 0x1

    aget-wide v11, v0, v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_37

    .line 573
    :goto_29
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_79

    add-int/lit8 v9, v8, -0x1

    aget-wide v9, v0, v9

    aget-wide v11, v0, v8

    cmp-long v9, v9, v11

    if-gtz v9, :cond_79

    goto :goto_29

    .line 574
    :cond_37
    aget-wide v9, v0, v8

    add-int/lit8 v11, v8, 0x1

    aget-wide v11, v0, v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_62

    .line 575
    :goto_41
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_4f

    add-int/lit8 v9, v8, -0x1

    aget-wide v9, v0, v9

    aget-wide v11, v0, v8

    cmp-long v9, v9, v11

    if-ltz v9, :cond_4f

    goto :goto_41

    .line 576
    :cond_4f
    aget v9, v4, v6

    sub-int/2addr v9, v5

    .local v9, "lo":I
    move v10, v8

    .local v10, "hi":I
    :goto_53
    add-int/2addr v9, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_61

    .line 577
    aget-wide v11, v0, v9

    .local v11, "t":J
    aget-wide v13, v0, v10

    aput-wide v13, v0, v9

    aput-wide v11, v0, v10

    .line 578
    .end local v11    # "t":J
    goto :goto_53

    .end local v9    # "lo":I
    .end local v10    # "hi":I
    :cond_61
    goto :goto_79

    .line 580
    :cond_62
    const/16 v9, 0x21

    .local v9, "m":I
    :cond_64
    add-int/2addr v8, v5

    if-gt v8, v2, :cond_79

    add-int/lit8 v10, v8, -0x1

    aget-wide v10, v0, v10

    aget-wide v12, v0, v8

    cmp-long v10, v10, v12

    if-nez v10, :cond_79

    .line 581
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_64

    .line 582
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 583
    return-void

    .line 592
    .end local v9    # "m":I
    :cond_79
    :goto_79
    add-int/lit8 v6, v6, 0x1

    const/16 v9, 0x43

    if-ne v6, v9, :cond_83

    .line 593
    invoke-static {v0, v1, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 594
    return-void

    .line 571
    :cond_83
    aput v8, v4, v6

    goto :goto_1d

    .line 600
    .end local v8    # "k":I
    :cond_86
    aget v8, v4, v6

    add-int/lit8 v9, v2, 0x1

    .end local p2    # "right":I
    .local v9, "right":I
    if-ne v8, v2, :cond_91

    .line 601
    add-int/lit8 v6, v6, 0x1

    aput v9, v4, v6

    goto :goto_94

    .line 602
    :cond_91
    if-ne v6, v5, :cond_94

    .line 603
    return-void

    .line 607
    :cond_94
    :goto_94
    const/4 v2, 0x0

    .line 608
    .local v2, "odd":B
    const/4 v8, 0x1

    .local v8, "n":I
    :goto_96
    shl-int/lit8 v10, v8, 0x1

    move v8, v10

    if-ge v10, v6, :cond_9f

    xor-int/lit8 v10, v2, 0x1

    int-to-byte v2, v10

    goto :goto_96

    .line 613
    .end local v8    # "n":I
    :cond_9f
    sub-int v8, v9, v1

    .line 614
    .local v8, "blen":I
    if-eqz v3, :cond_b0

    move/from16 v10, p5

    if-lt v10, v8, :cond_b2

    add-int v11, p4, v8

    array-length v12, v3

    if-le v11, v12, :cond_ad

    goto :goto_b2

    :cond_ad
    move/from16 v11, p4

    goto :goto_b5

    :cond_b0
    move/from16 v10, p5

    .line 615
    :cond_b2
    :goto_b2
    new-array v3, v8, [J

    .line 616
    .end local p3    # "work":[J
    .local v3, "work":[J
    const/4 v11, 0x0

    .line 618
    .end local p4    # "workBase":I
    .local v11, "workBase":I
    :goto_b5
    if-nez v2, :cond_c1

    .line 619
    invoke-static {v0, v1, v3, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    move-object/from16 v12, p0

    .line 621
    .local v12, "b":[J
    const/4 v13, 0x0

    .line 622
    .local v13, "bo":I
    move-object v0, v3

    .line 623
    .end local p0    # "a":[J
    .local v0, "a":[J
    sub-int v14, v11, v1

    .local v14, "ao":I
    goto :goto_c5

    .line 625
    .end local v0    # "a":[J
    .end local v12    # "b":[J
    .end local v13    # "bo":I
    .end local v14    # "ao":I
    .restart local p0    # "a":[J
    :cond_c1
    move-object v12, v3

    .line 626
    .restart local v12    # "b":[J
    const/4 v14, 0x0

    .line 627
    .restart local v14    # "ao":I
    sub-int v13, v11, v1

    .line 631
    .end local p0    # "a":[J
    .restart local v0    # "a":[J
    .restart local v13    # "bo":I
    :goto_c5
    if-le v6, v5, :cond_158

    .line 632
    move v15, v7

    .local v15, "last":I
    const/16 v16, 0x2

    move/from16 v5, v16

    .local v5, "k":I
    :goto_cc
    if-gt v5, v6, :cond_125

    .line 633
    aget v7, v4, v5

    .local v7, "hi":I
    add-int/lit8 v17, v5, -0x1

    aget v1, v4, v17

    .line 634
    .local v1, "mi":I
    add-int/lit8 v17, v5, -0x2

    aget v17, v4, v17

    .local v17, "i":I
    move/from16 v18, v17

    .local v18, "p":I
    move/from16 v19, v1

    move/from16 p2, v2

    move/from16 v2, v17

    move-object/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v8

    move/from16 v8, v19

    .local v2, "i":I
    .local v3, "p":I
    .local v8, "q":I
    .local v17, "work":[J
    .local v18, "blen":I
    .local p2, "odd":B
    :goto_e8
    if-ge v2, v7, :cond_115

    .line 635
    if-ge v8, v7, :cond_107

    if-ge v3, v1, :cond_fb

    add-int v19, v3, v14

    aget-wide v19, v0, v19

    add-int v21, v8, v14

    aget-wide v21, v0, v21

    cmp-long v19, v19, v21

    if-gtz v19, :cond_fb

    goto :goto_107

    .line 638
    :cond_fb
    add-int v19, v2, v13

    add-int/lit8 v20, v8, 0x1

    .end local v8    # "q":I
    .local v20, "q":I
    add-int/2addr v8, v14

    aget-wide v21, v0, v8

    aput-wide v21, v12, v19

    move/from16 v8, v20

    goto :goto_112

    .line 636
    .end local v20    # "q":I
    .restart local v8    # "q":I
    :cond_107
    :goto_107
    add-int v19, v2, v13

    add-int/lit8 v20, v3, 0x1

    .end local v3    # "p":I
    .local v20, "p":I
    add-int/2addr v3, v14

    aget-wide v21, v0, v3

    aput-wide v21, v12, v19

    move/from16 v3, v20

    .line 634
    .end local v20    # "p":I
    .restart local v3    # "p":I
    :goto_112
    add-int/lit8 v2, v2, 0x1

    goto :goto_e8

    .line 641
    .end local v2    # "i":I
    .end local v3    # "p":I
    .end local v8    # "q":I
    :cond_115
    add-int/lit8 v15, v15, 0x1

    aput v7, v4, v15

    .line 632
    .end local v1    # "mi":I
    .end local v7    # "hi":I
    add-int/lit8 v5, v5, 0x2

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v8, v18

    const/4 v7, 0x0

    goto :goto_cc

    .end local v17    # "work":[J
    .end local v18    # "blen":I
    .end local p2    # "odd":B
    .local v2, "odd":B
    .local v3, "work":[J
    .local v8, "blen":I
    :cond_125
    move/from16 p2, v2

    move-object/from16 v17, v3

    move/from16 v18, v8

    .line 643
    .end local v2    # "odd":B
    .end local v3    # "work":[J
    .end local v5    # "k":I
    .end local v8    # "blen":I
    .restart local v17    # "work":[J
    .restart local v18    # "blen":I
    .restart local p2    # "odd":B
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_145

    .line 644
    move v1, v9

    .local v1, "i":I
    add-int/lit8 v2, v6, -0x1

    aget v2, v4, v2

    .local v2, "lo":I
    :goto_134
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v2, :cond_141

    .line 645
    add-int v3, v1, v13

    add-int v5, v1, v14

    aget-wide v7, v0, v5

    aput-wide v7, v12, v3

    goto :goto_134

    .line 647
    .end local v1    # "i":I
    .end local v2    # "lo":I
    :cond_141
    add-int/lit8 v15, v15, 0x1

    aput v9, v4, v15

    .line 649
    :cond_145
    move-object v1, v0

    .local v1, "t":[J
    move-object v0, v12

    move-object v12, v1

    .line 650
    move v2, v14

    .local v2, "o":I
    move v14, v13

    move v13, v2

    .line 631
    .end local v1    # "t":[J
    .end local v2    # "o":I
    move v6, v15

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v8, v18

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_c5

    .line 652
    .end local v15    # "last":I
    .end local v17    # "work":[J
    .end local v18    # "blen":I
    .end local p2    # "odd":B
    .local v2, "odd":B
    .restart local v3    # "work":[J
    .restart local v8    # "blen":I
    :cond_158
    return-void
.end method

.method private static blacklist sort([SIIZ)V
    .registers 23
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .line 1147
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sub-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    .line 1150
    .local v4, "length":I
    const/16 v5, 0x2f

    if-ge v4, v5, :cond_8d

    .line 1151
    if-eqz v3, :cond_36

    .line 1157
    move/from16 v5, p1

    .local v5, "i":I
    move v6, v5

    .local v6, "j":I
    :goto_15
    if-ge v5, v2, :cond_35

    .line 1158
    add-int/lit8 v7, v5, 0x1

    aget-short v7, v0, v7

    .line 1159
    .local v7, "ai":S
    :goto_1b
    aget-short v8, v0, v6

    if-ge v7, v8, :cond_2d

    .line 1160
    add-int/lit8 v8, v6, 0x1

    aget-short v9, v0, v6

    aput-short v9, v0, v8

    .line 1161
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "j":I
    .local v8, "j":I
    if-ne v6, v1, :cond_2b

    .line 1162
    move v6, v8

    goto :goto_2d

    .line 1161
    :cond_2b
    move v6, v8

    goto :goto_1b

    .line 1165
    .end local v8    # "j":I
    .restart local v6    # "j":I
    :cond_2d
    :goto_2d
    add-int/lit8 v8, v6, 0x1

    aput-short v7, v0, v8

    .line 1157
    .end local v7    # "ai":S
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    goto :goto_15

    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_35
    goto :goto_8c

    .line 1172
    .end local p1    # "left":I
    .local v1, "left":I
    :cond_36
    if-lt v1, v2, :cond_39

    .line 1173
    return-void

    .line 1175
    :cond_39
    add-int/lit8 v1, v1, 0x1

    aget-short v5, v0, v1

    add-int/lit8 v6, v1, -0x1

    aget-short v6, v0, v6

    if-ge v5, v6, :cond_36

    .line 1185
    move v5, v1

    .local v5, "k":I
    :goto_44
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_79

    .line 1186
    aget-short v6, v0, v5

    .local v6, "a1":S
    aget-short v7, v0, v1

    .line 1188
    .local v7, "a2":S
    if-ge v6, v7, :cond_51

    .line 1189
    move v7, v6

    aget-short v6, v0, v1

    .line 1191
    :cond_51
    :goto_51
    add-int/lit8 v5, v5, -0x1

    aget-short v8, v0, v5

    if-ge v6, v8, :cond_5e

    .line 1192
    add-int/lit8 v8, v5, 0x2

    aget-short v9, v0, v5

    aput-short v9, v0, v8

    goto :goto_51

    .line 1194
    :cond_5e
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v5, 0x1

    aput-short v6, v0, v8

    .line 1196
    :goto_64
    add-int/lit8 v5, v5, -0x1

    aget-short v8, v0, v5

    if-ge v7, v8, :cond_71

    .line 1197
    add-int/lit8 v8, v5, 0x1

    aget-short v9, v0, v5

    aput-short v9, v0, v8

    goto :goto_64

    .line 1199
    :cond_71
    add-int/lit8 v8, v5, 0x1

    aput-short v7, v0, v8

    .line 1185
    .end local v6    # "a1":S
    .end local v7    # "a2":S
    add-int/lit8 v1, v1, 0x1

    move v5, v1

    goto :goto_44

    .line 1201
    .end local v5    # "k":I
    :cond_79
    aget-short v5, v0, v2

    .line 1203
    .end local p2    # "right":I
    .local v2, "right":I
    .local v5, "last":S
    :goto_7b
    add-int/lit8 v2, v2, -0x1

    aget-short v6, v0, v2

    if-ge v5, v6, :cond_88

    .line 1204
    add-int/lit8 v6, v2, 0x1

    aget-short v7, v0, v2

    aput-short v7, v0, v6

    goto :goto_7b

    .line 1206
    :cond_88
    add-int/lit8 v6, v2, 0x1

    aput-short v5, v0, v6

    .line 1208
    .end local v5    # "last":S
    :goto_8c
    return-void

    .line 1212
    .end local v1    # "left":I
    .end local v2    # "right":I
    .restart local p1    # "left":I
    .restart local p2    # "right":I
    :cond_8d
    shr-int/lit8 v5, v4, 0x3

    shr-int/lit8 v6, v4, 0x6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    .line 1221
    .local v5, "seventh":I
    add-int v6, v1, v2

    ushr-int/lit8 v6, v6, 0x1

    .line 1222
    .local v6, "e3":I
    sub-int v7, v6, v5

    .line 1223
    .local v7, "e2":I
    sub-int v8, v7, v5

    .line 1224
    .local v8, "e1":I
    add-int v9, v6, v5

    .line 1225
    .local v9, "e4":I
    add-int v10, v9, v5

    .line 1228
    .local v10, "e5":I
    aget-short v11, v0, v7

    aget-short v12, v0, v8

    if-ge v11, v12, :cond_ae

    aget-short v11, v0, v7

    .local v11, "t":S
    aget-short v12, v0, v8

    aput-short v12, v0, v7

    aput-short v11, v0, v8

    .line 1230
    .end local v11    # "t":S
    :cond_ae
    aget-short v11, v0, v6

    aget-short v12, v0, v7

    if-ge v11, v12, :cond_c6

    aget-short v11, v0, v6

    .restart local v11    # "t":S
    aget-short v12, v0, v7

    aput-short v12, v0, v6

    aput-short v11, v0, v7

    .line 1231
    aget-short v12, v0, v8

    if-ge v11, v12, :cond_c6

    aget-short v12, v0, v8

    aput-short v12, v0, v7

    aput-short v11, v0, v8

    .line 1233
    .end local v11    # "t":S
    :cond_c6
    aget-short v11, v0, v9

    aget-short v12, v0, v6

    if-ge v11, v12, :cond_e8

    aget-short v11, v0, v9

    .restart local v11    # "t":S
    aget-short v12, v0, v6

    aput-short v12, v0, v9

    aput-short v11, v0, v6

    .line 1234
    aget-short v12, v0, v7

    if-ge v11, v12, :cond_e8

    aget-short v12, v0, v7

    aput-short v12, v0, v6

    aput-short v11, v0, v7

    .line 1235
    aget-short v12, v0, v8

    if-ge v11, v12, :cond_e8

    aget-short v12, v0, v8

    aput-short v12, v0, v7

    aput-short v11, v0, v8

    .line 1238
    .end local v11    # "t":S
    :cond_e8
    aget-short v11, v0, v10

    aget-short v12, v0, v9

    if-ge v11, v12, :cond_114

    aget-short v11, v0, v10

    .restart local v11    # "t":S
    aget-short v12, v0, v9

    aput-short v12, v0, v10

    aput-short v11, v0, v9

    .line 1239
    aget-short v12, v0, v6

    if-ge v11, v12, :cond_114

    aget-short v12, v0, v6

    aput-short v12, v0, v9

    aput-short v11, v0, v6

    .line 1240
    aget-short v12, v0, v7

    if-ge v11, v12, :cond_114

    aget-short v12, v0, v7

    aput-short v12, v0, v6

    aput-short v11, v0, v7

    .line 1241
    aget-short v12, v0, v8

    if-ge v11, v12, :cond_114

    aget-short v12, v0, v8

    aput-short v12, v0, v7

    aput-short v11, v0, v8

    .line 1247
    .end local v11    # "t":S
    :cond_114
    move/from16 v11, p1

    .line 1248
    .local v11, "less":I
    move/from16 v12, p2

    .line 1250
    .local v12, "great":I
    aget-short v13, v0, v8

    aget-short v14, v0, v7

    if-eq v13, v14, :cond_203

    aget-short v13, v0, v7

    aget-short v14, v0, v6

    if-eq v13, v14, :cond_203

    aget-short v13, v0, v6

    aget-short v14, v0, v9

    if-eq v13, v14, :cond_203

    aget-short v13, v0, v9

    aget-short v14, v0, v10

    if-eq v13, v14, :cond_203

    .line 1256
    aget-short v13, v0, v7

    .line 1257
    .local v13, "pivot1":S
    aget-short v14, v0, v9

    .line 1265
    .local v14, "pivot2":S
    aget-short v16, v0, v1

    aput-short v16, v0, v7

    .line 1266
    aget-short v16, v0, v2

    aput-short v16, v0, v9

    .line 1271
    :goto_13c
    add-int/lit8 v11, v11, 0x1

    aget-short v15, v0, v11

    if-ge v15, v13, :cond_143

    goto :goto_13c

    .line 1272
    :cond_143
    :goto_143
    add-int/lit8 v12, v12, -0x1

    aget-short v15, v0, v12

    if-le v15, v14, :cond_14a

    goto :goto_143

    .line 1294
    :cond_14a
    add-int/lit8 v15, v11, -0x1

    .local v15, "k":I
    :goto_14c
    add-int/lit8 v15, v15, 0x1

    if-gt v15, v12, :cond_192

    .line 1295
    move/from16 v17, v4

    .end local v4    # "length":I
    .local v17, "length":I
    aget-short v4, v0, v15

    .line 1296
    .local v4, "ak":S
    if-ge v4, v13, :cond_161

    .line 1297
    aget-short v18, v0, v11

    aput-short v18, v0, v15

    .line 1302
    aput-short v4, v0, v11

    .line 1303
    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v5

    goto :goto_18d

    .line 1304
    :cond_161
    if-le v4, v14, :cond_18b

    .line 1305
    :goto_163
    move/from16 v18, v5

    .end local v5    # "seventh":I
    .local v18, "seventh":I
    aget-short v5, v0, v12

    if-le v5, v14, :cond_173

    .line 1306
    add-int/lit8 v5, v12, -0x1

    .end local v12    # "great":I
    .local v5, "great":I
    if-ne v12, v15, :cond_16f

    .line 1307
    move v12, v5

    goto :goto_196

    .line 1306
    :cond_16f
    move v12, v5

    move/from16 v5, v18

    goto :goto_163

    .line 1310
    .end local v5    # "great":I
    .restart local v12    # "great":I
    :cond_173
    aget-short v5, v0, v12

    if-ge v5, v13, :cond_182

    .line 1311
    aget-short v5, v0, v11

    aput-short v5, v0, v15

    .line 1312
    aget-short v5, v0, v12

    aput-short v5, v0, v11

    .line 1313
    add-int/lit8 v11, v11, 0x1

    goto :goto_186

    .line 1315
    :cond_182
    aget-short v5, v0, v12

    aput-short v5, v0, v15

    .line 1321
    :goto_186
    aput-short v4, v0, v12

    .line 1322
    add-int/lit8 v12, v12, -0x1

    goto :goto_18d

    .line 1304
    .end local v18    # "seventh":I
    .local v5, "seventh":I
    :cond_18b
    move/from16 v18, v5

    .line 1324
    .end local v4    # "ak":S
    .end local v5    # "seventh":I
    .restart local v18    # "seventh":I
    :goto_18d
    move/from16 v4, v17

    move/from16 v5, v18

    goto :goto_14c

    .line 1294
    .end local v17    # "length":I
    .end local v18    # "seventh":I
    .local v4, "length":I
    .restart local v5    # "seventh":I
    :cond_192
    move/from16 v17, v4

    move/from16 v18, v5

    .line 1327
    .end local v4    # "length":I
    .end local v5    # "seventh":I
    .end local v15    # "k":I
    .restart local v17    # "length":I
    .restart local v18    # "seventh":I
    :goto_196
    add-int/lit8 v4, v11, -0x1

    aget-short v4, v0, v4

    aput-short v4, v0, v1

    add-int/lit8 v4, v11, -0x1

    aput-short v13, v0, v4

    .line 1328
    add-int/lit8 v4, v12, 0x1

    aget-short v4, v0, v4

    aput-short v4, v0, v2

    add-int/lit8 v4, v12, 0x1

    aput-short v14, v0, v4

    .line 1331
    add-int/lit8 v4, v11, -0x2

    invoke-static {v0, v1, v4, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1332
    add-int/lit8 v4, v12, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v4, v2, v5}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1338
    if-ge v11, v8, :cond_1fe

    if-ge v10, v12, :cond_1fe

    .line 1342
    :goto_1b9
    aget-short v4, v0, v11

    if-ne v4, v13, :cond_1c0

    .line 1343
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b9

    .line 1346
    :cond_1c0
    :goto_1c0
    aget-short v4, v0, v12

    if-ne v4, v14, :cond_1c7

    .line 1347
    add-int/lit8 v12, v12, -0x1

    goto :goto_1c0

    .line 1370
    :cond_1c7
    add-int/lit8 v4, v11, -0x1

    .local v4, "k":I
    :goto_1c9
    add-int/lit8 v4, v4, 0x1

    if-gt v4, v12, :cond_1fe

    .line 1371
    aget-short v5, v0, v4

    .line 1372
    .local v5, "ak":S
    if-ne v5, v13, :cond_1da

    .line 1373
    aget-short v15, v0, v11

    aput-short v15, v0, v4

    .line 1374
    aput-short v5, v0, v11

    .line 1375
    add-int/lit8 v11, v11, 0x1

    goto :goto_1fd

    .line 1376
    :cond_1da
    if-ne v5, v14, :cond_1fd

    .line 1377
    :goto_1dc
    aget-short v15, v0, v12

    if-ne v15, v14, :cond_1e8

    .line 1378
    add-int/lit8 v15, v12, -0x1

    .end local v12    # "great":I
    .local v15, "great":I
    if-ne v12, v4, :cond_1e6

    .line 1379
    move v12, v15

    goto :goto_1fe

    .line 1378
    :cond_1e6
    move v12, v15

    goto :goto_1dc

    .line 1382
    .end local v15    # "great":I
    .restart local v12    # "great":I
    :cond_1e8
    aget-short v15, v0, v12

    if-ne v15, v13, :cond_1f5

    .line 1383
    aget-short v15, v0, v11

    aput-short v15, v0, v4

    .line 1392
    aput-short v13, v0, v11

    .line 1393
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f9

    .line 1395
    :cond_1f5
    aget-short v15, v0, v12

    aput-short v15, v0, v4

    .line 1397
    :goto_1f9
    aput-short v5, v0, v12

    .line 1398
    add-int/lit8 v12, v12, -0x1

    .line 1400
    .end local v5    # "ak":S
    :cond_1fd
    :goto_1fd
    goto :goto_1c9

    .line 1404
    .end local v4    # "k":I
    :cond_1fe
    :goto_1fe
    const/4 v4, 0x0

    invoke-static {v0, v11, v12, v4}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1406
    .end local v13    # "pivot1":S
    .end local v14    # "pivot2":S
    goto :goto_248

    .line 1250
    .end local v17    # "length":I
    .end local v18    # "seventh":I
    .local v4, "length":I
    .local v5, "seventh":I
    :cond_203
    move/from16 v17, v4

    move/from16 v18, v5

    .line 1411
    .end local v4    # "length":I
    .end local v5    # "seventh":I
    .restart local v17    # "length":I
    .restart local v18    # "seventh":I
    aget-short v4, v0, v6

    .line 1433
    .local v4, "pivot":S
    move v5, v11

    .local v5, "k":I
    :goto_20a
    if-gt v5, v12, :cond_23d

    .line 1434
    aget-short v13, v0, v5

    if-ne v13, v4, :cond_211

    .line 1435
    goto :goto_23a

    .line 1437
    :cond_211
    aget-short v13, v0, v5

    .line 1438
    .local v13, "ak":S
    if-ge v13, v4, :cond_21e

    .line 1439
    aget-short v14, v0, v11

    aput-short v14, v0, v5

    .line 1440
    aput-short v13, v0, v11

    .line 1441
    add-int/lit8 v11, v11, 0x1

    goto :goto_23a

    .line 1443
    :cond_21e
    :goto_21e
    aget-short v14, v0, v12

    if-le v14, v4, :cond_225

    .line 1444
    add-int/lit8 v12, v12, -0x1

    goto :goto_21e

    .line 1446
    :cond_225
    aget-short v14, v0, v12

    if-ge v14, v4, :cond_234

    .line 1447
    aget-short v14, v0, v11

    aput-short v14, v0, v5

    .line 1448
    aget-short v14, v0, v12

    aput-short v14, v0, v11

    .line 1449
    add-int/lit8 v11, v11, 0x1

    goto :goto_236

    .line 1459
    :cond_234
    aput-short v4, v0, v5

    .line 1461
    :goto_236
    aput-short v13, v0, v12

    .line 1462
    add-int/lit8 v12, v12, -0x1

    .line 1433
    .end local v13    # "ak":S
    :goto_23a
    add-int/lit8 v5, v5, 0x1

    goto :goto_20a

    .line 1471
    .end local v5    # "k":I
    :cond_23d
    add-int/lit8 v5, v11, -0x1

    invoke-static {v0, v1, v5, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1472
    add-int/lit8 v5, v12, 0x1

    const/4 v13, 0x0

    invoke-static {v0, v5, v2, v13}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1474
    .end local v4    # "pivot":S
    :goto_248
    return-void
.end method

.method static blacklist sort([SII[SII)V
    .registers 11
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [S
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .line 1006
    sub-int v0, p2, p1

    const/16 v1, 0xc80

    if-le v0, v1, :cond_3a

    .line 1007
    const/high16 v0, 0x10000

    new-array v0, v0, [I

    .line 1009
    .local v0, "count":[I
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_c
    add-int/lit8 v1, v1, 0x1

    if-gt v1, p2, :cond_1c

    .line 1010
    aget-short v2, p0, v1

    const/16 v3, -0x8000

    sub-int/2addr v2, v3

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    goto :goto_c

    .line 1012
    .end local v1    # "i":I
    :cond_1c
    const/high16 v1, 0x10000

    .restart local v1    # "i":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "k":I
    :goto_20
    if-le v2, p1, :cond_39

    .line 1013
    :goto_22
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget v1, v0, v3

    if-nez v1, :cond_2a

    move v1, v3

    goto :goto_22

    .line 1014
    :cond_2a
    add-int/lit16 v1, v3, -0x8000

    int-to-short v4, v1

    .line 1015
    .local v4, "value":S
    aget v1, v0, v3

    .line 1018
    .local v1, "s":I
    :cond_2f
    add-int/lit8 v2, v2, -0x1

    aput-short v4, p0, v2

    .line 1019
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_2f

    .line 1020
    .end local v1    # "s":I
    .end local v4    # "value":S
    move v1, v3

    goto :goto_20

    .line 1021
    .end local v0    # "count":[I
    .end local v2    # "k":I
    .end local v3    # "i":I
    :cond_39
    goto :goto_3d

    .line 1022
    :cond_3a
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([SII[SII)V

    .line 1024
    :goto_3d
    return-void
.end method
