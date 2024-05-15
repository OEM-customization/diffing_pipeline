.class final Ljava/util/DualPivotQuicksort;
.super Ljava/lang/Object;
.source "DualPivotQuicksort.java"


# static fields
.field private static final COUNTING_SORT_THRESHOLD_FOR_BYTE:I = 0x1d

.field private static final COUNTING_SORT_THRESHOLD_FOR_SHORT_OR_CHAR:I = 0xc80

.field private static final INSERTION_SORT_THRESHOLD:I = 0x2f

.field private static final MAX_RUN_COUNT:I = 0x43

.field private static final MAX_RUN_LENGTH:I = 0x21

.field private static final NUM_BYTE_VALUES:I = 0x100

.field private static final NUM_CHAR_VALUES:I = 0x10000

.field private static final NUM_SHORT_VALUES:I = 0x10000

.field private static final QUICKSORT_THRESHOLD:I = 0x11e


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doSort([CII[CII)V
    .registers 35
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [C
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 1526
    sub-int v27, p2, p1

    const/16 v28, 0x11e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_18

    .line 1527
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1528
    return-void

    .line 1535
    :cond_18
    const/16 v27, 0x44

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 1536
    .local v24, "run":[I
    const/4 v8, 0x0

    .local v8, "count":I
    const/16 v27, 0x0

    aput p1, v24, v27

    .line 1539
    move/from16 v11, p1

    .local v11, "k":I
    :goto_27
    move/from16 v0, p2

    if-ge v11, v0, :cond_bb

    .line 1540
    aget-char v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget-char v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_5f

    .line 1541
    :cond_37
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_49

    add-int/lit8 v27, v11, -0x1

    aget-char v27, p0, v27

    aget-char v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_37

    .line 1560
    :cond_49
    add-int/lit8 v8, v8, 0x1

    const/16 v27, 0x43

    move/from16 v0, v27

    if-ne v8, v0, :cond_b7

    .line 1561
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1562
    return-void

    .line 1542
    :cond_5f
    aget-char v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget-char v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_91

    .line 1543
    :cond_6b
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_7d

    add-int/lit8 v27, v11, -0x1

    aget-char v27, p0, v27

    aget-char v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_6b

    .line 1544
    :cond_7d
    aget v27, v24, v8

    add-int/lit8 v13, v27, -0x1

    .local v13, "lo":I
    move v9, v11

    .local v9, "hi":I
    :goto_82
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_49

    .line 1545
    aget-char v25, p0, v13

    .local v25, "t":C
    aget-char v27, p0, v9

    aput-char v27, p0, v13

    aput-char v25, p0, v9

    goto :goto_82

    .line 1548
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v25    # "t":C
    :cond_91
    const/16 v14, 0x21

    .local v14, "m":I
    :cond_93
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_49

    add-int/lit8 v27, v11, -0x1

    aget-char v27, p0, v27

    aget-char v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_49

    .line 1549
    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_93

    .line 1550
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1551
    return-void

    .line 1539
    .end local v14    # "m":I
    :cond_b7
    aput v11, v24, v8

    goto/16 :goto_27

    .line 1568
    :cond_bb
    aget v27, v24, v8

    add-int/lit8 v23, p2, 0x1

    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v27

    move/from16 v1, p2

    if-ne v0, v1, :cond_db

    .line 1569
    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    .line 1575
    :cond_c9
    const/16 v18, 0x0

    .line 1576
    .local v18, "odd":B
    const/16 v16, 0x1

    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_cd
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_e2

    xor-int/lit8 v27, v18, 0x1

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v18, v0

    .local v18, "odd":B
    goto :goto_cd

    .line 1570
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_db
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_c9

    .line 1571
    return-void

    .line 1581
    .restart local v16    # "n":I
    :cond_e2
    sub-int v6, v23, p1

    .line 1582
    .local v6, "blen":I
    if-eqz p3, :cond_ea

    move/from16 v0, p5

    if-ge v0, v6, :cond_14b

    .line 1583
    :cond_ea
    :goto_ea
    new-array v0, v6, [C

    move-object/from16 p3, v0

    .line 1584
    const/16 p4, 0x0

    .line 1586
    :cond_f0
    if-nez v18, :cond_159

    .line 1587
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1588
    move-object/from16 v5, p0

    .line 1589
    .local v5, "b":[C
    const/4 v7, 0x0

    .line 1590
    .local v7, "bo":I
    move-object/from16 p0, p3

    .line 1591
    sub-int v4, p4, p1

    .line 1599
    .local v4, "ao":I
    :goto_104
    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v8, v0, :cond_19c

    .line 1600
    const/4 v12, 0x0

    .local v12, "last":I
    const/4 v11, 0x2

    :goto_10c
    if-gt v11, v8, :cond_173

    .line 1601
    aget v9, v24, v11

    .restart local v9    # "hi":I
    add-int/lit8 v27, v11, -0x1

    aget v15, v24, v27

    .line 1602
    .local v15, "mi":I
    add-int/lit8 v27, v11, -0x2

    aget v10, v24, v27

    .local v10, "i":I
    move/from16 v19, v10

    .local v19, "p":I
    move/from16 v21, v15

    .local v21, "q":I
    move/from16 v22, v21

    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .local v20, "p":I
    :goto_120
    if-ge v10, v9, :cond_16c

    .line 1603
    move/from16 v0, v22

    if-ge v0, v9, :cond_138

    move/from16 v0, v20

    if-ge v0, v15, :cond_15f

    add-int v27, v20, v4

    aget-char v27, p0, v27

    add-int v28, v22, v4

    aget-char v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_15f

    .line 1604
    :cond_138
    add-int v27, v10, v7

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v28, v20, v4

    aget-char v28, p0, v28

    aput-char v28, v5, v27

    move/from16 v21, v22

    .line 1602
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_144
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_120

    .line 1582
    .end local v4    # "ao":I
    .end local v5    # "b":[C
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14b
    add-int v27, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_f0

    goto :goto_ea

    .line 1593
    :cond_159
    move-object/from16 v5, p3

    .line 1594
    .restart local v5    # "b":[C
    const/4 v4, 0x0

    .line 1595
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    .restart local v7    # "bo":I
    goto :goto_104

    .line 1606
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_15f
    add-int v27, v10, v7

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v28, v22, v4

    aget-char v28, p0, v28

    aput-char v28, v5, v27

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_144

    .line 1609
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_16c
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    .line 1600
    add-int/lit8 v11, v11, 0x2

    goto :goto_10c

    .line 1611
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_173
    and-int/lit8 v27, v8, 0x1

    if-eqz v27, :cond_18e

    .line 1612
    move/from16 v10, v23

    .restart local v10    # "i":I
    add-int/lit8 v27, v8, -0x1

    aget v13, v24, v27

    .restart local v13    # "lo":I
    :goto_17d
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_18a

    .line 1613
    add-int v27, v10, v7

    add-int v28, v10, v4

    aget-char v28, p0, v28

    aput-char v28, v5, v27

    goto :goto_17d

    .line 1615
    :cond_18a
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    .line 1617
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_18e
    move-object/from16 v26, p0

    .local v26, "t":[C
    move-object/from16 p0, v5

    move-object/from16 v5, v26

    .line 1618
    move/from16 v17, v4

    .local v17, "o":I
    move v4, v7

    move/from16 v7, v17

    .line 1599
    move v8, v12

    goto/16 :goto_104

    .line 1620
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v26    # "t":[C
    :cond_19c
    return-void
.end method

.method private static doSort([DII[DII)V
    .registers 38
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [D
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 2645
    sub-int v28, p2, p1

    const/16 v29, 0x11e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_18

    .line 2646
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2647
    return-void

    .line 2654
    :cond_18
    const/16 v28, 0x44

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 2655
    .local v24, "run":[I
    const/4 v8, 0x0

    .local v8, "count":I
    const/16 v28, 0x0

    aput p1, v24, v28

    .line 2658
    move/from16 v11, p1

    .local v11, "k":I
    :goto_27
    move/from16 v0, p2

    if-ge v11, v0, :cond_b1

    .line 2659
    aget-wide v28, p0, v11

    add-int/lit8 v30, v11, 0x1

    aget-wide v30, p0, v30

    cmpg-double v28, v28, v30

    if-gez v28, :cond_5b

    .line 2660
    :cond_35
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_45

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmpg-double v28, v28, v30

    if-lez v28, :cond_35

    .line 2679
    :cond_45
    add-int/lit8 v8, v8, 0x1

    const/16 v28, 0x43

    move/from16 v0, v28

    if-ne v8, v0, :cond_ad

    .line 2680
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2681
    return-void

    .line 2661
    :cond_5b
    aget-wide v28, p0, v11

    add-int/lit8 v30, v11, 0x1

    aget-wide v30, p0, v30

    cmpl-double v28, v28, v30

    if-lez v28, :cond_89

    .line 2662
    :cond_65
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_75

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmpl-double v28, v28, v30

    if-gez v28, :cond_65

    .line 2663
    :cond_75
    aget v28, v24, v8

    add-int/lit8 v13, v28, -0x1

    .local v13, "lo":I
    move v9, v11

    .local v9, "hi":I
    :goto_7a
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_45

    .line 2664
    aget-wide v26, p0, v13

    .local v26, "t":D
    aget-wide v28, p0, v9

    aput-wide v28, p0, v13

    aput-wide v26, p0, v9

    goto :goto_7a

    .line 2667
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v26    # "t":D
    :cond_89
    const/16 v14, 0x21

    .local v14, "m":I
    :cond_8b
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_45

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmpl-double v28, v28, v30

    if-nez v28, :cond_45

    .line 2668
    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_8b

    .line 2669
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2670
    return-void

    .line 2658
    .end local v14    # "m":I
    :cond_ad
    aput v11, v24, v8

    goto/16 :goto_27

    .line 2687
    :cond_b1
    aget v28, v24, v8

    add-int/lit8 v23, p2, 0x1

    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v28

    move/from16 v1, p2

    if-ne v0, v1, :cond_d1

    .line 2688
    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    .line 2694
    :cond_bf
    const/16 v18, 0x0

    .line 2695
    .local v18, "odd":B
    const/16 v16, 0x1

    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_c3
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_d8

    xor-int/lit8 v28, v18, 0x1

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v18, v0

    .local v18, "odd":B
    goto :goto_c3

    .line 2689
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_d1
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v8, v0, :cond_bf

    .line 2690
    return-void

    .line 2700
    .restart local v16    # "n":I
    :cond_d8
    sub-int v6, v23, p1

    .line 2701
    .local v6, "blen":I
    if-eqz p3, :cond_e0

    move/from16 v0, p5

    if-ge v0, v6, :cond_13f

    .line 2702
    :cond_e0
    :goto_e0
    new-array v0, v6, [D

    move-object/from16 p3, v0

    .line 2703
    const/16 p4, 0x0

    .line 2705
    :cond_e6
    if-nez v18, :cond_14d

    .line 2706
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 2707
    move-object/from16 v5, p0

    .line 2708
    .local v5, "b":[D
    const/4 v7, 0x0

    .line 2709
    .local v7, "bo":I
    move-object/from16 p0, p3

    .line 2710
    sub-int v4, p4, p1

    .line 2718
    .local v4, "ao":I
    :goto_fa
    const/16 v28, 0x1

    move/from16 v0, v28

    if-le v8, v0, :cond_190

    .line 2719
    const/4 v12, 0x0

    .local v12, "last":I
    const/4 v11, 0x2

    :goto_102
    if-gt v11, v8, :cond_167

    .line 2720
    aget v9, v24, v11

    .restart local v9    # "hi":I
    add-int/lit8 v28, v11, -0x1

    aget v15, v24, v28

    .line 2721
    .local v15, "mi":I
    add-int/lit8 v28, v11, -0x2

    aget v10, v24, v28

    .local v10, "i":I
    move/from16 v19, v10

    .local v19, "p":I
    move/from16 v21, v15

    .local v21, "q":I
    move/from16 v22, v21

    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .local v20, "p":I
    :goto_116
    if-ge v10, v9, :cond_160

    .line 2722
    move/from16 v0, v22

    if-ge v0, v9, :cond_12c

    move/from16 v0, v20

    if-ge v0, v15, :cond_153

    add-int v28, v20, v4

    aget-wide v28, p0, v28

    add-int v30, v22, v4

    aget-wide v30, p0, v30

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_153

    .line 2723
    :cond_12c
    add-int v28, v10, v7

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v29, v20, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    move/from16 v21, v22

    .line 2721
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_138
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_116

    .line 2701
    .end local v4    # "ao":I
    .end local v5    # "b":[D
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_13f
    add-int v28, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_e6

    goto :goto_e0

    .line 2712
    :cond_14d
    move-object/from16 v5, p3

    .line 2713
    .restart local v5    # "b":[D
    const/4 v4, 0x0

    .line 2714
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    .restart local v7    # "bo":I
    goto :goto_fa

    .line 2725
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_153
    add-int v28, v10, v7

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v29, v22, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_138

    .line 2728
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_160
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    .line 2719
    add-int/lit8 v11, v11, 0x2

    goto :goto_102

    .line 2730
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_167
    and-int/lit8 v28, v8, 0x1

    if-eqz v28, :cond_182

    .line 2731
    move/from16 v10, v23

    .restart local v10    # "i":I
    add-int/lit8 v28, v8, -0x1

    aget v13, v24, v28

    .restart local v13    # "lo":I
    :goto_171
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_17e

    .line 2732
    add-int v28, v10, v7

    add-int v29, v10, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    goto :goto_171

    .line 2734
    :cond_17e
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    .line 2736
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_182
    move-object/from16 v25, p0

    .local v25, "t":[D
    move-object/from16 p0, v5

    move-object/from16 v5, v25

    .line 2737
    move/from16 v17, v4

    .local v17, "o":I
    move v4, v7

    move/from16 v7, v17

    .line 2718
    move v8, v12

    goto/16 :goto_fa

    .line 2739
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v25    # "t":[D
    :cond_190
    return-void
.end method

.method private static doSort([FII[FII)V
    .registers 35
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [F
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 2106
    sub-int v27, p2, p1

    const/16 v28, 0x11e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_18

    .line 2107
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2108
    return-void

    .line 2115
    :cond_18
    const/16 v27, 0x44

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 2116
    .local v24, "run":[I
    const/4 v8, 0x0

    .local v8, "count":I
    const/16 v27, 0x0

    aput p1, v24, v27

    .line 2119
    move/from16 v11, p1

    .local v11, "k":I
    :goto_27
    move/from16 v0, p2

    if-ge v11, v0, :cond_b1

    .line 2120
    aget v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget v28, p0, v28

    cmpg-float v27, v27, v28

    if-gez v27, :cond_5b

    .line 2121
    :cond_35
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_45

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    cmpg-float v27, v27, v28

    if-lez v27, :cond_35

    .line 2140
    :cond_45
    add-int/lit8 v8, v8, 0x1

    const/16 v27, 0x43

    move/from16 v0, v27

    if-ne v8, v0, :cond_ad

    .line 2141
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2142
    return-void

    .line 2122
    :cond_5b
    aget v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget v28, p0, v28

    cmpl-float v27, v27, v28

    if-lez v27, :cond_89

    .line 2123
    :cond_65
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_75

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    cmpl-float v27, v27, v28

    if-gez v27, :cond_65

    .line 2124
    :cond_75
    aget v27, v24, v8

    add-int/lit8 v13, v27, -0x1

    .local v13, "lo":I
    move v9, v11

    .local v9, "hi":I
    :goto_7a
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_45

    .line 2125
    aget v25, p0, v13

    .local v25, "t":F
    aget v27, p0, v9

    aput v27, p0, v13

    aput v25, p0, v9

    goto :goto_7a

    .line 2128
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v25    # "t":F
    :cond_89
    const/16 v14, 0x21

    .local v14, "m":I
    :cond_8b
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_45

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    cmpl-float v27, v27, v28

    if-nez v27, :cond_45

    .line 2129
    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_8b

    .line 2130
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2131
    return-void

    .line 2119
    .end local v14    # "m":I
    :cond_ad
    aput v11, v24, v8

    goto/16 :goto_27

    .line 2148
    :cond_b1
    aget v27, v24, v8

    add-int/lit8 v23, p2, 0x1

    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v27

    move/from16 v1, p2

    if-ne v0, v1, :cond_d1

    .line 2149
    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    .line 2155
    :cond_bf
    const/16 v18, 0x0

    .line 2156
    .local v18, "odd":B
    const/16 v16, 0x1

    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_c3
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_d8

    xor-int/lit8 v27, v18, 0x1

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v18, v0

    .local v18, "odd":B
    goto :goto_c3

    .line 2150
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_d1
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_bf

    .line 2151
    return-void

    .line 2161
    .restart local v16    # "n":I
    :cond_d8
    sub-int v6, v23, p1

    .line 2162
    .local v6, "blen":I
    if-eqz p3, :cond_e0

    move/from16 v0, p5

    if-ge v0, v6, :cond_13f

    .line 2163
    :cond_e0
    :goto_e0
    new-array v0, v6, [F

    move-object/from16 p3, v0

    .line 2164
    const/16 p4, 0x0

    .line 2166
    :cond_e6
    if-nez v18, :cond_14d

    .line 2167
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 2168
    move-object/from16 v5, p0

    .line 2169
    .local v5, "b":[F
    const/4 v7, 0x0

    .line 2170
    .local v7, "bo":I
    move-object/from16 p0, p3

    .line 2171
    sub-int v4, p4, p1

    .line 2179
    .local v4, "ao":I
    :goto_fa
    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v8, v0, :cond_190

    .line 2180
    const/4 v12, 0x0

    .local v12, "last":I
    const/4 v11, 0x2

    :goto_102
    if-gt v11, v8, :cond_167

    .line 2181
    aget v9, v24, v11

    .restart local v9    # "hi":I
    add-int/lit8 v27, v11, -0x1

    aget v15, v24, v27

    .line 2182
    .local v15, "mi":I
    add-int/lit8 v27, v11, -0x2

    aget v10, v24, v27

    .local v10, "i":I
    move/from16 v19, v10

    .local v19, "p":I
    move/from16 v21, v15

    .local v21, "q":I
    move/from16 v22, v21

    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .local v20, "p":I
    :goto_116
    if-ge v10, v9, :cond_160

    .line 2183
    move/from16 v0, v22

    if-ge v0, v9, :cond_12c

    move/from16 v0, v20

    if-ge v0, v15, :cond_153

    add-int v27, v20, v4

    aget v27, p0, v27

    add-int v28, v22, v4

    aget v28, p0, v28

    cmpg-float v27, v27, v28

    if-gtz v27, :cond_153

    .line 2184
    :cond_12c
    add-int v27, v10, v7

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v28, v20, v4

    aget v28, p0, v28

    aput v28, v5, v27

    move/from16 v21, v22

    .line 2182
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_138
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_116

    .line 2162
    .end local v4    # "ao":I
    .end local v5    # "b":[F
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_13f
    add-int v27, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_e6

    goto :goto_e0

    .line 2173
    :cond_14d
    move-object/from16 v5, p3

    .line 2174
    .restart local v5    # "b":[F
    const/4 v4, 0x0

    .line 2175
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    .restart local v7    # "bo":I
    goto :goto_fa

    .line 2186
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_153
    add-int v27, v10, v7

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v28, v22, v4

    aget v28, p0, v28

    aput v28, v5, v27

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_138

    .line 2189
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_160
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    .line 2180
    add-int/lit8 v11, v11, 0x2

    goto :goto_102

    .line 2191
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_167
    and-int/lit8 v27, v8, 0x1

    if-eqz v27, :cond_182

    .line 2192
    move/from16 v10, v23

    .restart local v10    # "i":I
    add-int/lit8 v27, v8, -0x1

    aget v13, v24, v27

    .restart local v13    # "lo":I
    :goto_171
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_17e

    .line 2193
    add-int v27, v10, v7

    add-int v28, v10, v4

    aget v28, p0, v28

    aput v28, v5, v27

    goto :goto_171

    .line 2195
    :cond_17e
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    .line 2197
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_182
    move-object/from16 v26, p0

    .local v26, "t":[F
    move-object/from16 p0, v5

    move-object/from16 v5, v26

    .line 2198
    move/from16 v17, v4

    .local v17, "o":I
    move v4, v7

    move/from16 v7, v17

    .line 2179
    move v8, v12

    goto/16 :goto_fa

    .line 2200
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v26    # "t":[F
    :cond_190
    return-void
.end method

.method private static doSort([SII[SII)V
    .registers 35
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [S
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 1042
    sub-int v27, p2, p1

    const/16 v28, 0x11e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_18

    .line 1043
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1044
    return-void

    .line 1051
    :cond_18
    const/16 v27, 0x44

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 1052
    .local v24, "run":[I
    const/4 v8, 0x0

    .local v8, "count":I
    const/16 v27, 0x0

    aput p1, v24, v27

    .line 1055
    move/from16 v11, p1

    .local v11, "k":I
    :goto_27
    move/from16 v0, p2

    if-ge v11, v0, :cond_bb

    .line 1056
    aget-short v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget-short v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_5f

    .line 1057
    :cond_37
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_49

    add-int/lit8 v27, v11, -0x1

    aget-short v27, p0, v27

    aget-short v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_37

    .line 1076
    :cond_49
    add-int/lit8 v8, v8, 0x1

    const/16 v27, 0x43

    move/from16 v0, v27

    if-ne v8, v0, :cond_b7

    .line 1077
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1078
    return-void

    .line 1058
    :cond_5f
    aget-short v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget-short v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_91

    .line 1059
    :cond_6b
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_7d

    add-int/lit8 v27, v11, -0x1

    aget-short v27, p0, v27

    aget-short v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_6b

    .line 1060
    :cond_7d
    aget v27, v24, v8

    add-int/lit8 v13, v27, -0x1

    .local v13, "lo":I
    move v9, v11

    .local v9, "hi":I
    :goto_82
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_49

    .line 1061
    aget-short v25, p0, v13

    .local v25, "t":S
    aget-short v27, p0, v9

    aput-short v27, p0, v13

    aput-short v25, p0, v9

    goto :goto_82

    .line 1064
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v25    # "t":S
    :cond_91
    const/16 v14, 0x21

    .local v14, "m":I
    :cond_93
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_49

    add-int/lit8 v27, v11, -0x1

    aget-short v27, p0, v27

    aget-short v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_49

    .line 1065
    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_93

    .line 1066
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1067
    return-void

    .line 1055
    .end local v14    # "m":I
    :cond_b7
    aput v11, v24, v8

    goto/16 :goto_27

    .line 1084
    :cond_bb
    aget v27, v24, v8

    add-int/lit8 v23, p2, 0x1

    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v27

    move/from16 v1, p2

    if-ne v0, v1, :cond_db

    .line 1085
    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    .line 1091
    :cond_c9
    const/16 v18, 0x0

    .line 1092
    .local v18, "odd":B
    const/16 v16, 0x1

    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_cd
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_e2

    xor-int/lit8 v27, v18, 0x1

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v18, v0

    .local v18, "odd":B
    goto :goto_cd

    .line 1086
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_db
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_c9

    .line 1087
    return-void

    .line 1097
    .restart local v16    # "n":I
    :cond_e2
    sub-int v6, v23, p1

    .line 1098
    .local v6, "blen":I
    if-eqz p3, :cond_ea

    move/from16 v0, p5

    if-ge v0, v6, :cond_14b

    .line 1099
    :cond_ea
    :goto_ea
    new-array v0, v6, [S

    move-object/from16 p3, v0

    .line 1100
    const/16 p4, 0x0

    .line 1102
    :cond_f0
    if-nez v18, :cond_159

    .line 1103
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 1104
    move-object/from16 v5, p0

    .line 1105
    .local v5, "b":[S
    const/4 v7, 0x0

    .line 1106
    .local v7, "bo":I
    move-object/from16 p0, p3

    .line 1107
    sub-int v4, p4, p1

    .line 1115
    .local v4, "ao":I
    :goto_104
    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v8, v0, :cond_19c

    .line 1116
    const/4 v12, 0x0

    .local v12, "last":I
    const/4 v11, 0x2

    :goto_10c
    if-gt v11, v8, :cond_173

    .line 1117
    aget v9, v24, v11

    .restart local v9    # "hi":I
    add-int/lit8 v27, v11, -0x1

    aget v15, v24, v27

    .line 1118
    .local v15, "mi":I
    add-int/lit8 v27, v11, -0x2

    aget v10, v24, v27

    .local v10, "i":I
    move/from16 v19, v10

    .local v19, "p":I
    move/from16 v21, v15

    .local v21, "q":I
    move/from16 v22, v21

    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .local v20, "p":I
    :goto_120
    if-ge v10, v9, :cond_16c

    .line 1119
    move/from16 v0, v22

    if-ge v0, v9, :cond_138

    move/from16 v0, v20

    if-ge v0, v15, :cond_15f

    add-int v27, v20, v4

    aget-short v27, p0, v27

    add-int v28, v22, v4

    aget-short v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_15f

    .line 1120
    :cond_138
    add-int v27, v10, v7

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v28, v20, v4

    aget-short v28, p0, v28

    aput-short v28, v5, v27

    move/from16 v21, v22

    .line 1118
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_144
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_120

    .line 1098
    .end local v4    # "ao":I
    .end local v5    # "b":[S
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14b
    add-int v27, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_f0

    goto :goto_ea

    .line 1109
    :cond_159
    move-object/from16 v5, p3

    .line 1110
    .restart local v5    # "b":[S
    const/4 v4, 0x0

    .line 1111
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    .restart local v7    # "bo":I
    goto :goto_104

    .line 1122
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_15f
    add-int v27, v10, v7

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v28, v22, v4

    aget-short v28, p0, v28

    aput-short v28, v5, v27

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_144

    .line 1125
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_16c
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    .line 1116
    add-int/lit8 v11, v11, 0x2

    goto :goto_10c

    .line 1127
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_173
    and-int/lit8 v27, v8, 0x1

    if-eqz v27, :cond_18e

    .line 1128
    move/from16 v10, v23

    .restart local v10    # "i":I
    add-int/lit8 v27, v8, -0x1

    aget v13, v24, v27

    .restart local v13    # "lo":I
    :goto_17d
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_18a

    .line 1129
    add-int v27, v10, v7

    add-int v28, v10, v4

    aget-short v28, p0, v28

    aput-short v28, v5, v27

    goto :goto_17d

    .line 1131
    :cond_18a
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    .line 1133
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_18e
    move-object/from16 v26, p0

    .local v26, "t":[S
    move-object/from16 p0, v5

    move-object/from16 v5, v26

    .line 1134
    move/from16 v17, v4

    .local v17, "o":I
    move v4, v7

    move/from16 v7, v17

    .line 1115
    move v8, v12

    goto/16 :goto_104

    .line 1136
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v26    # "t":[S
    :cond_19c
    return-void
.end method

.method static sort([BII)V
    .registers 13
    .param p0, "a"    # [B
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1972
    sub-int v8, p2, p1

    const/16 v9, 0x1d

    if-le v8, v9, :cond_35

    .line 1973
    const/16 v8, 0x100

    new-array v1, v8, [I

    .line 1975
    .local v1, "count":[I
    add-int/lit8 v2, p1, -0x1

    .local v2, "i":I
    :goto_c
    add-int/lit8 v2, v2, 0x1

    if-gt v2, p2, :cond_1b

    .line 1976
    aget-byte v8, p0, v2

    add-int/lit16 v8, v8, 0x80

    aget v9, v1, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v8

    goto :goto_c

    .line 1978
    :cond_1b
    const/16 v2, 0x100

    add-int/lit8 v5, p2, 0x1

    .local v5, "k":I
    :cond_1f
    if-le v5, p1, :cond_56

    .line 1979
    :cond_21
    add-int/lit8 v2, v2, -0x1

    aget v8, v1, v2

    if-eqz v8, :cond_21

    .line 1980
    add-int/lit8 v8, v2, -0x80

    int-to-byte v7, v8

    .line 1981
    .local v7, "value":B
    aget v6, v1, v2

    .line 1984
    .local v6, "s":I
    :goto_2c
    add-int/lit8 v5, v5, -0x1

    aput-byte v7, p0, v5

    .line 1985
    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_1f

    goto :goto_2c

    .line 1988
    .end local v1    # "count":[I
    .end local v2    # "i":I
    .end local v5    # "k":I
    .end local v6    # "s":I
    .end local v7    # "value":B
    :cond_35
    move v2, p1

    .restart local v2    # "i":I
    move v3, p1

    .local v3, "j":I
    :goto_37
    if-ge v2, p2, :cond_56

    .line 1989
    add-int/lit8 v8, v2, 0x1

    aget-byte v0, p0, v8

    .line 1990
    .local v0, "ai":B
    :goto_3d
    aget-byte v8, p0, v3

    if-ge v0, v8, :cond_4c

    .line 1991
    add-int/lit8 v8, v3, 0x1

    aget-byte v9, p0, v3

    aput-byte v9, p0, v8

    .line 1992
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "j":I
    .local v4, "j":I
    if-ne v3, p1, :cond_54

    move v3, v4

    .line 1996
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :cond_4c
    add-int/lit8 v8, v3, 0x1

    aput-byte v0, p0, v8

    .line 1988
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_37

    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_54
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_3d

    .line 1999
    .end local v0    # "ai":B
    .end local v3    # "j":I
    :cond_56
    return-void
.end method

.method private static sort([CIIZ)V
    .registers 33
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .prologue
    .line 1631
    sub-int v27, p2, p1

    add-int/lit8 v20, v27, 0x1

    .line 1634
    .local v20, "length":I
    const/16 v27, 0x2f

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_a9

    .line 1635
    if-eqz p3, :cond_4a

    .line 1641
    move/from16 v15, p1

    .local v15, "i":I
    move/from16 v16, p1

    .local v16, "j":I
    :goto_12
    move/from16 v0, p2

    if-ge v15, v0, :cond_a8

    .line 1642
    add-int/lit8 v27, v15, 0x1

    aget-char v6, p0, v27

    .line 1643
    .local v6, "ai":C
    :goto_1a
    aget-char v27, p0, v16

    move/from16 v0, v27

    if-ge v6, v0, :cond_30

    .line 1644
    add-int/lit8 v27, v16, 0x1

    aget-char v28, p0, v16

    aput-char v28, p0, v27

    .line 1645
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "j":I
    .local v17, "j":I
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_39

    move/from16 v16, v17

    .line 1649
    .end local v17    # "j":I
    .restart local v16    # "j":I
    :cond_30
    add-int/lit8 v27, v16, 0x1

    aput-char v6, p0, v27

    .line 1641
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v15

    goto :goto_12

    .end local v16    # "j":I
    .restart local v17    # "j":I
    :cond_39
    move/from16 v16, v17

    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_1a

    .line 1659
    .end local v6    # "ai":C
    .end local v15    # "i":I
    .end local v16    # "j":I
    :cond_3c
    add-int/lit8 p1, p1, 0x1

    aget-char v27, p0, p1

    add-int/lit8 v28, p1, -0x1

    aget-char v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_51

    .line 1656
    :cond_4a
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_3c

    .line 1657
    return-void

    .line 1669
    :cond_51
    move/from16 v18, p1

    .local v18, "k":I
    :goto_53
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_91

    .line 1670
    aget-char v4, p0, v18

    .local v4, "a1":C
    aget-char v5, p0, p1

    .line 1672
    .local v5, "a2":C
    if-ge v4, v5, :cond_64

    .line 1673
    move v5, v4

    aget-char v4, p0, p1

    .line 1675
    :cond_64
    :goto_64
    add-int/lit8 v18, v18, -0x1

    aget-char v27, p0, v18

    move/from16 v0, v27

    if-ge v4, v0, :cond_73

    .line 1676
    add-int/lit8 v27, v18, 0x2

    aget-char v28, p0, v18

    aput-char v28, p0, v27

    goto :goto_64

    .line 1678
    :cond_73
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v27, v18, 0x1

    aput-char v4, p0, v27

    .line 1680
    :goto_79
    add-int/lit8 v18, v18, -0x1

    aget-char v27, p0, v18

    move/from16 v0, v27

    if-ge v5, v0, :cond_88

    .line 1681
    add-int/lit8 v27, v18, 0x1

    aget-char v28, p0, v18

    aput-char v28, p0, v27

    goto :goto_79

    .line 1683
    :cond_88
    add-int/lit8 v27, v18, 0x1

    aput-char v5, p0, v27

    .line 1669
    add-int/lit8 p1, p1, 0x1

    move/from16 v18, p1

    goto :goto_53

    .line 1685
    .end local v4    # "a1":C
    .end local v5    # "a2":C
    :cond_91
    aget-char v19, p0, p2

    .line 1687
    .local v19, "last":C
    :goto_93
    add-int/lit8 p2, p2, -0x1

    aget-char v27, p0, p2

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_a4

    .line 1688
    add-int/lit8 v27, p2, 0x1

    aget-char v28, p0, p2

    aput-char v28, p0, v27

    goto :goto_93

    .line 1690
    :cond_a4
    add-int/lit8 v27, p2, 0x1

    aput-char v19, p0, v27

    .line 1692
    .end local v18    # "k":I
    .end local v19    # "last":C
    :cond_a8
    return-void

    .line 1696
    :cond_a9
    shr-int/lit8 v27, v20, 0x3

    shr-int/lit8 v28, v20, 0x6

    add-int v27, v27, v28

    add-int/lit8 v25, v27, 0x1

    .line 1705
    .local v25, "seventh":I
    add-int v27, p1, p2

    ushr-int/lit8 v10, v27, 0x1

    .line 1706
    .local v10, "e3":I
    sub-int v9, v10, v25

    .line 1707
    .local v9, "e2":I
    sub-int v8, v9, v25

    .line 1708
    .local v8, "e1":I
    add-int v11, v10, v25

    .line 1709
    .local v11, "e4":I
    add-int v12, v11, v25

    .line 1712
    .local v12, "e5":I
    aget-char v27, p0, v9

    aget-char v28, p0, v8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_cf

    aget-char v26, p0, v9

    .local v26, "t":C
    aget-char v27, p0, v8

    aput-char v27, p0, v9

    aput-char v26, p0, v8

    .line 1714
    .end local v26    # "t":C
    :cond_cf
    aget-char v27, p0, v10

    aget-char v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_ef

    aget-char v26, p0, v10

    .restart local v26    # "t":C
    aget-char v27, p0, v9

    aput-char v27, p0, v10

    aput-char v26, p0, v9

    .line 1715
    aget-char v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_ef

    aget-char v27, p0, v8

    aput-char v27, p0, v9

    aput-char v26, p0, v8

    .line 1717
    .end local v26    # "t":C
    :cond_ef
    aget-char v27, p0, v11

    aget-char v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_11d

    aget-char v26, p0, v11

    .restart local v26    # "t":C
    aget-char v27, p0, v10

    aput-char v27, p0, v11

    aput-char v26, p0, v10

    .line 1718
    aget-char v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_11d

    aget-char v27, p0, v9

    aput-char v27, p0, v10

    aput-char v26, p0, v9

    .line 1719
    aget-char v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_11d

    aget-char v27, p0, v8

    aput-char v27, p0, v9

    aput-char v26, p0, v8

    .line 1722
    .end local v26    # "t":C
    :cond_11d
    aget-char v27, p0, v12

    aget-char v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_159

    aget-char v26, p0, v12

    .restart local v26    # "t":C
    aget-char v27, p0, v11

    aput-char v27, p0, v12

    aput-char v26, p0, v11

    .line 1723
    aget-char v27, p0, v10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_159

    aget-char v27, p0, v10

    aput-char v27, p0, v11

    aput-char v26, p0, v10

    .line 1724
    aget-char v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_159

    aget-char v27, p0, v9

    aput-char v27, p0, v10

    aput-char v26, p0, v9

    .line 1725
    aget-char v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_159

    aget-char v27, p0, v8

    aput-char v27, p0, v9

    aput-char v26, p0, v8

    .line 1731
    .end local v26    # "t":C
    :cond_159
    move/from16 v21, p1

    .line 1732
    .local v21, "less":I
    move/from16 v13, p2

    .line 1734
    .local v13, "great":I
    aget-char v27, p0, v8

    aget-char v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_28c

    aget-char v27, p0, v9

    aget-char v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_28c

    aget-char v27, p0, v10

    aget-char v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_28c

    aget-char v27, p0, v11

    aget-char v28, p0, v12

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_28c

    .line 1740
    aget-char v23, p0, v9

    .line 1741
    .local v23, "pivot1":C
    aget-char v24, p0, v11

    .line 1749
    .local v24, "pivot2":C
    aget-char v27, p0, p1

    aput-char v27, p0, v9

    .line 1750
    aget-char v27, p0, p2

    aput-char v27, p0, v11

    .line 1755
    :cond_191
    add-int/lit8 v21, v21, 0x1

    aget-char v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-lt v0, v1, :cond_191

    .line 1756
    :cond_19b
    add-int/lit8 v13, v13, -0x1

    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-gt v0, v1, :cond_19b

    .line 1778
    add-int/lit8 v18, v21, -0x1

    .restart local v18    # "k":I
    :cond_1a7
    :goto_1a7
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_1cf

    .line 1779
    aget-char v7, p0, v18

    .line 1780
    .local v7, "ak":C
    move/from16 v0, v23

    if-ge v7, v0, :cond_1bc

    .line 1781
    aget-char v27, p0, v21

    aput-char v27, p0, v18

    .line 1786
    aput-char v7, p0, v21

    .line 1787
    add-int/lit8 v21, v21, 0x1

    goto :goto_1a7

    .line 1788
    :cond_1bc
    move/from16 v0, v24

    if-le v7, v0, :cond_1a7

    .line 1789
    :goto_1c0
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_212

    .line 1790
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .local v14, "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_210

    move v13, v14

    .line 1811
    .end local v7    # "ak":C
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_1cf
    add-int/lit8 v27, v21, -0x1

    aget-char v27, p0, v27

    aput-char v27, p0, p1

    add-int/lit8 v27, v21, -0x1

    aput-char v23, p0, v27

    .line 1812
    add-int/lit8 v27, v13, 0x1

    aget-char v27, p0, v27

    aput-char v27, p0, p2

    add-int/lit8 v27, v13, 0x1

    aput-char v24, p0, v27

    .line 1815
    add-int/lit8 v27, v21, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1816
    add-int/lit8 v27, v13, 0x2

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1822
    move/from16 v0, v21

    if-ge v0, v8, :cond_264

    if-ge v12, v13, :cond_264

    .line 1826
    :goto_205
    aget-char v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_22f

    .line 1827
    add-int/lit8 v21, v21, 0x1

    goto :goto_205

    .end local v13    # "great":I
    .restart local v7    # "ak":C
    .restart local v14    # "great":I
    :cond_210
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_1c0

    .line 1794
    :cond_212
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_22a

    .line 1795
    aget-char v27, p0, v21

    aput-char v27, p0, v18

    .line 1796
    aget-char v27, p0, v13

    aput-char v27, p0, v21

    .line 1797
    add-int/lit8 v21, v21, 0x1

    .line 1805
    :goto_224
    aput-char v7, p0, v13

    .line 1806
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1a7

    .line 1799
    :cond_22a
    aget-char v27, p0, v13

    aput-char v27, p0, v18

    goto :goto_224

    .line 1830
    .end local v7    # "ak":C
    :cond_22f
    :goto_22f
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_23a

    .line 1831
    add-int/lit8 v13, v13, -0x1

    goto :goto_22f

    .line 1854
    :cond_23a
    add-int/lit8 v18, v21, -0x1

    :cond_23c
    :goto_23c
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_264

    .line 1855
    aget-char v7, p0, v18

    .line 1856
    .restart local v7    # "ak":C
    move/from16 v0, v23

    if-ne v7, v0, :cond_251

    .line 1857
    aget-char v27, p0, v21

    aput-char v27, p0, v18

    .line 1858
    aput-char v7, p0, v21

    .line 1859
    add-int/lit8 v21, v21, 0x1

    goto :goto_23c

    .line 1860
    :cond_251
    move/from16 v0, v24

    if-ne v7, v0, :cond_23c

    .line 1861
    :goto_255
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_272

    .line 1862
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .restart local v14    # "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_270

    move v13, v14

    .line 1888
    .end local v7    # "ak":C
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_264
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1958
    .end local v23    # "pivot1":C
    .end local v24    # "pivot2":C
    :goto_26f
    return-void

    .end local v13    # "great":I
    .restart local v7    # "ak":C
    .restart local v14    # "great":I
    .restart local v23    # "pivot1":C
    .restart local v24    # "pivot2":C
    :cond_270
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_255

    .line 1866
    :cond_272
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_287

    .line 1867
    aget-char v27, p0, v21

    aput-char v27, p0, v18

    .line 1876
    aput-char v23, p0, v21

    .line 1877
    add-int/lit8 v21, v21, 0x1

    .line 1881
    :goto_282
    aput-char v7, p0, v13

    .line 1882
    add-int/lit8 v13, v13, -0x1

    goto :goto_23c

    .line 1879
    :cond_287
    aget-char v27, p0, v13

    aput-char v27, p0, v18

    goto :goto_282

    .line 1895
    .end local v7    # "ak":C
    .end local v18    # "k":I
    .end local v23    # "pivot1":C
    .end local v24    # "pivot2":C
    :cond_28c
    aget-char v22, p0, v10

    .line 1917
    .local v22, "pivot":C
    move/from16 v18, p1

    .restart local v18    # "k":I
    :goto_290
    move/from16 v0, v18

    if-gt v0, v13, :cond_2d3

    .line 1918
    aget-char v27, p0, v18

    move/from16 v0, v27

    move/from16 v1, v22

    if-ne v0, v1, :cond_29f

    .line 1917
    :goto_29c
    add-int/lit8 v18, v18, 0x1

    goto :goto_290

    .line 1921
    :cond_29f
    aget-char v7, p0, v18

    .line 1922
    .restart local v7    # "ak":C
    move/from16 v0, v22

    if-ge v7, v0, :cond_2ae

    .line 1923
    aget-char v27, p0, v21

    aput-char v27, p0, v18

    .line 1924
    aput-char v7, p0, v21

    .line 1925
    add-int/lit8 v21, v21, 0x1

    goto :goto_29c

    .line 1927
    :cond_2ae
    :goto_2ae
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-le v0, v1, :cond_2b9

    .line 1928
    add-int/lit8 v13, v13, -0x1

    goto :goto_2ae

    .line 1930
    :cond_2b9
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_2d0

    .line 1931
    aget-char v27, p0, v21

    aput-char v27, p0, v18

    .line 1932
    aget-char v27, p0, v13

    aput-char v27, p0, v21

    .line 1933
    add-int/lit8 v21, v21, 0x1

    .line 1945
    :goto_2cb
    aput-char v7, p0, v13

    .line 1946
    add-int/lit8 v13, v13, -0x1

    goto :goto_29c

    .line 1943
    :cond_2d0
    aput-char v22, p0, v18

    goto :goto_2cb

    .line 1955
    .end local v7    # "ak":C
    :cond_2d3
    add-int/lit8 v27, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1956
    add-int/lit8 v27, v13, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    goto :goto_26f
.end method

.method static sort([CII[CII)V
    .registers 13
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [C
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 1490
    sub-int v5, p2, p1

    const/16 v6, 0xc80

    if-le v5, v6, :cond_31

    .line 1491
    const/high16 v5, 0x10000

    new-array v0, v5, [I

    .line 1493
    .local v0, "count":[I
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_c
    add-int/lit8 v1, v1, 0x1

    if-gt v1, p2, :cond_19

    .line 1494
    aget-char v5, p0, v1

    aget v6, v0, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v5

    goto :goto_c

    .line 1496
    :cond_19
    const/high16 v1, 0x10000

    add-int/lit8 v2, p2, 0x1

    .local v2, "k":I
    :cond_1d
    if-le v2, p1, :cond_34

    .line 1497
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    aget v5, v0, v1

    if-eqz v5, :cond_1f

    .line 1498
    int-to-char v4, v1

    .line 1499
    .local v4, "value":C
    aget v3, v0, v1

    .line 1502
    .local v3, "s":I
    :goto_28
    add-int/lit8 v2, v2, -0x1

    aput-char v4, p0, v2

    .line 1503
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1d

    goto :goto_28

    .line 1506
    .end local v0    # "count":[I
    .end local v1    # "i":I
    .end local v2    # "k":I
    .end local v3    # "s":I
    .end local v4    # "value":C
    :cond_31
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([CII[CII)V

    .line 1508
    :cond_34
    return-void
.end method

.method private static sort([DIIZ)V
    .registers 44
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .prologue
    .line 2750
    sub-int v36, p2, p1

    add-int/lit8 v23, v36, 0x1

    .line 2753
    .local v23, "length":I
    const/16 v36, 0x2f

    move/from16 v0, v23

    move/from16 v1, v36

    if-ge v0, v1, :cond_a9

    .line 2754
    if-eqz p3, :cond_4a

    .line 2760
    move/from16 v19, p1

    .local v19, "i":I
    move/from16 v20, p1

    .local v20, "j":I
    :goto_12
    move/from16 v0, v19

    move/from16 v1, p2

    if-ge v0, v1, :cond_a8

    .line 2761
    add-int/lit8 v36, v19, 0x1

    aget-wide v8, p0, v36

    .line 2762
    .local v8, "ai":D
    :goto_1c
    aget-wide v36, p0, v20

    cmpg-double v36, v8, v36

    if-gez v36, :cond_32

    .line 2763
    add-int/lit8 v36, v20, 0x1

    aget-wide v38, p0, v20

    aput-wide v38, p0, v36

    .line 2764
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "j":I
    .local v21, "j":I
    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_3b

    move/from16 v20, v21

    .line 2768
    .end local v21    # "j":I
    .restart local v20    # "j":I
    :cond_32
    add-int/lit8 v36, v20, 0x1

    aput-wide v8, p0, v36

    .line 2760
    add-int/lit8 v19, v19, 0x1

    move/from16 v20, v19

    goto :goto_12

    .end local v20    # "j":I
    .restart local v21    # "j":I
    :cond_3b
    move/from16 v20, v21

    .end local v21    # "j":I
    .restart local v20    # "j":I
    goto :goto_1c

    .line 2778
    .end local v8    # "ai":D
    .end local v19    # "i":I
    .end local v20    # "j":I
    :cond_3e
    add-int/lit8 p1, p1, 0x1

    aget-wide v36, p0, p1

    add-int/lit8 v38, p1, -0x1

    aget-wide v38, p0, v38

    cmpl-double v36, v36, v38

    if-ltz v36, :cond_51

    .line 2775
    :cond_4a
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_3e

    .line 2776
    return-void

    .line 2788
    :cond_51
    move/from16 v22, p1

    .local v22, "k":I
    :goto_53
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_93

    .line 2789
    aget-wide v4, p0, v22

    .local v4, "a1":D
    aget-wide v6, p0, p1

    .line 2791
    .local v6, "a2":D
    cmpg-double v36, v4, v6

    if-gez v36, :cond_66

    .line 2792
    move-wide v6, v4

    aget-wide v4, p0, p1

    .line 2794
    :cond_66
    :goto_66
    add-int/lit8 v22, v22, -0x1

    aget-wide v36, p0, v22

    cmpg-double v36, v4, v36

    if-gez v36, :cond_75

    .line 2795
    add-int/lit8 v36, v22, 0x2

    aget-wide v38, p0, v22

    aput-wide v38, p0, v36

    goto :goto_66

    .line 2797
    :cond_75
    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v36, v22, 0x1

    aput-wide v4, p0, v36

    .line 2799
    :goto_7b
    add-int/lit8 v22, v22, -0x1

    aget-wide v36, p0, v22

    cmpg-double v36, v6, v36

    if-gez v36, :cond_8a

    .line 2800
    add-int/lit8 v36, v22, 0x1

    aget-wide v38, p0, v22

    aput-wide v38, p0, v36

    goto :goto_7b

    .line 2802
    :cond_8a
    add-int/lit8 v36, v22, 0x1

    aput-wide v6, p0, v36

    .line 2788
    add-int/lit8 p1, p1, 0x1

    move/from16 v22, p1

    goto :goto_53

    .line 2804
    .end local v4    # "a1":D
    .end local v6    # "a2":D
    :cond_93
    aget-wide v24, p0, p2

    .line 2806
    .local v24, "last":D
    :goto_95
    add-int/lit8 p2, p2, -0x1

    aget-wide v36, p0, p2

    cmpg-double v36, v24, v36

    if-gez v36, :cond_a4

    .line 2807
    add-int/lit8 v36, p2, 0x1

    aget-wide v38, p0, p2

    aput-wide v38, p0, v36

    goto :goto_95

    .line 2809
    :cond_a4
    add-int/lit8 v36, p2, 0x1

    aput-wide v24, p0, v36

    .line 2811
    .end local v22    # "k":I
    .end local v24    # "last":D
    :cond_a8
    return-void

    .line 2815
    :cond_a9
    shr-int/lit8 v36, v23, 0x3

    shr-int/lit8 v37, v23, 0x6

    add-int v36, v36, v37

    add-int/lit8 v27, v36, 0x1

    .line 2824
    .local v27, "seventh":I
    add-int v36, p1, p2

    ushr-int/lit8 v14, v36, 0x1

    .line 2825
    .local v14, "e3":I
    sub-int v13, v14, v27

    .line 2826
    .local v13, "e2":I
    sub-int v12, v13, v27

    .line 2827
    .local v12, "e1":I
    add-int v15, v14, v27

    .line 2828
    .local v15, "e4":I
    add-int v16, v15, v27

    .line 2831
    .local v16, "e5":I
    aget-wide v36, p0, v13

    aget-wide v38, p0, v12

    cmpg-double v36, v36, v38

    if-gez v36, :cond_cd

    aget-wide v34, p0, v13

    .local v34, "t":D
    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 2833
    .end local v34    # "t":D
    :cond_cd
    aget-wide v36, p0, v14

    aget-wide v38, p0, v13

    cmpg-double v36, v36, v38

    if-gez v36, :cond_e9

    aget-wide v34, p0, v14

    .restart local v34    # "t":D
    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    .line 2834
    aget-wide v36, p0, v12

    cmpg-double v36, v34, v36

    if-gez v36, :cond_e9

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 2836
    .end local v34    # "t":D
    :cond_e9
    aget-wide v36, p0, v15

    aget-wide v38, p0, v14

    cmpg-double v36, v36, v38

    if-gez v36, :cond_111

    aget-wide v34, p0, v15

    .restart local v34    # "t":D
    aget-wide v36, p0, v14

    aput-wide v36, p0, v15

    aput-wide v34, p0, v14

    .line 2837
    aget-wide v36, p0, v13

    cmpg-double v36, v34, v36

    if-gez v36, :cond_111

    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    .line 2838
    aget-wide v36, p0, v12

    cmpg-double v36, v34, v36

    if-gez v36, :cond_111

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 2841
    .end local v34    # "t":D
    :cond_111
    aget-wide v36, p0, v16

    aget-wide v38, p0, v15

    cmpg-double v36, v36, v38

    if-gez v36, :cond_145

    aget-wide v34, p0, v16

    .restart local v34    # "t":D
    aget-wide v36, p0, v15

    aput-wide v36, p0, v16

    aput-wide v34, p0, v15

    .line 2842
    aget-wide v36, p0, v14

    cmpg-double v36, v34, v36

    if-gez v36, :cond_145

    aget-wide v36, p0, v14

    aput-wide v36, p0, v15

    aput-wide v34, p0, v14

    .line 2843
    aget-wide v36, p0, v13

    cmpg-double v36, v34, v36

    if-gez v36, :cond_145

    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    .line 2844
    aget-wide v36, p0, v12

    cmpg-double v36, v34, v36

    if-gez v36, :cond_145

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 2850
    .end local v34    # "t":D
    :cond_145
    move/from16 v26, p1

    .line 2851
    .local v26, "less":I
    move/from16 v17, p2

    .line 2853
    .local v17, "great":I
    aget-wide v36, p0, v12

    aget-wide v38, p0, v13

    cmpl-double v36, v36, v38

    if-eqz v36, :cond_274

    aget-wide v36, p0, v13

    aget-wide v38, p0, v14

    cmpl-double v36, v36, v38

    if-eqz v36, :cond_274

    aget-wide v36, p0, v14

    aget-wide v38, p0, v15

    cmpl-double v36, v36, v38

    if-eqz v36, :cond_274

    aget-wide v36, p0, v15

    aget-wide v38, p0, v16

    cmpl-double v36, v36, v38

    if-eqz v36, :cond_274

    .line 2859
    aget-wide v30, p0, v13

    .line 2860
    .local v30, "pivot1":D
    aget-wide v32, p0, v15

    .line 2868
    .local v32, "pivot2":D
    aget-wide v36, p0, p1

    aput-wide v36, p0, v13

    .line 2869
    aget-wide v36, p0, p2

    aput-wide v36, p0, v15

    .line 2874
    :cond_175
    add-int/lit8 v26, v26, 0x1

    aget-wide v36, p0, v26

    cmpg-double v36, v36, v30

    if-ltz v36, :cond_175

    .line 2875
    :cond_17d
    add-int/lit8 v17, v17, -0x1

    aget-wide v36, p0, v17

    cmpl-double v36, v36, v32

    if-gtz v36, :cond_17d

    .line 2897
    add-int/lit8 v22, v26, -0x1

    .restart local v22    # "k":I
    :cond_187
    :goto_187
    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_1b2

    .line 2898
    aget-wide v10, p0, v22

    .line 2899
    .local v10, "ak":D
    cmpg-double v36, v10, v30

    if-gez v36, :cond_19e

    .line 2900
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 2905
    aput-wide v10, p0, v26

    .line 2906
    add-int/lit8 v26, v26, 0x1

    goto :goto_187

    .line 2907
    :cond_19e
    cmpl-double v36, v10, v32

    if-lez v36, :cond_187

    .line 2908
    :goto_1a2
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v32

    if-lez v36, :cond_1f8

    .line 2909
    add-int/lit8 v18, v17, -0x1

    .end local v17    # "great":I
    .local v18, "great":I
    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f5

    move/from16 v17, v18

    .line 2930
    .end local v10    # "ak":D
    .end local v18    # "great":I
    .restart local v17    # "great":I
    :cond_1b2
    add-int/lit8 v36, v26, -0x1

    aget-wide v36, p0, v36

    aput-wide v36, p0, p1

    add-int/lit8 v36, v26, -0x1

    aput-wide v30, p0, v36

    .line 2931
    add-int/lit8 v36, v17, 0x1

    aget-wide v36, p0, v36

    aput-wide v36, p0, p2

    add-int/lit8 v36, v17, 0x1

    aput-wide v32, p0, v36

    .line 2934
    add-int/lit8 v36, v26, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2935
    add-int/lit8 v36, v17, 0x2

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, p2

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2941
    move/from16 v0, v26

    if-ge v0, v12, :cond_249

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_249

    .line 2945
    :goto_1ec
    aget-wide v36, p0, v26

    cmpl-double v36, v36, v30

    if-nez v36, :cond_213

    .line 2946
    add-int/lit8 v26, v26, 0x1

    goto :goto_1ec

    .end local v17    # "great":I
    .restart local v10    # "ak":D
    .restart local v18    # "great":I
    :cond_1f5
    move/from16 v17, v18

    .end local v18    # "great":I
    .restart local v17    # "great":I
    goto :goto_1a2

    .line 2913
    :cond_1f8
    aget-wide v36, p0, v17

    cmpg-double v36, v36, v30

    if-gez v36, :cond_20e

    .line 2914
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 2915
    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    .line 2916
    add-int/lit8 v26, v26, 0x1

    .line 2924
    :goto_208
    aput-wide v10, p0, v17

    .line 2925
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_187

    .line 2918
    :cond_20e
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_208

    .line 2949
    .end local v10    # "ak":D
    :cond_213
    :goto_213
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v32

    if-nez v36, :cond_21c

    .line 2950
    add-int/lit8 v17, v17, -0x1

    goto :goto_213

    .line 2973
    :cond_21c
    add-int/lit8 v22, v26, -0x1

    :cond_21e
    :goto_21e
    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_249

    .line 2974
    aget-wide v10, p0, v22

    .line 2975
    .restart local v10    # "ak":D
    cmpl-double v36, v10, v30

    if-nez v36, :cond_235

    .line 2976
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 2977
    aput-wide v10, p0, v26

    .line 2978
    add-int/lit8 v26, v26, 0x1

    goto :goto_21e

    .line 2979
    :cond_235
    cmpl-double v36, v10, v32

    if-nez v36, :cond_21e

    .line 2980
    :goto_239
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v32

    if-nez v36, :cond_25a

    .line 2981
    add-int/lit8 v18, v17, -0x1

    .end local v17    # "great":I
    .restart local v18    # "great":I
    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_257

    move/from16 v17, v18

    .line 3007
    .end local v10    # "ak":D
    .end local v18    # "great":I
    .restart local v17    # "great":I
    :cond_249
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v17

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 3077
    .end local v30    # "pivot1":D
    .end local v32    # "pivot2":D
    :goto_256
    return-void

    .end local v17    # "great":I
    .restart local v10    # "ak":D
    .restart local v18    # "great":I
    .restart local v30    # "pivot1":D
    .restart local v32    # "pivot2":D
    :cond_257
    move/from16 v17, v18

    .end local v18    # "great":I
    .restart local v17    # "great":I
    goto :goto_239

    .line 2985
    :cond_25a
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v30

    if-nez v36, :cond_26f

    .line 2986
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 2995
    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    .line 2996
    add-int/lit8 v26, v26, 0x1

    .line 3000
    :goto_26a
    aput-wide v10, p0, v17

    .line 3001
    add-int/lit8 v17, v17, -0x1

    goto :goto_21e

    .line 2998
    :cond_26f
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_26a

    .line 3014
    .end local v10    # "ak":D
    .end local v22    # "k":I
    .end local v30    # "pivot1":D
    .end local v32    # "pivot2":D
    :cond_274
    aget-wide v28, p0, v14

    .line 3036
    .local v28, "pivot":D
    move/from16 v22, p1

    .restart local v22    # "k":I
    :goto_278
    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_2b9

    .line 3037
    aget-wide v36, p0, v22

    cmpl-double v36, v36, v28

    if-nez v36, :cond_287

    .line 3036
    :goto_284
    add-int/lit8 v22, v22, 0x1

    goto :goto_278

    .line 3040
    :cond_287
    aget-wide v10, p0, v22

    .line 3041
    .restart local v10    # "ak":D
    cmpg-double v36, v10, v28

    if-gez v36, :cond_296

    .line 3042
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 3043
    aput-wide v10, p0, v26

    .line 3044
    add-int/lit8 v26, v26, 0x1

    goto :goto_284

    .line 3046
    :cond_296
    :goto_296
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v28

    if-lez v36, :cond_29f

    .line 3047
    add-int/lit8 v17, v17, -0x1

    goto :goto_296

    .line 3049
    :cond_29f
    aget-wide v36, p0, v17

    cmpg-double v36, v36, v28

    if-gez v36, :cond_2b4

    .line 3050
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 3051
    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    .line 3052
    add-int/lit8 v26, v26, 0x1

    .line 3064
    :goto_2af
    aput-wide v10, p0, v17

    .line 3065
    add-int/lit8 v17, v17, -0x1

    goto :goto_284

    .line 3062
    :cond_2b4
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_2af

    .line 3074
    .end local v10    # "ak":D
    :cond_2b9
    add-int/lit8 v36, v26, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 3075
    add-int/lit8 v36, v17, 0x1

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, p2

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    goto :goto_256
.end method

.method static sort([DII[DII)V
    .registers 18
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [D
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 2556
    :goto_0
    if-gt p1, p2, :cond_d

    aget-wide v8, p0, p2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2557
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2559
    :cond_d
    move v3, p2

    .local v3, "k":I
    :cond_e
    :goto_e
    add-int/lit8 v3, v3, -0x1

    if-lt v3, p1, :cond_21

    .line 2560
    aget-wide v0, p0, v3

    .line 2561
    .local v0, "ak":D
    cmpl-double v8, v0, v0

    if-eqz v8, :cond_e

    .line 2562
    aget-wide v8, p0, p2

    aput-wide v8, p0, v3

    .line 2563
    aput-wide v0, p0, p2

    .line 2564
    add-int/lit8 p2, p2, -0x1

    goto :goto_e

    .line 2571
    .end local v0    # "ak":D
    :cond_21
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([DII[DII)V

    .line 2576
    move v2, p2

    .line 2581
    .local v2, "hi":I
    :goto_25
    if-ge p1, v2, :cond_38

    .line 2582
    add-int v8, p1, v2

    ushr-int/lit8 v4, v8, 0x1

    .line 2583
    .local v4, "middle":I
    aget-wide v6, p0, v4

    .line 2585
    .local v6, "middleValue":D
    const-wide/16 v8, 0x0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_36

    .line 2586
    add-int/lit8 p1, v4, 0x1

    goto :goto_25

    .line 2588
    :cond_36
    move v2, v4

    goto :goto_25

    .line 2595
    .end local v4    # "middle":I
    .end local v6    # "middleValue":D
    :cond_38
    :goto_38
    if-gt p1, p2, :cond_49

    aget-wide v8, p0, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_49

    .line 2596
    add-int/lit8 p1, p1, 0x1

    goto :goto_38

    .line 2620
    :cond_49
    move v3, p1

    add-int/lit8 v5, p1, -0x1

    .local v5, "p":I
    :cond_4c
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    if-gt v3, p2, :cond_58

    .line 2621
    aget-wide v0, p0, v3

    .line 2622
    .restart local v0    # "ak":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-eqz v8, :cond_59

    .line 2630
    .end local v0    # "ak":D
    :cond_58
    return-void

    .line 2625
    .restart local v0    # "ak":D
    :cond_59
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_4c

    .line 2626
    const-wide/16 v8, 0x0

    aput-wide v8, p0, v3

    .line 2627
    add-int/lit8 v5, v5, 0x1

    const-wide/high16 v8, -0x8000000000000000L

    aput-wide v8, p0, v5

    goto :goto_4c
.end method

.method private static sort([FIIZ)V
    .registers 33
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .prologue
    .line 2211
    sub-int v27, p2, p1

    add-int/lit8 v20, v27, 0x1

    .line 2214
    .local v20, "length":I
    const/16 v27, 0x2f

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_a7

    .line 2215
    if-eqz p3, :cond_48

    .line 2221
    move/from16 v15, p1

    .local v15, "i":I
    move/from16 v16, p1

    .local v16, "j":I
    :goto_12
    move/from16 v0, p2

    if-ge v15, v0, :cond_a6

    .line 2222
    add-int/lit8 v27, v15, 0x1

    aget v6, p0, v27

    .line 2223
    .local v6, "ai":F
    :goto_1a
    aget v27, p0, v16

    cmpg-float v27, v6, v27

    if-gez v27, :cond_30

    .line 2224
    add-int/lit8 v27, v16, 0x1

    aget v28, p0, v16

    aput v28, p0, v27

    .line 2225
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "j":I
    .local v17, "j":I
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_39

    move/from16 v16, v17

    .line 2229
    .end local v17    # "j":I
    .restart local v16    # "j":I
    :cond_30
    add-int/lit8 v27, v16, 0x1

    aput v6, p0, v27

    .line 2221
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v15

    goto :goto_12

    .end local v16    # "j":I
    .restart local v17    # "j":I
    :cond_39
    move/from16 v16, v17

    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_1a

    .line 2239
    .end local v6    # "ai":F
    .end local v15    # "i":I
    .end local v16    # "j":I
    :cond_3c
    add-int/lit8 p1, p1, 0x1

    aget v27, p0, p1

    add-int/lit8 v28, p1, -0x1

    aget v28, p0, v28

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_4f

    .line 2236
    :cond_48
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_3c

    .line 2237
    return-void

    .line 2249
    :cond_4f
    move/from16 v18, p1

    .local v18, "k":I
    :goto_51
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_91

    .line 2250
    aget v4, p0, v18

    .local v4, "a1":F
    aget v5, p0, p1

    .line 2252
    .local v5, "a2":F
    cmpg-float v27, v4, v5

    if-gez v27, :cond_64

    .line 2253
    move v5, v4

    aget v4, p0, p1

    .line 2255
    :cond_64
    :goto_64
    add-int/lit8 v18, v18, -0x1

    aget v27, p0, v18

    cmpg-float v27, v4, v27

    if-gez v27, :cond_73

    .line 2256
    add-int/lit8 v27, v18, 0x2

    aget v28, p0, v18

    aput v28, p0, v27

    goto :goto_64

    .line 2258
    :cond_73
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v27, v18, 0x1

    aput v4, p0, v27

    .line 2260
    :goto_79
    add-int/lit8 v18, v18, -0x1

    aget v27, p0, v18

    cmpg-float v27, v5, v27

    if-gez v27, :cond_88

    .line 2261
    add-int/lit8 v27, v18, 0x1

    aget v28, p0, v18

    aput v28, p0, v27

    goto :goto_79

    .line 2263
    :cond_88
    add-int/lit8 v27, v18, 0x1

    aput v5, p0, v27

    .line 2249
    add-int/lit8 p1, p1, 0x1

    move/from16 v18, p1

    goto :goto_51

    .line 2265
    .end local v4    # "a1":F
    .end local v5    # "a2":F
    :cond_91
    aget v19, p0, p2

    .line 2267
    .local v19, "last":F
    :goto_93
    add-int/lit8 p2, p2, -0x1

    aget v27, p0, p2

    cmpg-float v27, v19, v27

    if-gez v27, :cond_a2

    .line 2268
    add-int/lit8 v27, p2, 0x1

    aget v28, p0, p2

    aput v28, p0, v27

    goto :goto_93

    .line 2270
    :cond_a2
    add-int/lit8 v27, p2, 0x1

    aput v19, p0, v27

    .line 2272
    .end local v18    # "k":I
    .end local v19    # "last":F
    :cond_a6
    return-void

    .line 2276
    :cond_a7
    shr-int/lit8 v27, v20, 0x3

    shr-int/lit8 v28, v20, 0x6

    add-int v27, v27, v28

    add-int/lit8 v25, v27, 0x1

    .line 2285
    .local v25, "seventh":I
    add-int v27, p1, p2

    ushr-int/lit8 v10, v27, 0x1

    .line 2286
    .local v10, "e3":I
    sub-int v9, v10, v25

    .line 2287
    .local v9, "e2":I
    sub-int v8, v9, v25

    .line 2288
    .local v8, "e1":I
    add-int v11, v10, v25

    .line 2289
    .local v11, "e4":I
    add-int v12, v11, v25

    .line 2292
    .local v12, "e5":I
    aget v27, p0, v9

    aget v28, p0, v8

    cmpg-float v27, v27, v28

    if-gez v27, :cond_cb

    aget v26, p0, v9

    .local v26, "t":F
    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 2294
    .end local v26    # "t":F
    :cond_cb
    aget v27, p0, v10

    aget v28, p0, v9

    cmpg-float v27, v27, v28

    if-gez v27, :cond_e7

    aget v26, p0, v10

    .restart local v26    # "t":F
    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    .line 2295
    aget v27, p0, v8

    cmpg-float v27, v26, v27

    if-gez v27, :cond_e7

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 2297
    .end local v26    # "t":F
    :cond_e7
    aget v27, p0, v11

    aget v28, p0, v10

    cmpg-float v27, v27, v28

    if-gez v27, :cond_10f

    aget v26, p0, v11

    .restart local v26    # "t":F
    aget v27, p0, v10

    aput v27, p0, v11

    aput v26, p0, v10

    .line 2298
    aget v27, p0, v9

    cmpg-float v27, v26, v27

    if-gez v27, :cond_10f

    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    .line 2299
    aget v27, p0, v8

    cmpg-float v27, v26, v27

    if-gez v27, :cond_10f

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 2302
    .end local v26    # "t":F
    :cond_10f
    aget v27, p0, v12

    aget v28, p0, v11

    cmpg-float v27, v27, v28

    if-gez v27, :cond_143

    aget v26, p0, v12

    .restart local v26    # "t":F
    aget v27, p0, v11

    aput v27, p0, v12

    aput v26, p0, v11

    .line 2303
    aget v27, p0, v10

    cmpg-float v27, v26, v27

    if-gez v27, :cond_143

    aget v27, p0, v10

    aput v27, p0, v11

    aput v26, p0, v10

    .line 2304
    aget v27, p0, v9

    cmpg-float v27, v26, v27

    if-gez v27, :cond_143

    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    .line 2305
    aget v27, p0, v8

    cmpg-float v27, v26, v27

    if-gez v27, :cond_143

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 2311
    .end local v26    # "t":F
    :cond_143
    move/from16 v21, p1

    .line 2312
    .local v21, "less":I
    move/from16 v13, p2

    .line 2314
    .local v13, "great":I
    aget v27, p0, v8

    aget v28, p0, v9

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_25f

    aget v27, p0, v9

    aget v28, p0, v10

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_25f

    aget v27, p0, v10

    aget v28, p0, v11

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_25f

    aget v27, p0, v11

    aget v28, p0, v12

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_25f

    .line 2320
    aget v23, p0, v9

    .line 2321
    .local v23, "pivot1":F
    aget v24, p0, v11

    .line 2329
    .local v24, "pivot2":F
    aget v27, p0, p1

    aput v27, p0, v9

    .line 2330
    aget v27, p0, p2

    aput v27, p0, v11

    .line 2335
    :cond_173
    add-int/lit8 v21, v21, 0x1

    aget v27, p0, v21

    cmpg-float v27, v27, v23

    if-ltz v27, :cond_173

    .line 2336
    :cond_17b
    add-int/lit8 v13, v13, -0x1

    aget v27, p0, v13

    cmpl-float v27, v27, v24

    if-gtz v27, :cond_17b

    .line 2358
    add-int/lit8 v18, v21, -0x1

    .restart local v18    # "k":I
    :cond_185
    :goto_185
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_1ab

    .line 2359
    aget v7, p0, v18

    .line 2360
    .local v7, "ak":F
    cmpg-float v27, v7, v23

    if-gez v27, :cond_19a

    .line 2361
    aget v27, p0, v21

    aput v27, p0, v18

    .line 2366
    aput v7, p0, v21

    .line 2367
    add-int/lit8 v21, v21, 0x1

    goto :goto_185

    .line 2368
    :cond_19a
    cmpl-float v27, v7, v24

    if-lez v27, :cond_185

    .line 2369
    :goto_19e
    aget v27, p0, v13

    cmpl-float v27, v27, v24

    if-lez v27, :cond_1ec

    .line 2370
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .local v14, "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_1ea

    move v13, v14

    .line 2391
    .end local v7    # "ak":F
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_1ab
    add-int/lit8 v27, v21, -0x1

    aget v27, p0, v27

    aput v27, p0, p1

    add-int/lit8 v27, v21, -0x1

    aput v23, p0, v27

    .line 2392
    add-int/lit8 v27, v13, 0x1

    aget v27, p0, v27

    aput v27, p0, p2

    add-int/lit8 v27, v13, 0x1

    aput v24, p0, v27

    .line 2395
    add-int/lit8 v27, v21, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2396
    add-int/lit8 v27, v13, 0x2

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2402
    move/from16 v0, v21

    if-ge v0, v8, :cond_237

    if-ge v12, v13, :cond_237

    .line 2406
    :goto_1e1
    aget v27, p0, v21

    cmpl-float v27, v27, v23

    if-nez v27, :cond_206

    .line 2407
    add-int/lit8 v21, v21, 0x1

    goto :goto_1e1

    .end local v13    # "great":I
    .restart local v7    # "ak":F
    .restart local v14    # "great":I
    :cond_1ea
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_19e

    .line 2374
    :cond_1ec
    aget v27, p0, v13

    cmpg-float v27, v27, v23

    if-gez v27, :cond_201

    .line 2375
    aget v27, p0, v21

    aput v27, p0, v18

    .line 2376
    aget v27, p0, v13

    aput v27, p0, v21

    .line 2377
    add-int/lit8 v21, v21, 0x1

    .line 2385
    :goto_1fc
    aput v7, p0, v13

    .line 2386
    add-int/lit8 v13, v13, -0x1

    goto :goto_185

    .line 2379
    :cond_201
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_1fc

    .line 2410
    .end local v7    # "ak":F
    :cond_206
    :goto_206
    aget v27, p0, v13

    cmpl-float v27, v27, v24

    if-nez v27, :cond_20f

    .line 2411
    add-int/lit8 v13, v13, -0x1

    goto :goto_206

    .line 2434
    :cond_20f
    add-int/lit8 v18, v21, -0x1

    :cond_211
    :goto_211
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_237

    .line 2435
    aget v7, p0, v18

    .line 2436
    .restart local v7    # "ak":F
    cmpl-float v27, v7, v23

    if-nez v27, :cond_226

    .line 2437
    aget v27, p0, v21

    aput v27, p0, v18

    .line 2438
    aput v7, p0, v21

    .line 2439
    add-int/lit8 v21, v21, 0x1

    goto :goto_211

    .line 2440
    :cond_226
    cmpl-float v27, v7, v24

    if-nez v27, :cond_211

    .line 2441
    :goto_22a
    aget v27, p0, v13

    cmpl-float v27, v27, v24

    if-nez v27, :cond_245

    .line 2442
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .restart local v14    # "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_243

    move v13, v14

    .line 2468
    .end local v7    # "ak":F
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_237
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2538
    .end local v23    # "pivot1":F
    .end local v24    # "pivot2":F
    :goto_242
    return-void

    .end local v13    # "great":I
    .restart local v7    # "ak":F
    .restart local v14    # "great":I
    .restart local v23    # "pivot1":F
    .restart local v24    # "pivot2":F
    :cond_243
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_22a

    .line 2446
    :cond_245
    aget v27, p0, v13

    cmpl-float v27, v27, v23

    if-nez v27, :cond_25a

    .line 2447
    aget v27, p0, v21

    aput v27, p0, v18

    .line 2456
    aget v27, p0, v13

    aput v27, p0, v21

    .line 2457
    add-int/lit8 v21, v21, 0x1

    .line 2461
    :goto_255
    aput v7, p0, v13

    .line 2462
    add-int/lit8 v13, v13, -0x1

    goto :goto_211

    .line 2459
    :cond_25a
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_255

    .line 2475
    .end local v7    # "ak":F
    .end local v18    # "k":I
    .end local v23    # "pivot1":F
    .end local v24    # "pivot2":F
    :cond_25f
    aget v22, p0, v10

    .line 2497
    .local v22, "pivot":F
    move/from16 v18, p1

    .restart local v18    # "k":I
    :goto_263
    move/from16 v0, v18

    if-gt v0, v13, :cond_2a2

    .line 2498
    aget v27, p0, v18

    cmpl-float v27, v27, v22

    if-nez v27, :cond_270

    .line 2497
    :goto_26d
    add-int/lit8 v18, v18, 0x1

    goto :goto_263

    .line 2501
    :cond_270
    aget v7, p0, v18

    .line 2502
    .restart local v7    # "ak":F
    cmpg-float v27, v7, v22

    if-gez v27, :cond_27f

    .line 2503
    aget v27, p0, v21

    aput v27, p0, v18

    .line 2504
    aput v7, p0, v21

    .line 2505
    add-int/lit8 v21, v21, 0x1

    goto :goto_26d

    .line 2507
    :cond_27f
    :goto_27f
    aget v27, p0, v13

    cmpl-float v27, v27, v22

    if-lez v27, :cond_288

    .line 2508
    add-int/lit8 v13, v13, -0x1

    goto :goto_27f

    .line 2510
    :cond_288
    aget v27, p0, v13

    cmpg-float v27, v27, v22

    if-gez v27, :cond_29d

    .line 2511
    aget v27, p0, v21

    aput v27, p0, v18

    .line 2512
    aget v27, p0, v13

    aput v27, p0, v21

    .line 2513
    add-int/lit8 v21, v21, 0x1

    .line 2525
    :goto_298
    aput v7, p0, v13

    .line 2526
    add-int/lit8 v13, v13, -0x1

    goto :goto_26d

    .line 2523
    :cond_29d
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_298

    .line 2535
    .end local v7    # "ak":F
    :cond_2a2
    add-int/lit8 v27, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2536
    add-int/lit8 v27, v13, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    goto :goto_242
.end method

.method static sort([FII[FII)V
    .registers 14
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [F
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    const/4 v7, 0x0

    .line 2017
    :goto_1
    if-gt p1, p2, :cond_e

    aget v6, p0, p2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2018
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 2020
    :cond_e
    move v2, p2

    .local v2, "k":I
    :cond_f
    :goto_f
    add-int/lit8 v2, v2, -0x1

    if-lt v2, p1, :cond_22

    .line 2021
    aget v0, p0, v2

    .line 2022
    .local v0, "ak":F
    cmpl-float v6, v0, v0

    if-eqz v6, :cond_f

    .line 2023
    aget v6, p0, p2

    aput v6, p0, v2

    .line 2024
    aput v0, p0, p2

    .line 2025
    add-int/lit8 p2, p2, -0x1

    goto :goto_f

    .line 2032
    .end local v0    # "ak":F
    :cond_22
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([FII[FII)V

    .line 2037
    move v1, p2

    .line 2042
    .local v1, "hi":I
    :goto_26
    if-ge p1, v1, :cond_37

    .line 2043
    add-int v6, p1, v1

    ushr-int/lit8 v3, v6, 0x1

    .line 2044
    .local v3, "middle":I
    aget v4, p0, v3

    .line 2046
    .local v4, "middleValue":F
    cmpg-float v6, v4, v7

    if-gez v6, :cond_35

    .line 2047
    add-int/lit8 p1, v3, 0x1

    goto :goto_26

    .line 2049
    :cond_35
    move v1, v3

    goto :goto_26

    .line 2056
    .end local v3    # "middle":I
    .end local v4    # "middleValue":F
    :cond_37
    :goto_37
    if-gt p1, p2, :cond_44

    aget v6, p0, p1

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    if-gez v6, :cond_44

    .line 2057
    add-int/lit8 p1, p1, 0x1

    goto :goto_37

    .line 2081
    :cond_44
    move v2, p1

    add-int/lit8 v5, p1, -0x1

    .local v5, "p":I
    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    if-gt v2, p2, :cond_51

    .line 2082
    aget v0, p0, v2

    .line 2083
    .restart local v0    # "ak":F
    cmpl-float v6, v0, v7

    if-eqz v6, :cond_52

    .line 2091
    .end local v0    # "ak":F
    :cond_51
    return-void

    .line 2086
    .restart local v0    # "ak":F
    :cond_52
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    if-gez v6, :cond_47

    .line 2087
    aput v7, p0, v2

    .line 2088
    add-int/lit8 v5, v5, 0x1

    const/high16 v6, -0x80000000

    aput v6, p0, v5

    goto :goto_47
.end method

.method private static sort([IIIZ)V
    .registers 33
    .param p0, "a"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .prologue
    .line 215
    sub-int v27, p2, p1

    add-int/lit8 v20, v27, 0x1

    .line 218
    .local v20, "length":I
    const/16 v27, 0x2f

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_a9

    .line 219
    if-eqz p3, :cond_4a

    .line 225
    move/from16 v15, p1

    .local v15, "i":I
    move/from16 v16, p1

    .local v16, "j":I
    :goto_12
    move/from16 v0, p2

    if-ge v15, v0, :cond_a8

    .line 226
    add-int/lit8 v27, v15, 0x1

    aget v6, p0, v27

    .line 227
    .local v6, "ai":I
    :goto_1a
    aget v27, p0, v16

    move/from16 v0, v27

    if-ge v6, v0, :cond_30

    .line 228
    add-int/lit8 v27, v16, 0x1

    aget v28, p0, v16

    aput v28, p0, v27

    .line 229
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "j":I
    .local v17, "j":I
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_39

    move/from16 v16, v17

    .line 233
    .end local v17    # "j":I
    .restart local v16    # "j":I
    :cond_30
    add-int/lit8 v27, v16, 0x1

    aput v6, p0, v27

    .line 225
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v15

    goto :goto_12

    .end local v16    # "j":I
    .restart local v17    # "j":I
    :cond_39
    move/from16 v16, v17

    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_1a

    .line 243
    .end local v6    # "ai":I
    .end local v15    # "i":I
    .end local v16    # "j":I
    :cond_3c
    add-int/lit8 p1, p1, 0x1

    aget v27, p0, p1

    add-int/lit8 v28, p1, -0x1

    aget v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_51

    .line 240
    :cond_4a
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_3c

    .line 241
    return-void

    .line 253
    :cond_51
    move/from16 v18, p1

    .local v18, "k":I
    :goto_53
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_91

    .line 254
    aget v4, p0, v18

    .local v4, "a1":I
    aget v5, p0, p1

    .line 256
    .local v5, "a2":I
    if-ge v4, v5, :cond_64

    .line 257
    move v5, v4

    aget v4, p0, p1

    .line 259
    :cond_64
    :goto_64
    add-int/lit8 v18, v18, -0x1

    aget v27, p0, v18

    move/from16 v0, v27

    if-ge v4, v0, :cond_73

    .line 260
    add-int/lit8 v27, v18, 0x2

    aget v28, p0, v18

    aput v28, p0, v27

    goto :goto_64

    .line 262
    :cond_73
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v27, v18, 0x1

    aput v4, p0, v27

    .line 264
    :goto_79
    add-int/lit8 v18, v18, -0x1

    aget v27, p0, v18

    move/from16 v0, v27

    if-ge v5, v0, :cond_88

    .line 265
    add-int/lit8 v27, v18, 0x1

    aget v28, p0, v18

    aput v28, p0, v27

    goto :goto_79

    .line 267
    :cond_88
    add-int/lit8 v27, v18, 0x1

    aput v5, p0, v27

    .line 253
    add-int/lit8 p1, p1, 0x1

    move/from16 v18, p1

    goto :goto_53

    .line 269
    .end local v4    # "a1":I
    .end local v5    # "a2":I
    :cond_91
    aget v19, p0, p2

    .line 271
    .local v19, "last":I
    :goto_93
    add-int/lit8 p2, p2, -0x1

    aget v27, p0, p2

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_a4

    .line 272
    add-int/lit8 v27, p2, 0x1

    aget v28, p0, p2

    aput v28, p0, v27

    goto :goto_93

    .line 274
    :cond_a4
    add-int/lit8 v27, p2, 0x1

    aput v19, p0, v27

    .line 276
    .end local v18    # "k":I
    .end local v19    # "last":I
    :cond_a8
    return-void

    .line 280
    :cond_a9
    shr-int/lit8 v27, v20, 0x3

    shr-int/lit8 v28, v20, 0x6

    add-int v27, v27, v28

    add-int/lit8 v25, v27, 0x1

    .line 289
    .local v25, "seventh":I
    add-int v27, p1, p2

    ushr-int/lit8 v10, v27, 0x1

    .line 290
    .local v10, "e3":I
    sub-int v9, v10, v25

    .line 291
    .local v9, "e2":I
    sub-int v8, v9, v25

    .line 292
    .local v8, "e1":I
    add-int v11, v10, v25

    .line 293
    .local v11, "e4":I
    add-int v12, v11, v25

    .line 296
    .local v12, "e5":I
    aget v27, p0, v9

    aget v28, p0, v8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_cf

    aget v26, p0, v9

    .local v26, "t":I
    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 298
    .end local v26    # "t":I
    :cond_cf
    aget v27, p0, v10

    aget v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_ef

    aget v26, p0, v10

    .restart local v26    # "t":I
    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    .line 299
    aget v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_ef

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 301
    .end local v26    # "t":I
    :cond_ef
    aget v27, p0, v11

    aget v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_11d

    aget v26, p0, v11

    .restart local v26    # "t":I
    aget v27, p0, v10

    aput v27, p0, v11

    aput v26, p0, v10

    .line 302
    aget v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_11d

    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    .line 303
    aget v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_11d

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 306
    .end local v26    # "t":I
    :cond_11d
    aget v27, p0, v12

    aget v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_159

    aget v26, p0, v12

    .restart local v26    # "t":I
    aget v27, p0, v11

    aput v27, p0, v12

    aput v26, p0, v11

    .line 307
    aget v27, p0, v10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_159

    aget v27, p0, v10

    aput v27, p0, v11

    aput v26, p0, v10

    .line 308
    aget v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_159

    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    .line 309
    aget v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_159

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 315
    .end local v26    # "t":I
    :cond_159
    move/from16 v21, p1

    .line 316
    .local v21, "less":I
    move/from16 v13, p2

    .line 318
    .local v13, "great":I
    aget v27, p0, v8

    aget v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_28c

    aget v27, p0, v9

    aget v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_28c

    aget v27, p0, v10

    aget v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_28c

    aget v27, p0, v11

    aget v28, p0, v12

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_28c

    .line 324
    aget v23, p0, v9

    .line 325
    .local v23, "pivot1":I
    aget v24, p0, v11

    .line 333
    .local v24, "pivot2":I
    aget v27, p0, p1

    aput v27, p0, v9

    .line 334
    aget v27, p0, p2

    aput v27, p0, v11

    .line 339
    :cond_191
    add-int/lit8 v21, v21, 0x1

    aget v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-lt v0, v1, :cond_191

    .line 340
    :cond_19b
    add-int/lit8 v13, v13, -0x1

    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-gt v0, v1, :cond_19b

    .line 362
    add-int/lit8 v18, v21, -0x1

    .restart local v18    # "k":I
    :cond_1a7
    :goto_1a7
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_1cf

    .line 363
    aget v7, p0, v18

    .line 364
    .local v7, "ak":I
    move/from16 v0, v23

    if-ge v7, v0, :cond_1bc

    .line 365
    aget v27, p0, v21

    aput v27, p0, v18

    .line 370
    aput v7, p0, v21

    .line 371
    add-int/lit8 v21, v21, 0x1

    goto :goto_1a7

    .line 372
    :cond_1bc
    move/from16 v0, v24

    if-le v7, v0, :cond_1a7

    .line 373
    :goto_1c0
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_212

    .line 374
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .local v14, "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_210

    move v13, v14

    .line 395
    .end local v7    # "ak":I
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_1cf
    add-int/lit8 v27, v21, -0x1

    aget v27, p0, v27

    aput v27, p0, p1

    add-int/lit8 v27, v21, -0x1

    aput v23, p0, v27

    .line 396
    add-int/lit8 v27, v13, 0x1

    aget v27, p0, v27

    aput v27, p0, p2

    add-int/lit8 v27, v13, 0x1

    aput v24, p0, v27

    .line 399
    add-int/lit8 v27, v21, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 400
    add-int/lit8 v27, v13, 0x2

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 406
    move/from16 v0, v21

    if-ge v0, v8, :cond_264

    if-ge v12, v13, :cond_264

    .line 410
    :goto_205
    aget v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_22f

    .line 411
    add-int/lit8 v21, v21, 0x1

    goto :goto_205

    .end local v13    # "great":I
    .restart local v7    # "ak":I
    .restart local v14    # "great":I
    :cond_210
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_1c0

    .line 378
    :cond_212
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_22a

    .line 379
    aget v27, p0, v21

    aput v27, p0, v18

    .line 380
    aget v27, p0, v13

    aput v27, p0, v21

    .line 381
    add-int/lit8 v21, v21, 0x1

    .line 389
    :goto_224
    aput v7, p0, v13

    .line 390
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1a7

    .line 383
    :cond_22a
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_224

    .line 414
    .end local v7    # "ak":I
    :cond_22f
    :goto_22f
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_23a

    .line 415
    add-int/lit8 v13, v13, -0x1

    goto :goto_22f

    .line 438
    :cond_23a
    add-int/lit8 v18, v21, -0x1

    :cond_23c
    :goto_23c
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_264

    .line 439
    aget v7, p0, v18

    .line 440
    .restart local v7    # "ak":I
    move/from16 v0, v23

    if-ne v7, v0, :cond_251

    .line 441
    aget v27, p0, v21

    aput v27, p0, v18

    .line 442
    aput v7, p0, v21

    .line 443
    add-int/lit8 v21, v21, 0x1

    goto :goto_23c

    .line 444
    :cond_251
    move/from16 v0, v24

    if-ne v7, v0, :cond_23c

    .line 445
    :goto_255
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_272

    .line 446
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .restart local v14    # "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_270

    move v13, v14

    .line 472
    .end local v7    # "ak":I
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_264
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 542
    .end local v23    # "pivot1":I
    .end local v24    # "pivot2":I
    :goto_26f
    return-void

    .end local v13    # "great":I
    .restart local v7    # "ak":I
    .restart local v14    # "great":I
    .restart local v23    # "pivot1":I
    .restart local v24    # "pivot2":I
    :cond_270
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_255

    .line 450
    :cond_272
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_287

    .line 451
    aget v27, p0, v21

    aput v27, p0, v18

    .line 460
    aput v23, p0, v21

    .line 461
    add-int/lit8 v21, v21, 0x1

    .line 465
    :goto_282
    aput v7, p0, v13

    .line 466
    add-int/lit8 v13, v13, -0x1

    goto :goto_23c

    .line 463
    :cond_287
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_282

    .line 479
    .end local v7    # "ak":I
    .end local v18    # "k":I
    .end local v23    # "pivot1":I
    .end local v24    # "pivot2":I
    :cond_28c
    aget v22, p0, v10

    .line 501
    .local v22, "pivot":I
    move/from16 v18, p1

    .restart local v18    # "k":I
    :goto_290
    move/from16 v0, v18

    if-gt v0, v13, :cond_2d3

    .line 502
    aget v27, p0, v18

    move/from16 v0, v27

    move/from16 v1, v22

    if-ne v0, v1, :cond_29f

    .line 501
    :goto_29c
    add-int/lit8 v18, v18, 0x1

    goto :goto_290

    .line 505
    :cond_29f
    aget v7, p0, v18

    .line 506
    .restart local v7    # "ak":I
    move/from16 v0, v22

    if-ge v7, v0, :cond_2ae

    .line 507
    aget v27, p0, v21

    aput v27, p0, v18

    .line 508
    aput v7, p0, v21

    .line 509
    add-int/lit8 v21, v21, 0x1

    goto :goto_29c

    .line 511
    :cond_2ae
    :goto_2ae
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-le v0, v1, :cond_2b9

    .line 512
    add-int/lit8 v13, v13, -0x1

    goto :goto_2ae

    .line 514
    :cond_2b9
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_2d0

    .line 515
    aget v27, p0, v21

    aput v27, p0, v18

    .line 516
    aget v27, p0, v13

    aput v27, p0, v21

    .line 517
    add-int/lit8 v21, v21, 0x1

    .line 529
    :goto_2cb
    aput v7, p0, v13

    .line 530
    add-int/lit8 v13, v13, -0x1

    goto :goto_29c

    .line 527
    :cond_2d0
    aput v22, p0, v18

    goto :goto_2cb

    .line 539
    .end local v7    # "ak":I
    :cond_2d3
    add-int/lit8 v27, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 540
    add-int/lit8 v27, v13, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    goto :goto_26f
.end method

.method static sort([III[III)V
    .registers 35
    .param p0, "a"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [I
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 110
    sub-int v27, p2, p1

    const/16 v28, 0x11e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_18

    .line 111
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 112
    return-void

    .line 119
    :cond_18
    const/16 v27, 0x44

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 120
    .local v24, "run":[I
    const/4 v8, 0x0

    .local v8, "count":I
    const/16 v27, 0x0

    aput p1, v24, v27

    .line 123
    move/from16 v11, p1

    .local v11, "k":I
    :goto_27
    move/from16 v0, p2

    if-ge v11, v0, :cond_bb

    .line 124
    aget v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_5f

    .line 125
    :cond_37
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_49

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_37

    .line 144
    :cond_49
    add-int/lit8 v8, v8, 0x1

    const/16 v27, 0x43

    move/from16 v0, v27

    if-ne v8, v0, :cond_b7

    .line 145
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 146
    return-void

    .line 126
    :cond_5f
    aget v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_91

    .line 127
    :cond_6b
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_7d

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_6b

    .line 128
    :cond_7d
    aget v27, v24, v8

    add-int/lit8 v13, v27, -0x1

    .local v13, "lo":I
    move v9, v11

    .local v9, "hi":I
    :goto_82
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_49

    .line 129
    aget v25, p0, v13

    .local v25, "t":I
    aget v27, p0, v9

    aput v27, p0, v13

    aput v25, p0, v9

    goto :goto_82

    .line 132
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v25    # "t":I
    :cond_91
    const/16 v14, 0x21

    .local v14, "m":I
    :cond_93
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_49

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_49

    .line 133
    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_93

    .line 134
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 135
    return-void

    .line 123
    .end local v14    # "m":I
    :cond_b7
    aput v11, v24, v8

    goto/16 :goto_27

    .line 152
    :cond_bb
    aget v27, v24, v8

    add-int/lit8 v23, p2, 0x1

    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v27

    move/from16 v1, p2

    if-ne v0, v1, :cond_db

    .line 153
    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    .line 159
    :cond_c9
    const/16 v18, 0x0

    .line 160
    .local v18, "odd":B
    const/16 v16, 0x1

    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_cd
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_e2

    xor-int/lit8 v27, v18, 0x1

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v18, v0

    .local v18, "odd":B
    goto :goto_cd

    .line 154
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_db
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_c9

    .line 155
    return-void

    .line 165
    .restart local v16    # "n":I
    :cond_e2
    sub-int v6, v23, p1

    .line 166
    .local v6, "blen":I
    if-eqz p3, :cond_ea

    move/from16 v0, p5

    if-ge v0, v6, :cond_14b

    .line 167
    :cond_ea
    :goto_ea
    new-array v0, v6, [I

    move-object/from16 p3, v0

    .line 168
    const/16 p4, 0x0

    .line 170
    :cond_f0
    if-nez v18, :cond_159

    .line 171
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 172
    move-object/from16 v5, p0

    .line 173
    .local v5, "b":[I
    const/4 v7, 0x0

    .line 174
    .local v7, "bo":I
    move-object/from16 p0, p3

    .line 175
    sub-int v4, p4, p1

    .line 183
    .local v4, "ao":I
    :goto_104
    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v8, v0, :cond_19c

    .line 184
    const/4 v12, 0x0

    .local v12, "last":I
    const/4 v11, 0x2

    :goto_10c
    if-gt v11, v8, :cond_173

    .line 185
    aget v9, v24, v11

    .restart local v9    # "hi":I
    add-int/lit8 v27, v11, -0x1

    aget v15, v24, v27

    .line 186
    .local v15, "mi":I
    add-int/lit8 v27, v11, -0x2

    aget v10, v24, v27

    .local v10, "i":I
    move/from16 v19, v10

    .local v19, "p":I
    move/from16 v21, v15

    .local v21, "q":I
    move/from16 v22, v21

    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .local v20, "p":I
    :goto_120
    if-ge v10, v9, :cond_16c

    .line 187
    move/from16 v0, v22

    if-ge v0, v9, :cond_138

    move/from16 v0, v20

    if-ge v0, v15, :cond_15f

    add-int v27, v20, v4

    aget v27, p0, v27

    add-int v28, v22, v4

    aget v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_15f

    .line 188
    :cond_138
    add-int v27, v10, v7

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v28, v20, v4

    aget v28, p0, v28

    aput v28, v5, v27

    move/from16 v21, v22

    .line 186
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_144
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_120

    .line 166
    .end local v4    # "ao":I
    .end local v5    # "b":[I
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14b
    add-int v27, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_f0

    goto :goto_ea

    .line 177
    :cond_159
    move-object/from16 v5, p3

    .line 178
    .restart local v5    # "b":[I
    const/4 v4, 0x0

    .line 179
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    .restart local v7    # "bo":I
    goto :goto_104

    .line 190
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_15f
    add-int v27, v10, v7

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v28, v22, v4

    aget v28, p0, v28

    aput v28, v5, v27

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_144

    .line 193
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_16c
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    .line 184
    add-int/lit8 v11, v11, 0x2

    goto :goto_10c

    .line 195
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_173
    and-int/lit8 v27, v8, 0x1

    if-eqz v27, :cond_18e

    .line 196
    move/from16 v10, v23

    .restart local v10    # "i":I
    add-int/lit8 v27, v8, -0x1

    aget v13, v24, v27

    .restart local v13    # "lo":I
    :goto_17d
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_18a

    .line 197
    add-int v27, v10, v7

    add-int v28, v10, v4

    aget v28, p0, v28

    aput v28, v5, v27

    goto :goto_17d

    .line 199
    :cond_18a
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    .line 201
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_18e
    move-object/from16 v26, p0

    .local v26, "t":[I
    move-object/from16 p0, v5

    move-object/from16 v5, v26

    .line 202
    move/from16 v17, v4

    .local v17, "o":I
    move v4, v7

    move/from16 v7, v17

    .line 183
    move v8, v12

    goto/16 :goto_104

    .line 204
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v26    # "t":[I
    :cond_19c
    return-void
.end method

.method private static sort([JIIZ)V
    .registers 44
    .param p0, "a"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .prologue
    .line 663
    sub-int v36, p2, p1

    add-int/lit8 v23, v36, 0x1

    .line 666
    .local v23, "length":I
    const/16 v36, 0x2f

    move/from16 v0, v23

    move/from16 v1, v36

    if-ge v0, v1, :cond_a9

    .line 667
    if-eqz p3, :cond_4a

    .line 673
    move/from16 v19, p1

    .local v19, "i":I
    move/from16 v20, p1

    .local v20, "j":I
    :goto_12
    move/from16 v0, v19

    move/from16 v1, p2

    if-ge v0, v1, :cond_a8

    .line 674
    add-int/lit8 v36, v19, 0x1

    aget-wide v8, p0, v36

    .line 675
    .local v8, "ai":J
    :goto_1c
    aget-wide v36, p0, v20

    cmp-long v36, v8, v36

    if-gez v36, :cond_32

    .line 676
    add-int/lit8 v36, v20, 0x1

    aget-wide v38, p0, v20

    aput-wide v38, p0, v36

    .line 677
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "j":I
    .local v21, "j":I
    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_3b

    move/from16 v20, v21

    .line 681
    .end local v21    # "j":I
    .restart local v20    # "j":I
    :cond_32
    add-int/lit8 v36, v20, 0x1

    aput-wide v8, p0, v36

    .line 673
    add-int/lit8 v19, v19, 0x1

    move/from16 v20, v19

    goto :goto_12

    .end local v20    # "j":I
    .restart local v21    # "j":I
    :cond_3b
    move/from16 v20, v21

    .end local v21    # "j":I
    .restart local v20    # "j":I
    goto :goto_1c

    .line 691
    .end local v8    # "ai":J
    .end local v19    # "i":I
    .end local v20    # "j":I
    :cond_3e
    add-int/lit8 p1, p1, 0x1

    aget-wide v36, p0, p1

    add-int/lit8 v38, p1, -0x1

    aget-wide v38, p0, v38

    cmp-long v36, v36, v38

    if-ltz v36, :cond_51

    .line 688
    :cond_4a
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_3e

    .line 689
    return-void

    .line 701
    :cond_51
    move/from16 v22, p1

    .local v22, "k":I
    :goto_53
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_93

    .line 702
    aget-wide v4, p0, v22

    .local v4, "a1":J
    aget-wide v6, p0, p1

    .line 704
    .local v6, "a2":J
    cmp-long v36, v4, v6

    if-gez v36, :cond_66

    .line 705
    move-wide v6, v4

    aget-wide v4, p0, p1

    .line 707
    :cond_66
    :goto_66
    add-int/lit8 v22, v22, -0x1

    aget-wide v36, p0, v22

    cmp-long v36, v4, v36

    if-gez v36, :cond_75

    .line 708
    add-int/lit8 v36, v22, 0x2

    aget-wide v38, p0, v22

    aput-wide v38, p0, v36

    goto :goto_66

    .line 710
    :cond_75
    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v36, v22, 0x1

    aput-wide v4, p0, v36

    .line 712
    :goto_7b
    add-int/lit8 v22, v22, -0x1

    aget-wide v36, p0, v22

    cmp-long v36, v6, v36

    if-gez v36, :cond_8a

    .line 713
    add-int/lit8 v36, v22, 0x1

    aget-wide v38, p0, v22

    aput-wide v38, p0, v36

    goto :goto_7b

    .line 715
    :cond_8a
    add-int/lit8 v36, v22, 0x1

    aput-wide v6, p0, v36

    .line 701
    add-int/lit8 p1, p1, 0x1

    move/from16 v22, p1

    goto :goto_53

    .line 717
    .end local v4    # "a1":J
    .end local v6    # "a2":J
    :cond_93
    aget-wide v24, p0, p2

    .line 719
    .local v24, "last":J
    :goto_95
    add-int/lit8 p2, p2, -0x1

    aget-wide v36, p0, p2

    cmp-long v36, v24, v36

    if-gez v36, :cond_a4

    .line 720
    add-int/lit8 v36, p2, 0x1

    aget-wide v38, p0, p2

    aput-wide v38, p0, v36

    goto :goto_95

    .line 722
    :cond_a4
    add-int/lit8 v36, p2, 0x1

    aput-wide v24, p0, v36

    .line 724
    .end local v22    # "k":I
    .end local v24    # "last":J
    :cond_a8
    return-void

    .line 728
    :cond_a9
    shr-int/lit8 v36, v23, 0x3

    shr-int/lit8 v37, v23, 0x6

    add-int v36, v36, v37

    add-int/lit8 v27, v36, 0x1

    .line 737
    .local v27, "seventh":I
    add-int v36, p1, p2

    ushr-int/lit8 v14, v36, 0x1

    .line 738
    .local v14, "e3":I
    sub-int v13, v14, v27

    .line 739
    .local v13, "e2":I
    sub-int v12, v13, v27

    .line 740
    .local v12, "e1":I
    add-int v15, v14, v27

    .line 741
    .local v15, "e4":I
    add-int v16, v15, v27

    .line 744
    .local v16, "e5":I
    aget-wide v36, p0, v13

    aget-wide v38, p0, v12

    cmp-long v36, v36, v38

    if-gez v36, :cond_cd

    aget-wide v34, p0, v13

    .local v34, "t":J
    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 746
    .end local v34    # "t":J
    :cond_cd
    aget-wide v36, p0, v14

    aget-wide v38, p0, v13

    cmp-long v36, v36, v38

    if-gez v36, :cond_e9

    aget-wide v34, p0, v14

    .restart local v34    # "t":J
    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    .line 747
    aget-wide v36, p0, v12

    cmp-long v36, v34, v36

    if-gez v36, :cond_e9

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 749
    .end local v34    # "t":J
    :cond_e9
    aget-wide v36, p0, v15

    aget-wide v38, p0, v14

    cmp-long v36, v36, v38

    if-gez v36, :cond_111

    aget-wide v34, p0, v15

    .restart local v34    # "t":J
    aget-wide v36, p0, v14

    aput-wide v36, p0, v15

    aput-wide v34, p0, v14

    .line 750
    aget-wide v36, p0, v13

    cmp-long v36, v34, v36

    if-gez v36, :cond_111

    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    .line 751
    aget-wide v36, p0, v12

    cmp-long v36, v34, v36

    if-gez v36, :cond_111

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 754
    .end local v34    # "t":J
    :cond_111
    aget-wide v36, p0, v16

    aget-wide v38, p0, v15

    cmp-long v36, v36, v38

    if-gez v36, :cond_145

    aget-wide v34, p0, v16

    .restart local v34    # "t":J
    aget-wide v36, p0, v15

    aput-wide v36, p0, v16

    aput-wide v34, p0, v15

    .line 755
    aget-wide v36, p0, v14

    cmp-long v36, v34, v36

    if-gez v36, :cond_145

    aget-wide v36, p0, v14

    aput-wide v36, p0, v15

    aput-wide v34, p0, v14

    .line 756
    aget-wide v36, p0, v13

    cmp-long v36, v34, v36

    if-gez v36, :cond_145

    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    .line 757
    aget-wide v36, p0, v12

    cmp-long v36, v34, v36

    if-gez v36, :cond_145

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 763
    .end local v34    # "t":J
    :cond_145
    move/from16 v26, p1

    .line 764
    .local v26, "less":I
    move/from16 v17, p2

    .line 766
    .local v17, "great":I
    aget-wide v36, p0, v12

    aget-wide v38, p0, v13

    cmp-long v36, v36, v38

    if-eqz v36, :cond_272

    aget-wide v36, p0, v13

    aget-wide v38, p0, v14

    cmp-long v36, v36, v38

    if-eqz v36, :cond_272

    aget-wide v36, p0, v14

    aget-wide v38, p0, v15

    cmp-long v36, v36, v38

    if-eqz v36, :cond_272

    aget-wide v36, p0, v15

    aget-wide v38, p0, v16

    cmp-long v36, v36, v38

    if-eqz v36, :cond_272

    .line 772
    aget-wide v30, p0, v13

    .line 773
    .local v30, "pivot1":J
    aget-wide v32, p0, v15

    .line 781
    .local v32, "pivot2":J
    aget-wide v36, p0, p1

    aput-wide v36, p0, v13

    .line 782
    aget-wide v36, p0, p2

    aput-wide v36, p0, v15

    .line 787
    :cond_175
    add-int/lit8 v26, v26, 0x1

    aget-wide v36, p0, v26

    cmp-long v36, v36, v30

    if-ltz v36, :cond_175

    .line 788
    :cond_17d
    add-int/lit8 v17, v17, -0x1

    aget-wide v36, p0, v17

    cmp-long v36, v36, v32

    if-gtz v36, :cond_17d

    .line 810
    add-int/lit8 v22, v26, -0x1

    .restart local v22    # "k":I
    :cond_187
    :goto_187
    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_1b2

    .line 811
    aget-wide v10, p0, v22

    .line 812
    .local v10, "ak":J
    cmp-long v36, v10, v30

    if-gez v36, :cond_19e

    .line 813
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 818
    aput-wide v10, p0, v26

    .line 819
    add-int/lit8 v26, v26, 0x1

    goto :goto_187

    .line 820
    :cond_19e
    cmp-long v36, v10, v32

    if-lez v36, :cond_187

    .line 821
    :goto_1a2
    aget-wide v36, p0, v17

    cmp-long v36, v36, v32

    if-lez v36, :cond_1f8

    .line 822
    add-int/lit8 v18, v17, -0x1

    .end local v17    # "great":I
    .local v18, "great":I
    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f5

    move/from16 v17, v18

    .line 843
    .end local v10    # "ak":J
    .end local v18    # "great":I
    .restart local v17    # "great":I
    :cond_1b2
    add-int/lit8 v36, v26, -0x1

    aget-wide v36, p0, v36

    aput-wide v36, p0, p1

    add-int/lit8 v36, v26, -0x1

    aput-wide v30, p0, v36

    .line 844
    add-int/lit8 v36, v17, 0x1

    aget-wide v36, p0, v36

    aput-wide v36, p0, p2

    add-int/lit8 v36, v17, 0x1

    aput-wide v32, p0, v36

    .line 847
    add-int/lit8 v36, v26, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 848
    add-int/lit8 v36, v17, 0x2

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, p2

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 854
    move/from16 v0, v26

    if-ge v0, v12, :cond_249

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_249

    .line 858
    :goto_1ec
    aget-wide v36, p0, v26

    cmp-long v36, v36, v30

    if-nez v36, :cond_213

    .line 859
    add-int/lit8 v26, v26, 0x1

    goto :goto_1ec

    .end local v17    # "great":I
    .restart local v10    # "ak":J
    .restart local v18    # "great":I
    :cond_1f5
    move/from16 v17, v18

    .end local v18    # "great":I
    .restart local v17    # "great":I
    goto :goto_1a2

    .line 826
    :cond_1f8
    aget-wide v36, p0, v17

    cmp-long v36, v36, v30

    if-gez v36, :cond_20e

    .line 827
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 828
    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    .line 829
    add-int/lit8 v26, v26, 0x1

    .line 837
    :goto_208
    aput-wide v10, p0, v17

    .line 838
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_187

    .line 831
    :cond_20e
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_208

    .line 862
    .end local v10    # "ak":J
    :cond_213
    :goto_213
    aget-wide v36, p0, v17

    cmp-long v36, v36, v32

    if-nez v36, :cond_21c

    .line 863
    add-int/lit8 v17, v17, -0x1

    goto :goto_213

    .line 886
    :cond_21c
    add-int/lit8 v22, v26, -0x1

    :cond_21e
    :goto_21e
    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_249

    .line 887
    aget-wide v10, p0, v22

    .line 888
    .restart local v10    # "ak":J
    cmp-long v36, v10, v30

    if-nez v36, :cond_235

    .line 889
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 890
    aput-wide v10, p0, v26

    .line 891
    add-int/lit8 v26, v26, 0x1

    goto :goto_21e

    .line 892
    :cond_235
    cmp-long v36, v10, v32

    if-nez v36, :cond_21e

    .line 893
    :goto_239
    aget-wide v36, p0, v17

    cmp-long v36, v36, v32

    if-nez v36, :cond_25a

    .line 894
    add-int/lit8 v18, v17, -0x1

    .end local v17    # "great":I
    .restart local v18    # "great":I
    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_257

    move/from16 v17, v18

    .line 920
    .end local v10    # "ak":J
    .end local v18    # "great":I
    .restart local v17    # "great":I
    :cond_249
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v17

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 990
    .end local v30    # "pivot1":J
    .end local v32    # "pivot2":J
    :goto_256
    return-void

    .end local v17    # "great":I
    .restart local v10    # "ak":J
    .restart local v18    # "great":I
    .restart local v30    # "pivot1":J
    .restart local v32    # "pivot2":J
    :cond_257
    move/from16 v17, v18

    .end local v18    # "great":I
    .restart local v17    # "great":I
    goto :goto_239

    .line 898
    :cond_25a
    aget-wide v36, p0, v17

    cmp-long v36, v36, v30

    if-nez v36, :cond_26d

    .line 899
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 908
    aput-wide v30, p0, v26

    .line 909
    add-int/lit8 v26, v26, 0x1

    .line 913
    :goto_268
    aput-wide v10, p0, v17

    .line 914
    add-int/lit8 v17, v17, -0x1

    goto :goto_21e

    .line 911
    :cond_26d
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_268

    .line 927
    .end local v10    # "ak":J
    .end local v22    # "k":I
    .end local v30    # "pivot1":J
    .end local v32    # "pivot2":J
    :cond_272
    aget-wide v28, p0, v14

    .line 949
    .local v28, "pivot":J
    move/from16 v22, p1

    .restart local v22    # "k":I
    :goto_276
    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_2b5

    .line 950
    aget-wide v36, p0, v22

    cmp-long v36, v36, v28

    if-nez v36, :cond_285

    .line 949
    :goto_282
    add-int/lit8 v22, v22, 0x1

    goto :goto_276

    .line 953
    :cond_285
    aget-wide v10, p0, v22

    .line 954
    .restart local v10    # "ak":J
    cmp-long v36, v10, v28

    if-gez v36, :cond_294

    .line 955
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 956
    aput-wide v10, p0, v26

    .line 957
    add-int/lit8 v26, v26, 0x1

    goto :goto_282

    .line 959
    :cond_294
    :goto_294
    aget-wide v36, p0, v17

    cmp-long v36, v36, v28

    if-lez v36, :cond_29d

    .line 960
    add-int/lit8 v17, v17, -0x1

    goto :goto_294

    .line 962
    :cond_29d
    aget-wide v36, p0, v17

    cmp-long v36, v36, v28

    if-gez v36, :cond_2b2

    .line 963
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 964
    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    .line 965
    add-int/lit8 v26, v26, 0x1

    .line 977
    :goto_2ad
    aput-wide v10, p0, v17

    .line 978
    add-int/lit8 v17, v17, -0x1

    goto :goto_282

    .line 975
    :cond_2b2
    aput-wide v28, p0, v22

    goto :goto_2ad

    .line 987
    .end local v10    # "ak":J
    :cond_2b5
    add-int/lit8 v36, v26, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 988
    add-int/lit8 v36, v17, 0x1

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, p2

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    goto :goto_256
.end method

.method static sort([JII[JII)V
    .registers 38
    .param p0, "a"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [J
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 558
    sub-int v28, p2, p1

    const/16 v29, 0x11e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_18

    .line 559
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 560
    return-void

    .line 567
    :cond_18
    const/16 v28, 0x44

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 568
    .local v24, "run":[I
    const/4 v8, 0x0

    .local v8, "count":I
    const/16 v28, 0x0

    aput p1, v24, v28

    .line 571
    move/from16 v11, p1

    .local v11, "k":I
    :goto_27
    move/from16 v0, p2

    if-ge v11, v0, :cond_b1

    .line 572
    aget-wide v28, p0, v11

    add-int/lit8 v30, v11, 0x1

    aget-wide v30, p0, v30

    cmp-long v28, v28, v30

    if-gez v28, :cond_5b

    .line 573
    :cond_35
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_45

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmp-long v28, v28, v30

    if-lez v28, :cond_35

    .line 592
    :cond_45
    add-int/lit8 v8, v8, 0x1

    const/16 v28, 0x43

    move/from16 v0, v28

    if-ne v8, v0, :cond_ad

    .line 593
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 594
    return-void

    .line 574
    :cond_5b
    aget-wide v28, p0, v11

    add-int/lit8 v30, v11, 0x1

    aget-wide v30, p0, v30

    cmp-long v28, v28, v30

    if-lez v28, :cond_89

    .line 575
    :cond_65
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_75

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmp-long v28, v28, v30

    if-gez v28, :cond_65

    .line 576
    :cond_75
    aget v28, v24, v8

    add-int/lit8 v13, v28, -0x1

    .local v13, "lo":I
    move v9, v11

    .local v9, "hi":I
    :goto_7a
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_45

    .line 577
    aget-wide v26, p0, v13

    .local v26, "t":J
    aget-wide v28, p0, v9

    aput-wide v28, p0, v13

    aput-wide v26, p0, v9

    goto :goto_7a

    .line 580
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v26    # "t":J
    :cond_89
    const/16 v14, 0x21

    .local v14, "m":I
    :cond_8b
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_45

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmp-long v28, v28, v30

    if-nez v28, :cond_45

    .line 581
    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_8b

    .line 582
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 583
    return-void

    .line 571
    .end local v14    # "m":I
    :cond_ad
    aput v11, v24, v8

    goto/16 :goto_27

    .line 600
    :cond_b1
    aget v28, v24, v8

    add-int/lit8 v23, p2, 0x1

    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v28

    move/from16 v1, p2

    if-ne v0, v1, :cond_d1

    .line 601
    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    .line 607
    :cond_bf
    const/16 v18, 0x0

    .line 608
    .local v18, "odd":B
    const/16 v16, 0x1

    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_c3
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_d8

    xor-int/lit8 v28, v18, 0x1

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v18, v0

    .local v18, "odd":B
    goto :goto_c3

    .line 602
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_d1
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v8, v0, :cond_bf

    .line 603
    return-void

    .line 613
    .restart local v16    # "n":I
    :cond_d8
    sub-int v6, v23, p1

    .line 614
    .local v6, "blen":I
    if-eqz p3, :cond_e0

    move/from16 v0, p5

    if-ge v0, v6, :cond_13f

    .line 615
    :cond_e0
    :goto_e0
    new-array v0, v6, [J

    move-object/from16 p3, v0

    .line 616
    const/16 p4, 0x0

    .line 618
    :cond_e6
    if-nez v18, :cond_14d

    .line 619
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 620
    move-object/from16 v5, p0

    .line 621
    .local v5, "b":[J
    const/4 v7, 0x0

    .line 622
    .local v7, "bo":I
    move-object/from16 p0, p3

    .line 623
    sub-int v4, p4, p1

    .line 631
    .local v4, "ao":I
    :goto_fa
    const/16 v28, 0x1

    move/from16 v0, v28

    if-le v8, v0, :cond_190

    .line 632
    const/4 v12, 0x0

    .local v12, "last":I
    const/4 v11, 0x2

    :goto_102
    if-gt v11, v8, :cond_167

    .line 633
    aget v9, v24, v11

    .restart local v9    # "hi":I
    add-int/lit8 v28, v11, -0x1

    aget v15, v24, v28

    .line 634
    .local v15, "mi":I
    add-int/lit8 v28, v11, -0x2

    aget v10, v24, v28

    .local v10, "i":I
    move/from16 v19, v10

    .local v19, "p":I
    move/from16 v21, v15

    .local v21, "q":I
    move/from16 v22, v21

    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .local v20, "p":I
    :goto_116
    if-ge v10, v9, :cond_160

    .line 635
    move/from16 v0, v22

    if-ge v0, v9, :cond_12c

    move/from16 v0, v20

    if-ge v0, v15, :cond_153

    add-int v28, v20, v4

    aget-wide v28, p0, v28

    add-int v30, v22, v4

    aget-wide v30, p0, v30

    cmp-long v28, v28, v30

    if-gtz v28, :cond_153

    .line 636
    :cond_12c
    add-int v28, v10, v7

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v29, v20, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    move/from16 v21, v22

    .line 634
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_138
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_116

    .line 614
    .end local v4    # "ao":I
    .end local v5    # "b":[J
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_13f
    add-int v28, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_e6

    goto :goto_e0

    .line 625
    :cond_14d
    move-object/from16 v5, p3

    .line 626
    .restart local v5    # "b":[J
    const/4 v4, 0x0

    .line 627
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    .restart local v7    # "bo":I
    goto :goto_fa

    .line 638
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_153
    add-int v28, v10, v7

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v29, v22, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_138

    .line 641
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_160
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    .line 632
    add-int/lit8 v11, v11, 0x2

    goto :goto_102

    .line 643
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_167
    and-int/lit8 v28, v8, 0x1

    if-eqz v28, :cond_182

    .line 644
    move/from16 v10, v23

    .restart local v10    # "i":I
    add-int/lit8 v28, v8, -0x1

    aget v13, v24, v28

    .restart local v13    # "lo":I
    :goto_171
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_17e

    .line 645
    add-int v28, v10, v7

    add-int v29, v10, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    goto :goto_171

    .line 647
    :cond_17e
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    .line 649
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_182
    move-object/from16 v25, p0

    .local v25, "t":[J
    move-object/from16 p0, v5

    move-object/from16 v5, v25

    .line 650
    move/from16 v17, v4

    .local v17, "o":I
    move v4, v7

    move/from16 v7, v17

    .line 631
    move v8, v12

    goto/16 :goto_fa

    .line 652
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v25    # "t":[J
    :cond_190
    return-void
.end method

.method private static sort([SIIZ)V
    .registers 33
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .prologue
    .line 1147
    sub-int v27, p2, p1

    add-int/lit8 v20, v27, 0x1

    .line 1150
    .local v20, "length":I
    const/16 v27, 0x2f

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_a9

    .line 1151
    if-eqz p3, :cond_4a

    .line 1157
    move/from16 v15, p1

    .local v15, "i":I
    move/from16 v16, p1

    .local v16, "j":I
    :goto_12
    move/from16 v0, p2

    if-ge v15, v0, :cond_a8

    .line 1158
    add-int/lit8 v27, v15, 0x1

    aget-short v6, p0, v27

    .line 1159
    .local v6, "ai":S
    :goto_1a
    aget-short v27, p0, v16

    move/from16 v0, v27

    if-ge v6, v0, :cond_30

    .line 1160
    add-int/lit8 v27, v16, 0x1

    aget-short v28, p0, v16

    aput-short v28, p0, v27

    .line 1161
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "j":I
    .local v17, "j":I
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_39

    move/from16 v16, v17

    .line 1165
    .end local v17    # "j":I
    .restart local v16    # "j":I
    :cond_30
    add-int/lit8 v27, v16, 0x1

    aput-short v6, p0, v27

    .line 1157
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v15

    goto :goto_12

    .end local v16    # "j":I
    .restart local v17    # "j":I
    :cond_39
    move/from16 v16, v17

    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_1a

    .line 1175
    .end local v6    # "ai":S
    .end local v15    # "i":I
    .end local v16    # "j":I
    :cond_3c
    add-int/lit8 p1, p1, 0x1

    aget-short v27, p0, p1

    add-int/lit8 v28, p1, -0x1

    aget-short v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_51

    .line 1172
    :cond_4a
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_3c

    .line 1173
    return-void

    .line 1185
    :cond_51
    move/from16 v18, p1

    .local v18, "k":I
    :goto_53
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_91

    .line 1186
    aget-short v4, p0, v18

    .local v4, "a1":S
    aget-short v5, p0, p1

    .line 1188
    .local v5, "a2":S
    if-ge v4, v5, :cond_64

    .line 1189
    move v5, v4

    aget-short v4, p0, p1

    .line 1191
    :cond_64
    :goto_64
    add-int/lit8 v18, v18, -0x1

    aget-short v27, p0, v18

    move/from16 v0, v27

    if-ge v4, v0, :cond_73

    .line 1192
    add-int/lit8 v27, v18, 0x2

    aget-short v28, p0, v18

    aput-short v28, p0, v27

    goto :goto_64

    .line 1194
    :cond_73
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v27, v18, 0x1

    aput-short v4, p0, v27

    .line 1196
    :goto_79
    add-int/lit8 v18, v18, -0x1

    aget-short v27, p0, v18

    move/from16 v0, v27

    if-ge v5, v0, :cond_88

    .line 1197
    add-int/lit8 v27, v18, 0x1

    aget-short v28, p0, v18

    aput-short v28, p0, v27

    goto :goto_79

    .line 1199
    :cond_88
    add-int/lit8 v27, v18, 0x1

    aput-short v5, p0, v27

    .line 1185
    add-int/lit8 p1, p1, 0x1

    move/from16 v18, p1

    goto :goto_53

    .line 1201
    .end local v4    # "a1":S
    .end local v5    # "a2":S
    :cond_91
    aget-short v19, p0, p2

    .line 1203
    .local v19, "last":S
    :goto_93
    add-int/lit8 p2, p2, -0x1

    aget-short v27, p0, p2

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_a4

    .line 1204
    add-int/lit8 v27, p2, 0x1

    aget-short v28, p0, p2

    aput-short v28, p0, v27

    goto :goto_93

    .line 1206
    :cond_a4
    add-int/lit8 v27, p2, 0x1

    aput-short v19, p0, v27

    .line 1208
    .end local v18    # "k":I
    .end local v19    # "last":S
    :cond_a8
    return-void

    .line 1212
    :cond_a9
    shr-int/lit8 v27, v20, 0x3

    shr-int/lit8 v28, v20, 0x6

    add-int v27, v27, v28

    add-int/lit8 v25, v27, 0x1

    .line 1221
    .local v25, "seventh":I
    add-int v27, p1, p2

    ushr-int/lit8 v10, v27, 0x1

    .line 1222
    .local v10, "e3":I
    sub-int v9, v10, v25

    .line 1223
    .local v9, "e2":I
    sub-int v8, v9, v25

    .line 1224
    .local v8, "e1":I
    add-int v11, v10, v25

    .line 1225
    .local v11, "e4":I
    add-int v12, v11, v25

    .line 1228
    .local v12, "e5":I
    aget-short v27, p0, v9

    aget-short v28, p0, v8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_cf

    aget-short v26, p0, v9

    .local v26, "t":S
    aget-short v27, p0, v8

    aput-short v27, p0, v9

    aput-short v26, p0, v8

    .line 1230
    .end local v26    # "t":S
    :cond_cf
    aget-short v27, p0, v10

    aget-short v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_ef

    aget-short v26, p0, v10

    .restart local v26    # "t":S
    aget-short v27, p0, v9

    aput-short v27, p0, v10

    aput-short v26, p0, v9

    .line 1231
    aget-short v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_ef

    aget-short v27, p0, v8

    aput-short v27, p0, v9

    aput-short v26, p0, v8

    .line 1233
    .end local v26    # "t":S
    :cond_ef
    aget-short v27, p0, v11

    aget-short v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_11d

    aget-short v26, p0, v11

    .restart local v26    # "t":S
    aget-short v27, p0, v10

    aput-short v27, p0, v11

    aput-short v26, p0, v10

    .line 1234
    aget-short v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_11d

    aget-short v27, p0, v9

    aput-short v27, p0, v10

    aput-short v26, p0, v9

    .line 1235
    aget-short v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_11d

    aget-short v27, p0, v8

    aput-short v27, p0, v9

    aput-short v26, p0, v8

    .line 1238
    .end local v26    # "t":S
    :cond_11d
    aget-short v27, p0, v12

    aget-short v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_159

    aget-short v26, p0, v12

    .restart local v26    # "t":S
    aget-short v27, p0, v11

    aput-short v27, p0, v12

    aput-short v26, p0, v11

    .line 1239
    aget-short v27, p0, v10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_159

    aget-short v27, p0, v10

    aput-short v27, p0, v11

    aput-short v26, p0, v10

    .line 1240
    aget-short v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_159

    aget-short v27, p0, v9

    aput-short v27, p0, v10

    aput-short v26, p0, v9

    .line 1241
    aget-short v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_159

    aget-short v27, p0, v8

    aput-short v27, p0, v9

    aput-short v26, p0, v8

    .line 1247
    .end local v26    # "t":S
    :cond_159
    move/from16 v21, p1

    .line 1248
    .local v21, "less":I
    move/from16 v13, p2

    .line 1250
    .local v13, "great":I
    aget-short v27, p0, v8

    aget-short v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_28c

    aget-short v27, p0, v9

    aget-short v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_28c

    aget-short v27, p0, v10

    aget-short v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_28c

    aget-short v27, p0, v11

    aget-short v28, p0, v12

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_28c

    .line 1256
    aget-short v23, p0, v9

    .line 1257
    .local v23, "pivot1":S
    aget-short v24, p0, v11

    .line 1265
    .local v24, "pivot2":S
    aget-short v27, p0, p1

    aput-short v27, p0, v9

    .line 1266
    aget-short v27, p0, p2

    aput-short v27, p0, v11

    .line 1271
    :cond_191
    add-int/lit8 v21, v21, 0x1

    aget-short v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-lt v0, v1, :cond_191

    .line 1272
    :cond_19b
    add-int/lit8 v13, v13, -0x1

    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-gt v0, v1, :cond_19b

    .line 1294
    add-int/lit8 v18, v21, -0x1

    .restart local v18    # "k":I
    :cond_1a7
    :goto_1a7
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_1cf

    .line 1295
    aget-short v7, p0, v18

    .line 1296
    .local v7, "ak":S
    move/from16 v0, v23

    if-ge v7, v0, :cond_1bc

    .line 1297
    aget-short v27, p0, v21

    aput-short v27, p0, v18

    .line 1302
    aput-short v7, p0, v21

    .line 1303
    add-int/lit8 v21, v21, 0x1

    goto :goto_1a7

    .line 1304
    :cond_1bc
    move/from16 v0, v24

    if-le v7, v0, :cond_1a7

    .line 1305
    :goto_1c0
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_212

    .line 1306
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .local v14, "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_210

    move v13, v14

    .line 1327
    .end local v7    # "ak":S
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_1cf
    add-int/lit8 v27, v21, -0x1

    aget-short v27, p0, v27

    aput-short v27, p0, p1

    add-int/lit8 v27, v21, -0x1

    aput-short v23, p0, v27

    .line 1328
    add-int/lit8 v27, v13, 0x1

    aget-short v27, p0, v27

    aput-short v27, p0, p2

    add-int/lit8 v27, v13, 0x1

    aput-short v24, p0, v27

    .line 1331
    add-int/lit8 v27, v21, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1332
    add-int/lit8 v27, v13, 0x2

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1338
    move/from16 v0, v21

    if-ge v0, v8, :cond_264

    if-ge v12, v13, :cond_264

    .line 1342
    :goto_205
    aget-short v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_22f

    .line 1343
    add-int/lit8 v21, v21, 0x1

    goto :goto_205

    .end local v13    # "great":I
    .restart local v7    # "ak":S
    .restart local v14    # "great":I
    :cond_210
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_1c0

    .line 1310
    :cond_212
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_22a

    .line 1311
    aget-short v27, p0, v21

    aput-short v27, p0, v18

    .line 1312
    aget-short v27, p0, v13

    aput-short v27, p0, v21

    .line 1313
    add-int/lit8 v21, v21, 0x1

    .line 1321
    :goto_224
    aput-short v7, p0, v13

    .line 1322
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1a7

    .line 1315
    :cond_22a
    aget-short v27, p0, v13

    aput-short v27, p0, v18

    goto :goto_224

    .line 1346
    .end local v7    # "ak":S
    :cond_22f
    :goto_22f
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_23a

    .line 1347
    add-int/lit8 v13, v13, -0x1

    goto :goto_22f

    .line 1370
    :cond_23a
    add-int/lit8 v18, v21, -0x1

    :cond_23c
    :goto_23c
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_264

    .line 1371
    aget-short v7, p0, v18

    .line 1372
    .restart local v7    # "ak":S
    move/from16 v0, v23

    if-ne v7, v0, :cond_251

    .line 1373
    aget-short v27, p0, v21

    aput-short v27, p0, v18

    .line 1374
    aput-short v7, p0, v21

    .line 1375
    add-int/lit8 v21, v21, 0x1

    goto :goto_23c

    .line 1376
    :cond_251
    move/from16 v0, v24

    if-ne v7, v0, :cond_23c

    .line 1377
    :goto_255
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_272

    .line 1378
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .restart local v14    # "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_270

    move v13, v14

    .line 1404
    .end local v7    # "ak":S
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_264
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1474
    .end local v23    # "pivot1":S
    .end local v24    # "pivot2":S
    :goto_26f
    return-void

    .end local v13    # "great":I
    .restart local v7    # "ak":S
    .restart local v14    # "great":I
    .restart local v23    # "pivot1":S
    .restart local v24    # "pivot2":S
    :cond_270
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_255

    .line 1382
    :cond_272
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_287

    .line 1383
    aget-short v27, p0, v21

    aput-short v27, p0, v18

    .line 1392
    aput-short v23, p0, v21

    .line 1393
    add-int/lit8 v21, v21, 0x1

    .line 1397
    :goto_282
    aput-short v7, p0, v13

    .line 1398
    add-int/lit8 v13, v13, -0x1

    goto :goto_23c

    .line 1395
    :cond_287
    aget-short v27, p0, v13

    aput-short v27, p0, v18

    goto :goto_282

    .line 1411
    .end local v7    # "ak":S
    .end local v18    # "k":I
    .end local v23    # "pivot1":S
    .end local v24    # "pivot2":S
    :cond_28c
    aget-short v22, p0, v10

    .line 1433
    .local v22, "pivot":S
    move/from16 v18, p1

    .restart local v18    # "k":I
    :goto_290
    move/from16 v0, v18

    if-gt v0, v13, :cond_2d3

    .line 1434
    aget-short v27, p0, v18

    move/from16 v0, v27

    move/from16 v1, v22

    if-ne v0, v1, :cond_29f

    .line 1433
    :goto_29c
    add-int/lit8 v18, v18, 0x1

    goto :goto_290

    .line 1437
    :cond_29f
    aget-short v7, p0, v18

    .line 1438
    .restart local v7    # "ak":S
    move/from16 v0, v22

    if-ge v7, v0, :cond_2ae

    .line 1439
    aget-short v27, p0, v21

    aput-short v27, p0, v18

    .line 1440
    aput-short v7, p0, v21

    .line 1441
    add-int/lit8 v21, v21, 0x1

    goto :goto_29c

    .line 1443
    :cond_2ae
    :goto_2ae
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-le v0, v1, :cond_2b9

    .line 1444
    add-int/lit8 v13, v13, -0x1

    goto :goto_2ae

    .line 1446
    :cond_2b9
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_2d0

    .line 1447
    aget-short v27, p0, v21

    aput-short v27, p0, v18

    .line 1448
    aget-short v27, p0, v13

    aput-short v27, p0, v21

    .line 1449
    add-int/lit8 v21, v21, 0x1

    .line 1461
    :goto_2cb
    aput-short v7, p0, v13

    .line 1462
    add-int/lit8 v13, v13, -0x1

    goto :goto_29c

    .line 1459
    :cond_2d0
    aput-short v22, p0, v18

    goto :goto_2cb

    .line 1471
    .end local v7    # "ak":S
    :cond_2d3
    add-int/lit8 v27, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1472
    add-int/lit8 v27, v13, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    goto :goto_26f
.end method

.method static sort([SII[SII)V
    .registers 13
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [S
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 1006
    sub-int v5, p2, p1

    const/16 v6, 0xc80

    if-le v5, v6, :cond_36

    .line 1007
    const/high16 v5, 0x10000

    new-array v0, v5, [I

    .line 1009
    .local v0, "count":[I
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_c
    add-int/lit8 v1, v1, 0x1

    if-gt v1, p2, :cond_1c

    .line 1010
    aget-short v5, p0, v1

    const/16 v6, -0x8000

    sub-int/2addr v5, v6

    aget v6, v0, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v5

    goto :goto_c

    .line 1012
    :cond_1c
    const/high16 v1, 0x10000

    add-int/lit8 v2, p2, 0x1

    .local v2, "k":I
    :cond_20
    if-le v2, p1, :cond_39

    .line 1013
    :cond_22
    add-int/lit8 v1, v1, -0x1

    aget v5, v0, v1

    if-eqz v5, :cond_22

    .line 1014
    add-int/lit16 v5, v1, -0x8000

    int-to-short v4, v5

    .line 1015
    .local v4, "value":S
    aget v3, v0, v1

    .line 1018
    .local v3, "s":I
    :goto_2d
    add-int/lit8 v2, v2, -0x1

    aput-short v4, p0, v2

    .line 1019
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_20

    goto :goto_2d

    .line 1022
    .end local v0    # "count":[I
    .end local v1    # "i":I
    .end local v2    # "k":I
    .end local v3    # "s":I
    .end local v4    # "value":S
    :cond_36
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([SII[SII)V

    .line 1024
    :cond_39
    return-void
.end method
