.class Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberPrinterParser"
.end annotation


# static fields
.field static final greylist-max-o EXCEED_POINTS:[J


# instance fields
.field final greylist-max-o field:Ljava/time/temporal/TemporalField;

.field final greylist-max-o maxWidth:I

.field final greylist-max-o minWidth:I

.field private final greylist-max-o signStyle:Ljava/time/format/SignStyle;

.field final greylist-max-o subsequentWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2468
    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[J

    return-void

    :array_a
    .array-data 8
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
    .end array-data
.end method

.method constructor greylist-max-o <init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Ljava/time/format/SignStyle;

    .line 2496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2498
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 2499
    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2500
    iput p3, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2501
    iput-object p4, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    .line 2502
    const/4 v0, 0x0

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    .line 2503
    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Ljava/time/format/SignStyle;
    .param p5, "subsequentWidth"    # I

    .line 2515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2517
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 2518
    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2519
    iput p3, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2520
    iput-object p4, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    .line 2521
    iput p5, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    .line 2522
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/SignStyle;
    .registers 2
    .param p0, "x0"    # Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 2463
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 14
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2548
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 2549
    .local v0, "valueLong":Ljava/lang/Long;
    if-nez v0, :cond_a

    .line 2550
    const/4 v1, 0x0

    return v1

    .line 2552
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->getValue(Ljava/time/format/DateTimePrintContext;J)J

    move-result-wide v1

    .line 2553
    .local v1, "value":J
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v3

    .line 2554
    .local v3, "decimalStyle":Ljava/time/format/DecimalStyle;
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v1, v4

    if-nez v4, :cond_1f

    const-string v4, "9223372036854775808"

    goto :goto_27

    :cond_1f
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 2555
    .local v4, "str":Ljava/lang/String;
    :goto_27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const-string v7, " cannot be printed as the value "

    const-string v8, "Field "

    if-gt v5, v6, :cond_c3

    .line 2560
    invoke-virtual {v3, v4}, Ljava/time/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2562
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    const/4 v6, 0x2

    const/4 v9, 0x1

    if-ltz v5, :cond_6c

    .line 2563
    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$3;->$SwitchMap$java$time$format$SignStyle:[I

    iget-object v7, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual {v7}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v7

    aget v5, v5, v7

    if-eq v5, v9, :cond_56

    if-eq v5, v6, :cond_4e

    goto :goto_6b

    .line 2570
    :cond_4e
    invoke-virtual {v3}, Ljava/time/format/DecimalStyle;->getPositiveSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 2565
    :cond_56
    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_6b

    sget-object v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[J

    aget-wide v5, v6, v5

    cmp-long v5, v1, v5

    if-ltz v5, :cond_6b

    .line 2566
    invoke-virtual {v3}, Ljava/time/format/DecimalStyle;->getPositiveSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2571
    :cond_6b
    :goto_6b
    goto :goto_ab

    .line 2574
    :cond_6c
    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$3;->$SwitchMap$java$time$format$SignStyle:[I

    iget-object v10, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual {v10}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v10

    aget v5, v5, v10

    if-eq v5, v9, :cond_a3

    if-eq v5, v6, :cond_a3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_a3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_81

    goto :goto_ab

    .line 2581
    :cond_81
    new-instance v5, Ljava/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " cannot be negative according to the SignStyle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2578
    :cond_a3
    invoke-virtual {v3}, Ljava/time/format/DecimalStyle;->getNegativeSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2579
    nop

    .line 2586
    :goto_ab
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_ac
    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_bf

    .line 2587
    invoke-virtual {v3}, Ljava/time/format/DecimalStyle;->getZeroDigit()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2586
    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    .line 2589
    .end local v5    # "i":I
    :cond_bf
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2590
    return v9

    .line 2556
    :cond_c3
    new-instance v5, Ljava/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " exceeds the maximum print width of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method greylist-max-o getValue(Ljava/time/format/DateTimePrintContext;J)J
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "value"    # J

    .line 2601
    return-wide p2
.end method

.method greylist-max-o isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;

    .line 2612
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    if-lez v0, :cond_14

    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v1, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v0, v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 25
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2618
    move-object/from16 v6, p0

    move/from16 v0, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 2619
    .local v7, "length":I
    if-ne v0, v7, :cond_c

    .line 2620
    not-int v1, v0

    return v1

    .line 2622
    :cond_c
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 2623
    .local v8, "sign":C
    const/4 v1, 0x0

    .line 2624
    .local v1, "negative":Z
    const/4 v2, 0x0

    .line 2625
    .local v2, "positive":Z
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/format/DecimalStyle;->getPositiveSign()C

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v8, v3, :cond_3c

    .line 2626
    iget-object v3, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v9

    iget v10, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v11, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v10, v11, :cond_2c

    move v10, v5

    goto :goto_2d

    :cond_2c
    move v10, v4

    :goto_2d
    invoke-virtual {v3, v5, v9, v10}, Ljava/time/format/SignStyle;->parse(ZZZ)Z

    move-result v3

    if-nez v3, :cond_35

    .line 2627
    not-int v3, v0

    return v3

    .line 2629
    :cond_35
    const/4 v2, 0x1

    .line 2630
    add-int/lit8 v0, v0, 0x1

    move v9, v0

    move v10, v1

    move v11, v2

    .end local p3    # "position":I
    .local v0, "position":I
    goto :goto_75

    .line 2631
    .end local v0    # "position":I
    .restart local p3    # "position":I
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/format/DecimalStyle;->getNegativeSign()C

    move-result v3

    if-ne v8, v3, :cond_64

    .line 2632
    iget-object v3, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v9

    iget v10, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v11, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v10, v11, :cond_54

    move v10, v5

    goto :goto_55

    :cond_54
    move v10, v4

    :goto_55
    invoke-virtual {v3, v4, v9, v10}, Ljava/time/format/SignStyle;->parse(ZZZ)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 2633
    not-int v3, v0

    return v3

    .line 2635
    :cond_5d
    const/4 v1, 0x1

    .line 2636
    add-int/lit8 v0, v0, 0x1

    move v9, v0

    move v10, v1

    move v11, v2

    .end local p3    # "position":I
    .restart local v0    # "position":I
    goto :goto_75

    .line 2638
    .end local v0    # "position":I
    .restart local p3    # "position":I
    :cond_64
    iget-object v3, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v9, Ljava/time/format/SignStyle;->ALWAYS:Ljava/time/format/SignStyle;

    if-ne v3, v9, :cond_72

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 2639
    not-int v3, v0

    return v3

    .line 2642
    :cond_72
    move v9, v0

    move v10, v1

    move v11, v2

    .end local v1    # "negative":Z
    .end local v2    # "positive":Z
    .end local p3    # "position":I
    .local v9, "position":I
    .local v10, "negative":Z
    .local v11, "positive":Z
    :goto_75
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_81

    invoke-virtual/range {p0 .. p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v0

    if-eqz v0, :cond_83

    :cond_81
    iget v5, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    :cond_83
    move v12, v5

    .line 2643
    .local v12, "effMinWidth":I
    add-int v13, v9, v12

    .line 2644
    .local v13, "minEndPos":I
    if-le v13, v7, :cond_8a

    .line 2645
    not-int v0, v9

    return v0

    .line 2647
    :cond_8a
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_9a

    invoke-virtual/range {p0 .. p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v0

    if-eqz v0, :cond_97

    goto :goto_9a

    :cond_97
    const/16 v0, 0x9

    goto :goto_9c

    :cond_9a
    :goto_9a
    iget v0, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    :goto_9c
    iget v1, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2648
    .local v0, "effMaxWidth":I
    const-wide/16 v1, 0x0

    .line 2649
    .local v1, "total":J
    const/4 v3, 0x0

    .line 2650
    .local v3, "totalBig":Ljava/math/BigInteger;
    move v4, v9

    .line 2651
    .local v4, "pos":I
    const/4 v5, 0x0

    move v14, v0

    .end local v0    # "effMaxWidth":I
    .local v5, "pass":I
    .local v14, "effMaxWidth":I
    :goto_a9
    const/4 v0, 0x2

    if-ge v5, v0, :cond_132

    .line 2652
    add-int v0, v4, v14

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2653
    .local v0, "maxEndPos":I
    :goto_b2
    if-ge v4, v0, :cond_10b

    .line 2654
    add-int/lit8 v15, v4, 0x1

    move/from16 v16, v7

    move-object/from16 v7, p2

    .end local v4    # "pos":I
    .end local v7    # "length":I
    .local v15, "pos":I
    .local v16, "length":I
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 2655
    .local v4, "ch":C
    move/from16 p3, v0

    .end local v0    # "maxEndPos":I
    .local p3, "maxEndPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/time/format/DecimalStyle;->convertToDigit(C)I

    move-result v0

    .line 2656
    .local v0, "digit":I
    if-gez v0, :cond_da

    .line 2657
    add-int/lit8 v15, v15, -0x1

    .line 2658
    if-ge v15, v13, :cond_d2

    .line 2659
    move/from16 v17, v4

    .end local v4    # "ch":C
    .local v17, "ch":C
    not-int v4, v9

    return v4

    .line 2658
    .end local v17    # "ch":C
    .restart local v4    # "ch":C
    :cond_d2
    move/from16 v17, v4

    .end local v4    # "ch":C
    .restart local v17    # "ch":C
    move-wide/from16 v19, v1

    move/from16 v18, v8

    move v4, v15

    goto :goto_113

    .line 2663
    .end local v17    # "ch":C
    .restart local v4    # "ch":C
    :cond_da
    move/from16 v17, v4

    .end local v4    # "ch":C
    .restart local v17    # "ch":C
    sub-int v4, v15, v9

    const/16 v7, 0x12

    if-le v4, v7, :cond_fa

    .line 2664
    if-nez v3, :cond_e8

    .line 2665
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 2667
    :cond_e8
    sget-object v4, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move/from16 v18, v8

    .end local v8    # "sign":C
    .local v18, "sign":C
    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_103

    .line 2669
    .end local v18    # "sign":C
    .restart local v8    # "sign":C
    :cond_fa
    move/from16 v18, v8

    .end local v8    # "sign":C
    .restart local v18    # "sign":C
    const-wide/16 v7, 0xa

    mul-long/2addr v7, v1

    move-wide/from16 v19, v1

    .end local v1    # "total":J
    .local v19, "total":J
    int-to-long v1, v0

    add-long/2addr v1, v7

    .line 2671
    .end local v0    # "digit":I
    .end local v17    # "ch":C
    .end local v19    # "total":J
    .restart local v1    # "total":J
    :goto_103
    move/from16 v0, p3

    move v4, v15

    move/from16 v7, v16

    move/from16 v8, v18

    goto :goto_b2

    .line 2653
    .end local v15    # "pos":I
    .end local v16    # "length":I
    .end local v18    # "sign":C
    .end local p3    # "maxEndPos":I
    .local v0, "maxEndPos":I
    .local v4, "pos":I
    .restart local v7    # "length":I
    .restart local v8    # "sign":C
    :cond_10b
    move/from16 p3, v0

    move-wide/from16 v19, v1

    move/from16 v16, v7

    move/from16 v18, v8

    .line 2672
    .end local v0    # "maxEndPos":I
    .end local v1    # "total":J
    .end local v7    # "length":I
    .end local v8    # "sign":C
    .restart local v16    # "length":I
    .restart local v18    # "sign":C
    .restart local v19    # "total":J
    .restart local p3    # "maxEndPos":I
    :goto_113
    iget v0, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-lez v0, :cond_12e

    if-nez v5, :cond_12e

    .line 2674
    sub-int v1, v4, v9

    .line 2675
    .local v1, "parseLen":I
    sub-int v0, v1, v0

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 2676
    move v4, v9

    .line 2677
    const-wide/16 v7, 0x0

    .line 2678
    .end local v19    # "total":J
    .local v7, "total":J
    const/4 v3, 0x0

    .line 2651
    .end local v1    # "parseLen":I
    .end local p3    # "maxEndPos":I
    add-int/lit8 v5, v5, 0x1

    move-wide v1, v7

    move/from16 v7, v16

    move/from16 v8, v18

    goto/16 :goto_a9

    .line 2683
    .end local v5    # "pass":I
    .end local v7    # "total":J
    .restart local v19    # "total":J
    :cond_12e
    move v7, v4

    move-wide/from16 v1, v19

    goto :goto_137

    .line 2651
    .end local v16    # "length":I
    .end local v18    # "sign":C
    .end local v19    # "total":J
    .local v1, "total":J
    .restart local v5    # "pass":I
    .local v7, "length":I
    .restart local v8    # "sign":C
    :cond_132
    move/from16 v16, v7

    move/from16 v18, v8

    .end local v7    # "length":I
    .end local v8    # "sign":C
    .restart local v16    # "length":I
    .restart local v18    # "sign":C
    move v7, v4

    .line 2683
    .end local v4    # "pos":I
    .end local v5    # "pass":I
    .local v7, "pos":I
    :goto_137
    if-eqz v10, :cond_16a

    .line 2684
    if-eqz v3, :cond_155

    .line 2685
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 2686
    add-int/lit8 v0, v9, -0x1

    not-int v0, v0

    return v0

    .line 2688
    :cond_14d
    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    move-wide/from16 v19, v1

    move-object v8, v3

    goto :goto_18b

    .line 2690
    :cond_155
    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-nez v0, :cond_165

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 2691
    add-int/lit8 v0, v9, -0x1

    not-int v0, v0

    return v0

    .line 2693
    :cond_165
    neg-long v1, v1

    move-wide/from16 v19, v1

    move-object v8, v3

    goto :goto_18b

    .line 2695
    :cond_16a
    iget-object v0, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v4, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    if-ne v0, v4, :cond_188

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_188

    .line 2696
    sub-int v0, v7, v9

    .line 2697
    .local v0, "parseLen":I
    if-eqz v11, :cond_182

    .line 2698
    iget v4, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    if-gt v0, v4, :cond_188

    .line 2699
    add-int/lit8 v4, v9, -0x1

    not-int v4, v4

    return v4

    .line 2702
    :cond_182
    iget v4, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    if-le v0, v4, :cond_188

    .line 2703
    not-int v4, v9

    return v4

    .line 2707
    .end local v0    # "parseLen":I
    :cond_188
    move-wide/from16 v19, v1

    move-object v8, v3

    .end local v1    # "total":J
    .end local v3    # "totalBig":Ljava/math/BigInteger;
    .local v8, "totalBig":Ljava/math/BigInteger;
    .restart local v19    # "total":J
    :goto_18b
    if-eqz v8, :cond_1ac

    .line 2708
    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-le v0, v1, :cond_19d

    .line 2710
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 2711
    add-int/lit8 v7, v7, -0x1

    .line 2713
    :cond_19d
    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Ljava/time/format/DateTimeParseContext;JII)I

    move-result v0

    return v0

    .line 2715
    :cond_1ac
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v19

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Ljava/time/format/DateTimeParseContext;JII)I

    move-result v0

    return v0
.end method

.method greylist-max-o setValue(Ljava/time/format/DateTimeParseContext;JII)I
    .registers 12
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .line 2728
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 6

    .line 2733
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const-string v1, ")"

    const-string v2, "Value("

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2a

    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const/16 v3, 0x13

    if-ne v0, v3, :cond_2a

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v3, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    if-ne v0, v3, :cond_2a

    .line 2734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2736
    :cond_2a
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const-string v4, ","

    if-ne v0, v3, :cond_55

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v3, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v0, v3, :cond_55

    .line 2737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2739
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 9

    .line 2530
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 2531
    return-object p0

    .line 2533
    :cond_6
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    const/4 v7, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    return-object v0
.end method

.method greylist-max-o withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 9
    .param p1, "subsequentWidth"    # I

    .line 2543
    new-instance v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    add-int v5, v0, p1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    return-object v6
.end method
