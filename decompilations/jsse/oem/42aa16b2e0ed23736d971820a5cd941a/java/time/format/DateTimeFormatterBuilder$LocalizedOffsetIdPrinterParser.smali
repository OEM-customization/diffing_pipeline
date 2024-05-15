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
.field private final greylist-max-o style:Ljava/time/format/TextStyle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/format/TextStyle;)V
    .registers 2
    .param p1, "style"    # Ljava/time/format/TextStyle;

    .line 3471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3472
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    .line 3473
    return-void
.end method

.method private static greylist-max-o appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .registers 3
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "t"    # I

    .line 3476
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    .line 3477
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3476
    return-object p0
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 12
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3482
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 3483
    .local v0, "offsetSecs":Ljava/lang/Long;
    if-nez v0, :cond_a

    .line 3484
    const/4 v1, 0x0

    return v1

    .line 3486
    :cond_a
    const-string v1, "GMT"

    .line 3487
    .local v1, "gmtText":Ljava/lang/String;
    nop

    .line 3488
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3490
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    .line 3491
    .local v2, "totalSecs":I
    if-eqz v2, :cond_7a

    .line 3492
    div-int/lit16 v3, v2, 0xe10

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 3493
    .local v3, "absHours":I
    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 3494
    .local v4, "absMinutes":I
    rem-int/lit8 v5, v2, 0x3c

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 3495
    .local v5, "absSeconds":I
    if-gez v2, :cond_35

    const-string v6, "-"

    goto :goto_37

    :cond_35
    const-string v6, "+"

    :goto_37
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3496
    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    sget-object v7, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    const/16 v8, 0x3a

    if-ne v6, v7, :cond_54

    .line 3497
    invoke-static {p2, v3}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3498
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3499
    invoke-static {p2, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3500
    if-eqz v5, :cond_7a

    .line 3501
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3502
    invoke-static {p2, v5}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    goto :goto_7a

    .line 3505
    :cond_54
    const/16 v6, 0xa

    if-lt v3, v6, :cond_60

    .line 3506
    div-int/lit8 v6, v3, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3508
    :cond_60
    rem-int/lit8 v6, v3, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3509
    if-nez v4, :cond_6c

    if-eqz v5, :cond_7a

    .line 3510
    :cond_6c
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3511
    invoke-static {p2, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3512
    if-eqz v5, :cond_7a

    .line 3513
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3514
    invoke-static {p2, v5}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3519
    .end local v3    # "absHours":I
    .end local v4    # "absMinutes":I
    .end local v5    # "absSeconds":I
    :cond_7a
    :goto_7a
    const/4 v3, 0x1

    return v3
.end method

.method greylist-max-o getDigit(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # I

    .line 3523
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3524
    .local v0, "c":C
    const/16 v1, 0x30

    if-lt v0, v1, :cond_10

    const/16 v1, 0x39

    if-le v0, v1, :cond_d

    goto :goto_10

    .line 3527
    :cond_d
    add-int/lit8 v1, v0, -0x30

    return v1

    .line 3525
    :cond_10
    :goto_10
    const/4 v1, -0x1

    return v1
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 23
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3532
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p3

    .line 3533
    .local v9, "pos":I
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int v10, v9, v1

    .line 3534
    .local v10, "end":I
    const-string v11, "GMT"

    .line 3535
    .local v11, "gmtText":Ljava/lang/String;
    nop

    .line 3536
    const/4 v5, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v9

    move-object v4, v11

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v1

    if-nez v1, :cond_24

    .line 3537
    not-int v1, v8

    return v1

    .line 3539
    :cond_24
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v9, v1

    .line 3542
    const/4 v12, 0x0

    .line 3543
    .local v12, "negative":I
    if-ne v9, v10, :cond_3a

    .line 3544
    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v5, p3

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3546
    :cond_3a
    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 3547
    .local v13, "sign":C
    const/16 v1, 0x2b

    if-ne v13, v1, :cond_45

    .line 3548
    const/4 v1, 0x1

    move v12, v1

    .end local v12    # "negative":I
    .local v1, "negative":I
    goto :goto_4b

    .line 3549
    .end local v1    # "negative":I
    .restart local v12    # "negative":I
    :cond_45
    const/16 v1, 0x2d

    if-ne v13, v1, :cond_155

    .line 3550
    const/4 v1, -0x1

    move v12, v1

    .line 3554
    :goto_4b
    add-int/lit8 v9, v9, 0x1

    .line 3555
    const/4 v1, 0x0

    .line 3556
    .local v1, "h":I
    const/4 v2, 0x0

    .line 3557
    .local v2, "m":I
    const/4 v3, 0x0

    .line 3558
    .local v3, "s":I
    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    sget-object v5, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    const/16 v6, 0x3a

    if-ne v4, v5, :cond_c0

    .line 3559
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "pos":I
    .local v4, "pos":I
    invoke-virtual {v0, v7, v9}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 3560
    .local v5, "h1":I
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "pos":I
    .restart local v9    # "pos":I
    invoke-virtual {v0, v7, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 3561
    .local v4, "h2":I
    if-ltz v5, :cond_be

    if-ltz v4, :cond_be

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "pos":I
    .local v14, "pos":I
    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v9, v6, :cond_72

    move v9, v14

    goto :goto_be

    .line 3564
    :cond_72
    mul-int/lit8 v9, v5, 0xa

    add-int/2addr v9, v4

    .line 3565
    .end local v1    # "h":I
    .local v9, "h":I
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "pos":I
    .local v1, "pos":I
    invoke-virtual {v0, v7, v14}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v14

    .line 3566
    .local v14, "m1":I
    add-int/lit8 v15, v1, 0x1

    .end local v1    # "pos":I
    .local v15, "pos":I
    invoke-virtual {v0, v7, v1}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 3567
    .local v1, "m2":I
    if-ltz v14, :cond_ba

    if-gez v1, :cond_88

    move/from16 v17, v1

    goto :goto_bc

    .line 3570
    :cond_88
    mul-int/lit8 v16, v14, 0xa

    add-int v2, v16, v1

    .line 3571
    add-int/lit8 v6, v15, 0x2

    if-ge v6, v10, :cond_b1

    invoke-interface {v7, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move/from16 v17, v1

    const/16 v1, 0x3a

    .end local v1    # "m2":I
    .local v17, "m2":I
    if-ne v6, v1, :cond_b3

    .line 3572
    add-int/lit8 v1, v15, 0x1

    invoke-virtual {v0, v7, v1}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 3573
    .local v1, "s1":I
    add-int/lit8 v6, v15, 0x2

    invoke-virtual {v0, v7, v6}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 3574
    .local v6, "s2":I
    if-ltz v1, :cond_b3

    if-ltz v6, :cond_b3

    .line 3575
    mul-int/lit8 v16, v1, 0xa

    add-int v3, v16, v6

    .line 3576
    add-int/lit8 v15, v15, 0x3

    goto :goto_b3

    .line 3571
    .end local v6    # "s2":I
    .end local v17    # "m2":I
    .local v1, "m2":I
    :cond_b1
    move/from16 v17, v1

    .line 3579
    .end local v1    # "m2":I
    .end local v4    # "h2":I
    .end local v5    # "h1":I
    .end local v14    # "m1":I
    :cond_b3
    :goto_b3
    move v14, v3

    move/from16 v16, v15

    move v15, v9

    move v9, v2

    goto/16 :goto_137

    .line 3567
    .restart local v1    # "m2":I
    .restart local v4    # "h2":I
    .restart local v5    # "h1":I
    .restart local v14    # "m1":I
    :cond_ba
    move/from16 v17, v1

    .line 3568
    .end local v1    # "m2":I
    .restart local v17    # "m2":I
    :goto_bc
    not-int v1, v8

    return v1

    .line 3562
    .end local v14    # "m1":I
    .end local v15    # "pos":I
    .end local v17    # "m2":I
    .local v1, "h":I
    .local v9, "pos":I
    :cond_be
    :goto_be
    not-int v6, v8

    return v6

    .line 3580
    .end local v4    # "h2":I
    .end local v5    # "h1":I
    :cond_c0
    add-int/lit8 v15, v9, 0x1

    .end local v9    # "pos":I
    .restart local v15    # "pos":I
    invoke-virtual {v0, v7, v9}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 3581
    .end local v1    # "h":I
    .local v9, "h":I
    if-gez v9, :cond_ca

    .line 3582
    not-int v1, v8

    return v1

    .line 3584
    :cond_ca
    if-ge v15, v10, :cond_132

    .line 3585
    invoke-virtual {v0, v7, v15}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 3586
    .local v1, "h2":I
    if-ltz v1, :cond_d8

    .line 3587
    mul-int/lit8 v4, v9, 0xa

    add-int/2addr v4, v1

    .line 3588
    .end local v9    # "h":I
    .local v4, "h":I
    add-int/lit8 v15, v15, 0x1

    move v9, v4

    .line 3590
    .end local v4    # "h":I
    .restart local v9    # "h":I
    :cond_d8
    add-int/lit8 v4, v15, 0x2

    if-ge v4, v10, :cond_12c

    invoke-interface {v7, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_12c

    .line 3591
    add-int/lit8 v4, v15, 0x2

    if-ge v4, v10, :cond_12c

    invoke-interface {v7, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_12c

    .line 3592
    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v0, v7, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 3593
    .local v4, "m1":I
    add-int/lit8 v5, v15, 0x2

    invoke-virtual {v0, v7, v5}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 3594
    .local v5, "m2":I
    if-ltz v4, :cond_12c

    if-ltz v5, :cond_12c

    .line 3595
    mul-int/lit8 v6, v4, 0xa

    add-int v2, v6, v5

    .line 3596
    add-int/lit8 v15, v15, 0x3

    .line 3597
    add-int/lit8 v6, v15, 0x2

    if-ge v6, v10, :cond_12c

    invoke-interface {v7, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v14, 0x3a

    if-ne v6, v14, :cond_12c

    .line 3598
    add-int/lit8 v6, v15, 0x1

    invoke-virtual {v0, v7, v6}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 3599
    .local v6, "s1":I
    add-int/lit8 v14, v15, 0x2

    invoke-virtual {v0, v7, v14}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v14

    .line 3600
    .local v14, "s2":I
    if-ltz v6, :cond_12c

    if-ltz v14, :cond_12c

    .line 3601
    mul-int/lit8 v16, v6, 0xa

    add-int v3, v16, v14

    .line 3602
    add-int/lit8 v15, v15, 0x3

    move v14, v3

    move/from16 v16, v15

    move v15, v9

    move v9, v2

    goto :goto_137

    .line 3610
    .end local v1    # "h2":I
    .end local v4    # "m1":I
    .end local v5    # "m2":I
    .end local v6    # "s1":I
    .end local v14    # "s2":I
    :cond_12c
    move v14, v3

    move/from16 v16, v15

    move v15, v9

    move v9, v2

    goto :goto_137

    .line 3584
    :cond_132
    move v14, v3

    move/from16 v16, v15

    move v15, v9

    move v9, v2

    .line 3610
    .end local v2    # "m":I
    .end local v3    # "s":I
    .local v9, "m":I
    .local v14, "s":I
    .local v15, "h":I
    .local v16, "pos":I
    :goto_137
    int-to-long v1, v12

    int-to-long v3, v15

    const-wide/16 v5, 0xe10

    mul-long/2addr v3, v5

    int-to-long v5, v9

    const-wide/16 v17, 0x3c

    mul-long v5, v5, v17

    add-long/2addr v3, v5

    int-to-long v5, v14

    add-long/2addr v3, v5

    mul-long v17, v1, v3

    .line 3611
    .local v17, "offsetSecs":J
    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v1, p1

    move-wide/from16 v3, v17

    move/from16 v5, p3

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3552
    .end local v14    # "s":I
    .end local v15    # "h":I
    .end local v16    # "pos":I
    .end local v17    # "offsetSecs":J
    .local v9, "pos":I
    :cond_155
    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v5, p3

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v1

    return v1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 3616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalizedOffset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
