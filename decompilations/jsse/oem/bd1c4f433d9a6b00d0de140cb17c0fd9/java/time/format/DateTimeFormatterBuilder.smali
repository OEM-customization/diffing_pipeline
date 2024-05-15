.class public final Ljava/time/format/DateTimeFormatterBuilder;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeFormatterBuilder$1;,
        Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;,
        Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;,
        Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;,
        Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;,
        Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
    }
.end annotation


# static fields
.field private static final FIELD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field static final LENGTH_SORT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private active:Ljava/time/format/DateTimeFormatterBuilder;

.field private final optional:Z

.field private padNextChar:C

.field private padNextWidth:I

.field private final parent:Ljava/time/format/DateTimeFormatterBuilder;

.field private final printerParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;"
        }
    .end annotation
.end field

.field private valueParserIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    sget-object v0, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;->$INST$2:Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;

    .line 160
    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;

    .line 1833
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    .line 1836
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4552
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$1;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder$1;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->LENGTH_SORT:Ljava/util/Comparator;

    .line 155
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    .line 241
    return-void
.end method

.method private constructor <init>(Ljava/time/format/DateTimeFormatterBuilder;Z)V
    .registers 4
    .param p1, "parent"    # Ljava/time/format/DateTimeFormatterBuilder;
    .param p2, "optional"    # Z

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 251
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    .line 252
    iput-boolean p2, p0, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    .line 253
    return-void
.end method

.method private appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I
    .registers 6
    .param p1, "pp"    # Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .prologue
    const/4 v3, 0x0

    .line 2002
    const-string/jumbo v1, "pp"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2003
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    if-lez v1, :cond_25

    .line 2004
    if-eqz p1, :cond_1d

    .line 2005
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-char v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    invoke-direct {v0, p1, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;-><init>(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V

    .end local p1    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    move-object p1, v0

    .line 2007
    .end local v0    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .restart local p1    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_1d
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput v3, v1, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 2008
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput-char v3, v1, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 2010
    :cond_25
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2011
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v2, -0x1

    iput v2, v1, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 2012
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "pp"    # Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .prologue
    .line 630
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    if-ltz v2, :cond_48

    .line 631
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v0, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 634
    .local v0, "activeValueParser":I
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 635
    .local v1, "basePP":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    iget v2, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v2, v3, :cond_3b

    invoke-static {p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->-get0(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/SignStyle;

    move-result-object v2

    sget-object v3, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v2, v3, :cond_3b

    .line 637
    iget v2, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    .line 639
    invoke-virtual {p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 641
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput v0, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 649
    :goto_33
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 654
    .end local v0    # "activeValueParser":I
    .end local v1    # "basePP":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :goto_3a
    return-object p0

    .line 644
    .restart local v0    # "activeValueParser":I
    .restart local v1    # "basePP":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_3b
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    .line 646
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    iput v3, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_33

    .line 652
    .end local v0    # "activeValueParser":I
    .end local v1    # "basePP":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_48
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    iput v3, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_3a
.end method

.method private static convertStyle(Ljava/time/format/FormatStyle;)I
    .registers 2
    .param p0, "style"    # Ljava/time/format/FormatStyle;

    .prologue
    .line 228
    if-nez p0, :cond_4

    .line 229
    const/4 v0, -0x1

    return v0

    .line 231
    :cond_4
    invoke-virtual {p0}, Ljava/time/format/FormatStyle;->ordinal()I

    move-result v0

    return v0
.end method

.method public static getLocalizedDateTimePattern(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .registers 9
    .param p0, "dateStyle"    # Ljava/time/format/FormatStyle;
    .param p1, "timeStyle"    # Ljava/time/format/FormatStyle;
    .param p2, "chrono"    # Ljava/time/chrono/Chronology;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 208
    const-string/jumbo v1, "locale"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    const-string/jumbo v1, "chrono"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    if-nez p0, :cond_19

    if-nez p1, :cond_19

    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Either dateStyle or timeStyle must be non-null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_19
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-interface {p2}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {p0}, Ljava/time/format/DateTimeFormatterBuilder;->convertStyle(Ljava/time/format/FormatStyle;)I

    move-result v3

    invoke-static {p1}, Ljava/time/format/DateTimeFormatterBuilder;->convertStyle(Ljava/time/format/FormatStyle;)I

    move-result v4

    .line 215
    invoke-static {v1, v2, v3, v4}, Landroid/icu/util/Calendar;->getDateTimeFormatString(Landroid/icu/util/ULocale;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "pattern":Ljava/lang/String;
    return-object v0
.end method

.method static synthetic lambda$-java_time_format_DateTimeFormatterBuilder_6842(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    .registers 4
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 162
    .local v0, "zone":Ljava/time/ZoneId;
    if-eqz v0, :cond_12

    instance-of v2, v0, Ljava/time/ZoneOffset;

    if-nez v2, :cond_12

    .end local v0    # "zone":Ljava/time/ZoneId;
    :goto_11
    return-object v0

    .restart local v0    # "zone":Ljava/time/ZoneId;
    :cond_12
    move-object v0, v1

    goto :goto_11
.end method

.method private parseField(CILjava/time/temporal/TemporalField;)V
    .registers 9
    .param p1, "cur"    # C
    .param p2, "count"    # I
    .param p3, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const/16 v4, 0x13

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1711
    const/4 v0, 0x0

    .line 1712
    .local v0, "standalone":Z
    sparse-switch p1, :sswitch_data_16a

    .line 1823
    if-ne p2, v2, :cond_164

    .line 1824
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1830
    :goto_d
    return-void

    .line 1715
    :sswitch_e
    if-ne p2, v3, :cond_16

    .line 1716
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    invoke-virtual {p0, p3, v3, v3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValueReduced(Ljava/time/temporal/TemporalField;IILjava/time/chrono/ChronoLocalDate;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_d

    .line 1717
    :cond_16
    const/4 v1, 0x4

    if-ge p2, v1, :cond_1f

    .line 1718
    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v4, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_d

    .line 1720
    :cond_1f
    sget-object v1, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v4, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_d

    .line 1724
    :sswitch_25
    if-ne p2, v3, :cond_30

    .line 1725
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid pattern \"cc\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1730
    :cond_30
    :sswitch_30
    const/4 v0, 0x1

    .line 1736
    :sswitch_31
    packed-switch p2, :pswitch_data_1c0

    .line 1761
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many pattern letters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1739
    :pswitch_4e
    const/16 v1, 0x63

    if-eq p1, v1, :cond_56

    const/16 v1, 0x65

    if-ne p1, v1, :cond_5f

    .line 1740
    :cond_56
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v1, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_d

    .line 1741
    :cond_5f
    const/16 v1, 0x45

    if-ne p1, v1, :cond_69

    .line 1742
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_d

    .line 1744
    :cond_69
    if-ne p2, v2, :cond_6f

    .line 1745
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_d

    .line 1747
    :cond_6f
    invoke-virtual {p0, p3, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_d

    .line 1752
    :pswitch_73
    if-eqz v0, :cond_7b

    sget-object v1, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    :goto_77
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_d

    :cond_7b
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    goto :goto_77

    .line 1755
    :pswitch_7e
    if-eqz v0, :cond_86

    sget-object v1, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    :goto_82
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_d

    :cond_86
    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    goto :goto_82

    .line 1758
    :pswitch_89
    if-eqz v0, :cond_92

    sget-object v1, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    :goto_8d
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_d

    :cond_92
    sget-object v1, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    goto :goto_8d

    .line 1765
    :sswitch_95
    if-ne p2, v2, :cond_9e

    .line 1766
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_d

    .line 1768
    :cond_9e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many pattern letters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1772
    :sswitch_b8
    packed-switch p2, :pswitch_data_1ce

    .line 1785
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many pattern letters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1776
    :pswitch_d5
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_d

    .line 1779
    :pswitch_dc
    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_d

    .line 1782
    :pswitch_e3
    sget-object v1, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_d

    .line 1789
    :sswitch_ea
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, p2, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_d

    .line 1792
    :sswitch_f2
    if-ne p2, v2, :cond_f9

    .line 1793
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_d

    .line 1795
    :cond_f9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many pattern letters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1805
    :sswitch_113
    if-ne p2, v2, :cond_11a

    .line 1806
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_d

    .line 1807
    :cond_11a
    if-ne p2, v3, :cond_121

    .line 1808
    invoke-virtual {p0, p3, p2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_d

    .line 1810
    :cond_121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many pattern letters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1814
    :sswitch_13b
    if-ne p2, v2, :cond_142

    .line 1815
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_d

    .line 1816
    :cond_142
    const/4 v1, 0x3

    if-gt p2, v1, :cond_14a

    .line 1817
    invoke-virtual {p0, p3, p2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_d

    .line 1819
    :cond_14a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many pattern letters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1826
    :cond_164
    invoke-virtual {p0, p3, p2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_d

    .line 1712
    nop

    :sswitch_data_16a
    .sparse-switch
        0x44 -> :sswitch_13b
        0x45 -> :sswitch_31
        0x46 -> :sswitch_f2
        0x47 -> :sswitch_b8
        0x48 -> :sswitch_113
        0x4b -> :sswitch_113
        0x4c -> :sswitch_30
        0x4d -> :sswitch_31
        0x51 -> :sswitch_31
        0x53 -> :sswitch_ea
        0x61 -> :sswitch_95
        0x63 -> :sswitch_25
        0x64 -> :sswitch_113
        0x65 -> :sswitch_31
        0x68 -> :sswitch_113
        0x6b -> :sswitch_113
        0x6d -> :sswitch_113
        0x71 -> :sswitch_30
        0x73 -> :sswitch_113
        0x75 -> :sswitch_e
        0x79 -> :sswitch_e
    .end sparse-switch

    .line 1736
    :pswitch_data_1c0
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4e
        :pswitch_73
        :pswitch_7e
        :pswitch_89
    .end packed-switch

    .line 1772
    :pswitch_data_1ce
    .packed-switch 0x1
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
        :pswitch_dc
        :pswitch_e3
    .end packed-switch
.end method

.method private parsePattern(Ljava/lang/String;)V
    .registers 14
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1580
    const/4 v4, 0x0

    .local v4, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_31c

    .line 1581
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1582
    .local v1, "cur":C
    const/16 v9, 0x41

    if-lt v1, v9, :cond_25

    const/16 v9, 0x5a

    if-gt v1, v9, :cond_25

    .line 1583
    :cond_13
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .local v5, "pos":I
    move v6, v4

    .line 1584
    .local v6, "start":I
    :goto_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_59

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v1, :cond_59

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 1582
    .end local v5    # "pos":I
    .end local v6    # "start":I
    .restart local v4    # "pos":I
    :cond_25
    const/16 v9, 0x61

    if-lt v1, v9, :cond_2d

    const/16 v9, 0x7a

    if-le v1, v9, :cond_13

    .line 1670
    :cond_2d
    const/16 v9, 0x27

    if-ne v1, v9, :cond_2c9

    .line 1672
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    move v6, v4

    .line 1673
    .restart local v6    # "start":I
    :goto_34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_285

    .line 1674
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x27

    if-ne v9, v10, :cond_56

    .line 1675
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_285

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x27

    if-ne v9, v10, :cond_285

    .line 1676
    add-int/lit8 v5, v5, 0x1

    .line 1673
    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 1585
    :cond_59
    sub-int v0, v5, v4

    .line 1587
    .local v0, "count":I
    const/16 v9, 0x70

    if-ne v1, v9, :cond_320

    .line 1588
    const/4 v3, 0x0

    .line 1589
    .local v3, "pad":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_31d

    .line 1590
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1591
    const/16 v9, 0x41

    if-lt v1, v9, :cond_85

    const/16 v9, 0x5a

    if-gt v1, v9, :cond_85

    .line 1592
    :cond_72
    move v3, v0

    .line 1593
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    move v6, v5

    .line 1594
    :goto_76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_aa

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v1, :cond_aa

    add-int/lit8 v4, v4, 0x1

    goto :goto_76

    .line 1591
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :cond_85
    const/16 v9, 0x61

    if-lt v1, v9, :cond_8d

    const/16 v9, 0x7a

    if-le v1, v9, :cond_72

    :cond_8d
    move v4, v5

    .line 1598
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    :goto_8e
    if-nez v3, :cond_ad

    .line 1599
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 1600
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Pad letter \'p\' must be followed by valid pad pattern: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1599
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1595
    :cond_aa
    sub-int v0, v4, v5

    goto :goto_8e

    .line 1602
    :cond_ad
    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->padNext(I)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1605
    .end local v3    # "pad":I
    :goto_b0
    sget-object v9, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/TemporalField;

    .line 1606
    .local v2, "field":Ljava/time/temporal/TemporalField;
    if-eqz v2, :cond_c7

    .line 1607
    invoke-direct {p0, v1, v0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseField(CILjava/time/temporal/TemporalField;)V

    .line 1668
    :goto_c1
    add-int/lit8 v4, v4, -0x1

    .line 1580
    .end local v0    # "count":I
    .end local v2    # "field":Ljava/time/temporal/TemporalField;
    .end local v6    # "start":I
    :goto_c3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1608
    .restart local v0    # "count":I
    .restart local v2    # "field":Ljava/time/temporal/TemporalField;
    .restart local v6    # "start":I
    :cond_c7
    const/16 v9, 0x7a

    if-ne v1, v9, :cond_f7

    .line 1609
    const/4 v9, 0x4

    if-le v0, v9, :cond_e8

    .line 1610
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1611
    :cond_e8
    const/4 v9, 0x4

    if-ne v0, v9, :cond_f1

    .line 1612
    sget-object v9, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_c1

    .line 1614
    :cond_f1
    sget-object v9, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_c1

    .line 1616
    :cond_f7
    const/16 v9, 0x56

    if-ne v1, v9, :cond_11c

    .line 1617
    const/4 v9, 0x2

    if-eq v0, v9, :cond_118

    .line 1618
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Pattern letter count must be 2: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1620
    :cond_118
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneId()Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_c1

    .line 1621
    :cond_11c
    const/16 v9, 0x5a

    if-ne v1, v9, :cond_15e

    .line 1622
    const/4 v9, 0x4

    if-ge v0, v9, :cond_12d

    .line 1623
    const-string/jumbo v9, "+HHMM"

    const-string/jumbo v10, "+0000"

    invoke-virtual {p0, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_c1

    .line 1624
    :cond_12d
    const/4 v9, 0x4

    if-ne v0, v9, :cond_136

    .line 1625
    sget-object v9, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_c1

    .line 1626
    :cond_136
    const/4 v9, 0x5

    if-ne v0, v9, :cond_144

    .line 1627
    const-string/jumbo v9, "+HH:MM:ss"

    const-string/jumbo v10, "Z"

    invoke-virtual {p0, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_c1

    .line 1629
    :cond_144
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1631
    :cond_15e
    const/16 v9, 0x4f

    if-ne v1, v9, :cond_190

    .line 1632
    const/4 v9, 0x1

    if-ne v0, v9, :cond_16c

    .line 1633
    sget-object v9, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_c1

    .line 1634
    :cond_16c
    const/4 v9, 0x4

    if-ne v0, v9, :cond_176

    .line 1635
    sget-object v9, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_c1

    .line 1637
    :cond_176
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Pattern letter count must be 1 or 4: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1639
    :cond_190
    const/16 v9, 0x58

    if-ne v1, v9, :cond_1c4

    .line 1640
    const/4 v9, 0x5

    if-le v0, v9, :cond_1b1

    .line 1641
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1643
    :cond_1b1
    sget-object v10, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1c2

    const/4 v9, 0x0

    :goto_1b7
    add-int/2addr v9, v0

    aget-object v9, v10, v9

    const-string/jumbo v10, "Z"

    invoke-virtual {p0, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_c1

    :cond_1c2
    const/4 v9, 0x1

    goto :goto_1b7

    .line 1644
    :cond_1c4
    const/16 v9, 0x78

    if-ne v1, v9, :cond_207

    .line 1645
    const/4 v9, 0x5

    if-le v0, v9, :cond_1e5

    .line 1646
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1648
    :cond_1e5
    const/4 v9, 0x1

    if-ne v0, v9, :cond_1f9

    const-string/jumbo v8, "+00"

    .line 1649
    .local v8, "zero":Ljava/lang/String;
    :goto_1eb
    sget-object v10, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    const/4 v9, 0x1

    if-ne v0, v9, :cond_205

    const/4 v9, 0x0

    :goto_1f1
    add-int/2addr v9, v0

    aget-object v9, v10, v9

    invoke-virtual {p0, v9, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_c1

    .line 1648
    .end local v8    # "zero":Ljava/lang/String;
    :cond_1f9
    rem-int/lit8 v9, v0, 0x2

    if-nez v9, :cond_201

    const-string/jumbo v8, "+0000"

    .restart local v8    # "zero":Ljava/lang/String;
    goto :goto_1eb

    .end local v8    # "zero":Ljava/lang/String;
    :cond_201
    const-string/jumbo v8, "+00:00"

    .restart local v8    # "zero":Ljava/lang/String;
    goto :goto_1eb

    .line 1649
    :cond_205
    const/4 v9, 0x1

    goto :goto_1f1

    .line 1650
    .end local v8    # "zero":Ljava/lang/String;
    :cond_207
    const/16 v9, 0x57

    if-ne v1, v9, :cond_232

    .line 1652
    const/4 v9, 0x1

    if-le v0, v9, :cond_228

    .line 1653
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1655
    :cond_228
    new-instance v9, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v9, v1, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto/16 :goto_c1

    .line 1656
    :cond_232
    const/16 v9, 0x77

    if-ne v1, v9, :cond_25d

    .line 1658
    const/4 v9, 0x2

    if-le v0, v9, :cond_253

    .line 1659
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1661
    :cond_253
    new-instance v9, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v9, v1, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto/16 :goto_c1

    .line 1662
    :cond_25d
    const/16 v9, 0x59

    if-ne v1, v9, :cond_26b

    .line 1664
    new-instance v9, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v9, v1, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto/16 :goto_c1

    .line 1666
    :cond_26b
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown pattern letter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1682
    .end local v0    # "count":I
    .end local v2    # "field":Ljava/time/temporal/TemporalField;
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :cond_285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v5, v9, :cond_2a5

    .line 1683
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Pattern ends with an incomplete string literal: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1685
    :cond_2a5
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1686
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2b9

    .line 1687
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto/16 :goto_c3

    .line 1689
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :cond_2b9
    const-string/jumbo v9, "\'\'"

    const-string/jumbo v10, "\'"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto/16 :goto_c3

    .line 1692
    .end local v6    # "start":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_2c9
    const/16 v9, 0x5b

    if-ne v1, v9, :cond_2d2

    .line 1693
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_c3

    .line 1695
    :cond_2d2
    const/16 v9, 0x5d

    if-ne v1, v9, :cond_2ea

    .line 1696
    iget-object v9, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v9, v9, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-nez v9, :cond_2e5

    .line 1697
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Pattern invalid as it contains ] without previous ["

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1699
    :cond_2e5
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_c3

    .line 1701
    :cond_2ea
    const/16 v9, 0x7b

    if-eq v1, v9, :cond_2f2

    const/16 v9, 0x7d

    if-ne v1, v9, :cond_313

    .line 1702
    :cond_2f2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Pattern includes reserved character: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1701
    :cond_313
    const/16 v9, 0x23

    if-eq v1, v9, :cond_2f2

    .line 1704
    invoke-virtual {p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_c3

    .line 1707
    .end local v1    # "cur":C
    :cond_31c
    return-void

    .end local v4    # "pos":I
    .restart local v0    # "count":I
    .restart local v1    # "cur":C
    .restart local v3    # "pad":I
    .restart local v5    # "pos":I
    .restart local v6    # "start":I
    :cond_31d
    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto/16 :goto_8e

    .end local v3    # "pad":I
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :cond_320
    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto/16 :goto_b0
.end method

.method private toFormatter(Ljava/util/Locale;Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;
    .registers 12
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .param p3, "chrono"    # Ljava/time/chrono/Chronology;

    .prologue
    const/4 v5, 0x0

    .line 2076
    const-string/jumbo v0, "locale"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2077
    :goto_7
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-eqz v0, :cond_11

    .line 2078
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_7

    .line 2080
    :cond_11
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 2081
    .local v1, "pp":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    sget-object v3, Ljava/time/format/DecimalStyle;->STANDARD:Ljava/time/format/DecimalStyle;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method


# virtual methods
.method public append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 1328
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1329
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1330
    return-object p0
.end method

.method public appendChronologyId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3

    .prologue
    .line 1225
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1226
    return-object p0
.end method

.method public appendChronologyText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;

    .prologue
    .line 1239
    const-string/jumbo v0, "textStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1240
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1241
    return-object p0
.end method

.method public appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z

    .prologue
    .line 692
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIZ)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 693
    return-object p0
.end method

.method public appendInstant()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3

    .prologue
    .line 819
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 820
    return-object p0
.end method

.method public appendInstant(I)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "fractionalDigits"    # I

    .prologue
    .line 859
    const/4 v0, -0x1

    if-lt p1, v0, :cond_7

    const/16 v0, 0x9

    if-le p1, v0, :cond_21

    .line 860
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The fractional digits must be from -1 to 9 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 862
    :cond_21
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 863
    return-object p0
.end method

.method public appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "literal"    # C

    .prologue
    .line 1291
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1292
    return-object p0
.end method

.method public appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "literal"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1306
    const-string/jumbo v0, "literal"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1307
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 1308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 1309
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1314
    :cond_20
    :goto_20
    return-object p0

    .line 1311
    :cond_21
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_20
.end method

.method public appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "dateStyle"    # Ljava/time/format/FormatStyle;
    .param p2, "timeStyle"    # Ljava/time/format/FormatStyle;

    .prologue
    .line 1274
    if-nez p1, :cond_d

    if-nez p2, :cond_d

    .line 1275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Either the date or time style must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1277
    :cond_d
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;

    invoke-direct {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;-><init>(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1278
    return-object p0
.end method

.method public appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "style"    # Ljava/time/format/TextStyle;

    .prologue
    .line 953
    const-string/jumbo v0, "style"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 954
    sget-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-eq p1, v0, :cond_17

    sget-object v0, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    if-eq p1, v0, :cond_17

    .line 955
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Style must be either full or short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_17
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 958
    return-object p0
.end method

.method public appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "noOffsetText"    # Ljava/lang/String;

    .prologue
    .line 919
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 920
    return-object p0
.end method

.method public appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .prologue
    .line 876
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 877
    return-object p0
.end method

.method public appendOptional(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 1347
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1348
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1349
    return-object p0
.end method

.method public appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1574
    const-string/jumbo v0, "pattern"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1575
    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->parsePattern(Ljava/lang/String;)V

    .line 1576
    return-object p0
.end method

.method public appendText(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 713
    sget-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "textStyle"    # Ljava/time/format/TextStyle;

    .prologue
    .line 732
    const-string/jumbo v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 733
    const-string/jumbo v0, "textStyle"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 734
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    invoke-static {}, Ljava/time/format/DateTimeTextProvider;->getInstance()Ljava/time/format/DateTimeTextProvider;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 735
    return-object p0
.end method

.method public appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 9
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .prologue
    .line 773
    .local p2, "textLookup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string/jumbo v4, "field"

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 774
    const-string/jumbo v4, "textLookup"

    invoke-static {p2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 775
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 776
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    sget-object v4, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-static {v4, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 777
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    new-instance v3, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v3, v1}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    .line 778
    .local v3, "store":Ljava/time/format/DateTimeTextProvider$LocaleStore;
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$2;

    invoke-direct {v2, p0, v3}, Ljava/time/format/DateTimeFormatterBuilder$2;-><init>(Ljava/time/format/DateTimeFormatterBuilder;Ljava/time/format/DateTimeTextProvider$LocaleStore;)V

    .line 788
    .local v2, "provider":Ljava/time/format/DateTimeTextProvider;
    new-instance v4, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    sget-object v5, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-direct {v4, p1, v5, v2}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V

    invoke-direct {p0, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 789
    return-object p0
.end method

.method public appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 391
    const-string/jumbo v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 392
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    const/4 v2, 0x1

    const/16 v3, 0x13

    invoke-direct {v0, p1, v2, v3, v1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 393
    return-object p0
.end method

.method public appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 7
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "width"    # I

    .prologue
    .line 445
    const-string/jumbo v1, "field"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 446
    const/4 v1, 0x1

    if-lt p2, v1, :cond_d

    const/16 v1, 0x13

    if-le p2, v1, :cond_27

    .line 447
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The width must be from 1 to 19 inclusive but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    :cond_27
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    sget-object v1, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v0, p1, p2, p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    .line 450
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 451
    return-object p0
.end method

.method public appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 9
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Ljava/time/format/SignStyle;

    .prologue
    const/16 v3, 0x13

    const/4 v2, 0x1

    .line 487
    if-ne p2, p3, :cond_e

    sget-object v1, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne p4, v1, :cond_e

    .line 488
    invoke-virtual {p0, p1, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    return-object v1

    .line 490
    :cond_e
    const-string/jumbo v1, "field"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 491
    const-string/jumbo v1, "signStyle"

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 492
    if-lt p2, v2, :cond_1e

    if-le p2, v3, :cond_38

    .line 493
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_38
    if-lt p3, v2, :cond_3c

    if-le p3, v3, :cond_56

    .line 496
    :cond_3c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_56
    if-ge p3, p2, :cond_7d

    .line 499
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The maximum width must exceed or equal the minimum width but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 500
    const-string/jumbo v3, " < "

    .line 499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    :cond_7d
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    .line 503
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 504
    return-object p0
.end method

.method public appendValueReduced(Ljava/time/temporal/TemporalField;III)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 11
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "width"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I

    .prologue
    .line 548
    const-string/jumbo v1, "field"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 549
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;)V

    .line 550
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 551
    return-object p0
.end method

.method public appendValueReduced(Ljava/time/temporal/TemporalField;IILjava/time/chrono/ChronoLocalDate;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 11
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "width"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseDate"    # Ljava/time/chrono/ChronoLocalDate;

    .prologue
    .line 608
    const-string/jumbo v1, "field"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 609
    const-string/jumbo v1, "baseDate"

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 610
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;)V

    .line 611
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 612
    return-object p0
.end method

.method public appendZoneId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .prologue
    .line 1009
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    const-string/jumbo v2, "ZoneId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1010
    return-object p0
.end method

.method public appendZoneOrOffsetId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .prologue
    .line 1121
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    const-string/jumbo v2, "ZoneOrOffsetId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1122
    return-object p0
.end method

.method public appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .prologue
    .line 1065
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;

    const-string/jumbo v2, "ZoneRegionId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1066
    return-object p0
.end method

.method public appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;

    .prologue
    .line 1157
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljava/time/format/TextStyle;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1158
    return-object p0
.end method

.method public appendZoneText(Ljava/time/format/TextStyle;Ljava/util/Set;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/ZoneId;",
            ">;)",
            "Ljava/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .prologue
    .line 1199
    .local p2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/ZoneId;>;"
    const-string/jumbo v0, "preferredZones"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1200
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    invoke-direct {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljava/time/format/TextStyle;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1201
    return-object p0
.end method

.method public optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .prologue
    .line 1981
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-nez v1, :cond_f

    .line 1982
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1984
    :cond_f
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_30

    .line 1985
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-boolean v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 1986
    .local v0, "cpp":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    iput-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 1987
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1991
    .end local v0    # "cpp":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    :goto_2f
    return-object p0

    .line 1989
    :cond_30
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    iput-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_2f
.end method

.method public optionalStart()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .prologue
    .line 1950
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 1951
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>(Ljava/time/format/DateTimeFormatterBuilder;Z)V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 1952
    return-object p0
.end method

.method public padNext(I)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "padWidth"    # I

    .prologue
    .line 1894
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatterBuilder;->padNext(IC)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public padNext(IC)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "padWidth"    # I
    .param p2, "padChar"    # C

    .prologue
    .line 1919
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1d

    .line 1920
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The pad width must be at least one but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1922
    :cond_1d
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput p1, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 1923
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput-char p2, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 1924
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 1925
    return-object p0
.end method

.method public parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .prologue
    .line 295
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 296
    return-object p0
.end method

.method public parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .prologue
    .line 275
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 276
    return-object p0
.end method

.method public parseDefaulting(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J

    .prologue
    .line 366
    const-string/jumbo v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 367
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;

    invoke-direct {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;-><init>(Ljava/time/temporal/TemporalField;J)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 368
    return-object p0
.end method

.method public parseLenient()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .prologue
    .line 333
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 334
    return-object p0
.end method

.method public parseStrict()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .prologue
    .line 314
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 315
    return-object p0
.end method

.method public toFormatter()Ljava/time/format/DateTimeFormatter;
    .registers 2

    .prologue
    .line 2033
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p1, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .param p2, "chrono"    # Ljava/time/chrono/Chronology;

    .prologue
    .line 2065
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 2054
    sget-object v0, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method
