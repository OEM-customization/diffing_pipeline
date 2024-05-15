.class final Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;
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
    name = "WeekBasedFieldPrinterParser"
.end annotation


# instance fields
.field private greylist-max-o chr:C

.field private greylist-max-o count:I


# direct methods
.method constructor greylist-max-o <init>(CI)V
    .registers 3
    .param p1, "chr"    # C
    .param p2, "count"    # I

    .line 4524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4525
    iput-char p1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    .line 4526
    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    .line 4527
    return-void
.end method

.method private greylist-max-o printerParser(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .registers 14
    .param p1, "locale"    # Ljava/util/Locale;

    .line 4547
    invoke-static {p1}, Ljava/time/temporal/WeekFields;->of(Ljava/util/Locale;)Ljava/time/temporal/WeekFields;

    move-result-object v0

    .line 4548
    .local v0, "weekDef":Ljava/time/temporal/WeekFields;
    const/4 v1, 0x0

    .line 4549
    .local v1, "field":Ljava/time/temporal/TemporalField;
    iget-char v2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    const/4 v3, 0x2

    sparse-switch v2, :sswitch_data_5e

    .line 4569
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unreachable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4563
    :sswitch_13
    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .line 4564
    goto :goto_4f

    .line 4560
    :sswitch_18
    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->dayOfWeek()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .line 4561
    goto :goto_4f

    .line 4551
    :sswitch_1d
    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->weekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .line 4552
    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    if-ne v2, v3, :cond_34

    .line 4553
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x0

    sget-object v9, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v2

    move-object v5, v1

    invoke-direct/range {v4 .. v11}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;ILjava/time/format/DateTimeFormatterBuilder$1;)V

    return-object v2

    .line 4555
    :cond_34
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/16 v7, 0x13

    .line 4556
    const/4 v3, 0x4

    if-ge v6, v3, :cond_40

    sget-object v3, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    goto :goto_42

    :cond_40
    sget-object v3, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    :goto_42
    move-object v8, v3

    const/4 v9, -0x1

    move-object v4, v2

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    .line 4555
    return-object v2

    .line 4566
    :sswitch_4a
    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->weekOfMonth()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .line 4567
    nop

    .line 4571
    :goto_4f
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    if-ne v4, v3, :cond_57

    move v4, v3

    goto :goto_58

    :cond_57
    const/4 v4, 0x1

    :goto_58
    sget-object v5, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v2, v1, v4, v3, v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    return-object v2

    :sswitch_data_5e
    .sparse-switch
        0x57 -> :sswitch_4a
        0x59 -> :sswitch_1d
        0x63 -> :sswitch_18
        0x65 -> :sswitch_18
        0x77 -> :sswitch_13
    .end sparse-switch
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 4531
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->printerParser(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 5
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 4536
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->printerParser(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 4576
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4577
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Localized("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4578
    iget-char v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    const-string v2, ","

    const/16 v3, 0x59

    if-ne v1, v3, :cond_4b

    .line 4579
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1f

    .line 4580
    const-string v1, "WeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 4581
    :cond_1f
    const/4 v3, 0x2

    if-ne v1, v3, :cond_28

    .line 4582
    const-string v1, "ReducedValue(WeekBasedYear,2,2,2000-01-01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 4584
    :cond_28
    const-string v1, "WeekBasedYear,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x13

    .line 4585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4586
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_45

    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    goto :goto_47

    :cond_45
    sget-object v1, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    :goto_47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 4589
    :cond_4b
    sparse-switch v1, :sswitch_data_74

    goto :goto_61

    .line 4595
    :sswitch_4f
    const-string v1, "WeekOfWeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4596
    goto :goto_61

    .line 4592
    :sswitch_55
    const-string v1, "DayOfWeek"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4593
    goto :goto_61

    .line 4598
    :sswitch_5b
    const-string v1, "WeekOfMonth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4599
    nop

    .line 4603
    :goto_61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4604
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4606
    :goto_69
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4607
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_74
    .sparse-switch
        0x57 -> :sswitch_5b
        0x63 -> :sswitch_55
        0x65 -> :sswitch_55
        0x77 -> :sswitch_4f
    .end sparse-switch
.end method
