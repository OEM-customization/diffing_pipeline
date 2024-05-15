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
.field private chr:C

.field private count:I


# direct methods
.method constructor <init>(CI)V
    .registers 3
    .param p1, "chr"    # C
    .param p2, "count"    # I

    .prologue
    .line 4461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4462
    iput-char p1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    .line 4463
    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    .line 4464
    return-void
.end method

.method private printerParser(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .registers 11
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    .line 4484
    invoke-static {p1}, Ljava/time/temporal/WeekFields;->of(Ljava/util/Locale;)Ljava/time/temporal/WeekFields;

    move-result-object v8

    .line 4485
    .local v8, "weekDef":Ljava/time/temporal/WeekFields;
    const/4 v1, 0x0

    .line 4486
    .local v1, "field":Ljava/time/temporal/TemporalField;
    iget-char v0, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    sparse-switch v0, :sswitch_data_5a

    .line 4506
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unreachable"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4488
    :sswitch_15
    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->weekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .line 4489
    .local v1, "field":Ljava/time/temporal/TemporalField;
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    if-ne v0, v2, :cond_28

    .line 4490
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    const/4 v7, 0x0

    move v3, v2

    move v6, v4

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;ILjava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;)V

    return-object v0

    .line 4492
    :cond_28
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    .line 4493
    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_3a

    sget-object v4, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    .line 4492
    :goto_33
    const/16 v3, 0x13

    .line 4493
    const/4 v5, -0x1

    .line 4492
    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    return-object v0

    .line 4493
    :cond_3a
    sget-object v4, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    goto :goto_33

    .line 4497
    .local v1, "field":Ljava/time/temporal/TemporalField;
    :sswitch_3d
    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->dayOfWeek()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .line 4508
    .local v1, "field":Ljava/time/temporal/TemporalField;
    :goto_41
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    if-ne v0, v2, :cond_58

    move v0, v2

    :goto_48
    sget-object v4, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v3, v1, v0, v2, v4}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    return-object v3

    .line 4500
    .local v1, "field":Ljava/time/temporal/TemporalField;
    :sswitch_4e
    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    goto :goto_41

    .line 4503
    .local v1, "field":Ljava/time/temporal/TemporalField;
    :sswitch_53
    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->weekOfMonth()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    goto :goto_41

    .line 4508
    :cond_58
    const/4 v0, 0x1

    goto :goto_48

    .line 4486
    :sswitch_data_5a
    .sparse-switch
        0x57 -> :sswitch_53
        0x59 -> :sswitch_15
        0x63 -> :sswitch_3d
        0x65 -> :sswitch_3d
        0x77 -> :sswitch_4e
    .end sparse-switch
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 4468
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->printerParser(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 5
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 4473
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->printerParser(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4513
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4514
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Localized("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4515
    iget-char v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    const/16 v2, 0x59

    if-ne v1, v2, :cond_64

    .line 4516
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 4517
    const-string/jumbo v1, "WeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4543
    :goto_1e
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4544
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4518
    :cond_29
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_35

    .line 4519
    const-string/jumbo v1, "ReducedValue(WeekBasedYear,2,2,2000-01-01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 4521
    :cond_35
    const-string/jumbo v1, "WeekBasedYear,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4522
    const/16 v2, 0x13

    .line 4521
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4522
    const-string/jumbo v2, ","

    .line 4521
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4523
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_61

    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    .line 4521
    :goto_5d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 4523
    :cond_61
    sget-object v1, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    goto :goto_5d

    .line 4526
    :cond_64
    iget-char v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    sparse-switch v1, :sswitch_data_8a

    .line 4540
    :goto_69
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4541
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 4529
    :sswitch_75
    const-string/jumbo v1, "DayOfWeek"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 4532
    :sswitch_7c
    const-string/jumbo v1, "WeekOfWeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 4535
    :sswitch_83
    const-string/jumbo v1, "WeekOfMonth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 4526
    :sswitch_data_8a
    .sparse-switch
        0x57 -> :sswitch_83
        0x63 -> :sswitch_75
        0x65 -> :sswitch_75
        0x77 -> :sswitch_7c
    .end sparse-switch
.end method
