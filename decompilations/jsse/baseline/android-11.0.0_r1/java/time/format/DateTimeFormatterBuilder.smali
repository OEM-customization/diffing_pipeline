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

    .line 159
    sget-object v0, Ljava/time/format/-$$Lambda$DateTimeFormatterBuilder$M-GACNxm6552EiylPRPw4dyNXKo;->INSTANCE:Ljava/time/format/-$$Lambda$DateTimeFormatterBuilder$M-GACNxm6552EiylPRPw4dyNXKo;

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;

    .line 1836
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    .line 1839
    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4604
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$2;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder$2;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->LENGTH_SORT:Ljava/util/Comparator;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    .line 244
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/time/format/DateTimeFormatterBuilder;Z)V
    .registers 4
    .param p1, "parent"    # Ljava/time/format/DateTimeFormatterBuilder;
    .param p2, "optional"    # Z

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 254
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    .line 255
    iput-boolean p2, p0, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    .line 256
    return-void
.end method

.method private greylist-max-o appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I
    .registers 5
    .param p1, "pp"    # Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 2005
    const-string v0, "pp"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2006
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    if-lez v1, :cond_1c

    .line 2007
    if-eqz p1, :cond_15

    .line 2008
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;

    iget-char v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    invoke-direct {v2, p1, v1, v0}, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;-><init>(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V

    move-object p1, v2

    .line 2010
    :cond_15
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v1, 0x0

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 2011
    iput-char v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 2013
    :cond_1c
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2014
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 2015
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private greylist-max-o appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "pp"    # Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 633
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    if-ltz v1, :cond_44

    .line 634
    iget v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 637
    .local v1, "activeValueParser":I
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 638
    .local v0, "basePP":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    iget v2, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v2, v3, :cond_30

    # getter for: Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;
    invoke-static {p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->access$000(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/SignStyle;

    move-result-object v2

    sget-object v3, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v2, v3, :cond_30

    .line 640
    iget v2, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v0, v2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v0

    .line 642
    invoke-virtual {p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 644
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput v1, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_3c

    .line 647
    :cond_30
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v0

    .line 649
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    iput v3, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 652
    :goto_3c
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 653
    .end local v0    # "basePP":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .end local v1    # "activeValueParser":I
    goto :goto_4a

    .line 655
    :cond_44
    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 657
    :goto_4a
    return-object p0
.end method

.method private static greylist-max-o convertStyle(Ljava/time/format/FormatStyle;)I
    .registers 2
    .param p0, "style"    # Ljava/time/format/FormatStyle;

    .line 231
    if-nez p0, :cond_4

    .line 232
    const/4 v0, -0x1

    return v0

    .line 234
    :cond_4
    invoke-virtual {p0}, Ljava/time/format/FormatStyle;->ordinal()I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api getLocalizedDateTimePattern(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p0, "dateStyle"    # Ljava/time/format/FormatStyle;
    .param p1, "timeStyle"    # Ljava/time/format/FormatStyle;
    .param p2, "chrono"    # Ljava/time/chrono/Chronology;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 207
    const-string v0, "locale"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    const-string v0, "chrono"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    if-nez p0, :cond_17

    if-eqz p1, :cond_f

    goto :goto_17

    .line 210
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either dateStyle or timeStyle must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_17
    :goto_17
    nop

    .line 219
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-interface {p2}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {p0}, Ljava/time/format/DateTimeFormatterBuilder;->convertStyle(Ljava/time/format/FormatStyle;)I

    move-result v2

    invoke-static {p1}, Ljava/time/format/DateTimeFormatterBuilder;->convertStyle(Ljava/time/format/FormatStyle;)I

    move-result v3

    .line 218
    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/Calendar;->getDateTimeFormatString(Landroid/icu/util/ULocale;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "pattern":Ljava/lang/String;
    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    .registers 3
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 160
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 161
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
    .registers 12
    .param p1, "cur"    # C
    .param p2, "count"    # I
    .param p3, "field"    # Ljava/time/temporal/TemporalField;

    .line 1714
    const/4 v0, 0x0

    .line 1715
    .local v0, "standalone":Z
    const/16 v1, 0x51

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string v5, "Too many pattern letters: "

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq p1, v1, :cond_12a

    const/16 v1, 0x53

    if-eq p1, v1, :cond_122

    const/16 v1, 0x61

    if-eq p1, v1, :cond_104

    const/16 v1, 0x68

    if-eq p1, v1, :cond_e1

    const/16 v1, 0x6b

    if-eq p1, v1, :cond_e1

    const/16 v1, 0x6d

    if-eq p1, v1, :cond_e1

    const/16 v1, 0x71

    if-eq p1, v1, :cond_df

    const/16 v1, 0x73

    if-eq p1, v1, :cond_e1

    const/16 v1, 0x75

    if-eq p1, v1, :cond_c4

    const/16 v1, 0x79

    if-eq p1, v1, :cond_c4

    packed-switch p1, :pswitch_data_190

    packed-switch p1, :pswitch_data_19e

    packed-switch p1, :pswitch_data_1a8

    .line 1826
    if-ne p2, v7, :cond_40

    .line 1827
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_18f

    .line 1829
    :cond_40
    invoke-virtual {p0, p3, p2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_18f

    .line 1727
    :pswitch_45
    if-eq p2, v6, :cond_49

    goto/16 :goto_df

    .line 1728
    :cond_49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid pattern \"cc\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1775
    :pswitch_51
    if-eq p2, v7, :cond_7e

    if-eq p2, v6, :cond_7e

    if-eq p2, v4, :cond_7e

    if-eq p2, v3, :cond_77

    if-ne p2, v2, :cond_62

    .line 1785
    sget-object v1, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1786
    goto/16 :goto_18f

    .line 1788
    :cond_62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1782
    :cond_77
    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1783
    goto/16 :goto_18f

    .line 1779
    :cond_7e
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1780
    goto/16 :goto_18f

    .line 1795
    :pswitch_85
    if-ne p2, v7, :cond_8c

    .line 1796
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_18f

    .line 1798
    :cond_8c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1817
    :pswitch_a1
    if-ne p2, v7, :cond_a8

    .line 1818
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_18f

    .line 1819
    :cond_a8
    if-gt p2, v4, :cond_af

    .line 1820
    invoke-virtual {p0, p3, p2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_18f

    .line 1822
    :cond_af
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1718
    :cond_c4
    if-ne p2, v6, :cond_cd

    .line 1719
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    invoke-virtual {p0, p3, v6, v6, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValueReduced(Ljava/time/temporal/TemporalField;IILjava/time/chrono/ChronoLocalDate;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_18f

    .line 1720
    :cond_cd
    const/16 v1, 0x13

    if-ge p2, v3, :cond_d8

    .line 1721
    sget-object v2, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_18f

    .line 1723
    :cond_d8
    sget-object v2, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1725
    goto/16 :goto_18f

    .line 1733
    :cond_df
    :goto_df
    :pswitch_df
    const/4 v0, 0x1

    goto :goto_12a

    .line 1808
    :cond_e1
    :pswitch_e1
    if-ne p2, v7, :cond_e8

    .line 1809
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_18f

    .line 1810
    :cond_e8
    if-ne p2, v6, :cond_ef

    .line 1811
    invoke-virtual {p0, p3, p2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_18f

    .line 1813
    :cond_ef
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1768
    :cond_104
    if-ne p2, v7, :cond_10d

    .line 1769
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_18f

    .line 1771
    :cond_10d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1792
    :cond_122
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, p2, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1793
    goto/16 :goto_18f

    .line 1739
    :cond_12a
    :goto_12a
    :pswitch_12a
    if-eq p2, v7, :cond_16a

    if-eq p2, v6, :cond_16a

    if-eq p2, v4, :cond_15f

    if-eq p2, v3, :cond_154

    if-ne p2, v2, :cond_13f

    .line 1761
    if-eqz v0, :cond_139

    sget-object v1, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    goto :goto_13b

    :cond_139
    sget-object v1, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    :goto_13b
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1762
    goto :goto_18f

    .line 1764
    :cond_13f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1758
    :cond_154
    if-eqz v0, :cond_159

    sget-object v1, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    goto :goto_15b

    :cond_159
    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    :goto_15b
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1759
    goto :goto_18f

    .line 1755
    :cond_15f
    if-eqz v0, :cond_164

    sget-object v1, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    goto :goto_166

    :cond_164
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    :goto_166
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1756
    goto :goto_18f

    .line 1742
    :cond_16a
    const/16 v1, 0x63

    if-eq p1, v1, :cond_187

    const/16 v1, 0x65

    if-ne p1, v1, :cond_173

    goto :goto_187

    .line 1744
    :cond_173
    const/16 v1, 0x45

    if-ne p1, v1, :cond_17d

    .line 1745
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_18f

    .line 1747
    :cond_17d
    if-ne p2, v7, :cond_183

    .line 1748
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_18f

    .line 1750
    :cond_183
    invoke-virtual {p0, p3, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1753
    goto :goto_18f

    .line 1743
    :cond_187
    :goto_187
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v1, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1833
    :goto_18f
    return-void

    :pswitch_data_190
    .packed-switch 0x44
        :pswitch_a1
        :pswitch_12a
        :pswitch_85
        :pswitch_51
        :pswitch_e1
    .end packed-switch

    :pswitch_data_19e
    .packed-switch 0x4b
        :pswitch_e1
        :pswitch_df
        :pswitch_12a
    .end packed-switch

    :pswitch_data_1a8
    .packed-switch 0x63
        :pswitch_45
        :pswitch_e1
        :pswitch_12a
    .end packed-switch
.end method

.method private greylist-max-o parsePattern(Ljava/lang/String;)V
    .registers 15
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1583
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2b9

    .line 1584
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1585
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

    .line 1586
    :cond_1c
    add-int/lit8 v7, v0, 0x1

    .line 1587
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

    .line 1588
    :cond_2d
    sub-int v8, v7, v0

    .line 1590
    .local v8, "count":I
    const/16 v9, 0x70

    if-ne v1, v9, :cond_7a

    .line 1591
    const/4 v9, 0x0

    .line 1592
    .local v9, "pad":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_5d

    .line 1593
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1594
    if-lt v1, v3, :cond_42

    if-le v1, v5, :cond_46

    :cond_42
    if-lt v1, v2, :cond_5d

    if-gt v1, v4, :cond_5d

    .line 1595
    :cond_46
    move v9, v8

    .line 1596
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "pos":I
    .local v2, "pos":I
    move v0, v7

    .line 1597
    :goto_4a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_59

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_59

    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 1598
    :cond_59
    sub-int v3, v2, v0

    move v7, v2

    move v8, v3

    .line 1601
    .end local v2    # "pos":I
    .restart local v7    # "pos":I
    :cond_5d
    if-eqz v9, :cond_63

    .line 1605
    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->padNext(I)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_7a

    .line 1602
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

    .line 1608
    .end local v9    # "pad":I
    :cond_7a
    :goto_7a
    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/TemporalField;

    .line 1609
    .local v2, "field":Ljava/time/temporal/TemporalField;
    if-eqz v2, :cond_8d

    .line 1610
    invoke-direct {p0, v1, v8, v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseField(CILjava/time/temporal/TemporalField;)V

    goto/16 :goto_1f3

    .line 1611
    :cond_8d
    const/4 v3, 0x4

    const-string v9, "Too many pattern letters: "

    if-ne v1, v4, :cond_b9

    .line 1612
    if-gt v8, v3, :cond_a4

    .line 1614
    if-ne v8, v3, :cond_9d

    .line 1615
    sget-object v3, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1617
    :cond_9d
    sget-object v3, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1613
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

    .line 1619
    :cond_b9
    const/16 v4, 0x56

    const/4 v10, 0x2

    if-ne v1, v4, :cond_dc

    .line 1620
    if-ne v8, v10, :cond_c5

    .line 1623
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneId()Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1621
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

    .line 1624
    :cond_dc
    const-string v4, "Z"

    const-string v11, "+0000"

    const/4 v12, 0x5

    if-ne v1, v5, :cond_113

    .line 1625
    if-ge v8, v3, :cond_ec

    .line 1626
    const-string v3, "+HHMM"

    invoke-virtual {p0, v3, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1627
    :cond_ec
    if-ne v8, v3, :cond_f5

    .line 1628
    sget-object v3, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1629
    :cond_f5
    if-ne v8, v12, :cond_fe

    .line 1630
    const-string v3, "+HH:MM:ss"

    invoke-virtual {p0, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1632
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

    .line 1634
    :cond_113
    const/16 v5, 0x4f

    if-ne v1, v5, :cond_140

    .line 1635
    if-ne v8, v6, :cond_120

    .line 1636
    sget-object v3, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1637
    :cond_120
    if-ne v8, v3, :cond_129

    .line 1638
    sget-object v3, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1f3

    .line 1640
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

    .line 1642
    :cond_140
    const/16 v3, 0x58

    const/4 v5, 0x0

    if-ne v1, v3, :cond_16a

    .line 1643
    if-gt v8, v12, :cond_155

    .line 1646
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

    .line 1644
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

    .line 1647
    :cond_16a
    const/16 v3, 0x78

    if-ne v1, v3, :cond_19f

    .line 1648
    if-gt v8, v12, :cond_18a

    .line 1651
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

    .line 1652
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

    .line 1653
    .end local v3    # "zero":Ljava/lang/String;
    goto :goto_1f3

    .line 1649
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

    .line 1653
    :cond_19f
    const/16 v3, 0x57

    if-ne v1, v3, :cond_1c3

    .line 1655
    if-gt v8, v6, :cond_1ae

    .line 1658
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_1f3

    .line 1656
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

    .line 1659
    :cond_1c3
    const/16 v3, 0x77

    if-ne v1, v3, :cond_1e7

    .line 1661
    if-gt v8, v10, :cond_1d2

    .line 1664
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_1f3

    .line 1662
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

    .line 1665
    :cond_1e7
    const/16 v3, 0x59

    if-ne v1, v3, :cond_1f8

    .line 1667
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1671
    :goto_1f3
    nop

    .end local v0    # "start":I
    .end local v2    # "field":Ljava/time/temporal/TemporalField;
    .end local v8    # "count":I
    add-int/lit8 v0, v7, -0x1

    .line 1673
    .end local v7    # "pos":I
    .local v0, "pos":I
    goto/16 :goto_29c

    .line 1669
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

    .line 1673
    .end local v2    # "field":Ljava/time/temporal/TemporalField;
    .end local v7    # "pos":I
    .end local v8    # "count":I
    .local v0, "pos":I
    :cond_20f
    const-string v2, "\'"

    const/16 v3, 0x27

    if-ne v1, v3, :cond_26f

    .line 1675
    add-int/lit8 v4, v0, 0x1

    .line 1676
    .local v0, "start":I
    .local v4, "pos":I
    :goto_217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_237

    .line 1677
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_235

    .line 1678
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_237

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_237

    .line 1679
    add-int/lit8 v4, v4, 0x1

    .line 1676
    :cond_235
    add-int/2addr v4, v6

    goto :goto_217

    .line 1685
    :cond_237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_258

    .line 1688
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1689
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_24d

    .line 1690
    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_256

    .line 1692
    :cond_24d
    const-string v3, "\'\'"

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1695
    .end local v0    # "start":I
    .end local v5    # "str":Ljava/lang/String;
    :goto_256
    move v0, v4

    goto :goto_29c

    .line 1686
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

    .line 1695
    .end local v4    # "pos":I
    .local v0, "pos":I
    :cond_26f
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_277

    .line 1696
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_29c

    .line 1698
    :cond_277
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_28d

    .line 1699
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-eqz v2, :cond_285

    .line 1702
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_29c

    .line 1700
    :cond_285
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Pattern invalid as it contains ] without previous ["

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1704
    :cond_28d
    const/16 v3, 0x7b

    if-eq v1, v3, :cond_29f

    const/16 v3, 0x7d

    if-eq v1, v3, :cond_29f

    const/16 v3, 0x23

    if-eq v1, v3, :cond_29f

    .line 1707
    invoke-virtual {p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1583
    .end local v1    # "cur":C
    :goto_29c
    add-int/2addr v0, v6

    goto/16 :goto_1

    .line 1705
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

    .line 1710
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

    .line 2079
    const-string v0, "locale"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2080
    :goto_5
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-eqz v0, :cond_f

    .line 2081
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_5

    .line 2083
    :cond_f
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 2084
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
.method public whitelist core-platform-api test-api append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 1331
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1332
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1333
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendChronologyId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3

    .line 1228
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1229
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendChronologyText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;

    .line 1242
    const-string v0, "textStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1243
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1244
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z

    .line 695
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIZ)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 696
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendInstant()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3

    .line 822
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 823
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendInstant(I)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "fractionalDigits"    # I

    .line 862
    const/4 v0, -0x1

    if-lt p1, v0, :cond_10

    const/16 v0, 0x9

    if-gt p1, v0, :cond_10

    .line 865
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 866
    return-object p0

    .line 863
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

.method public whitelist core-platform-api test-api appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "literal"    # C

    .line 1294
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1295
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "literal"    # Ljava/lang/String;

    .line 1309
    const-string v0, "literal"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    .line 1311
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 1312
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_28

    .line 1314
    :cond_20
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1317
    :cond_28
    :goto_28
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "dateStyle"    # Ljava/time/format/FormatStyle;
    .param p2, "timeStyle"    # Ljava/time/format/FormatStyle;

    .line 1277
    if-nez p1, :cond_d

    if-eqz p2, :cond_5

    goto :goto_d

    .line 1278
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either the date or time style must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1280
    :cond_d
    :goto_d
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;

    invoke-direct {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;-><init>(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1281
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "style"    # Ljava/time/format/TextStyle;

    .line 956
    const-string v0, "style"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 957
    sget-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-eq p1, v0, :cond_16

    sget-object v0, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    if-ne p1, v0, :cond_e

    goto :goto_16

    .line 958
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Style must be either full or short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_16
    :goto_16
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 961
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "noOffsetText"    # Ljava/lang/String;

    .line 922
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 923
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 879
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 880
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendOptional(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 1350
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1351
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1352
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1577
    const-string v0, "pattern"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1578
    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->parsePattern(Ljava/lang/String;)V

    .line 1579
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendText(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 716
    sget-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "textStyle"    # Ljava/time/format/TextStyle;

    .line 735
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 736
    const-string v0, "textStyle"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 737
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    invoke-static {}, Ljava/time/format/DateTimeTextProvider;->getInstance()Ljava/time/format/DateTimeTextProvider;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 738
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;
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

    .line 776
    .local p2, "textLookup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 777
    const-string v0, "textLookup"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 778
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 779
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 780
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v2, v1}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    .line 781
    .local v2, "store":Ljava/time/format/DateTimeTextProvider$LocaleStore;
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$1;

    invoke-direct {v3, p0, v2}, Ljava/time/format/DateTimeFormatterBuilder$1;-><init>(Ljava/time/format/DateTimeFormatterBuilder;Ljava/time/format/DateTimeTextProvider$LocaleStore;)V

    .line 791
    .local v3, "provider":Ljava/time/format/DateTimeTextProvider;
    new-instance v4, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    sget-object v5, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-direct {v4, p1, v5, v3}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V

    invoke-direct {p0, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 792
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 394
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 395
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    const/4 v2, 0x1

    const/16 v3, 0x13

    invoke-direct {v0, p1, v2, v3, v1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 396
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "width"    # I

    .line 448
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 449
    const/4 v0, 0x1

    if-lt p2, v0, :cond_17

    const/16 v0, 0x13

    if-gt p2, v0, :cond_17

    .line 452
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    sget-object v1, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v0, p1, p2, p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    .line 453
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 454
    return-object p0

    .line 450
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

.method public whitelist core-platform-api test-api appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Ljava/time/format/SignStyle;

    .line 490
    if-ne p2, p3, :cond_b

    sget-object v0, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne p4, v0, :cond_b

    .line 491
    invoke-virtual {p0, p1, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0

    .line 493
    :cond_b
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 494
    const-string v0, "signStyle"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 495
    const/4 v0, 0x1

    if-lt p2, v0, :cond_61

    const/16 v1, 0x13

    if-gt p2, v1, :cond_61

    .line 498
    if-lt p3, v0, :cond_4a

    if-gt p3, v1, :cond_4a

    .line 501
    if-lt p3, p2, :cond_2b

    .line 505
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    .line 506
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 507
    return-object p0

    .line 502
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

    .line 499
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

    .line 496
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

.method public whitelist core-platform-api test-api appendValueReduced(Ljava/time/temporal/TemporalField;III)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 12
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "width"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I

    .line 551
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 552
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;)V

    .line 553
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 554
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendValueReduced(Ljava/time/temporal/TemporalField;IILjava/time/chrono/ChronoLocalDate;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 12
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "width"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseDate"    # Ljava/time/chrono/ChronoLocalDate;

    .line 611
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 612
    const-string v0, "baseDate"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 613
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;)V

    .line 614
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 615
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendZoneId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1012
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    const-string v2, "ZoneId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1013
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendZoneOrOffsetId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1124
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    const-string v2, "ZoneOrOffsetId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1125
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1068
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;

    const-string v2, "ZoneRegionId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1069
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;

    .line 1160
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljava/time/format/TextStyle;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1161
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendZoneText(Ljava/time/format/TextStyle;Ljava/util/Set;)Ljava/time/format/DateTimeFormatterBuilder;
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

    .line 1202
    .local p2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/ZoneId;>;"
    const-string v0, "preferredZones"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1203
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    invoke-direct {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljava/time/format/TextStyle;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1204
    return-object p0
.end method

.method public whitelist core-platform-api test-api optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1984
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-eqz v1, :cond_2a

    .line 1987
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 1988
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v1, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    iget-boolean v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    invoke-direct {v0, v2, v1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 1989
    .local v0, "cpp":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    iput-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 1990
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1991
    .end local v0    # "cpp":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    goto :goto_29

    .line 1992
    :cond_23
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 1994
    :goto_29
    return-object p0

    .line 1985
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api optionalStart()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1953
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 1954
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>(Ljava/time/format/DateTimeFormatterBuilder;Z)V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 1955
    return-object p0
.end method

.method public whitelist core-platform-api test-api padNext(I)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "padWidth"    # I

    .line 1897
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatterBuilder;->padNext(IC)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api padNext(IC)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "padWidth"    # I
    .param p2, "padChar"    # C

    .line 1922
    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    .line 1925
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput p1, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 1926
    iput-char p2, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 1927
    const/4 v1, -0x1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 1928
    return-object p0

    .line 1923
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

.method public whitelist core-platform-api test-api parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 298
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 299
    return-object p0
.end method

.method public whitelist core-platform-api test-api parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 278
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 279
    return-object p0
.end method

.method public whitelist core-platform-api test-api parseDefaulting(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J

    .line 369
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;

    invoke-direct {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;-><init>(Ljava/time/temporal/TemporalField;J)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 371
    return-object p0
.end method

.method public whitelist core-platform-api test-api parseLenient()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 336
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 337
    return-object p0
.end method

.method public whitelist core-platform-api test-api parseStrict()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 317
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 318
    return-object p0
.end method

.method public whitelist core-platform-api test-api toFormatter()Ljava/time/format/DateTimeFormatter;
    .registers 2

    .line 2036
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

    .line 2068
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2057
    sget-object v0, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method
