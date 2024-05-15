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
.field public static final whitelist core-platform-api test-api BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist core-platform-api test-api ISO_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist core-platform-api test-api ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist core-platform-api test-api ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist core-platform-api test-api ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist core-platform-api test-api ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist core-platform-api test-api ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist core-platform-api test-api ISO_OFFSET_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist core-platform-api test-api ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist core-platform-api test-api ISO_OFFSET_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist core-platform-api test-api ISO_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist core-platform-api test-api ISO_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist core-platform-api test-api ISO_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist core-platform-api test-api ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field private static final greylist-max-o PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/Period;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api RFC_1123_DATE_TIME:Ljava/time/format/DateTimeFormatter;


# instance fields
.field private final greylist-max-o chrono:Ljava/time/chrono/Chronology;

.field private final greylist-max-o decimalStyle:Ljava/time/format/DecimalStyle;

.field private final greylist-max-o locale:Ljava/util/Locale;

.field private final greylist-max-o printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

.field private final greylist-max-o resolverFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o resolverStyle:Ljava/time/format/ResolverStyle;

.field private final greylist-max-o zone:Ljava/time/ZoneId;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 14

    .line 704
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 705
    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 706
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 707
    const/4 v5, 0x2

    invoke-virtual {v0, v2, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 708
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 709
    invoke-virtual {v0, v2, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v6, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 710
    invoke-virtual {v0, v2, v6}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 734
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 735
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 736
    invoke-virtual {v0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 737
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v6, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 738
    invoke-virtual {v0, v2, v6}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE:Ljava/time/format/DateTimeFormatter;

    .line 766
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 767
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 768
    invoke-virtual {v0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v6, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 771
    invoke-virtual {v0, v2, v6}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_DATE:Ljava/time/format/DateTimeFormatter;

    .line 803
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 804
    invoke-virtual {v0, v2, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 805
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 806
    invoke-virtual {v0, v6, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 807
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 808
    invoke-virtual {v0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 809
    invoke-virtual {v0, v6, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 810
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 811
    const/4 v7, 0x0

    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-virtual {v0, v6, v7, v8, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 812
    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 835
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 836
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 837
    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 839
    invoke-virtual {v0, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_TIME:Ljava/time/format/DateTimeFormatter;

    .line 866
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 867
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 868
    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 869
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 870
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 871
    invoke-virtual {v0, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_TIME:Ljava/time/format/DateTimeFormatter;

    .line 894
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 895
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 896
    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 897
    const/16 v6, 0x54

    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 898
    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v8, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 899
    invoke-virtual {v0, v6, v8}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 923
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 924
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 925
    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 926
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v8, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 927
    invoke-virtual {v0, v6, v8}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 955
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v6, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 956
    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 957
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 958
    const/16 v6, 0x5b

    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 959
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 960
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 961
    const/16 v8, 0x5d

    invoke-virtual {v0, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v10, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v11, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 962
    invoke-virtual {v0, v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 996
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v10, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 997
    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 998
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 999
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1000
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1001
    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1002
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1004
    invoke-virtual {v0, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v8, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1005
    invoke-virtual {v0, v6, v8}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 1038
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1039
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v8, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 1040
    invoke-virtual {v0, v6, v3, v4, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1041
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 1042
    const/4 v8, 0x3

    invoke-virtual {v0, v6, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1044
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v8, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1045
    invoke-virtual {v0, v6, v8}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 1082
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1083
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    sget-object v8, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 1084
    invoke-virtual {v0, v6, v3, v4, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1085
    const-string v4, "-W"

    invoke-virtual {v0, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v4, Ljava/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    .line 1086
    invoke-virtual {v0, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1087
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    .line 1088
    invoke-virtual {v0, v1, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1090
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1091
    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

    .line 1127
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1128
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1129
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInstant()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 1130
    invoke-virtual {v0, v1, v7}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    .line 1163
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1164
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 1165
    invoke-virtual {v0, v1, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 1166
    invoke-virtual {v0, v1, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 1167
    invoke-virtual {v0, v1, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1168
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1169
    const-string v1, "+HHMMss"

    const-string v4, "Z"

    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1170
    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

    .line 1221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1222
    .local v0, "dow":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Mon"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "Tue"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "Wed"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const-wide/16 v7, 0x4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "Thu"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    const-wide/16 v10, 0x5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v10, "Fri"

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    const-wide/16 v10, 0x6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "Sat"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    const-wide/16 v11, 0x7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "Sun"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1230
    .local v12, "moy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string v13, "Jan"

    invoke-interface {v12, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    const-string v1, "Feb"

    invoke-interface {v12, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    const-string v1, "Mar"

    invoke-interface {v12, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    const-string v1, "Apr"

    invoke-interface {v12, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    const-string v1, "May"

    invoke-interface {v12, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    const-string v1, "Jun"

    invoke-interface {v12, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    const-string v1, "Jul"

    invoke-interface {v12, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Aug"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    const-wide/16 v6, 0x9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Sep"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Oct"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    const-wide/16 v6, 0xb

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Nov"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    const-wide/16 v6, 0xc

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Dec"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v1}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1243
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1244
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->parseLenient()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1245
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    .line 1246
    invoke-virtual {v1, v4, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1247
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1248
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v6, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    .line 1249
    invoke-virtual {v1, v4, v9, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1250
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v6, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 1251
    invoke-virtual {v1, v6, v12}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1252
    invoke-virtual {v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v6, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 1253
    invoke-virtual {v1, v6, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1254
    invoke-virtual {v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v3, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 1255
    invoke-virtual {v1, v3, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1256
    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 1257
    invoke-virtual {v1, v3, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1258
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1259
    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 1260
    invoke-virtual {v1, v2, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1261
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1262
    invoke-virtual {v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1263
    const-string v2, "+HHMM"

    const-string v3, "GMT"

    invoke-virtual {v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v2, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v3, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1264
    invoke-virtual {v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Ljava/time/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 1311
    .end local v0    # "dow":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v12    # "moy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    sget-object v0, Ljava/time/format/-$$Lambda$DateTimeFormatter$QqeEAMXK7Qf5gsmaSCLmrVwQ1Ns;->INSTANCE:Ljava/time/format/-$$Lambda$DateTimeFormatter$QqeEAMXK7Qf5gsmaSCLmrVwQ1Ns;

    sput-object v0, Ljava/time/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;

    .line 1352
    sget-object v0, Ljava/time/format/-$$Lambda$DateTimeFormatter$GhpE1dbCMFpBqvhZZgrqVYpzk8E;->INSTANCE:Ljava/time/format/-$$Lambda$DateTimeFormatter$GhpE1dbCMFpBqvhZZgrqVYpzk8E;

    sput-object v0, Ljava/time/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V
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
            "Ljava/util/Set<",
            "Ljava/time/temporal/TemporalField;",
            ">;",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/ZoneId;",
            ")V"
        }
    .end annotation

    .line 1375
    .local p5, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1376
    const-string v0, "printerParser"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    .line 1377
    iput-object p5, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    .line 1378
    const-string v0, "locale"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    .line 1379
    const-string v0, "decimalStyle"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Ljava/time/format/DecimalStyle;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    .line 1380
    const-string v0, "resolverStyle"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Ljava/time/format/ResolverStyle;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    .line 1381
    iput-object p6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    .line 1382
    iput-object p7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    .line 1383
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .registers 4
    .param p0, "x0"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/text/ParsePosition;

    .line 483
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$100(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;
    .registers 4
    .param p0, "x0"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/text/ParsePosition;

    .line 483
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/ResolverStyle;
    .registers 2
    .param p0, "x0"    # Ljava/time/format/DateTimeFormatter;

    .line 483
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    return-object v0
.end method

.method static synthetic blacklist access$300(Ljava/time/format/DateTimeFormatter;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Ljava/time/format/DateTimeFormatter;

    .line 483
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    return-object v0
.end method

.method private greylist-max-o createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "ex"    # Ljava/lang/RuntimeException;

    .line 1915
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-le v0, v2, :cond_23

    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "abbr":Ljava/lang/String;
    goto :goto_27

    .line 1918
    .end local v0    # "abbr":Ljava/lang/String;
    :cond_23
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1920
    .restart local v0    # "abbr":Ljava/lang/String;
    :goto_27
    new-instance v2, Ljava/time/format/DateTimeParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' could not be parsed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1, p2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    return-object v2
.end method

.method static synthetic blacklist lambda$static$0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Period;
    .registers 2
    .param p0, "t"    # Ljava/time/temporal/TemporalAccessor;

    .line 1312
    instance-of v0, p0, Ljava/time/format/Parsed;

    if-eqz v0, :cond_a

    .line 1313
    move-object v0, p0

    check-cast v0, Ljava/time/format/Parsed;

    iget-object v0, v0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    return-object v0

    .line 1315
    :cond_a
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    return-object v0
.end method

.method static synthetic blacklist lambda$static$1(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "t"    # Ljava/time/temporal/TemporalAccessor;

    .line 1353
    instance-of v0, p0, Ljava/time/format/Parsed;

    if-eqz v0, :cond_e

    .line 1354
    move-object v0, p0

    check-cast v0, Ljava/time/format/Parsed;

    iget-boolean v0, v0, Ljava/time/format/Parsed;->leapSecond:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1356
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofLocalizedDate(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p0, "dateStyle"    # Ljava/time/format/FormatStyle;

    .line 587
    const-string v0, "dateStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 588
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 589
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 588
    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofLocalizedDateTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p0, "dateTimeStyle"    # Ljava/time/format/FormatStyle;

    .line 643
    const-string v0, "dateTimeStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 644
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 645
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 644
    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofLocalizedDateTime(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 5
    .param p0, "dateStyle"    # Ljava/time/format/FormatStyle;
    .param p1, "timeStyle"    # Ljava/time/format/FormatStyle;

    .line 672
    const-string v0, "dateStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 673
    const-string v0, "timeStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 674
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 675
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 674
    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofLocalizedTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p0, "timeStyle"    # Ljava/time/format/FormatStyle;

    .line 615
    const-string v0, "timeStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 616
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 617
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 616
    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;
    .registers 2
    .param p0, "pattern"    # Ljava/lang/String;

    .line 536
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .registers 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 560
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .line 1938
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    move-object v1, p2

    goto :goto_a

    :cond_5
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1939
    .local v1, "pos":Ljava/text/ParsePosition;
    :goto_a
    invoke-direct {p0, p1, v1}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;

    move-result-object v2

    .line 1940
    .local v2, "context":Ljava/time/format/DateTimeParseContext;
    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_2c

    if-nez p2, :cond_23

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_23

    goto :goto_2c

    .line 1955
    :cond_23
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v2, v0, v3}, Ljava/time/format/DateTimeParseContext;->toResolved(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    return-object v0

    .line 1942
    :cond_2c
    :goto_2c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x40

    if-le v3, v4, :cond_4e

    .line 1943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "abbr":Ljava/lang/String;
    goto :goto_52

    .line 1945
    .end local v0    # "abbr":Ljava/lang/String;
    :cond_4e
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1947
    .restart local v0    # "abbr":Ljava/lang/String;
    :goto_52
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    const-string v4, "Text \'"

    if-ltz v3, :cond_7f

    .line 1948
    new-instance v3, Ljava/time/format/DateTimeParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' could not be parsed at index "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v3

    .line 1951
    :cond_7f
    new-instance v3, Ljava/time/format/DateTimeParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' could not be parsed, unparsed text found at index "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1952
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v3
.end method

.method private greylist-max-o parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .line 2006
    const-string v0, "text"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2007
    const-string v0, "position"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

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
    if-gez v1, :cond_21

    .line 2012
    not-int v2, v1

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2013
    const/4 v2, 0x0

    return-object v2

    .line 2015
    :cond_21
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2016
    return-object v0
.end method

.method public static final whitelist core-platform-api test-api parsedExcessDays()Ljava/time/temporal/TemporalQuery;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/Period;",
            ">;"
        }
    .end annotation

    .line 1309
    sget-object v0, Ljava/time/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api parsedLeapSecond()Ljava/time/temporal/TemporalQuery;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1350
    sget-object v0, Ljava/time/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

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

.method public whitelist core-platform-api test-api formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p2, "appendable"    # Ljava/lang/Appendable;

    .line 1741
    const-string v0, "temporal"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1742
    const-string v0, "appendable"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1744
    :try_start_a
    new-instance v0, Ljava/time/format/DateTimePrintContext;

    invoke-direct {v0, p1, p0}, Ljava/time/format/DateTimePrintContext;-><init>(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)V

    .line 1745
    .local v0, "context":Ljava/time/format/DateTimePrintContext;
    instance-of v1, p2, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1c

    .line 1746
    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v2, p2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    goto :goto_2b

    .line 1749
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1750
    .local v1, "buf":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v2, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    .line 1751
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2b} :catch_2d

    .line 1755
    .end local v0    # "context":Ljava/time/format/DateTimePrintContext;
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :goto_2b
    nop

    .line 1756
    return-void

    .line 1753
    :catch_2d
    move-exception v0

    .line 1754
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/time/DateTimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .line 1452
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDecimalStyle()Ljava/time/format/DecimalStyle;
    .registers 2

    .line 1423
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getLocale()Ljava/util/Locale;
    .registers 2

    .line 1395
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getResolverFields()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation

    .line 1606
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getResolverStyle()Ljava/time/format/ResolverStyle;
    .registers 2

    .line 1564
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getZone()Ljava/time/ZoneId;
    .registers 2

    .line 1506
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public whitelist core-platform-api test-api parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/time/temporal/TemporalQuery<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1848
    .local p2, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TT;>;"
    const-string v0, "text"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1849
    const-string v0, "query"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1851
    const/4 v0, 0x0

    :try_start_b
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catch Ljava/time/format/DateTimeParseException; {:try_start_b .. :try_end_13} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_13} :catch_14

    return-object v0

    .line 1854
    :catch_14
    move-exception v0

    .line 1855
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    .line 1852
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1a
    move-exception v0

    .line 1853
    .local v0, "ex":Ljava/time/format/DateTimeParseException;
    throw v0
.end method

.method public whitelist core-platform-api test-api parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1775
    const-string v0, "text"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1777
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0
    :try_end_a
    .catch Ljava/time/format/DateTimeParseException; {:try_start_6 .. :try_end_a} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 1780
    :catch_b
    move-exception v0

    .line 1781
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    .line 1778
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_11
    move-exception v0

    .line 1779
    .local v0, "ex":Ljava/time/format/DateTimeParseException;
    throw v0
.end method

.method public whitelist core-platform-api test-api parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .line 1816
    const-string v0, "text"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1817
    const-string v0, "position"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1819
    :try_start_a
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0
    :try_end_e
    .catch Ljava/time/format/DateTimeParseException; {:try_start_a .. :try_end_e} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_e} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_f

    return-object v0

    .line 1822
    :catch_f
    move-exception v0

    .line 1823
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    .line 1820
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_15
    move-exception v0

    .line 1821
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    throw v0
.end method

.method public varargs whitelist core-platform-api test-api parseBest(Ljava/lang/CharSequence;[Ljava/time/temporal/TemporalQuery;)Ljava/time/temporal/TemporalAccessor;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/time/temporal/TemporalQuery<",
            "*>;)",
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

    .line 1891
    .local p2, "queries":[Ljava/time/temporal/TemporalQuery;, "[Ljava/time/temporal/TemporalQuery<*>;"
    const-string v0, "text"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1892
    const-string v0, "queries"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1893
    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_34

    .line 1897
    const/4 v0, 0x0

    :try_start_f
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    .line 1898
    .local v0, "resolved":Ljava/time/temporal/TemporalAccessor;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_24

    aget-object v3, p2, v2
    :try_end_19
    .catch Ljava/time/format/DateTimeParseException; {:try_start_f .. :try_end_19} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_19} :catch_2c

    .line 1900
    .local v3, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    :try_start_19
    invoke-interface {v0, v3}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/temporal/TemporalAccessor;
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1f} :catch_20
    .catch Ljava/time/format/DateTimeParseException; {:try_start_19 .. :try_end_1f} :catch_32

    return-object v4

    .line 1901
    :catch_20
    move-exception v4

    .line 1898
    .end local v3    # "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1905
    :cond_24
    :try_start_24
    new-instance v1, Ljava/time/DateTimeException;

    const-string v2, "Unable to convert parsed text using any of the specified queries"

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/time/format/DateTimeFormatter;
    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "queries":[Ljava/time/temporal/TemporalQuery;, "[Ljava/time/temporal/TemporalQuery<*>;"
    throw v1
    :try_end_2c
    .catch Ljava/time/format/DateTimeParseException; {:try_start_24 .. :try_end_2c} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_2c} :catch_2c

    .line 1908
    .end local v0    # "resolved":Ljava/time/temporal/TemporalAccessor;
    .restart local p0    # "this":Ljava/time/format/DateTimeFormatter;
    .restart local p1    # "text":Ljava/lang/CharSequence;
    .restart local p2    # "queries":[Ljava/time/temporal/TemporalQuery;, "[Ljava/time/temporal/TemporalQuery<*>;"
    :catch_2c
    move-exception v0

    .line 1909
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    .line 1906
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_32
    move-exception v0

    .line 1907
    .local v0, "ex":Ljava/time/format/DateTimeParseException;
    throw v0

    .line 1894
    .end local v0    # "ex":Ljava/time/format/DateTimeParseException;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least two queries must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api parseUnresolved(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .line 1998
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;

    move-result-object v0

    .line 1999
    .local v0, "context":Ljava/time/format/DateTimeParseContext;
    if-nez v0, :cond_8

    .line 2000
    const/4 v1, 0x0

    return-object v1

    .line 2002
    :cond_8
    invoke-virtual {v0}, Ljava/time/format/DateTimeParseContext;->toUnresolved()Ljava/time/format/Parsed;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api toFormat()Ljava/text/Format;
    .registers 3

    .line 2044
    new-instance v0, Ljava/time/format/DateTimeFormatter$ClassicFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/time/format/DateTimeFormatter$ClassicFormat;-><init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api toFormat(Ljava/time/temporal/TemporalQuery;)Ljava/text/Format;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalQuery<",
            "*>;)",
            "Ljava/text/Format;"
        }
    .end annotation

    .line 2064
    .local p1, "parseQuery":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    const-string v0, "parseQuery"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2065
    new-instance v0, Ljava/time/format/DateTimeFormatter$ClassicFormat;

    invoke-direct {v0, p0, p1}, Ljava/time/format/DateTimeFormatter$ClassicFormat;-><init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V

    return-object v0
.end method

.method greylist-max-o toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .registers 3
    .param p1, "optional"    # Z

    .line 2027
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->withOptional(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 2076
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2077
    .local v0, "pattern":Ljava/lang/String;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v0

    goto :goto_1a

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1a
    move-object v0, v1

    .line 2078
    return-object v0
.end method

.method public whitelist core-platform-api test-api withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;
    .registers 11
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;

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

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v8, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api withDecimalStyle(Ljava/time/format/DecimalStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 11
    .param p1, "decimalStyle"    # Ljava/time/format/DecimalStyle;

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

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v8, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .registers 11
    .param p1, "locale"    # Ljava/util/Locale;

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

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v8, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api withResolverFields(Ljava/util/Set;)Ljava/time/format/DateTimeFormatter;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/time/temporal/TemporalField;",
            ">;)",
            "Ljava/time/format/DateTimeFormatter;"
        }
    .end annotation

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
    new-instance v8, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v8
.end method

.method public varargs whitelist core-platform-api test-api withResolverFields([Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatter;
    .registers 12
    .param p1, "resolverFields"    # [Ljava/time/temporal/TemporalField;

    .line 1649
    const/4 v0, 0x0

    .line 1650
    .local v0, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    if-eqz p1, :cond_10

    .line 1651
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1653
    :cond_10
    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1654
    return-object p0

    .line 1656
    :cond_19
    new-instance v9, Ljava/time/format/DateTimeFormatter;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v8, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v1, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v9
.end method

.method public whitelist core-platform-api test-api withResolverStyle(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 11
    .param p1, "resolverStyle"    # Ljava/time/format/ResolverStyle;

    .line 1587
    const-string v0, "resolverStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1588
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1589
    return-object p0

    .line 1591
    :cond_e
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v8, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;
    .registers 11
    .param p1, "zone"    # Ljava/time/ZoneId;

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

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method
