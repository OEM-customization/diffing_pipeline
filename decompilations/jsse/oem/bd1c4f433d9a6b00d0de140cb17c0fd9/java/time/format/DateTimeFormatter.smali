.class public final Ljava/time/format/DateTimeFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeFormatter$ClassicFormat;
    }
.end annotation


# static fields
.field public static final BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field private static final PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/Period;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final RFC_1123_DATE_TIME:Ljava/time/format/DateTimeFormatter;


# instance fields
.field private final chrono:Ljava/time/chrono/Chronology;

.field private final decimalStyle:Ljava/time/format/DecimalStyle;

.field private final locale:Ljava/util/Locale;

.field private final printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

.field private final resolverFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field private final resolverStyle:Ljava/time/format/ResolverStyle;

.field private final zone:Ljava/time/ZoneId;


# direct methods
.method static synthetic -get0(Ljava/time/format/DateTimeFormatter;)Ljava/util/Set;
    .registers 2
    .param p0, "-this"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get1(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/ResolverStyle;
    .registers 2
    .param p0, "-this"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;
    .registers 4
    .param p0, "-this"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .registers 4
    .param p0, "-this"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/16 v11, 0x3a

    const/16 v10, 0x2d

    const/16 v9, 0x20

    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 704
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 705
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    const/16 v5, 0xa

    .line 704
    invoke-virtual {v2, v3, v8, v5, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 707
    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 704
    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 709
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 704
    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 710
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 704
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 734
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 736
    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 734
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 738
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 734
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE:Ljava/time/format/DateTimeFormatter;

    .line 766
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 768
    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 766
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 771
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 766
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_DATE:Ljava/time/format/DateTimeFormatter;

    .line 803
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 804
    sget-object v3, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 803
    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 806
    sget-object v3, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 803
    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 809
    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 803
    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 811
    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x1

    .line 803
    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 812
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    const/4 v4, 0x0

    .line 803
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 835
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 837
    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 835
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 839
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    const/4 v4, 0x0

    .line 835
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_TIME:Ljava/time/format/DateTimeFormatter;

    .line 866
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 868
    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 866
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 871
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    const/4 v4, 0x0

    .line 866
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_TIME:Ljava/time/format/DateTimeFormatter;

    .line 894
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 896
    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 894
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 897
    const/16 v3, 0x54

    .line 894
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 898
    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 894
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 899
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 894
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 923
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 925
    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 923
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 927
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 923
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 955
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 956
    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 955
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 958
    const/16 v3, 0x5b

    .line 955
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 961
    const/16 v3, 0x5d

    .line 955
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 962
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 955
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 996
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 997
    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 996
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1001
    const/16 v3, 0x5b

    .line 996
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1004
    const/16 v3, 0x5d

    .line 996
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1005
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 996
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 1038
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1040
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    const/16 v5, 0xa

    .line 1038
    invoke-virtual {v2, v3, v8, v5, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1042
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/4 v4, 0x3

    .line 1038
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1045
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1038
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 1082
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1084
    sget-object v3, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    sget-object v4, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    const/16 v5, 0xa

    .line 1082
    invoke-virtual {v2, v3, v8, v5, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1085
    const-string/jumbo v3, "-W"

    .line 1082
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1086
    sget-object v3, Ljava/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    .line 1082
    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1088
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    const/4 v4, 0x1

    .line 1082
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1091
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1082
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

    .line 1127
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInstant()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1130
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    const/4 v4, 0x0

    .line 1127
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    .line 1163
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1165
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 1163
    invoke-virtual {v2, v3, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1166
    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 1163
    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1167
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 1163
    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1169
    const-string/jumbo v3, "+HHMMss"

    const-string/jumbo v4, "Z"

    .line 1163
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1170
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1163
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

    .line 1221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1222
    .local v0, "dow":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Mon"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Tue"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Wed"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Thu"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Fri"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    const-wide/16 v2, 0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Sat"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    const-wide/16 v2, 0x7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Sun"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1230
    .local v1, "moy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Jan"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Feb"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Mar"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Apr"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "May"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    const-wide/16 v2, 0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Jun"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    const-wide/16 v2, 0x7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Jul"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Aug"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    const-wide/16 v2, 0x9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Sep"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Oct"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    const-wide/16 v2, 0xb

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Nov"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    const-wide/16 v2, 0xc

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Dec"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseLenient()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1246
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    .line 1242
    invoke-virtual {v2, v3, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1247
    const-string/jumbo v3, ", "

    .line 1242
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1249
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    const/4 v5, 0x1

    .line 1242
    invoke-virtual {v2, v3, v5, v7, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1251
    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 1242
    invoke-virtual {v2, v3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1253
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 1242
    invoke-virtual {v2, v3, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1255
    sget-object v3, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 1242
    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1257
    sget-object v3, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 1242
    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1260
    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 1242
    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1263
    const-string/jumbo v3, "+HHMM"

    const-string/jumbo v4, "GMT"

    .line 1242
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 1264
    sget-object v3, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1242
    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    sget-object v2, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;->$INST$0:Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;

    .line 1311
    sput-object v2, Ljava/time/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;

    sget-object v2, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;->$INST$1:Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;

    .line 1352
    sput-object v2, Ljava/time/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;

    .line 483
    return-void
.end method

.method constructor <init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V
    .registers 9
    .param p1, "printerParser"    # Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "decimalStyle"    # Ljava/time/format/DecimalStyle;
    .param p4, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .param p6, "chrono"    # Ljava/time/chrono/Chronology;
    .param p7, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;",
            "Ljava/util/Locale;",
            "Ljava/time/format/DecimalStyle;",
            "Ljava/time/format/ResolverStyle;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/ZoneId;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1372
    .local p5, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1376
    const-string/jumbo v0, "printerParser"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    .line 1377
    iput-object p5, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    .line 1378
    const-string/jumbo v0, "locale"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    .line 1379
    const-string/jumbo v0, "decimalStyle"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/DecimalStyle;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    .line 1380
    const-string/jumbo v0, "resolverStyle"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/ResolverStyle;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    .line 1381
    iput-object p6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    .line 1382
    iput-object p7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    .line 1383
    return-void
.end method

.method private createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    const/16 v2, 0x40

    const/4 v4, 0x0

    .line 1915
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_4e

    .line 1916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1920
    .local v0, "abbr":Ljava/lang/String;
    :goto_25
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Text \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' could not be parsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v4, p2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    return-object v1

    .line 1918
    .end local v0    # "abbr":Ljava/lang/String;
    :cond_4e
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "abbr":Ljava/lang/String;
    goto :goto_25
.end method

.method static synthetic lambda$-java_time_format_DateTimeFormatter_61156(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Period;
    .registers 2
    .param p0, "t"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 1312
    instance-of v0, p0, Ljava/time/format/Parsed;

    if-eqz v0, :cond_9

    .line 1313
    check-cast p0, Ljava/time/format/Parsed;

    .end local p0    # "t":Ljava/time/temporal/TemporalAccessor;
    iget-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    return-object v0

    .line 1315
    .restart local p0    # "t":Ljava/time/temporal/TemporalAccessor;
    :cond_9
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    return-object v0
.end method

.method static synthetic lambda$-java_time_format_DateTimeFormatter_63118(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "t"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 1353
    instance-of v0, p0, Ljava/time/format/Parsed;

    if-eqz v0, :cond_d

    .line 1354
    check-cast p0, Ljava/time/format/Parsed;

    .end local p0    # "t":Ljava/time/temporal/TemporalAccessor;
    iget-boolean v0, p0, Ljava/time/format/Parsed;->leapSecond:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1356
    .restart local p0    # "t":Ljava/time/temporal/TemporalAccessor;
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static ofLocalizedDate(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p0, "dateStyle"    # Ljava/time/format/FormatStyle;

    .prologue
    .line 587
    const-string/jumbo v0, "dateStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 588
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 589
    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 588
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocalizedDateTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p0, "dateTimeStyle"    # Ljava/time/format/FormatStyle;

    .prologue
    .line 643
    const-string/jumbo v0, "dateTimeStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 644
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 645
    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 644
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocalizedDateTime(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 5
    .param p0, "dateStyle"    # Ljava/time/format/FormatStyle;
    .param p1, "timeStyle"    # Ljava/time/format/FormatStyle;

    .prologue
    .line 672
    const-string/jumbo v0, "dateStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 673
    const-string/jumbo v0, "timeStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 674
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 675
    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 674
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocalizedTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p0, "timeStyle"    # Ljava/time/format/FormatStyle;

    .prologue
    .line 615
    const-string/jumbo v0, "timeStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 616
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 617
    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 616
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;
    .registers 2
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    .line 536
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .registers 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 560
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    const/16 v6, 0x40

    const/4 v5, 0x0

    .line 1938
    if-eqz p2, :cond_67

    move-object v2, p2

    .line 1939
    .local v2, "pos":Ljava/text/ParsePosition;
    :goto_6
    invoke-direct {p0, p1, v2}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;

    move-result-object v1

    .line 1940
    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    if-eqz v1, :cond_12

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-ltz v3, :cond_6d

    .line 1942
    :cond_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v6, :cond_82

    .line 1943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1947
    .local v0, "abbr":Ljava/lang/String;
    :goto_34
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-ltz v3, :cond_87

    .line 1948
    new-instance v3, Ljava/time/format/DateTimeParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Text \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' could not be parsed at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1949
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    .line 1948
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1949
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    .line 1948
    invoke-direct {v3, v4, p1, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v3

    .line 1938
    .end local v0    # "abbr":Ljava/lang/String;
    .end local v1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local v2    # "pos":Ljava/text/ParsePosition;
    :cond_67
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .restart local v2    # "pos":Ljava/text/ParsePosition;
    goto :goto_6

    .line 1940
    .restart local v1    # "context":Ljava/time/format/DateTimeParseContext;
    :cond_6d
    if-nez p2, :cond_79

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v3, v4, :cond_12

    .line 1955
    :cond_79
    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v1, v3, v4}, Ljava/time/format/DateTimeParseContext;->toResolved(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v3

    return-object v3

    .line 1945
    :cond_82
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "abbr":Ljava/lang/String;
    goto :goto_34

    .line 1951
    :cond_87
    new-instance v3, Ljava/time/format/DateTimeParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Text \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' could not be parsed, unparsed text found at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1952
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .line 1951
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1952
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .line 1951
    invoke-direct {v3, v4, p1, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v3
.end method

.method private parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 2006
    const-string/jumbo v2, "text"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2007
    const-string/jumbo v2, "position"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2008
    new-instance v0, Ljava/time/format/DateTimeParseContext;

    invoke-direct {v0, p0}, Ljava/time/format/DateTimeParseContext;-><init>(Ljava/time/format/DateTimeFormatter;)V

    .line 2009
    .local v0, "context":Ljava/time/format/DateTimeParseContext;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 2010
    .local v1, "pos":I
    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v2, v0, p1, v1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2011
    if-gez v1, :cond_23

    .line 2012
    not-int v2, v1

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2013
    const/4 v2, 0x0

    return-object v2

    .line 2015
    :cond_23
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2016
    return-object v0
.end method

.method public static final parsedExcessDays()Ljava/time/temporal/TemporalQuery;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/Period;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1309
    sget-object v0, Ljava/time/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final parsedLeapSecond()Ljava/time/temporal/TemporalQuery;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1350
    sget-object v0, Ljava/time/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 1719
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1720
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V

    .line 1721
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    .registers 8
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p2, "appendable"    # Ljava/lang/Appendable;

    .prologue
    .line 1741
    const-string/jumbo v3, "temporal"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1742
    const-string/jumbo v3, "appendable"

    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1744
    :try_start_c
    new-instance v1, Ljava/time/format/DateTimePrintContext;

    invoke-direct {v1, p1, p0}, Ljava/time/format/DateTimePrintContext;-><init>(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)V

    .line 1745
    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    instance-of v3, p2, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1d

    .line 1746
    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    check-cast p2, Ljava/lang/StringBuilder;

    .end local p2    # "appendable":Ljava/lang/Appendable;
    invoke-virtual {v3, v1, p2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    .line 1756
    :goto_1c
    return-void

    .line 1749
    .restart local p2    # "appendable":Ljava/lang/Appendable;
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1750
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v3, v1, v0}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    .line 1751
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2c} :catch_2d

    goto :goto_1c

    .line 1753
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "context":Ljava/time/format/DateTimePrintContext;
    .end local p2    # "appendable":Ljava/lang/Appendable;
    :catch_2d
    move-exception v2

    .line 1754
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/time/DateTimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .prologue
    .line 1452
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    return-object v0
.end method

.method public getDecimalStyle()Ljava/time/format/DecimalStyle;
    .registers 2

    .prologue
    .line 1423
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 1395
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getResolverFields()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1606
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    return-object v0
.end method

.method public getResolverStyle()Ljava/time/format/ResolverStyle;
    .registers 2

    .prologue
    .line 1564
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    return-object v0
.end method

.method public getZone()Ljava/time/ZoneId;
    .registers 2

    .prologue
    .line 1506
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/time/temporal/TemporalQuery",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1848
    .local p2, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TT;>;"
    const-string/jumbo v2, "text"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1849
    const-string/jumbo v2, "query"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1851
    const/4 v2, 0x0

    :try_start_d
    invoke-direct {p0, p1, v2}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/time/format/DateTimeParseException; {:try_start_d .. :try_end_14} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_14} :catch_16

    move-result-object v2

    return-object v2

    .line 1854
    :catch_16
    move-exception v0

    .line 1855
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v2

    throw v2

    .line 1852
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1c
    move-exception v1

    .line 1853
    .local v1, "ex":Ljava/time/format/DateTimeParseException;
    throw v1
.end method

.method public parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1775
    const-string/jumbo v2, "text"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1777
    const/4 v2, 0x0

    :try_start_7
    invoke-direct {p0, p1, v2}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    :try_end_a
    .catch Ljava/time/format/DateTimeParseException; {:try_start_7 .. :try_end_a} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v2

    return-object v2

    .line 1780
    :catch_c
    move-exception v0

    .line 1781
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v2

    throw v2

    .line 1778
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_12
    move-exception v1

    .line 1779
    .local v1, "ex":Ljava/time/format/DateTimeParseException;
    throw v1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 1816
    const-string/jumbo v1, "text"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1817
    const-string/jumbo v1, "position"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1819
    :try_start_c
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    :try_end_f
    .catch Ljava/time/format/DateTimeParseException; {:try_start_c .. :try_end_f} :catch_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_f} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 1822
    :catch_11
    move-exception v0

    .line 1823
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    .line 1820
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_17
    move-exception v0

    .line 1821
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    throw v0
.end method

.method public varargs parseBest(Ljava/lang/CharSequence;[Ljava/time/temporal/TemporalQuery;)Ljava/time/temporal/TemporalAccessor;
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/time/temporal/TemporalQuery",
            "<*>;)",
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

    .prologue
    .line 1891
    .local p2, "queries":[Ljava/time/temporal/TemporalQuery;, "[Ljava/time/temporal/TemporalQuery<*>;"
    const-string/jumbo v4, "text"

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1892
    const-string/jumbo v4, "queries"

    invoke-static {p2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1893
    array-length v4, p2

    const/4 v5, 0x2

    if-ge v4, v5, :cond_19

    .line 1894
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "At least two queries must be specified"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1897
    :cond_19
    const/4 v4, 0x0

    :try_start_1a
    invoke-direct {p0, p1, v4}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v3

    .line 1898
    .local v3, "resolved":Ljava/time/temporal/TemporalAccessor;
    const/4 v4, 0x0

    array-length v6, p2

    move v5, v4

    :goto_21
    if-ge v5, v6, :cond_31

    aget-object v2, p2, v5
    :try_end_25
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1a .. :try_end_25} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_25} :catch_3c

    .line 1900
    .local v2, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    :try_start_25
    invoke-interface {v3, v2}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/temporal/TemporalAccessor;
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_2b} :catch_2c
    .catch Ljava/time/format/DateTimeParseException; {:try_start_25 .. :try_end_2b} :catch_3a

    return-object v4

    .line 1901
    :catch_2c
    move-exception v0

    .line 1898
    .local v0, "ex":Ljava/lang/RuntimeException;
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_21

    .line 1905
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v2    # "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    :cond_31
    :try_start_31
    new-instance v4, Ljava/time/DateTimeException;

    const-string/jumbo v5, "Unable to convert parsed text using any of the specified queries"

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3a
    .catch Ljava/time/format/DateTimeParseException; {:try_start_31 .. :try_end_3a} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_3a} :catch_3c

    .line 1906
    .end local v3    # "resolved":Ljava/time/temporal/TemporalAccessor;
    :catch_3a
    move-exception v1

    .line 1907
    .local v1, "ex":Ljava/time/format/DateTimeParseException;
    throw v1

    .line 1908
    .end local v1    # "ex":Ljava/time/format/DateTimeParseException;
    :catch_3c
    move-exception v0

    .line 1909
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v4

    throw v4
.end method

.method public parseUnresolved(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v1, 0x0

    .line 1998
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;

    move-result-object v0

    .line 1999
    .local v0, "context":Ljava/time/format/DateTimeParseContext;
    if-nez v0, :cond_8

    .line 2000
    return-object v1

    .line 2002
    :cond_8
    invoke-virtual {v0}, Ljava/time/format/DateTimeParseContext;->toUnresolved()Ljava/time/format/Parsed;

    move-result-object v1

    return-object v1
.end method

.method public toFormat()Ljava/text/Format;
    .registers 3

    .prologue
    .line 2044
    new-instance v0, Ljava/time/format/DateTimeFormatter$ClassicFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/time/format/DateTimeFormatter$ClassicFormat;-><init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V

    return-object v0
.end method

.method public toFormat(Ljava/time/temporal/TemporalQuery;)Ljava/text/Format;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalQuery",
            "<*>;)",
            "Ljava/text/Format;"
        }
    .end annotation

    .prologue
    .line 2064
    .local p1, "parseQuery":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    const-string/jumbo v0, "parseQuery"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2065
    new-instance v0, Ljava/time/format/DateTimeFormatter$ClassicFormat;

    invoke-direct {v0, p0, p1}, Ljava/time/format/DateTimeFormatter$ClassicFormat;-><init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V

    return-object v0
.end method

.method toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .registers 3
    .param p1, "optional"    # Z

    .prologue
    .line 2027
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->withOptional(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2076
    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2077
    .local v0, "pattern":Ljava/lang/String;
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2078
    :goto_f
    return-object v0

    .line 2077
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;
    .registers 10
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;

    .prologue
    .line 1489
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1490
    return-object p0

    .line 1492
    :cond_9
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public withDecimalStyle(Ljava/time/format/DecimalStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 10
    .param p1, "decimalStyle"    # Ljava/time/format/DecimalStyle;

    .prologue
    .line 1435
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    invoke-virtual {v0, p1}, Ljava/time/format/DecimalStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1436
    return-object p0

    .line 1438
    :cond_9
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .registers 10
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1410
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1411
    return-object p0

    .line 1413
    :cond_9
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public withResolverFields(Ljava/util/Set;)Ljava/time/format/DateTimeFormatter;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;)",
            "Ljava/time/format/DateTimeFormatter;"
        }
    .end annotation

    .prologue
    .line 1699
    .local p1, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1700
    return-object p0

    .line 1702
    :cond_9
    if-eqz p1, :cond_14

    .line 1703
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 1705
    :cond_14
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public varargs withResolverFields([Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatter;
    .registers 10
    .param p1, "resolverFields"    # [Ljava/time/temporal/TemporalField;

    .prologue
    .line 1649
    const/4 v5, 0x0

    .line 1650
    .local v5, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    if-eqz p1, :cond_10

    .line 1651
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 1653
    .end local v5    # "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    :cond_10
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1654
    return-object p0

    .line 1656
    :cond_19
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public withResolverStyle(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 10
    .param p1, "resolverStyle"    # Ljava/time/format/ResolverStyle;

    .prologue
    .line 1587
    const-string/jumbo v0, "resolverStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1588
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1589
    return-object p0

    .line 1591
    :cond_f
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;
    .registers 10
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 1546
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1547
    return-object p0

    .line 1549
    :cond_9
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method
