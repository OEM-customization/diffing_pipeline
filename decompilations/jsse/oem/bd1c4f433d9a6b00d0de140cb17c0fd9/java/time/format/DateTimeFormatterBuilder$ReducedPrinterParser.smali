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
.field static final BASE_DATE:Ljava/time/LocalDate;


# instance fields
.field private final baseDate:Ljava/time/chrono/ChronoLocalDate;

.field private final baseValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 2748
    const/16 v0, 0x7d0

    invoke-static {v0, v1, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    .line 2744
    return-void
.end method

.method constructor <init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;)V
    .registers 15
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I
    .param p5, "baseDate"    # Ljava/time/chrono/ChronoLocalDate;

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 2764
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    .line 2765
    if-lt p2, v7, :cond_11

    if-le p2, v8, :cond_2b

    .line 2766
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The minWidth must be from 1 to 10 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2768
    :cond_2b
    if-lt p3, v7, :cond_2f

    if-le p3, v8, :cond_49

    .line 2769
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The maxWidth must be from 1 to 10 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2771
    :cond_49
    if-ge p3, p2, :cond_70

    .line 2772
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Maximum width must exceed or equal the minimum width but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2773
    const-string/jumbo v2, " < "

    .line 2772
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2775
    :cond_70
    if-nez p5, :cond_9c

    .line 2776
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-nez v0, :cond_86

    .line 2777
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The base value must be within the range of the field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2779
    :cond_86
    int-to-long v0, p4

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    aget-wide v2, v2, p3

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_9c

    .line 2780
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Unable to add printer-parser as the range exceeds the capacity of an int"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2783
    :cond_9c
    return-void
.end method

.method private constructor <init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V
    .registers 13
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I
    .param p5, "baseDate"    # Ljava/time/chrono/ChronoLocalDate;
    .param p6, "subsequentWidth"    # I

    .prologue
    .line 2798
    sget-object v4, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    .line 2799
    iput p4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2800
    iput-object p5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    .line 2801
    return-void
.end method

.method synthetic constructor <init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;ILjava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;)V
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I
    .param p5, "baseDate"    # Ljava/time/chrono/ChronoLocalDate;
    .param p6, "subsequentWidth"    # I
    .param p7, "-this6"    # Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    .prologue
    invoke-direct/range {p0 .. p6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    return-void
.end method


# virtual methods
.method getValue(Ljava/time/format/DateTimePrintContext;J)J
    .registers 12
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "value"    # J

    .prologue
    .line 2805
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 2806
    .local v0, "absValue":J
    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2807
    .local v2, "baseValue":I
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v4, :cond_1e

    .line 2808
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v4

    invoke-static {v4}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v3

    .line 2809
    .local v3, "chrono":Ljava/time/chrono/Chronology;
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v3, v4}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    .line 2811
    .end local v3    # "chrono":Ljava/time/chrono/Chronology;
    :cond_1e
    int-to-long v4, v2

    cmp-long v4, p2, v4

    if-ltz v4, :cond_38

    int-to-long v4, v2

    sget-object v6, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v6, v6, v7

    add-long/2addr v4, v6

    cmp-long v4, p2, v4

    if-gez v4, :cond_38

    .line 2813
    sget-object v4, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v4, v4, v5

    rem-long v4, v0, v4

    return-wide v4

    .line 2816
    :cond_38
    sget-object v4, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    aget-wide v4, v4, v5

    rem-long v4, v0, v4

    return-wide v4
.end method

.method isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z
    .registers 3
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;

    .prologue
    .line 2888
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2889
    const/4 v0, 0x0

    return v0

    .line 2891
    :cond_8
    invoke-super {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-java_time_format_DateTimeFormatterBuilder$ReducedPrinterParser_132487(Ljava/time/format/DateTimeParseContext;JIILjava/time/chrono/Chronology;)V
    .registers 7
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "initialValue"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I
    .param p6, "_unused"    # Ljava/time/chrono/Chronology;

    .prologue
    .line 2834
    invoke-virtual/range {p0 .. p5}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->setValue(Ljava/time/format/DateTimeParseContext;JII)I

    return-void
.end method

.method setValue(Ljava/time/format/DateTimeParseContext;JII)I
    .registers 28
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .prologue
    .line 2821
    move-object/from16 v0, p0

    iget v12, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2822
    .local v12, "baseValue":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v2, :cond_34

    .line 2823
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getEffectiveChronology()Ljava/time/chrono/Chronology;

    move-result-object v13

    .line 2824
    .local v13, "chrono":Ljava/time/chrono/Chronology;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v13, v2}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v2, v3}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v12

    .line 2827
    move-wide/from16 v14, p2

    .line 2829
    .local v14, "initialValue":J
    new-instance v3, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p2

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;-><init>(IIJLjava/lang/Object;Ljava/lang/Object;)V

    .line 2828
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeParseContext;->addChronoChangedListener(Ljava/util/function/Consumer;)V

    .line 2837
    .end local v13    # "chrono":Ljava/time/chrono/Chronology;
    .end local v14    # "initialValue":J
    :cond_34
    sub-int v18, p5, p4

    .line 2838
    .local v18, "parseLen":I
    move-object/from16 v0, p0

    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_5d

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_5d

    .line 2839
    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    move-object/from16 v0, p0

    iget v3, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v20, v2, v3

    .line 2840
    .local v20, "range":J
    int-to-long v2, v12

    rem-long v16, v2, v20

    .line 2841
    .local v16, "lastPart":J
    int-to-long v2, v12

    sub-long v10, v2, v16

    .line 2842
    .local v10, "basePart":J
    if-lez v12, :cond_6e

    .line 2843
    add-long p2, p2, v10

    .line 2847
    :goto_56
    int-to-long v2, v12

    cmp-long v2, p2, v2

    if-gez v2, :cond_5d

    .line 2848
    add-long p2, p2, v20

    .line 2851
    .end local v10    # "basePart":J
    .end local v16    # "lastPart":J
    .end local v20    # "range":J
    :cond_5d
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object/from16 v2, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v2

    return v2

    .line 2845
    .restart local v10    # "basePart":J
    .restart local v16    # "lastPart":J
    .restart local v20    # "range":J
    :cond_6e
    sub-long p2, v10, p2

    goto :goto_56
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ReducedValue("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_49

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    :goto_39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_49
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_39
.end method

.method bridge synthetic withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2

    .prologue
    .line 2854
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 2861
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    if-ne v0, v6, :cond_6

    .line 2862
    return-object p0

    .line 2864
    :cond_6
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-direct/range {v0 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    return-object v0
.end method

.method bridge synthetic withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 3

    .prologue
    .line 2867
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .registers 9
    .param p1, "subsequentWidth"    # I

    .prologue
    .line 2875
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    .line 2876
    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    add-int/2addr v6, p1

    .line 2875
    invoke-direct/range {v0 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    return-object v0
.end method
