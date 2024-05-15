.class public final Ljava/time/format/DateTimeFormatterBuilder;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;,
        Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;,
        Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;,
        Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;,
        Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    }
.end annotation


# static fields
.field private static final greylist-max-o FIELD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o LENGTH_SORT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o active:Ljava/time/format/DateTimeFormatterBuilder;

.field private final greylist-max-o optional:Z

.field private greylist-max-o padNextChar:C

.field private greylist-max-o padNextWidth:I

.field private final greylist-max-o parent:Ljava/time/format/DateTimeFormatterBuilder;

.field private final greylist-max-o printerParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o valueParserIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 162
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$$ExternalSyntheticLambda0;->INSTANCE:Ljava/time/format/DateTimeFormatterBuilder$$ExternalSyntheticLambda0;

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;

    .line 1845
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    .line 1848
    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4615
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$2;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder$2;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->LENGTH_SORT:Ljava/util/Comparator;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    .line 253
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/time/format/DateTimeFormatterBuilder;Z)V
    .registers 4
    .param p1, "parent"    # Ljava/time/format/DateTimeFormatterBuilder;
    .param p2, "optional"    # Z

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 263
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    .line 264
    iput-boolean p2, p0, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    .line 265
    return-void
.end method

.method private greylist-max-o appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I
    .registers 5
    .param p1, "pp"    # Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 2014
    const-string v0, "pp"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2015
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    if-lez v1, :cond_1c

    .line 2016
    if-eqz p1, :cond_15

    .line 2017
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;

    iget-char v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    invoke-direct {v2, p1, v1, v0}, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;-><init>(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V

    move-object p1, v2

    .line 2019
    :cond_15
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v1, 0x0

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 2020
    iput-char v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 2022
    :cond_1c
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2023
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 2024
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private greylist-max-o appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "pp"    # Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 642
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    if-ltz v1, :cond_44

    .line 643
    iget v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 646
    .local v1, "activeValueParser":I
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 647
    .local v0, "basePP":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    iget v2, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v2, v3, :cond_30

    # getter for: Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;
    invoke-static {p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->access$000(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/SignStyle;

    move-result-object v2

    sget-object v3, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v2, v3, :cond_30

    .line 649
    iget v2, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v0, v2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v0

    .line 651
    invoke-virtual {p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 653
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput v1, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_3c

    .line 656
    :cond_30
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v0

    .line 658
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    iput v3, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 661
    :goto_3c
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 662
    .end local v0    # "basePP":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .end local v1    # "activeValueParser":I
    goto :goto_4a

    .line 664
    :cond_44
    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 666
    :goto_4a
    return-object p0
.end method

.method private static greylist-max-o convertStyle(Ljava/time/format/FormatStyle;)I
    .registers 2
    .param p0, "style"    # Ljava/time/format/FormatStyle;

    .line 240
    if-nez p0, :cond_4

    .line 241
    const/4 v0, -0x1

    return v0

    .line 243
    :cond_4
    invoke-virtual {p0}, Ljava/time/format/FormatStyle;->ordinal()I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getLocalizedDateTimePattern(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .param p0, "dateStyle"    # Ljava/time/format/FormatStyle;
    .param p1, "timeStyle"    # Ljava/time/format/FormatStyle;
    .param p2, "chrono"    # Ljava/time/chrono/Chronology;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 210
    const-string v0, "locale"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    const-string v0, "chrono"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    if-nez p0, :cond_17

    if-eqz p1, :cond_f

    goto :goto_17

    .line 213
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either dateStyle or timeStyle must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_17
    :goto_17
    nop

    .line 222
    invoke-interface {p2}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {p3, v0}, Llibcore/icu/ICU;->getExtendedCalendar(Ljava/util/Locale;Ljava/lang/String;)Lcom/android/icu/util/ExtendedCalendar;

    move-result-object v0

    .line 223
    .local v0, "extendedCalendar":Lcom/android/icu/util/ExtendedCalendar;
    invoke-static {p0}, Ljava/time/format/DateTimeFormatterBuilder;->convertStyle(Ljava/time/format/FormatStyle;)I

    move-result v1

    .line 224
    invoke-static {p1}, Ljava/time/format/DateTimeFormatterBuilder;->convertStyle(Ljava/time/format/FormatStyle;)I

    move-result v2

    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/android/icu/util/ExtendedCalendar;->getDateTimePattern(II)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "pattern":Ljava/lang/String;
    invoke-static {v1}, Llibcore/icu/ICU;->transformIcuDateTimePattern_forJavaTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    return-object v1
.end method

.method static synthetic blacklist lambda$static$0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    .registers 3
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 163
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 164
    .local v0, "zone":Ljava/time/ZoneId;
    if-eqz v0, :cond_12

    instance-of v1, v0, Ljava/time/ZoneOffset;

    if-nez v1, :cond_12

    move-object v1, v0

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method

.method private greylist-max-o parseField(CILjava/time/temporal/TemporalField;)V
    .registers 8
    .param p1, "cur"    # C
    .param p2, "count"    # I
    .param p3, "field"    # Ljava/time/temporal/TemporalField;

    .line 1723
    const/4 v0, 0x0

    .line 1724
    .local v0, "standalone":Z
    const-string v1, "Too many pattern letters: "

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_150

    .line 1835
    if-ne p2, v3, :cond_14c

    .line 1836
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_14f

    .line 1727
    :sswitch_f
    if-ne p2, v2, :cond_18

    .line 1728
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    invoke-virtual {p0, p3, v2, v2, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValueReduced(Ljava/time/temporal/TemporalField;IILjava/time/chrono/ChronoLocalDate;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_14f

    .line 1729
    :cond_18
    const/4 v1, 0x4

    const/16 v2, 0x13

    if-ge p2, v1, :cond_24

    .line 1730
    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v2, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_14f

    .line 1732
    :cond_24
    sget-object v1, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v2, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1734
    goto/16 :goto_14f

    .line 1736
    :sswitch_2b
    if-eq p2, v2, :cond_2e

    goto :goto_5c

    .line 1737
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid pattern \"cc\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1777
    :sswitch_36
    if-ne p2, v3, :cond_3f

    .line 1778
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_14f

    .line 1780
    :cond_3f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1801
    :sswitch_54
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, p2, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1802
    goto/16 :goto_14f

    .line 1742
    :goto_5c
    :sswitch_5c
    const/4 v0, 0x1

    goto :goto_ca

    .line 1817
    :sswitch_5e
    if-ne p2, v3, :cond_65

    .line 1818
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_14f

    .line 1819
    :cond_65
    if-ne p2, v2, :cond_6c

    .line 1820
    invoke-virtual {p0, p3, p2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_14f

    .line 1822
    :cond_6c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1784
    :sswitch_81
    packed-switch p2, :pswitch_data_1a6

    .line 1797
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1794
    :pswitch_99
    sget-object v1, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1795
    goto/16 :goto_14f

    .line 1791
    :pswitch_a0
    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1792
    goto/16 :goto_14f

    .line 1788
    :pswitch_a7
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1789
    goto/16 :goto_14f

    .line 1804
    :sswitch_ae
    if-ne p2, v3, :cond_b5

    .line 1805
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_14f

    .line 1807
    :cond_b5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1748
    :goto_ca
    :sswitch_ca
    packed-switch p2, :pswitch_data_1b4

    .line 1773
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1770
    :pswitch_e2
    if-eqz v0, :cond_e7

    sget-object v1, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    goto :goto_e9

    :cond_e7
    sget-object v1, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    :goto_e9
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1771
    goto/16 :goto_14f

    .line 1767
    :pswitch_ee
    if-eqz v0, :cond_f3

    sget-object v1, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    goto :goto_f5

    :cond_f3
    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    :goto_f5
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1768
    goto :goto_14f

    .line 1764
    :pswitch_f9
    if-eqz v0, :cond_fe

    sget-object v1, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    goto :goto_100

    :cond_fe
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    :goto_100
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1765
    goto :goto_14f

    .line 1751
    :pswitch_104
    const/16 v1, 0x63

    if-eq p1, v1, :cond_121

    const/16 v1, 0x65

    if-ne p1, v1, :cond_10d

    goto :goto_121

    .line 1753
    :cond_10d
    const/16 v1, 0x45

    if-ne p1, v1, :cond_117

    .line 1754
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_14f

    .line 1756
    :cond_117
    if-ne p2, v3, :cond_11d

    .line 1757
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_14f

    .line 1759
    :cond_11d
    invoke-virtual {p0, p3, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1762
    goto :goto_14f

    .line 1752
    :cond_121
    :goto_121
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v1, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_14f

    .line 1826
    :sswitch_12a
    if-ne p2, v3, :cond_130

    .line 1827
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_14f

    .line 1828
    :cond_130
    const/4 v2, 0x3

    if-gt p2, v2, :cond_137

    .line 1829
    invoke-virtual {p0, p3, p2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_14f

    .line 1831
    :cond_137
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1838
    :cond_14c
    invoke-virtual {p0, p3, p2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1842
    :goto_14f
    return-void

    :sswitch_data_150
    .sparse-switch
        0x44 -> :sswitch_12a
        0x45 -> :sswitch_ca
        0x46 -> :sswitch_ae
        0x47 -> :sswitch_81
        0x48 -> :sswitch_5e
        0x4b -> :sswitch_5e
        0x4c -> :sswitch_5c
        0x4d -> :sswitch_ca
        0x51 -> :sswitch_ca
        0x53 -> :sswitch_54
        0x61 -> :sswitch_36
        0x63 -> :sswitch_2b
        0x64 -> :sswitch_5e
        0x65 -> :sswitch_ca
        0x68 -> :sswitch_5e
        0x6b -> :sswitch_5e
        0x6d -> :sswitch_5e
        0x71 -> :sswitch_5c
        0x73 -> :sswitch_5e
        0x75 -> :sswitch_f
        0x79 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_1a6
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_a7
        :pswitch_a7
        :pswitch_a0
        :pswitch_99
    .end packed-switch

    :pswitch_data_1b4
    .packed-switch 0x1
        :pswitch_104
        :pswitch_104
        :pswitch_f9
        :pswitch_ee
        :pswitch_e2
    .end packed-switch
.end method

.method private greylist-max-o parsePattern(Ljava/lang/String;)V
    .registers 15
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1592
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2b9

    .line 1593
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1594
    .local v1, "cur":C
    const/16 v2, 0x61

    const/16 v3, 0x41

    const/16 v4, 0x7a

    const/16 v5, 0x5a

    const/4 v6, 0x1

    if-lt v1, v3, :cond_18

    if-le v1, v5, :cond_1c

    :cond_18
    if-lt v1, v2, :cond_20f

    if-gt v1, v4, :cond_20f

    .line 1595
    :cond_1c
    add-int/lit8 v7, v0, 0x1

    .line 1596
    .local v0, "start":I
    .local v7, "pos":I
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_2d

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v1, :cond_2d

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 1597
    :cond_2d
    sub-int v8, v7, v0

    .line 1599
    .local v8, "count":I
    const/16 v9, 0x70

    if-ne v1, v9, :cond_7a

    .line 1600
    const/4 v9, 0x0

    .line 1601
    .local v9, "pad":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_5d

    .line 1602
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1603
    if-lt v1, v3, :cond_42

    if-le v1, v5, :cond_46

    :cond_42
    if-lt v1, v2, :cond_5d

    if-gt v1, v4, :cond_5d

    .line 1604
    :cond_46
    move v9, v8

    .line 1605
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "pos":I
    .local v2, "pos":I
    move v0, v7

    .line 1606
    :goto_4a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_59

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_59

    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 1607
    :cond_59
    sub-int v3, v2, v0

    move v7, v2

    move v8, v3

    .line 1610
    .end local v2    # "pos":I
    .restart local v7    # "pos":I
    :cond_5d
    if-eqz v9, :cond_63

    .line 1614
    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->padNext(I)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_7a

    .line 1611
    :cond_63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pad letter \'p\' must be followed by valid pad pattern: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1617
    .end local v9    # "pad":I
    :cond_7a
    :goto_7a
    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/TemporalField;

    .line 1618
    .local v2, "field":Ljava/time/temporal/TemporalField;
    if-eqz v2, :cond_8d

    .line 1619
    invoke-direct {p0, v1, v8, v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseField(CILjava/time/temporal/TemporalField;)V

    goto/16 :goto_1f3

    .line 1620
    :cond_8d
    const/4 v3, 0x4

    const-string v9, "Too many pattern letters: "

    if-ne v1, v4, :cond_b9

    .line 1621
    if-gt v8, v3, :cond_a4

    .line 1623
    if-ne v8, v3, :cond_9d

    .line 1624
    sget-object v3, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1626
    :cond_9d
    sget-object v3, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1622
    :cond_a4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1628
    :cond_b9
    const/16 v4, 0x56

    const/4 v10, 0x2

    if-ne v1, v4, :cond_dc

    .line 1629
    if-ne v8, v10, :cond_c5

    .line 1632
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneId()Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1630
    :cond_c5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern letter count must be 2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1633
    :cond_dc
    const-string v4, "Z"

    const-string v11, "+0000"

    const/4 v12, 0x5

    if-ne v1, v5, :cond_113

    .line 1634
    if-ge v8, v3, :cond_ec

    .line 1635
    const-string v3, "+HHMM"

    invoke-virtual {p0, v3, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1636
    :cond_ec
    if-ne v8, v3, :cond_f5

    .line 1637
    sget-object v3, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1638
    :cond_f5
    if-ne v8, v12, :cond_fe

    .line 1639
    const-string v3, "+HH:MM:ss"

    invoke-virtual {p0, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1641
    :cond_fe
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1643
    :cond_113
    const/16 v5, 0x4f

    if-ne v1, v5, :cond_140

    .line 1644
    if-ne v8, v6, :cond_120

    .line 1645
    sget-object v3, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1646
    :cond_120
    if-ne v8, v3, :cond_129

    .line 1647
    sget-object v3, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1649
    :cond_129
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern letter count must be 1 or 4: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1651
    :cond_140
    const/16 v3, 0x58

    const/4 v5, 0x0

    if-ne v1, v3, :cond_16a

    .line 1652
    if-gt v8, v12, :cond_155

    .line 1655
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    if-ne v8, v6, :cond_14c

    goto :goto_14d

    :cond_14c
    move v5, v6

    :goto_14d
    add-int/2addr v5, v8

    aget-object v3, v3, v5

    invoke-virtual {p0, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1653
    :cond_155
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1656
    :cond_16a
    const/16 v3, 0x78

    if-ne v1, v3, :cond_19f

    .line 1657
    if-gt v8, v12, :cond_18a

    .line 1660
    if-ne v8, v6, :cond_175

    const-string v11, "+00"

    goto :goto_17c

    :cond_175
    rem-int/lit8 v3, v8, 0x2

    if-nez v3, :cond_17a

    goto :goto_17c

    :cond_17a
    const-string v11, "+00:00"

    :goto_17c
    move-object v3, v11

    .line 1661
    .local v3, "zero":Ljava/lang/String;
    sget-object v4, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    if-ne v8, v6, :cond_182

    goto :goto_183

    :cond_182
    move v5, v6

    :goto_183
    add-int/2addr v5, v8

    aget-object v4, v4, v5

    invoke-virtual {p0, v4, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1662
    .end local v3    # "zero":Ljava/lang/String;
    goto :goto_1f3

    .line 1658
    :cond_18a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1662
    :cond_19f
    const/16 v3, 0x57

    if-ne v1, v3, :cond_1c3

    .line 1664
    if-gt v8, v6, :cond_1ae

    .line 1667
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_1f3

    .line 1665
    :cond_1ae
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1668
    :cond_1c3
    const/16 v3, 0x77

    if-ne v1, v3, :cond_1e7

    .line 1670
    if-gt v8, v10, :cond_1d2

    .line 1673
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_1f3

    .line 1671
    :cond_1d2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1674
    :cond_1e7
    const/16 v3, 0x59

    if-ne v1, v3, :cond_1f8

    .line 1676
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1680
    :goto_1f3
    nop

    .end local v0    # "start":I
    .end local v2    # "field":Ljava/time/temporal/TemporalField;
    .end local v8    # "count":I
    add-int/lit8 v0, v7, -0x1

    .line 1682
    .end local v7    # "pos":I
    .local v0, "pos":I
    goto/16 :goto_29c

    .line 1678
    .local v0, "start":I
    .restart local v2    # "field":Ljava/time/temporal/TemporalField;
    .restart local v7    # "pos":I
    .restart local v8    # "count":I
    :cond_1f8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown pattern letter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1682
    .end local v2    # "field":Ljava/time/temporal/TemporalField;
    .end local v7    # "pos":I
    .end local v8    # "count":I
    .local v0, "pos":I
    :cond_20f
    const-string v2, "\'"

    const/16 v3, 0x27

    if-ne v1, v3, :cond_26f

    .line 1684
    add-int/lit8 v4, v0, 0x1

    .line 1685
    .local v0, "start":I
    .local v4, "pos":I
    :goto_217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_237

    .line 1686
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_235

    .line 1687
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_237

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_237

    .line 1688
    add-int/lit8 v4, v4, 0x1

    .line 1685
    :cond_235
    add-int/2addr v4, v6

    goto :goto_217

    .line 1694
    :cond_237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_258

    .line 1697
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1698
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_24d

    .line 1699
    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_256

    .line 1701
    :cond_24d
    const-string v3, "\'\'"

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1704
    .end local v0    # "start":I
    .end local v5    # "str":Ljava/lang/String;
    :goto_256
    move v0, v4

    goto :goto_29c

    .line 1695
    .restart local v0    # "start":I
    :cond_258
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern ends with an incomplete string literal: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1704
    .end local v4    # "pos":I
    .local v0, "pos":I
    :cond_26f
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_277

    .line 1705
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_29c

    .line 1707
    :cond_277
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_28d

    .line 1708
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-eqz v2, :cond_285

    .line 1711
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_29c

    .line 1709
    :cond_285
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Pattern invalid as it contains ] without previous ["

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1713
    :cond_28d
    const/16 v3, 0x7b

    if-eq v1, v3, :cond_29f

    const/16 v3, 0x7d

    if-eq v1, v3, :cond_29f

    const/16 v3, 0x23

    if-eq v1, v3, :cond_29f

    .line 1716
    invoke-virtual {p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1592
    .end local v1    # "cur":C
    :goto_29c
    add-int/2addr v0, v6

    goto/16 :goto_1

    .line 1714
    .restart local v1    # "cur":C
    :cond_29f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern includes reserved character: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1719
    .end local v0    # "pos":I
    .end local v1    # "cur":C
    :cond_2b9
    return-void
.end method

.method private greylist-max-o toFormatter(Ljava/util/Locale;Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;
    .registers 13
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .param p3, "chrono"    # Ljava/time/chrono/Chronology;

    .line 2088
    const-string v0, "locale"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2089
    :goto_5
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-eqz v0, :cond_f

    .line 2090
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_5

    .line 2092
    :cond_f
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 2093
    .local v2, "pp":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    sget-object v4, Ljava/time/format/DecimalStyle;->STANDARD:Ljava/time/format/DecimalStyle;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 1340
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1341
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1342
    return-object p0
.end method

.method public whitelist test-api appendChronologyId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3

    .line 1237
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1238
    return-object p0
.end method

.method public whitelist test-api appendChronologyText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;

    .line 1251
    const-string v0, "textStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1252
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1253
    return-object p0
.end method

.method public whitelist test-api appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z

    .line 704
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIZ)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 705
    return-object p0
.end method

.method public whitelist test-api appendInstant()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3

    .line 831
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 832
    return-object p0
.end method

.method public whitelist test-api appendInstant(I)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "fractionalDigits"    # I

    .line 871
    const/4 v0, -0x1

    if-lt p1, v0, :cond_10

    const/16 v0, 0x9

    if-gt p1, v0, :cond_10

    .line 874
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 875
    return-object p0

    .line 872
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The fractional digits must be from -1 to 9 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "literal"    # C

    .line 1303
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1304
    return-object p0
.end method

.method public whitelist test-api appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "literal"    # Ljava/lang/String;

    .line 1318
    const-string v0, "literal"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1319
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    .line 1320
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 1321
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_28

    .line 1323
    :cond_20
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1326
    :cond_28
    :goto_28
    return-object p0
.end method

.method public whitelist test-api appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "dateStyle"    # Ljava/time/format/FormatStyle;
    .param p2, "timeStyle"    # Ljava/time/format/FormatStyle;

    .line 1286
    if-nez p1, :cond_d

    if-eqz p2, :cond_5

    goto :goto_d

    .line 1287
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either the date or time style must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1289
    :cond_d
    :goto_d
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;

    invoke-direct {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;-><init>(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1290
    return-object p0
.end method

.method public whitelist test-api appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "style"    # Ljava/time/format/TextStyle;

    .line 965
    const-string v0, "style"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 966
    sget-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-eq p1, v0, :cond_16

    sget-object v0, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    if-ne p1, v0, :cond_e

    goto :goto_16

    .line 967
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Style must be either full or short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_16
    :goto_16
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 970
    return-object p0
.end method

.method public whitelist test-api appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "noOffsetText"    # Ljava/lang/String;

    .line 931
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 932
    return-object p0
.end method

.method public whitelist test-api appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 888
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 889
    return-object p0
.end method

.method public whitelist test-api appendOptional(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 1359
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1360
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1361
    return-object p0
.end method

.method public whitelist test-api appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1586
    const-string v0, "pattern"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1587
    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->parsePattern(Ljava/lang/String;)V

    .line 1588
    return-object p0
.end method

.method public whitelist test-api appendText(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 725
    sget-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "textStyle"    # Ljava/time/format/TextStyle;

    .line 744
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 745
    const-string v0, "textStyle"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 746
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    invoke-static {}, Ljava/time/format/DateTimeTextProvider;->getInstance()Ljava/time/format/DateTimeTextProvider;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 747
    return-object p0
.end method

.method public whitelist test-api appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 9
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .line 785
    .local p2, "textLookup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 786
    const-string v0, "textLookup"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 787
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 788
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 789
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v2, v1}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    .line 790
    .local v2, "store":Ljava/time/format/DateTimeTextProvider$LocaleStore;
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$1;

    invoke-direct {v3, p0, v2}, Ljava/time/format/DateTimeFormatterBuilder$1;-><init>(Ljava/time/format/DateTimeFormatterBuilder;Ljava/time/format/DateTimeTextProvider$LocaleStore;)V

    .line 800
    .local v3, "provider":Ljava/time/format/DateTimeTextProvider;
    new-instance v4, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    sget-object v5, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-direct {v4, p1, v5, v3}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V

    invoke-direct {p0, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 801
    return-object p0
.end method

.method public whitelist test-api appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 403
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 404
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    const/4 v2, 0x1

    const/16 v3, 0x13

    invoke-direct {v0, p1, v2, v3, v1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 405
    return-object p0
.end method

.method public whitelist test-api appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "width"    # I

    .line 457
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 458
    const/4 v0, 0x1

    if-lt p2, v0, :cond_17

    const/16 v0, 0x13

    if-gt p2, v0, :cond_17

    .line 461
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    sget-object v1, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v0, p1, p2, p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    .line 462
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 463
    return-object p0

    .line 459
    .end local v0    # "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The width must be from 1 to 19 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Ljava/time/format/SignStyle;

    .line 499
    if-ne p2, p3, :cond_b

    sget-object v0, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne p4, v0, :cond_b

    .line 500
    invoke-virtual {p0, p1, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0

    .line 502
    :cond_b
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 503
    const-string v0, "signStyle"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 504
    const/4 v0, 0x1

    if-lt p2, v0, :cond_61

    const/16 v1, 0x13

    if-gt p2, v1, :cond_61

    .line 507
    if-lt p3, v0, :cond_4a

    if-gt p3, v1, :cond_4a

    .line 510
    if-lt p3, p2, :cond_2b

    .line 514
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    .line 515
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 516
    return-object p0

    .line 511
    .end local v0    # "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maximum width must exceed or equal the minimum width but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api appendValueReduced(Ljava/time/temporal/TemporalField;III)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 12
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "width"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I

    .line 560
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 561
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;)V

    .line 562
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 563
    return-object p0
.end method

.method public whitelist test-api appendValueReduced(Ljava/time/temporal/TemporalField;IILjava/time/chrono/ChronoLocalDate;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 12
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "width"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseDate"    # Ljava/time/chrono/ChronoLocalDate;

    .line 620
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 621
    const-string v0, "baseDate"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 622
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;)V

    .line 623
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 624
    return-object p0
.end method

.method public whitelist test-api appendZoneId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1021
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    const-string v2, "ZoneId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1022
    return-object p0
.end method

.method public whitelist test-api appendZoneOrOffsetId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1133
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    const-string v2, "ZoneOrOffsetId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1134
    return-object p0
.end method

.method public whitelist test-api appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1077
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;

    const-string v2, "ZoneRegionId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1078
    return-object p0
.end method

.method public whitelist test-api appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;

    .line 1169
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljava/time/format/TextStyle;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1170
    return-object p0
.end method

.method public whitelist test-api appendZoneText(Ljava/time/format/TextStyle;Ljava/util/Set;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Set<",
            "Ljava/time/ZoneId;",
            ">;)",
            "Ljava/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .line 1211
    .local p2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/ZoneId;>;"
    const-string v0, "preferredZones"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1212
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    invoke-direct {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljava/time/format/TextStyle;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1213
    return-object p0
.end method

.method public whitelist test-api optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1993
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-eqz v1, :cond_2a

    .line 1996
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 1997
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v1, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    iget-boolean v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    invoke-direct {v0, v2, v1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 1998
    .local v0, "cpp":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    iput-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 1999
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 2000
    .end local v0    # "cpp":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    goto :goto_29

    .line 2001
    :cond_23
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 2003
    :goto_29
    return-object p0

    .line 1994
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api optionalStart()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1962
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 1963
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>(Ljava/time/format/DateTimeFormatterBuilder;Z)V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 1964
    return-object p0
.end method

.method public whitelist test-api padNext(I)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "padWidth"    # I

    .line 1906
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatterBuilder;->padNext(IC)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api padNext(IC)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "padWidth"    # I
    .param p2, "padChar"    # C

    .line 1931
    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    .line 1934
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput p1, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 1935
    iput-char p2, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 1936
    const/4 v1, -0x1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 1937
    return-object p0

    .line 1932
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The pad width must be at least one but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 307
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 308
    return-object p0
.end method

.method public whitelist test-api parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 287
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 288
    return-object p0
.end method

.method public whitelist test-api parseDefaulting(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J

    .line 378
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 379
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;

    invoke-direct {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;-><init>(Ljava/time/temporal/TemporalField;J)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 380
    return-object p0
.end method

.method public whitelist test-api parseLenient()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 345
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 346
    return-object p0
.end method

.method public whitelist test-api parseStrict()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 326
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 327
    return-object p0
.end method

.method public whitelist test-api toFormatter()Ljava/time/format/DateTimeFormatter;
    .registers 2

    .line 2045
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p1, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .param p2, "chrono"    # Ljava/time/chrono/Chronology;

    .line 2077
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2066
    sget-object v0, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method
