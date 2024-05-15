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

    .line 4513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4514
    iput-char p1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    .line 4515
    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    .line 4516
    return-void
.end method

.method private greylist-max-o printerParser(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .registers 15
    .param p1, "locale"    # Ljava/util/Locale;

    .line 4536
    invoke-static {p1}, Ljava/time/temporal/WeekFields;->of(Ljava/util/Locale;)Ljava/time/temporal/WeekFields;

    move-result-object v0

    .line 4537
    .local v0, "weekDef":Ljava/time/temporal/WeekFields;
    const/4 v1, 0x0

    .line 4538
    .local v1, "field":Ljava/time/temporal/TemporalField;
    iget-char v2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    const/16 v3, 0x57

    const/4 v4, 0x2

    if-eq v2, v3, :cond_5b

    const/16 v3, 0x59

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x63

    if-eq v2, v3, :cond_29

    const/16 v3, 0x65

    if-eq v2, v3, :cond_29

    const/16 v3, 0x77

    if-ne v2, v3, :cond_21

    .line 4552
    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .line 4553
    goto :goto_60

    .line 4558
    :cond_21
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unreachable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4549
    :cond_29
    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->dayOfWeek()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .line 4550
    goto :goto_60

    .line 4540
    :cond_2e
    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->weekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .line 4541
    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    if-ne v2, v4, :cond_45

    .line 4542
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x0

    sget-object v10, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    move-object v6, v1

    invoke-direct/range {v5 .. v12}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;ILjava/time/format/DateTimeFormatterBuilder$1;)V

    return-object v2

    .line 4544
    :cond_45
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/16 v8, 0x13

    .line 4545
    const/4 v3, 0x4

    if-ge v7, v3, :cond_51

    sget-object v3, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    goto :goto_53

    :cond_51
    sget-object v3, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    :goto_53
    move-object v9, v3

    const/4 v10, -0x1

    move-object v5, v2

    move-object v6, v1

    invoke-direct/range {v5 .. v10}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    .line 4544
    return-object v2

    .line 4555
    :cond_5b
    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->weekOfMonth()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .line 4556
    nop

    .line 4560
    :goto_60
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    if-ne v3, v4, :cond_68

    move v3, v4

    goto :goto_69

    :cond_68
    const/4 v3, 0x1

    :goto_69
    sget-object v5, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    return-object v2
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 4520
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

    .line 4525
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->printerParser(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 4565
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4566
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Localized("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4567
    iget-char v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    const-string v2, ","

    const/16 v3, 0x59

    if-ne v1, v3, :cond_4b

    .line 4568
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1f

    .line 4569
    const-string v1, "WeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    .line 4570
    :cond_1f
    const/4 v3, 0x2

    if-ne v1, v3, :cond_28

    .line 4571
    const-string v1, "ReducedValue(WeekBasedYear,2,2,2000-01-01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    .line 4573
    :cond_28
    const-string v1, "WeekBasedYear,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x13

    .line 4574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4575
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_45

    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    goto :goto_47

    :cond_45
    sget-object v1, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    :goto_47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_76

    .line 4578
    :cond_4b
    const/16 v3, 0x57

    if-eq v1, v3, :cond_68

    const/16 v3, 0x63

    if-eq v1, v3, :cond_62

    const/16 v3, 0x65

    if-eq v1, v3, :cond_62

    const/16 v3, 0x77

    if-eq v1, v3, :cond_5c

    goto :goto_6e

    .line 4584
    :cond_5c
    const-string v1, "WeekOfWeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4585
    goto :goto_6e

    .line 4581
    :cond_62
    const-string v1, "DayOfWeek"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4582
    goto :goto_6e

    .line 4587
    :cond_68
    const-string v1, "WeekOfMonth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4588
    nop

    .line 4592
    :goto_6e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4593
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4595
    :goto_76
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
