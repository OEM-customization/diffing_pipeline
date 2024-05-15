.class final Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
.super Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReducedPrinterParser"
.end annotation


# static fields
.field static final greylist-max-o BASE_DATE:Ljava/time/LocalDate;


# instance fields
.field private final greylist-max-o baseDate:Ljava/time/chrono/ChronoLocalDate;

.field private final greylist-max-o baseValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2760
    const/16 v0, 0x7d0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;)V
    .registers 13
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I
    .param p5, "baseDate"    # Ljava/time/chrono/ChronoLocalDate;

    .line 2776
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    .line 2777
    const/4 v0, 0x1

    if-lt p2, v0, :cond_79

    const/16 v1, 0xa

    if-gt p2, v1, :cond_79

    .line 2780
    if-lt p3, v0, :cond_62

    if-gt p3, v1, :cond_62

    .line 2783
    if-lt p3, p2, :cond_43

    .line 2787
    if-nez p5, :cond_42

    .line 2788
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2791
    int-to-long v0, p4

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    aget-wide v2, v2, p3

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_32

    goto :goto_42

    .line 2792
    :cond_32
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Unable to add printer-parser as the range exceeds the capacity of an int"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2789
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The base value must be within the range of the field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2795
    :cond_42
    :goto_42
    return-void

    .line 2784
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum width must exceed or equal the minimum width but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2781
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maxWidth must be from 1 to 10 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2778
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The minWidth must be from 1 to 10 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V
    .registers 13
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I
    .param p5, "baseDate"    # Ljava/time/chrono/ChronoLocalDate;
    .param p6, "subsequentWidth"    # I

    .line 2810
    sget-object v4, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    .line 2811
    iput p4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2812
    iput-object p5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    .line 2813
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;ILjava/time/format/DateTimeFormatterBuilder$1;)V
    .registers 8
    .param p1, "x0"    # Ljava/time/temporal/TemporalField;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/time/chrono/ChronoLocalDate;
    .param p6, "x5"    # I
    .param p7, "x6"    # Ljava/time/format/DateTimeFormatterBuilder$1;

    .line 2756
    invoke-direct/range {p0 .. p6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    return-void
.end method


# virtual methods
.method greylist-max-o getValue(Ljava/time/format/DateTimePrintContext;J)J
    .registers 11
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "value"    # J

    .line 2817
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 2818
    .local v0, "absValue":J
    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2819
    .local v2, "baseValue":I
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v3, :cond_1e

    .line 2820
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v3

    invoke-static {v3}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v3

    .line 2821
    .local v3, "chrono":Ljava/time/chrono/Chronology;
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v3, v4}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    .line 2823
    .end local v3    # "chrono":Ljava/time/chrono/Chronology;
    :cond_1e
    int-to-long v3, v2

    cmp-long v3, p2, v3

    if-ltz v3, :cond_38

    int-to-long v3, v2

    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v5, v5, v6

    add-long/2addr v3, v5

    cmp-long v3, p2, v3

    if-gez v3, :cond_38

    .line 2825
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v3, v3, v4

    rem-long v3, v0, v3

    return-wide v3

    .line 2828
    :cond_38
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    aget-wide v3, v3, v4

    rem-long v3, v0, v3

    return-wide v3
.end method

.method greylist-max-o isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z
    .registers 3
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;

    .line 2900
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2901
    const/4 v0, 0x0

    return v0

    .line 2903
    :cond_8
    invoke-super {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v0

    return v0
.end method

.method public synthetic blacklist lambda$setValue$0$DateTimeFormatterBuilder$ReducedPrinterParser(Ljava/time/format/DateTimeParseContext;JIILjava/time/chrono/Chronology;)V
    .registers 7
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "initialValue"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I
    .param p6, "_unused"    # Ljava/time/chrono/Chronology;

    .line 2846
    invoke-virtual/range {p0 .. p5}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->setValue(Ljava/time/format/DateTimeParseContext;JII)I

    .line 2847
    return-void
.end method

.method greylist-max-o setValue(Ljava/time/format/DateTimeParseContext;JII)I
    .registers 23
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .line 2833
    move-object/from16 v7, p0

    iget v0, v7, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2834
    .local v0, "baseValue":I
    iget-object v1, v7, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_2f

    .line 2835
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getEffectiveChronology()Ljava/time/chrono/Chronology;

    move-result-object v8

    .line 2836
    .local v8, "chrono":Ljava/time/chrono/Chronology;
    iget-object v1, v7, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v8, v1}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    iget-object v2, v7, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v1, v2}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v9

    .line 2839
    .end local v0    # "baseValue":I
    .local v9, "baseValue":I
    move-wide/from16 v3, p2

    .line 2840
    .local v3, "initialValue":J
    new-instance v10, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;-><init>(Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;Ljava/time/format/DateTimeParseContext;JII)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v10}, Ljava/time/format/DateTimeParseContext;->addChronoChangedListener(Ljava/util/function/Consumer;)V

    move v0, v9

    goto :goto_31

    .line 2834
    .end local v3    # "initialValue":J
    .end local v8    # "chrono":Ljava/time/chrono/Chronology;
    .end local v9    # "baseValue":I
    .restart local v0    # "baseValue":I
    :cond_2f
    move-object/from16 v1, p1

    .line 2849
    :goto_31
    sub-int v2, p5, p4

    .line 2850
    .local v2, "parseLen":I
    iget v3, v7, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    if-ne v2, v3, :cond_58

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-ltz v3, :cond_58

    .line 2851
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v4, v7, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v3, v3, v4

    .line 2852
    .local v3, "range":J
    int-to-long v5, v0

    rem-long/2addr v5, v3

    .line 2853
    .local v5, "lastPart":J
    int-to-long v8, v0

    sub-long/2addr v8, v5

    .line 2854
    .local v8, "basePart":J
    if-lez v0, :cond_4c

    .line 2855
    add-long v10, v8, p2

    .end local p2    # "value":J
    .local v10, "value":J
    goto :goto_4e

    .line 2857
    .end local v10    # "value":J
    .restart local p2    # "value":J
    :cond_4c
    sub-long v10, v8, p2

    .line 2859
    .end local p2    # "value":J
    .restart local v10    # "value":J
    :goto_4e
    int-to-long v12, v0

    cmp-long v12, v10, v12

    if-gez v12, :cond_56

    .line 2860
    add-long/2addr v10, v3

    move-wide v3, v10

    goto :goto_5a

    .line 2859
    :cond_56
    move-wide v3, v10

    goto :goto_5a

    .line 2863
    .end local v3    # "range":J
    .end local v5    # "lastPart":J
    .end local v8    # "basePart":J
    .end local v10    # "value":J
    .restart local p2    # "value":J
    :cond_58
    move-wide/from16 v3, p2

    .end local p2    # "value":J
    .local v3, "value":J
    :goto_5a
    iget-object v12, v7, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object/from16 v11, p1

    move-wide v13, v3

    move/from16 v15, p4

    move/from16 v16, p5

    invoke-virtual/range {v11 .. v16}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v5

    return v5
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReducedValue("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_29

    goto :goto_2f

    :cond_29
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2

    .line 2756
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .registers 10

    .line 2873
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 2874
    return-object p0

    .line 2876
    :cond_6
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v7, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    const/4 v8, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    return-object v0
.end method

.method bridge synthetic blacklist withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2

    .line 2756
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .registers 10
    .param p1, "subsequentWidth"    # I

    .line 2887
    new-instance v7, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    add-int v6, v0, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    return-object v7
.end method
