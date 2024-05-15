.class final Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LocalizedOffsetIdPrinterParser"
.end annotation


# instance fields
.field private final style:Ljava/time/format/TextStyle;


# direct methods
.method constructor <init>(Ljava/time/format/TextStyle;)V
    .registers 2
    .param p1, "style"    # Ljava/time/format/TextStyle;

    .prologue
    .line 3468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3469
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    .line 3470
    return-void
.end method

.method private static appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .registers 4
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "t"    # I

    .prologue
    .line 3473
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3474
    rem-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 3473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 12
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v8, 0x3a

    const/4 v7, 0x0

    .line 3479
    sget-object v6, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v4

    .line 3480
    .local v4, "offsetSecs":Ljava/lang/Long;
    if-nez v4, :cond_c

    .line 3481
    return v7

    .line 3483
    :cond_c
    const-string/jumbo v3, "GMT"

    .line 3484
    .local v3, "gmtText":Ljava/lang/String;
    if-eqz v3, :cond_14

    .line 3485
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    :cond_14
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v5

    .line 3488
    .local v5, "totalSecs":I
    if-eqz v5, :cond_53

    .line 3489
    div-int/lit16 v6, v5, 0xe10

    rem-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3490
    .local v0, "absHours":I
    div-int/lit8 v6, v5, 0x3c

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3491
    .local v1, "absMinutes":I
    rem-int/lit8 v6, v5, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3492
    .local v2, "absSeconds":I
    if-gez v5, :cond_55

    const-string/jumbo v6, "-"

    :goto_39
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3493
    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    sget-object v7, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v6, v7, :cond_59

    .line 3494
    invoke-static {p2, v0}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3495
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3496
    invoke-static {p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3497
    if-eqz v2, :cond_53

    .line 3498
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3499
    invoke-static {p2, v2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3516
    .end local v0    # "absHours":I
    .end local v1    # "absMinutes":I
    .end local v2    # "absSeconds":I
    :cond_53
    :goto_53
    const/4 v6, 0x1

    return v6

    .line 3492
    .restart local v0    # "absHours":I
    .restart local v1    # "absMinutes":I
    .restart local v2    # "absSeconds":I
    :cond_55
    const-string/jumbo v6, "+"

    goto :goto_39

    .line 3502
    :cond_59
    const/16 v6, 0xa

    if-lt v0, v6, :cond_65

    .line 3503
    div-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3505
    :cond_65
    rem-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3506
    if-nez v1, :cond_71

    if-eqz v2, :cond_53

    .line 3507
    :cond_71
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3508
    invoke-static {p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3509
    if-eqz v2, :cond_53

    .line 3510
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3511
    invoke-static {p2, v2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    goto :goto_53
.end method

.method getDigit(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # I

    .prologue
    .line 3520
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3521
    .local v0, "c":C
    const/16 v1, 0x30

    if-lt v0, v1, :cond_c

    const/16 v1, 0x39

    if-le v0, v1, :cond_e

    .line 3522
    :cond_c
    const/4 v1, -0x1

    return v1

    .line 3524
    :cond_e
    add-int/lit8 v1, v0, -0x30

    return v1
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 36
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 3529
    move/from16 v13, p3

    .line 3530
    .local v13, "pos":I
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v14, p3, v4

    .line 3531
    .local v14, "end":I
    const-string/jumbo v7, "GMT"

    .line 3532
    .local v7, "gmtText":Ljava/lang/String;
    if-eqz v7, :cond_28

    .line 3533
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v4 .. v9}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-nez v4, :cond_22

    .line 3534
    move/from16 v0, p3

    not-int v4, v0

    return v4

    .line 3536
    :cond_22
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    add-int v13, p3, v4

    .line 3539
    :cond_28
    const/16 v21, 0x0

    .line 3540
    .local v21, "negative":I
    if-ne v13, v14, :cond_39

    .line 3541
    sget-object v9, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    .line 3543
    :cond_39
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    .line 3544
    .local v26, "sign":C
    const/16 v4, 0x2b

    move/from16 v0, v26

    if-ne v0, v4, :cond_74

    .line 3545
    const/16 v21, 0x1

    .line 3551
    :goto_47
    add-int/lit8 v13, v13, 0x1

    .line 3552
    const/4 v15, 0x0

    .line 3553
    .local v15, "h":I
    const/16 v18, 0x0

    .line 3554
    .local v18, "m":I
    const/16 v23, 0x0

    .line 3555
    .local v23, "s":I
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    sget-object v5, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v4, v5, :cond_11a

    .line 3556
    add-int/lit8 v22, v13, 0x1

    .end local v13    # "pos":I
    .local v22, "pos":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v16

    .line 3557
    .local v16, "h1":I
    add-int/lit8 v13, v22, 0x1

    .end local v22    # "pos":I
    .restart local v13    # "pos":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v17

    .line 3558
    .local v17, "h2":I
    if-ltz v16, :cond_70

    if-gez v17, :cond_8a

    .line 3559
    :cond_70
    :goto_70
    move/from16 v0, p3

    not-int v4, v0

    return v4

    .line 3546
    .end local v15    # "h":I
    .end local v16    # "h1":I
    .end local v17    # "h2":I
    .end local v18    # "m":I
    .end local v23    # "s":I
    :cond_74
    const/16 v4, 0x2d

    move/from16 v0, v26

    if-ne v0, v4, :cond_7d

    .line 3547
    const/16 v21, -0x1

    goto :goto_47

    .line 3549
    :cond_7d
    sget-object v9, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    .line 3558
    .restart local v15    # "h":I
    .restart local v16    # "h1":I
    .restart local v17    # "h2":I
    .restart local v18    # "m":I
    .restart local v23    # "s":I
    :cond_8a
    add-int/lit8 v22, v13, 0x1

    .end local v13    # "pos":I
    .restart local v22    # "pos":I
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_99

    move/from16 v13, v22

    .end local v22    # "pos":I
    .restart local v13    # "pos":I
    goto :goto_70

    .line 3561
    .end local v13    # "pos":I
    .restart local v22    # "pos":I
    :cond_99
    mul-int/lit8 v4, v16, 0xa

    add-int v15, v4, v17

    .line 3562
    add-int/lit8 v13, v22, 0x1

    .end local v22    # "pos":I
    .restart local v13    # "pos":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v19

    .line 3563
    .local v19, "m1":I
    add-int/lit8 v22, v13, 0x1

    .end local v13    # "pos":I
    .restart local v22    # "pos":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v20

    .line 3564
    .local v20, "m2":I
    if-ltz v19, :cond_b7

    if-gez v20, :cond_bb

    .line 3565
    :cond_b7
    move/from16 v0, p3

    not-int v4, v0

    return v4

    .line 3567
    :cond_bb
    mul-int/lit8 v4, v19, 0xa

    add-int v18, v4, v20

    .line 3568
    add-int/lit8 v4, v22, 0x2

    if-ge v4, v14, :cond_114

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_114

    .line 3569
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v24

    .line 3570
    .local v24, "s1":I
    add-int/lit8 v4, v22, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v25

    .line 3571
    .local v25, "s2":I
    if-ltz v24, :cond_117

    if-ltz v25, :cond_117

    .line 3572
    mul-int/lit8 v4, v24, 0xa

    add-int v23, v4, v25

    .line 3573
    add-int/lit8 v13, v22, 0x3

    .line 3607
    .end local v16    # "h1":I
    .end local v17    # "h2":I
    .end local v19    # "m1":I
    .end local v20    # "m2":I
    .end local v22    # "pos":I
    .end local v24    # "s1":I
    .end local v25    # "s2":I
    .restart local v13    # "pos":I
    :cond_ed
    :goto_ed
    move/from16 v0, v21

    int-to-long v4, v0

    int-to-long v8, v15

    const-wide/16 v28, 0xe10

    mul-long v8, v8, v28

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3c

    mul-long v28, v28, v30

    add-long v8, v8, v28

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v8, v8, v28

    mul-long v10, v4, v8

    .line 3608
    .local v10, "offsetSecs":J
    sget-object v9, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v8, p1

    move/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    .end local v10    # "offsetSecs":J
    .end local v13    # "pos":I
    .restart local v16    # "h1":I
    .restart local v17    # "h2":I
    .restart local v19    # "m1":I
    .restart local v20    # "m2":I
    .restart local v22    # "pos":I
    :cond_114
    move/from16 v13, v22

    .line 3568
    .end local v22    # "pos":I
    .restart local v13    # "pos":I
    goto :goto_ed

    .end local v13    # "pos":I
    .restart local v22    # "pos":I
    .restart local v24    # "s1":I
    .restart local v25    # "s2":I
    :cond_117
    move/from16 v13, v22

    .line 3571
    .end local v22    # "pos":I
    .restart local v13    # "pos":I
    goto :goto_ed

    .line 3577
    .end local v16    # "h1":I
    .end local v17    # "h2":I
    .end local v19    # "m1":I
    .end local v20    # "m2":I
    .end local v24    # "s1":I
    .end local v25    # "s2":I
    :cond_11a
    add-int/lit8 v22, v13, 0x1

    .end local v13    # "pos":I
    .restart local v22    # "pos":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v15

    .line 3578
    if-gez v15, :cond_12a

    .line 3579
    move/from16 v0, p3

    not-int v4, v0

    return v4

    .line 3581
    :cond_12a
    move/from16 v0, v22

    if-ge v0, v14, :cond_1ab

    .line 3582
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v17

    .line 3583
    .restart local v17    # "h2":I
    if-ltz v17, :cond_1a8

    .line 3584
    mul-int/lit8 v4, v15, 0xa

    add-int v15, v4, v17

    .line 3585
    add-int/lit8 v13, v22, 0x1

    .line 3587
    .end local v22    # "pos":I
    .restart local v13    # "pos":I
    :goto_140
    add-int/lit8 v4, v13, 0x2

    if-ge v4, v14, :cond_ed

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_ed

    .line 3588
    add-int/lit8 v4, v13, 0x2

    if-ge v4, v14, :cond_ed

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_ed

    .line 3589
    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v19

    .line 3590
    .restart local v19    # "m1":I
    add-int/lit8 v4, v13, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v20

    .line 3591
    .restart local v20    # "m2":I
    if-ltz v19, :cond_ed

    if-ltz v20, :cond_ed

    .line 3592
    mul-int/lit8 v4, v19, 0xa

    add-int v18, v4, v20

    .line 3593
    add-int/lit8 v13, v13, 0x3

    .line 3594
    add-int/lit8 v4, v13, 0x2

    if-ge v4, v14, :cond_ed

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_ed

    .line 3595
    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v24

    .line 3596
    .restart local v24    # "s1":I
    add-int/lit8 v4, v13, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v25

    .line 3597
    .restart local v25    # "s2":I
    if-ltz v24, :cond_ed

    if-ltz v25, :cond_ed

    .line 3598
    mul-int/lit8 v4, v24, 0xa

    add-int v23, v4, v25

    .line 3599
    add-int/lit8 v13, v13, 0x3

    goto/16 :goto_ed

    .end local v13    # "pos":I
    .end local v19    # "m1":I
    .end local v20    # "m2":I
    .end local v24    # "s1":I
    .end local v25    # "s2":I
    .restart local v22    # "pos":I
    :cond_1a8
    move/from16 v13, v22

    .end local v22    # "pos":I
    .restart local v13    # "pos":I
    goto :goto_140

    .end local v13    # "pos":I
    .end local v17    # "h2":I
    .restart local v22    # "pos":I
    :cond_1ab
    move/from16 v13, v22

    .end local v22    # "pos":I
    .restart local v13    # "pos":I
    goto/16 :goto_ed
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LocalizedOffset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
