.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DST_NAME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final GMT:Ljava/lang/String; = "GMT"

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATTERN_INDEX_TO_CALENDAR_FIELD:[I

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

.field private static final TAG_QUOTE_ASCII_CHAR:I = 0x64

.field private static final TAG_QUOTE_CHARS:I = 0x65

.field private static final UTC:Ljava/lang/String; = "UTC"

.field private static final UTC_ZONE_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final currentSerialVersion:I = 0x1

.field static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient compiledPattern:[C

.field private defaultCenturyStart:Ljava/util/Date;

.field private transient defaultCenturyStartYear:I

.field private formatData:Ljava/text/DateFormatSymbols;

.field private transient hasFollowingMinusSign:Z

.field private locale:Ljava/util/Locale;

.field private transient minusSign:C

.field private transient originalNumberFormat:Ljava/text/NumberFormat;

.field private transient originalNumberPattern:Ljava/lang/String;

.field private pattern:Ljava/lang/String;

.field private serialVersionOnStream:I

.field private transient timeZoneNames:Landroid/icu/text/TimeZoneNames;

.field transient useDateFormatSymbols:Z

.field private transient zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const-class v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/text/SimpleDateFormat;->-assertionsDisabled:Z

    .line 540
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 539
    sput-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    .line 1052
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_11e

    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    .line 1081
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_152

    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    .line 1110
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/text/DateFormat$Field;

    .line 1111
    sget-object v1, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    aput-object v1, v0, v5

    .line 1112
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    aput-object v1, v0, v6

    .line 1113
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    aput-object v1, v0, v7

    .line 1114
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    aput-object v1, v0, v4

    .line 1115
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    aput-object v1, v0, v8

    .line 1116
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1117
    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1118
    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1119
    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1120
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1121
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1122
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1123
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1124
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1125
    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1126
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1127
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 1128
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 1129
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 1130
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 1131
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 1132
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 1134
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 1135
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 1110
    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    .line 1144
    new-instance v0, Ljava/util/HashSet;

    .line 1145
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Etc/UCT"

    aput-object v2, v1, v5

    const-string/jumbo v2, "Etc/UTC"

    aput-object v2, v1, v6

    const-string/jumbo v2, "Etc/Universal"

    aput-object v2, v1, v7

    const-string/jumbo v2, "Etc/Zulu"

    aput-object v2, v1, v4

    const-string/jumbo v2, "UCT"

    aput-object v2, v1, v8

    const-string/jumbo v2, "UTC"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 1146
    const-string/jumbo v2, "Universal"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "Zulu"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 1145
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1144
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/text/SimpleDateFormat;->UTC_ZONE_IDS:Ljava/util/Set;

    .line 1771
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v2, v1, v5

    .line 1772
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v2, v1, v6

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v2, v1, v7

    .line 1773
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v2, v1, v4

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v2, v1, v8

    .line 1771
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 1770
    sput-object v0, Ljava/text/SimpleDateFormat;->NAME_TYPES:Ljava/util/EnumSet;

    .line 1780
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .line 1779
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1778
    sput-object v0, Ljava/text/SimpleDateFormat;->DST_NAME_TYPES:Ljava/util/Set;

    .line 441
    return-void

    .line 1052
    nop

    :array_11e
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xb
        0xb
        0xc
        0xd
        0xe
        0x7
        0x6
        0x8
        0x3
        0x4
        0x9
        0xa
        0xa
        0xf
        0xf
        0x11
        0x3e8
        0xf
        0x2
        0x7
    .end array-data

    .line 1081
    :array_152
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x11
        0x1
        0x9
        0x11
        0x2
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 576
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(IILjava/util/Locale;)V

    .line 577
    return-void
.end method

.method constructor <init>(IILjava/util/Locale;)V
    .registers 9
    .param p1, "timeStyle"    # I
    .param p2, "dateStyle"    # I
    .param p3, "loc"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 650
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 466
    iput v4, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 485
    const/16 v2, 0x2d

    iput-char v2, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 491
    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 651
    if-nez p3, :cond_15

    .line 652
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 655
    :cond_15
    iput-object p3, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 657
    invoke-direct {p0, p3}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 659
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    iput-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 660
    invoke-static {p3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 661
    .local v1, "localeData":Llibcore/icu/LocaleData;
    if-ltz p1, :cond_44

    if-ltz p2, :cond_44

    .line 662
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    .line 663
    invoke-virtual {v1, p2}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 664
    invoke-virtual {v1, p1}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 666
    .local v0, "dateTimeArgs":[Ljava/lang/Object;
    const-string/jumbo v2, "{0} {1}"

    invoke-static {v2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 678
    .end local v0    # "dateTimeArgs":[Ljava/lang/Object;
    :goto_40
    invoke-direct {p0, p3}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 679
    return-void

    .line 668
    :cond_44
    if-ltz p1, :cond_4d

    .line 669
    invoke-virtual {v1, p1}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    goto :goto_40

    .line 671
    :cond_4d
    if-ltz p2, :cond_56

    .line 672
    invoke-virtual {v1, p2}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    goto :goto_40

    .line 675
    :cond_56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No date or time style specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 598
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 599
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatSymbols"    # Ljava/text/DateFormatSymbols;

    .prologue
    const/4 v1, 0x1

    .line 635
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 466
    iput v1, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 485
    const/16 v0, 0x2d

    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 637
    if-eqz p1, :cond_11

    if-nez p2, :cond_17

    .line 638
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 641
    :cond_17
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 642
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 643
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 644
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 645
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 646
    iput-boolean v1, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    .line 647
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 466
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 485
    const/16 v0, 0x2d

    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 615
    if-eqz p1, :cond_11

    if-nez p2, :cond_17

    .line 616
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 619
    :cond_17
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 620
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 621
    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 622
    iput-object p2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 623
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 624
    return-void
.end method

.method private checkNegativeNumberExpression()V
    .registers 6

    .prologue
    .line 2688
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    instance-of v3, v3, Ljava/text/DecimalFormat;

    if-eqz v3, :cond_5b

    .line 2689
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iget-object v4, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 2688
    if-eqz v3, :cond_5b

    .line 2690
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v3, Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 2691
    .local v1, "numberPattern":Ljava/lang/String;
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 2692
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 2694
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2697
    .local v2, "separatorIndex":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_55

    .line 2698
    const/16 v3, 0x2d

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2699
    .local v0, "minusIndex":I
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v0, v3, :cond_55

    .line 2700
    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v0, v3, :cond_55

    .line 2701
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 2702
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v3, Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v3

    iput-char v3, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 2705
    .end local v0    # "minusIndex":I
    :cond_55
    iput-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    .line 2707
    .end local v2    # "separatorIndex":I
    :cond_57
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    .line 2709
    .end local v1    # "numberPattern":Ljava/lang/String;
    :cond_5b
    return-void
.end method

.method private compile(Ljava/lang/String;)[C
    .registers 20
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 776
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    .line 777
    .local v11, "length":I
    const/4 v7, 0x0

    .line 778
    .local v7, "inQuote":Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v15, v11, 0x2

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 779
    .local v3, "compiledCode":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 780
    .local v14, "tmpBuffer":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 781
    .local v4, "count":I
    const/4 v9, -0x1

    .line 783
    .local v9, "lastTag":I
    const/4 v6, 0x0

    .end local v14    # "tmpBuffer":Ljava/lang/StringBuilder;
    .local v6, "i":I
    :goto_10
    if-ge v6, v11, :cond_126

    .line 784
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 786
    .local v1, "c":C
    const/16 v15, 0x27

    if-ne v1, v15, :cond_85

    .line 789
    add-int/lit8 v15, v6, 0x1

    if-ge v15, v11, :cond_44

    .line 790
    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 791
    const/16 v15, 0x27

    if-ne v1, v15, :cond_44

    .line 792
    add-int/lit8 v6, v6, 0x1

    .line 793
    if-eqz v4, :cond_35

    .line 794
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 795
    const/4 v9, -0x1

    .line 796
    const/4 v4, 0x0

    .line 798
    :cond_35
    if-eqz v7, :cond_3d

    .line 799
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    :goto_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 801
    :cond_3d
    or-int/lit16 v15, v1, 0x6400

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 806
    :cond_44
    if-nez v7, :cond_5b

    .line 807
    if-eqz v4, :cond_4d

    .line 808
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 809
    const/4 v9, -0x1

    .line 810
    const/4 v4, 0x0

    .line 812
    :cond_4d
    if-nez v14, :cond_56

    .line 813
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 817
    :goto_54
    const/4 v7, 0x1

    goto :goto_3a

    .line 815
    :cond_56
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_54

    .line 819
    :cond_5b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 820
    .local v10, "len":I
    const/4 v15, 0x1

    if-ne v10, v15, :cond_7c

    .line 821
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 822
    .local v2, "ch":C
    const/16 v15, 0x80

    if-ge v2, v15, :cond_73

    .line 823
    or-int/lit16 v15, v2, 0x6400

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 832
    .end local v2    # "ch":C
    :goto_71
    const/4 v7, 0x0

    goto :goto_3a

    .line 825
    .restart local v2    # "ch":C
    :cond_73
    const/16 v15, 0x6501

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 829
    .end local v2    # "ch":C
    :cond_7c
    const/16 v15, 0x65

    invoke-static {v15, v10, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 830
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 836
    .end local v10    # "len":I
    :cond_85
    if-eqz v7, :cond_8b

    .line 837
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 840
    :cond_8b
    const/16 v15, 0x61

    if-lt v1, v15, :cond_93

    const/16 v15, 0x7a

    if-le v1, v15, :cond_e8

    :cond_93
    const/16 v15, 0x41

    if-lt v1, v15, :cond_9b

    const/16 v15, 0x5a

    if-le v1, v15, :cond_e8

    .line 841
    :cond_9b
    if-eqz v4, :cond_a2

    .line 842
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 843
    const/4 v9, -0x1

    .line 844
    const/4 v4, 0x0

    .line 846
    :cond_a2
    const/16 v15, 0x80

    if-ge v1, v15, :cond_ad

    .line 848
    or-int/lit16 v15, v1, 0x6400

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 853
    :cond_ad
    add-int/lit8 v8, v6, 0x1

    .local v8, "j":I
    :goto_af
    if-ge v8, v11, :cond_c3

    .line 854
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 855
    .local v5, "d":C
    const/16 v15, 0x27

    if-eq v5, v15, :cond_c3

    const/16 v15, 0x61

    if-lt v5, v15, :cond_d9

    const/16 v15, 0x7a

    if-gt v5, v15, :cond_d9

    .line 859
    .end local v5    # "d":C
    :cond_c3
    sub-int v15, v8, v6

    or-int/lit16 v15, v15, 0x6500

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 860
    :goto_cb
    if-ge v6, v8, :cond_e4

    .line 861
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 860
    add-int/lit8 v6, v6, 0x1

    goto :goto_cb

    .line 855
    .restart local v5    # "d":C
    :cond_d9
    const/16 v15, 0x41

    if-lt v5, v15, :cond_e1

    const/16 v15, 0x5a

    if-le v5, v15, :cond_c3

    .line 853
    :cond_e1
    add-int/lit8 v8, v8, 0x1

    goto :goto_af

    .line 863
    .end local v5    # "d":C
    :cond_e4
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_3a

    .line 869
    .end local v8    # "j":I
    :cond_e8
    const-string/jumbo v15, "GyMdkHmsSEDFwWahKzZYuXLc"

    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .local v13, "tag":I
    const/4 v15, -0x1

    if-ne v13, v15, :cond_115

    .line 870
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Illegal pattern character \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 871
    const-string/jumbo v17, "\'"

    .line 870
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 873
    :cond_115
    const/4 v15, -0x1

    if-eq v9, v15, :cond_11a

    if-ne v9, v13, :cond_11f

    .line 874
    :cond_11a
    move v9, v13

    .line 875
    add-int/lit8 v4, v4, 0x1

    .line 876
    goto/16 :goto_3a

    .line 878
    :cond_11f
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 879
    move v9, v13

    .line 880
    const/4 v4, 0x1

    goto/16 :goto_3a

    .line 883
    .end local v1    # "c":C
    .end local v13    # "tag":I
    :cond_126
    if-eqz v7, :cond_131

    .line 884
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Unterminated quote"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 887
    :cond_131
    if-eqz v4, :cond_136

    .line 888
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 892
    :cond_136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 893
    .restart local v10    # "len":I
    new-array v12, v10, [C

    .line 894
    .local v12, "r":[C
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v10, v12, v0}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 895
    return-object v12
.end method

.method private static encode(IILjava/lang/StringBuilder;)V
    .registers 6
    .param p0, "tag"    # I
    .param p1, "length"    # I
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 902
    const/16 v0, 0x15

    if-ne p0, v0, :cond_21

    const/4 v0, 0x4

    if-lt p1, v0, :cond_21

    .line 903
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid ISO 8601 format: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :cond_21
    const/16 v0, 0xff

    if-ge p1, v0, :cond_2d

    .line 906
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 912
    :goto_2c
    return-void

    .line 908
    :cond_2d
    shl-int/lit8 v0, p0, 0x8

    or-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 909
    ushr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 910
    const v0, 0xffff

    and-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2c
.end method

.method private format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;
    .registers 12
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "delegate"    # Ljava/text/Format$FieldDelegate;

    .prologue
    .line 981
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 983
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    move-result v5

    .line 985
    .local v5, "useDateFormatSymbols":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v0, v0

    if-ge v6, v0, :cond_47

    .line 986
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v0, v0, v6

    ushr-int/lit8 v1, v0, 0x8

    .line 987
    .local v1, "tag":I
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget-char v0, v0, v6

    and-int/lit16 v2, v0, 0xff

    .line 988
    .local v2, "count":I
    const/16 v0, 0xff

    if-ne v2, v0, :cond_48

    .line 989
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    aget-char v0, v0, v7

    shl-int/lit8 v2, v0, 0x10

    .line 990
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-char v0, v0, v6

    or-int/2addr v2, v0

    move v6, v7

    .line 993
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :goto_31
    packed-switch v1, :pswitch_data_4a

    move-object v0, p0

    move-object v3, p3

    move-object v4, p2

    .line 1004
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V

    goto :goto_a

    .line 995
    :pswitch_3b
    int-to-char v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 999
    :pswitch_40
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    invoke-virtual {p2, v0, v6, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1000
    add-int/2addr v6, v2

    .line 1001
    goto :goto_a

    .line 1008
    .end local v1    # "tag":I
    .end local v2    # "count":I
    :cond_47
    return-object p2

    .end local v6    # "i":I
    .restart local v1    # "tag":I
    .restart local v2    # "count":I
    .restart local v7    # "i":I
    :cond_48
    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_31

    .line 993
    :pswitch_data_4a
    .packed-switch 0x64
        :pswitch_3b
        :pswitch_40
    .end packed-switch
.end method

.method private formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;
    .registers 11
    .param p1, "count"    # I
    .param p2, "value"    # I
    .param p3, "maxIntCount"    # I
    .param p4, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "useDateFormatSymbols"    # Z
    .param p6, "standalone"    # Z

    .prologue
    const/4 v3, 0x3

    .line 1408
    const/4 v0, 0x0

    .line 1409
    .local v0, "current":Ljava/lang/String;
    if-eqz p5, :cond_49

    .line 1411
    const/4 v2, 0x4

    if-ne p1, v2, :cond_22

    .line 1412
    if-eqz p6, :cond_1b

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    .line 1421
    :goto_f
    if-eqz v1, :cond_13

    .line 1422
    aget-object v0, v1, p2

    .line 1430
    .end local v0    # "current":Ljava/lang/String;
    :cond_13
    :goto_13
    if-nez v0, :cond_1a

    .line 1431
    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, v2, p1, p3, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    .line 1434
    :cond_1a
    return-object v0

    .line 1412
    .restart local v0    # "current":Ljava/lang/String;
    :cond_1b
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    .local v1, "months":[Ljava/lang/String;
    goto :goto_f

    .line 1413
    .end local v1    # "months":[Ljava/lang/String;
    :cond_22
    const/4 v2, 0x5

    if-ne p1, v2, :cond_35

    .line 1414
    if-eqz p6, :cond_2e

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getTinyStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_f

    .end local v1    # "months":[Ljava/lang/String;
    :cond_2e
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getTinyMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_f

    .line 1415
    .end local v1    # "months":[Ljava/lang/String;
    :cond_35
    if-ne p1, v3, :cond_47

    .line 1416
    if-eqz p6, :cond_40

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_f

    .end local v1    # "months":[Ljava/lang/String;
    :cond_40
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_f

    .line 1418
    .end local v1    # "months":[Ljava/lang/String;
    :cond_47
    const/4 v1, 0x0

    .local v1, "months":[Ljava/lang/String;
    goto :goto_f

    .line 1425
    .end local v1    # "months":[Ljava/lang/String;
    :cond_49
    if-ge p1, v3, :cond_13

    .line 1426
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private formatWeekday(IIZZ)Ljava/lang/String;
    .registers 7
    .param p1, "count"    # I
    .param p2, "value"    # I
    .param p3, "useDateFormatSymbols"    # Z
    .param p4, "standalone"    # Z

    .prologue
    .line 1388
    if-eqz p3, :cond_3a

    .line 1390
    const/4 v1, 0x4

    if-ne p1, v1, :cond_17

    .line 1391
    if-eqz p4, :cond_10

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    .line 1400
    .local v0, "weekdays":[Ljava/lang/String;
    :goto_d
    aget-object v1, v0, p2

    return-object v1

    .line 1391
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_10
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_d

    .line 1392
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_17
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2a

    .line 1394
    if-eqz p4, :cond_23

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getTinyStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_d

    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_23
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getTinyWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_d

    .line 1397
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_2a
    if-eqz p4, :cond_33

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_d

    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_33
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_d

    .line 1403
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_3a
    const/4 v1, 0x0

    return-object v1
.end method

.method private final getCalendarName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2470
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeZoneNames()Landroid/icu/text/TimeZoneNames;
    .registers 2

    .prologue
    .line 1761
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->timeZoneNames:Landroid/icu/text/TimeZoneNames;

    if-nez v0, :cond_c

    .line 1762
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->timeZoneNames:Landroid/icu/text/TimeZoneNames;

    .line 1764
    :cond_c
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->timeZoneNames:Landroid/icu/text/TimeZoneNames;

    return-object v0
.end method

.method private initialize(Ljava/util/Locale;)V
    .registers 4
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 684
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 687
    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 688
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_29

    .line 689
    invoke-static {p1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 690
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 693
    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_29
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 697
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    .line 698
    return-void
.end method

.method private initializeCalendar(Ljava/util/Locale;)V
    .registers 3
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 701
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_1a

    .line 702
    sget-boolean v0, Ljava/text/SimpleDateFormat;->-assertionsDisabled:Z

    if-nez v0, :cond_10

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 707
    :cond_10
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 709
    :cond_1a
    return-void
.end method

.method private initializeDefaultCentury()V
    .registers 5

    .prologue
    .line 918
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 919
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    const/16 v2, -0x50

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 920
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 921
    return-void
.end method

.method private isDigit(C)Z
    .registers 4
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 2007
    const/16 v1, 0x30

    if-lt p1, v1, :cond_a

    const/16 v1, 0x39

    if-gt p1, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private isGregorianCalendar()Z
    .registers 3

    .prologue
    .line 2481
    const-string/jumbo v0, "java.util.GregorianCalendar"

    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->getCalendarName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I
    .registers 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p5, "calb"    # Ljava/text/CalendarBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/text/CalendarBuilder;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1712
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p4, :cond_44

    .line 1713
    const/4 v6, 0x0

    .line 1715
    .local v6, "bestMatch":Ljava/lang/String;
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v6    # "bestMatch":Ljava/lang/String;
    .local v7, "name$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1716
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 1717
    .local v5, "length":I
    if-eqz v6, :cond_23

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-le v5, v0, :cond_b

    .line 1718
    :cond_23
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1719
    move-object v6, v3

    .local v6, "bestMatch":Ljava/lang/String;
    goto :goto_b

    .line 1724
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "bestMatch":Ljava/lang/String;
    :cond_2f
    if-eqz v6, :cond_44

    .line 1725
    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p5, p3, v0}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1726
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    return v0

    .line 1729
    .end local v7    # "name$iterator":Ljava/util/Iterator;
    :cond_44
    neg-int v0, p2

    return v0
.end method

.method private matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I
    .registers 24
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "data"    # [Ljava/lang/String;
    .param p5, "calb"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 1664
    const/16 v17, 0x0

    .line 1665
    .local v17, "i":I
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    .line 1667
    .local v16, "count":I
    const/4 v2, 0x7

    move/from16 v0, p3

    if-ne v0, v2, :cond_e

    .line 1668
    const/16 v17, 0x1

    .line 1675
    :cond_e
    const/4 v15, 0x0

    .local v15, "bestMatchLength":I
    const/4 v14, -0x1

    .line 1676
    .local v14, "bestMatch":I
    :goto_10
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_56

    .line 1678
    aget-object v2, p4, v17

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 1681
    .local v7, "length":I
    if-le v7, v15, :cond_2f

    .line 1682
    aget-object v5, p4, v17

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    .line 1681
    if-eqz v2, :cond_2f

    .line 1684
    move/from16 v14, v17

    .line 1685
    move v15, v7

    .line 1690
    :cond_2f
    aget-object v2, p4, v17

    add-int/lit8 v3, v7, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_53

    .line 1691
    add-int/lit8 v2, v7, -0x1

    if-le v2, v15, :cond_53

    .line 1692
    aget-object v11, p4, v17

    add-int/lit8 v13, v7, -0x1

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move/from16 v10, p2

    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    .line 1690
    if-eqz v2, :cond_53

    .line 1693
    move/from16 v14, v17

    .line 1694
    add-int/lit8 v15, v7, -0x1

    .line 1676
    :cond_53
    add-int/lit8 v17, v17, 0x1

    goto :goto_10

    .line 1697
    .end local v7    # "length":I
    :cond_56
    if-ltz v14, :cond_62

    .line 1699
    move-object/from16 v0, p5

    move/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1700
    add-int v2, p2, v15

    return v2

    .line 1702
    :cond_62
    move/from16 v0, p2

    neg-int v2, v0

    return v2
.end method

.method private matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "zoneNames"    # [Ljava/lang/String;

    .prologue
    .line 1733
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    const/4 v0, 0x4

    if-gt v6, v0, :cond_18

    .line 1736
    aget-object v3, p3, v6

    .line 1738
    .local v3, "zoneName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 1737
    const/4 v1, 0x1

    .line 1738
    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    .line 1737
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1739
    return v6

    .line 1733
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1742
    .end local v3    # "zoneName":Ljava/lang/String;
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method private parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
    .registers 4
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 927
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 928
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 929
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    .line 930
    return-void
.end method

.method private parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 24
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 1536
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->checkNegativeNumberExpression()V

    .line 1538
    move-object/from16 v0, p2

    iget v4, v0, Ljava/text/ParsePosition;->index:I

    .line 1539
    .local v4, "start":I
    move/from16 v18, v4

    .line 1540
    .local v18, "oldStart":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    .line 1542
    .local v20, "textLength":I
    const/4 v2, 0x1

    new-array v8, v2, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v2, v8, v3

    .line 1544
    .local v8, "ambiguousYear":[Z
    new-instance v11, Ljava/text/CalendarBuilder;

    invoke-direct {v11}, Ljava/text/CalendarBuilder;-><init>()V

    .line 1546
    .local v11, "calb":Ljava/text/CalendarBuilder;
    const/4 v15, 0x0

    .local v15, "i":I
    :cond_1a
    :goto_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v2, v2

    if-ge v15, v2, :cond_102

    .line 1547
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v2, v2, v15

    ushr-int/lit8 v5, v2, 0x8

    .line 1548
    .local v5, "tag":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .local v16, "i":I
    aget-char v2, v2, v15

    and-int/lit16 v6, v2, 0xff

    .line 1549
    .local v6, "count":I
    const/16 v2, 0xff

    if-ne v6, v2, :cond_143

    .line 1550
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    aget-char v2, v2, v16

    shl-int/lit8 v6, v2, 0x10

    .line 1551
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .restart local v16    # "i":I
    aget-char v2, v2, v15

    or-int/2addr v6, v2

    move/from16 v15, v16

    .line 1554
    .end local v16    # "i":I
    .restart local v15    # "i":I
    :goto_4c
    packed-switch v5, :pswitch_data_148

    .line 1581
    const/4 v7, 0x0

    .line 1591
    .local v7, "obeyCount":Z
    const/4 v10, 0x0

    .line 1593
    .local v10, "useFollowingMinusSignAsDelimiter":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v2, v2

    if-ge v15, v2, :cond_94

    .line 1594
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v2, v2, v15

    ushr-int/lit8 v17, v2, 0x8

    .line 1595
    .local v17, "nextTag":I
    const/16 v2, 0x64

    move/from16 v0, v17

    if-eq v0, v2, :cond_6d

    .line 1596
    const/16 v2, 0x65

    move/from16 v0, v17

    if-eq v0, v2, :cond_6d

    .line 1597
    const/4 v7, 0x1

    .line 1600
    :cond_6d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    if-eqz v2, :cond_94

    .line 1601
    const/16 v2, 0x64

    move/from16 v0, v17

    if-eq v0, v2, :cond_7f

    .line 1602
    const/16 v2, 0x65

    move/from16 v0, v17

    if-ne v0, v2, :cond_94

    .line 1604
    :cond_7f
    const/16 v2, 0x64

    move/from16 v0, v17

    if-ne v0, v2, :cond_f9

    .line 1605
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v2, v2, v15

    and-int/lit16 v12, v2, 0xff

    .line 1610
    .local v12, "c":I
    :goto_8d
    move-object/from16 v0, p0

    iget-char v2, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v12, v2, :cond_94

    .line 1611
    const/4 v10, 0x1

    .end local v12    # "c":I
    .end local v17    # "nextTag":I
    :cond_94
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    .line 1615
    invoke-direct/range {v2 .. v11}, Ljava/text/SimpleDateFormat;->subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I

    move-result v4

    .line 1618
    if-gez v4, :cond_1a

    .line 1619
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    .line 1620
    const/4 v2, 0x0

    return-object v2

    .line 1556
    .end local v7    # "obeyCount":Z
    .end local v10    # "useFollowingMinusSignAsDelimiter":Z
    :pswitch_a8
    move/from16 v0, v20

    if-ge v4, v0, :cond_b5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v3, v6

    if-eq v2, v3, :cond_c1

    .line 1557
    :cond_b5
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    .line 1558
    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 1559
    const/4 v2, 0x0

    return-object v2

    .line 1561
    :cond_c1
    add-int/lit8 v4, v4, 0x1

    .line 1562
    goto/16 :goto_1a

    :pswitch_c5
    move v13, v6

    .end local v6    # "count":I
    .local v13, "count":I
    move/from16 v16, v15

    .line 1565
    .end local v15    # "i":I
    .restart local v16    # "i":I
    :goto_c8
    add-int/lit8 v6, v13, -0x1

    .end local v13    # "count":I
    .restart local v6    # "count":I
    if-lez v13, :cond_f5

    .line 1566
    move/from16 v0, v20

    if-ge v4, v0, :cond_ec

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    aget-char v3, v3, v16

    if-eq v2, v3, :cond_ef

    .line 1567
    :goto_e0
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    .line 1568
    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 1569
    const/4 v2, 0x0

    return-object v2

    .end local v15    # "i":I
    .restart local v16    # "i":I
    :cond_ec
    move/from16 v15, v16

    .line 1566
    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto :goto_e0

    .line 1571
    :cond_ef
    add-int/lit8 v4, v4, 0x1

    move v13, v6

    .end local v6    # "count":I
    .restart local v13    # "count":I
    move/from16 v16, v15

    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto :goto_c8

    .end local v13    # "count":I
    .restart local v6    # "count":I
    :cond_f5
    move/from16 v15, v16

    .line 1573
    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_1a

    .line 1607
    .restart local v7    # "obeyCount":Z
    .restart local v10    # "useFollowingMinusSignAsDelimiter":Z
    .restart local v17    # "nextTag":I
    :cond_f9
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v3, v15, 0x1

    aget-char v12, v2, v3

    .restart local v12    # "c":I
    goto :goto_8d

    .line 1629
    .end local v5    # "tag":I
    .end local v6    # "count":I
    .end local v7    # "obeyCount":Z
    .end local v10    # "useFollowingMinusSignAsDelimiter":Z
    .end local v12    # "c":I
    .end local v17    # "nextTag":I
    :cond_102
    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->index:I

    .line 1633
    :try_start_106
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11, v2}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    .line 1636
    .local v19, "parsedDate":Ljava/util/Date;
    const/4 v2, 0x0

    aget-boolean v2, v8, v2

    if-eqz v2, :cond_135

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_135

    .line 1638
    const/16 v2, 0x64

    invoke-virtual {v11, v2}, Ljava/text/CalendarBuilder;->addYear(I)Ljava/text/CalendarBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_134
    .catch Ljava/lang/IllegalArgumentException; {:try_start_106 .. :try_end_134} :catch_136

    move-result-object v19

    .line 1650
    :cond_135
    return-object v19

    .line 1644
    .end local v19    # "parsedDate":Ljava/util/Date;
    :catch_136
    move-exception v14

    .line 1645
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 1646
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    .line 1647
    const/4 v2, 0x0

    return-object v2

    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    .end local v15    # "i":I
    .restart local v5    # "tag":I
    .restart local v6    # "count":I
    .restart local v16    # "i":I
    :cond_143
    move/from16 v15, v16

    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_4c

    .line 1554
    nop

    :pswitch_data_148
    .packed-switch 0x64
        :pswitch_a8
        :pswitch_c5
    .end packed-switch
.end method

.method private parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I
    .registers 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "value"    # I
    .param p4, "start"    # I
    .param p5, "field"    # I
    .param p6, "pos"    # Ljava/text/ParsePosition;
    .param p7, "useDateFormatSymbols"    # Z
    .param p8, "standalone"    # Z
    .param p9, "out"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 2396
    const/4 v1, 0x2

    if-gt p2, v1, :cond_e

    .line 2401
    add-int/lit8 v1, p3, -0x1

    const/4 v2, 0x2

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2402
    iget v1, p6, Ljava/text/ParsePosition;->index:I

    return v1

    .line 2405
    :cond_e
    const/4 v7, -0x1

    .line 2406
    .local v7, "index":I
    if-eqz p7, :cond_49

    .line 2412
    if-eqz p8, :cond_26

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    move-result-object v5

    .line 2411
    :goto_19
    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object/from16 v6, p9

    .line 2410
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v7

    if-lez v7, :cond_2d

    .line 2414
    return v7

    .line 2412
    :cond_26
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v5

    goto :goto_19

    .line 2419
    :cond_2d
    if-eqz p8, :cond_42

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    move-result-object v5

    .line 2418
    :goto_35
    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object/from16 v6, p9

    .line 2417
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v7

    if-lez v7, :cond_5f

    .line 2421
    return v7

    .line 2419
    :cond_42
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    goto :goto_35

    .line 2424
    :cond_49
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 2426
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 2425
    const/4 v3, 0x0

    .line 2424
    invoke-virtual {v1, p5, v3, v2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move-object/from16 v6, p9

    .line 2427
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v7

    if-lez v7, :cond_5f

    .line 2428
    return v7

    .line 2432
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5f
    return v7
.end method

.method private parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I
    .registers 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "useDateFormatSymbols"    # Z
    .param p5, "standalone"    # Z
    .param p6, "out"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 2437
    const/4 v6, -0x1

    .line 2438
    .local v6, "index":I
    if-eqz p4, :cond_3b

    .line 2443
    if-eqz p5, :cond_18

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v4

    .line 2442
    :goto_b
    const/4 v3, 0x7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v5, p6

    .line 2441
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v6

    if-lez v6, :cond_1f

    .line 2445
    return v6

    .line 2443
    :cond_18
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 2451
    :cond_1f
    if-eqz p5, :cond_34

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v4

    .line 2450
    :goto_27
    const/4 v3, 0x7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v5, p6

    .line 2449
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v6

    if-lez v6, :cond_61

    .line 2453
    return v6

    .line 2451
    :cond_34
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v4

    goto :goto_27

    .line 2456
    :cond_3b
    const/4 v0, 0x2

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v8

    .line 2457
    .local v8, "styles":[I
    const/4 v0, 0x0

    array-length v10, v8

    move v9, v0

    :goto_44
    if-ge v9, v10, :cond_61

    aget v7, v8, v9

    .line 2458
    .local v7, "style":I
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p3, v7, v1}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v4

    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v5, p6

    .line 2459
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v6

    if-lez v6, :cond_5d

    .line 2460
    return v6

    .line 2457
    :cond_5d
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_44

    .line 2465
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "style":I
    .end local v8    # "styles":[I
    :cond_61
    return v6
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 2651
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2654
    :try_start_4
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v4

    iput-object v4, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_3b

    .line 2659
    iget v4, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    if-ge v4, v5, :cond_45

    .line 2661
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    .line 2667
    :goto_13
    iput v5, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 2673
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 2674
    .local v2, "tz":Ljava/util/TimeZone;
    instance-of v4, v2, Ljava/util/SimpleTimeZone;

    if-eqz v4, :cond_3a

    .line 2675
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 2676
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2677
    .local v3, "zi":Ljava/util/TimeZone;
    if-eqz v3, :cond_3a

    invoke-virtual {v3, v2}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2678
    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2681
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "zi":Ljava/util/TimeZone;
    :cond_3a
    return-void

    .line 2655
    .end local v2    # "tz":Ljava/util/TimeZone;
    :catch_3b
    move-exception v0

    .line 2656
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/InvalidObjectException;

    const-string/jumbo v5, "invalid pattern"

    invoke-direct {v4, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2665
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_45
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-direct {p0, v4}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    goto :goto_13
.end method

.method private subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V
    .registers 40
    .param p1, "patternCharIndex"    # I
    .param p2, "count"    # I
    .param p3, "delegate"    # Ljava/text/Format$FieldDelegate;
    .param p4, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "useDateFormatSymbols"    # Z

    .prologue
    .line 1155
    const v7, 0x7fffffff

    .line 1156
    .local v7, "maxIntCount":I
    const/16 v17, 0x0

    .line 1157
    .local v17, "current":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    .line 1159
    .local v12, "beginOffset":I
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v20, v4, p1

    .line 1161
    .local v20, "field":I
    const/16 v4, 0x11

    move/from16 v0, v20

    if-ne v0, v4, :cond_81

    .line 1162
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 1163
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getWeekYear()I

    move-result v6

    .line 1176
    .local v6, "value":I
    :goto_25
    const/4 v4, 0x4

    move/from16 v0, p2

    if-lt v0, v4, :cond_a0

    const/16 v25, 0x2

    .line 1177
    .local v25, "style":I
    :goto_2c
    if-nez p5, :cond_44

    const/16 v4, 0x3e8

    move/from16 v0, v20

    if-eq v0, v4, :cond_44

    .line 1178
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    move/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    .line 1185
    .end local v17    # "current":Ljava/lang/String;
    :cond_44
    packed-switch p1, :pswitch_data_2f6

    .line 1370
    :pswitch_47
    if-nez v17, :cond_52

    .line 1371
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    .line 1376
    .end local p2    # "count":I
    :cond_52
    :goto_52
    if-eqz v17, :cond_5b

    .line 1377
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1380
    :cond_5b
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    aget v9, v4, p1

    .line 1381
    .local v9, "fieldID":I
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    aget-object v10, v4, p1

    .line 1383
    .local v10, "f":Ljava/text/DateFormat$Field;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    move-object/from16 v8, p3

    move-object v11, v10

    move-object/from16 v14, p4

    invoke-interface/range {v8 .. v14}, Ljava/text/Format$FieldDelegate;->formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V

    .line 1384
    return-void

    .line 1166
    .end local v6    # "value":I
    .end local v9    # "fieldID":I
    .end local v10    # "f":Ljava/text/DateFormat$Field;
    .end local v25    # "style":I
    .restart local v17    # "current":Ljava/lang/String;
    .restart local p2    # "count":I
    :cond_70
    const/16 p1, 0x1

    .line 1167
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v20, v4, p1

    .line 1168
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .restart local v6    # "value":I
    goto :goto_25

    .line 1170
    .end local v6    # "value":I
    :cond_81
    const/16 v4, 0x3e8

    move/from16 v0, v20

    if-ne v0, v4, :cond_95

    .line 1171
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/text/CalendarBuilder;->toISODayOfWeek(I)I

    move-result v6

    .restart local v6    # "value":I
    goto :goto_25

    .line 1173
    .end local v6    # "value":I
    :cond_95
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .restart local v6    # "value":I
    goto :goto_25

    .line 1176
    :cond_a0
    const/16 v25, 0x1

    .restart local v25    # "style":I
    goto :goto_2c

    .line 1187
    .end local v17    # "current":Ljava/lang/String;
    :pswitch_a3
    if-eqz p5, :cond_b4

    .line 1188
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v19

    .line 1189
    .local v19, "eras":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v4, v0

    if-ge v6, v4, :cond_b4

    .line 1190
    aget-object v17, v19, v6

    .line 1193
    .end local v19    # "eras":[Ljava/lang/String;
    :cond_b4
    if-nez v17, :cond_52

    .line 1194
    const-string/jumbo v17, ""

    .local v17, "current":Ljava/lang/String;
    goto :goto_52

    .line 1200
    .end local v17    # "current":Ljava/lang/String;
    :pswitch_ba
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v4, v4, Ljava/util/GregorianCalendar;

    if-eqz v4, :cond_dc

    .line 1201
    const/4 v4, 0x2

    move/from16 v0, p2

    if-eq v0, v4, :cond_d1

    .line 1202
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto :goto_52

    .line 1204
    :cond_d1
    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v6, v4, v5, v1}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_52

    .line 1207
    :cond_dc
    if-nez v17, :cond_52

    .line 1208
    const/4 v4, 0x2

    move/from16 v0, v25

    if-ne v0, v4, :cond_e5

    const/16 p2, 0x1

    .end local p2    # "count":I
    :cond_e5
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_52

    .line 1215
    .restart local p2    # "count":I
    :pswitch_f0
    if-eqz p5, :cond_52

    .line 1217
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 1216
    invoke-direct/range {v4 .. v10}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "current":Ljava/lang/String;
    goto/16 :goto_52

    .line 1222
    .end local v17    # "current":Ljava/lang/String;
    :pswitch_101
    if-eqz p5, :cond_52

    .line 1224
    const/4 v10, 0x1

    move-object/from16 v4, p0

    move/from16 v5, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 1223
    invoke-direct/range {v4 .. v10}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "current":Ljava/lang/String;
    goto/16 :goto_52

    .line 1229
    .end local v17    # "current":Ljava/lang/String;
    :pswitch_112
    if-nez v17, :cond_52

    .line 1230
    if-nez v6, :cond_12d

    .line 1231
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v4, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_52

    .line 1234
    :cond_12d
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_52

    .line 1240
    :pswitch_138
    if-nez v17, :cond_52

    .line 1241
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    invoke-direct {v0, v1, v6, v2, v4}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "current":Ljava/lang/String;
    goto/16 :goto_52

    .line 1246
    .end local v17    # "current":Ljava/lang/String;
    :pswitch_147
    if-nez v17, :cond_52

    .line 1247
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    invoke-direct {v0, v1, v6, v2, v4}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "current":Ljava/lang/String;
    goto/16 :goto_52

    .line 1252
    .end local v17    # "current":Ljava/lang/String;
    :pswitch_156
    if-eqz p5, :cond_52

    .line 1253
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v15

    .line 1254
    .local v15, "ampm":[Ljava/lang/String;
    aget-object v17, v15, v6

    .restart local v17    # "current":Ljava/lang/String;
    goto/16 :goto_52

    .line 1259
    .end local v15    # "ampm":[Ljava/lang/String;
    .end local v17    # "current":Ljava/lang/String;
    :pswitch_164
    if-nez v17, :cond_52

    .line 1260
    if-nez v6, :cond_17f

    .line 1261
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v4, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_52

    .line 1264
    :cond_17f
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_52

    .line 1270
    :pswitch_18a
    if-nez v17, :cond_52

    .line 1271
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v26

    .line 1272
    .local v26, "tz":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eqz v4, :cond_1d0

    const/16 v18, 0x1

    .line 1274
    .local v18, "daylight":Z
    :goto_1a2
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-boolean v4, v4, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    if-eqz v4, :cond_1d6

    .line 1277
    const/4 v4, 0x4

    move/from16 v0, p2

    if-ge v0, v4, :cond_1d3

    const/16 v27, 0x0

    .line 1279
    .local v27, "tzstyle":I
    :goto_1b1
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    .line 1278
    move/from16 v0, v18

    move/from16 v1, v27

    invoke-static {v4, v5, v0, v1}, Llibcore/icu/TimeZoneNames;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v28

    .line 1300
    .end local v27    # "tzstyle":I
    .local v28, "zoneString":Ljava/lang/String;
    :goto_1c5
    if-eqz v28, :cond_219

    .line 1301
    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_52

    .line 1272
    .end local v18    # "daylight":Z
    .end local v28    # "zoneString":Ljava/lang/String;
    :cond_1d0
    const/16 v18, 0x0

    .restart local v18    # "daylight":Z
    goto :goto_1a2

    .line 1277
    :cond_1d3
    const/16 v27, 0x1

    .restart local v27    # "tzstyle":I
    goto :goto_1b1

    .line 1281
    .end local v27    # "tzstyle":I
    :cond_1d6
    sget-object v4, Ljava/text/SimpleDateFormat;->UTC_ZONE_IDS:Ljava/util/Set;

    invoke-virtual/range {v26 .. v26}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e6

    .line 1283
    const-string/jumbo v28, "UTC"

    .restart local v28    # "zoneString":Ljava/lang/String;
    goto :goto_1c5

    .line 1286
    .end local v28    # "zoneString":Ljava/lang/String;
    :cond_1e6
    const/4 v4, 0x4

    move/from16 v0, p2

    if-ge v0, v4, :cond_211

    .line 1287
    if-eqz v18, :cond_20e

    .line 1288
    sget-object v23, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .line 1295
    .local v23, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :goto_1ef
    invoke-virtual/range {v26 .. v26}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1296
    .local v16, "canonicalID":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v4

    .line 1297
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    .line 1296
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-wide/from16 v2, v30

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "zoneString":Ljava/lang/String;
    goto :goto_1c5

    .line 1289
    .end local v16    # "canonicalID":Ljava/lang/String;
    .end local v23    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    .end local v28    # "zoneString":Ljava/lang/String;
    :cond_20e
    sget-object v23, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .restart local v23    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_1ef

    .line 1291
    .end local v23    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_211
    if-eqz v18, :cond_216

    .line 1292
    sget-object v23, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .restart local v23    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_1ef

    .line 1293
    .end local v23    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_216
    sget-object v23, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .restart local v23    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_1ef

    .line 1303
    .end local v23    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    .restart local v28    # "zoneString":Ljava/lang/String;
    :cond_219
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1304
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1303
    add-int v24, v4, v5

    .line 1305
    .local v24, "offsetMillis":I
    const/4 v4, 0x1

    const/4 v5, 0x1

    move/from16 v0, v24

    invoke-static {v4, v5, v0}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_52

    .line 1312
    .end local v18    # "daylight":Z
    .end local v24    # "offsetMillis":I
    .end local v26    # "tz":Ljava/util/TimeZone;
    .end local v28    # "zoneString":Ljava/lang/String;
    :pswitch_23e
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int v6, v4, v5

    .line 1313
    const/4 v4, 0x4

    move/from16 v0, p2

    if-lt v0, v4, :cond_271

    const/16 v22, 0x1

    .line 1314
    .local v22, "includeSeparator":Z
    :goto_25b
    const/4 v4, 0x4

    move/from16 v0, p2

    if-ne v0, v4, :cond_274

    const/16 v21, 0x1

    .line 1315
    .local v21, "includeGmt":Z
    :goto_262
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v6}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_52

    .line 1313
    .end local v21    # "includeGmt":Z
    .end local v22    # "includeSeparator":Z
    :cond_271
    const/16 v22, 0x0

    .restart local v22    # "includeSeparator":Z
    goto :goto_25b

    .line 1314
    :cond_274
    const/16 v21, 0x0

    .restart local v21    # "includeGmt":Z
    goto :goto_262

    .line 1321
    .end local v21    # "includeGmt":Z
    .end local v22    # "includeSeparator":Z
    :pswitch_277
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1322
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1321
    add-int v6, v4, v5

    .line 1324
    if-nez v6, :cond_298

    .line 1325
    const/16 v4, 0x5a

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_52

    .line 1329
    :cond_298
    const v4, 0xea60

    div-int/2addr v6, v4

    .line 1330
    if-ltz v6, :cond_2c8

    .line 1331
    const/16 v4, 0x2b

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1337
    :goto_2a5
    div-int/lit8 v4, v6, 0x3c

    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 1338
    const/4 v4, 0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_52

    .line 1342
    const/4 v4, 0x3

    move/from16 v0, p2

    if-ne v0, v4, :cond_2be

    .line 1343
    const/16 v4, 0x3a

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1345
    :cond_2be
    rem-int/lit8 v4, v6, 0x3c

    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    goto/16 :goto_52

    .line 1333
    :cond_2c8
    const/16 v4, 0x2d

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1334
    neg-int v6, v6

    goto :goto_2a5

    .line 1353
    :pswitch_2d1
    if-nez v17, :cond_52

    .line 1354
    int-to-double v4, v6

    const-wide v30, 0x408f400000000000L    # 1000.0

    div-double v4, v4, v30

    const-wide/high16 v30, 0x4024000000000000L    # 10.0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    mul-double v4, v4, v30

    double-to-int v6, v4

    .line 1355
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v6, v1, v2, v3}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_52

    .line 1185
    :pswitch_data_2f6
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_ba
        :pswitch_f0
        :pswitch_47
        :pswitch_112
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_2d1
        :pswitch_138
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_156
        :pswitch_164
        :pswitch_47
        :pswitch_18a
        :pswitch_23e
        :pswitch_ba
        :pswitch_47
        :pswitch_277
        :pswitch_101
        :pswitch_147
    .end packed-switch
.end method

.method private subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I
    .registers 52
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "patternCharIndex"    # I
    .param p4, "count"    # I
    .param p5, "obeyCount"    # Z
    .param p6, "ambiguousYear"    # [Z
    .param p7, "origPos"    # Ljava/text/ParsePosition;
    .param p8, "useFollowingMinusSignAsDelimiter"    # Z
    .param p9, "calb"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 2032
    const/4 v12, 0x0

    .line 2033
    .local v12, "value":I
    new-instance v15, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v15, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2034
    .local v15, "pos":Ljava/text/ParsePosition;
    move/from16 v0, p2

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    .line 2035
    const/16 v4, 0x13

    move/from16 v0, p3

    if-ne v0, v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1f

    .line 2037
    const/16 p3, 0x1

    .line 2039
    :cond_1f
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v7, v4, p3

    .line 2044
    .local v7, "field":I
    :goto_23
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_33

    .line 2045
    move/from16 v0, p2

    move-object/from16 v1, p7

    iput v0, v1, Ljava/text/ParsePosition;->errorIndex:I

    .line 2046
    const/4 v4, -0x1

    return v4

    .line 2048
    :cond_33
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v29

    .line 2049
    .local v29, "c":C
    const/16 v4, 0x20

    move/from16 v0, v29

    if-eq v0, v4, :cond_64

    const/16 v4, 0x9

    move/from16 v0, v29

    if-eq v0, v4, :cond_64

    .line 2061
    const/4 v4, 0x4

    move/from16 v0, p3

    if-eq v0, v4, :cond_52

    .line 2062
    const/16 v4, 0xf

    move/from16 v0, p3

    if-ne v0, v4, :cond_6b

    .line 2068
    :cond_52
    if-eqz p5, :cond_115

    .line 2069
    add-int v4, p2, p4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_f3

    .line 2388
    .end local v7    # "field":I
    :cond_5c
    :goto_5c
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p7

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 2389
    const/4 v4, -0x1

    return v4

    .line 2052
    .restart local v7    # "field":I
    :cond_64
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto :goto_23

    .line 2063
    :cond_6b
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_75

    const/4 v4, 0x2

    move/from16 v0, p4

    if-le v0, v4, :cond_52

    .line 2064
    :cond_75
    const/4 v4, 0x1

    move/from16 v0, p3

    if-eq v0, v4, :cond_52

    .line 2065
    const/16 v4, 0x13

    move/from16 v0, p3

    if-eq v0, v4, :cond_52

    .line 2094
    :cond_80
    :goto_80
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    move-result v16

    .line 2097
    .local v16, "useDateFormatSymbols":Z
    packed-switch p3, :pswitch_data_48c

    .line 2346
    :pswitch_87
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    move-result v39

    .line 2347
    .local v39, "parseStart":I
    if-eqz p5, :cond_452

    .line 2348
    add-int v4, p2, p4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_5c

    .line 2351
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    add-int v5, p2, p4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    .line 2355
    .local v38, "number":Ljava/lang/Number;
    :goto_a6
    if-eqz v38, :cond_5c

    .line 2356
    const/16 v4, 0x8

    move/from16 v0, p3

    if-ne v0, v4, :cond_45e

    .line 2363
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v32

    .line 2364
    .local v32, "doubleValue":D
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    sub-int v41, v4, v39

    .line 2365
    .local v41, "width":I
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    move/from16 v0, v41

    int-to-double v10, v0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    .line 2366
    .local v30, "divisor":D
    div-double v4, v32, v30

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v10

    double-to-int v12, v4

    .line 2371
    .end local v30    # "divisor":D
    .end local v32    # "doubleValue":D
    .end local v41    # "width":I
    :goto_ca
    if-eqz p8, :cond_eb

    if-gez v12, :cond_eb

    .line 2372
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_464

    .line 2373
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-eq v4, v5, :cond_464

    .line 2376
    :goto_e4
    neg-int v12, v12

    .line 2377
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    .line 2380
    :cond_eb
    move-object/from16 v0, p9

    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2381
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 2072
    .end local v16    # "useDateFormatSymbols":Z
    .end local v38    # "number":Ljava/lang/Number;
    .end local v39    # "parseStart":I
    :cond_f3
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    add-int v5, p2, p4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    .line 2076
    .restart local v38    # "number":Ljava/lang/Number;
    :goto_104
    if-nez v38, :cond_120

    .line 2077
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_5c

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v4, v4, Ljava/util/GregorianCalendar;

    if-eqz v4, :cond_80

    goto/16 :goto_5c

    .line 2074
    .end local v38    # "number":Ljava/lang/Number;
    :cond_115
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    .restart local v38    # "number":Ljava/lang/Number;
    goto :goto_104

    .line 2081
    :cond_120
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 2083
    if-eqz p8, :cond_80

    if-gez v12, :cond_80

    .line 2084
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_147

    .line 2085
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-eq v4, v5, :cond_147

    .line 2088
    :goto_13e
    neg-int v12, v12

    .line 2089
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto/16 :goto_80

    .line 2086
    :cond_147
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_80

    .line 2087
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v4, v5, :cond_80

    goto :goto_13e

    .line 2099
    .end local v38    # "number":Ljava/lang/Number;
    .restart local v16    # "useDateFormatSymbols":Z
    :pswitch_160
    if-eqz v16, :cond_17a

    .line 2100
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    .end local v7    # "field":I
    move-result v37

    .local v37, "index":I
    if-lez v37, :cond_5c

    .line 2101
    return v37

    .line 2104
    .end local v37    # "index":I
    .restart local v7    # "field":I
    :cond_17a
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 2106
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 2105
    const/4 v6, 0x0

    .line 2104
    invoke-virtual {v4, v7, v6, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    .line 2107
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v37

    .restart local v37    # "index":I
    if-lez v37, :cond_5c

    .line 2108
    return v37

    .line 2115
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v37    # "index":I
    :pswitch_196
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v4, v4, Ljava/util/GregorianCalendar;

    if-nez v4, :cond_1cf

    .line 2118
    const/4 v4, 0x4

    move/from16 v0, p4

    if-lt v0, v4, :cond_1c4

    const/16 v40, 0x2

    .line 2119
    .local v40, "style":I
    :goto_1a5
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    move/from16 v0, v40

    invoke-virtual {v4, v7, v0, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .line 2120
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v8, :cond_1c7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    .line 2121
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v37

    .restart local v37    # "index":I
    if-lez v37, :cond_1c7

    .line 2122
    return v37

    .line 2118
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v37    # "index":I
    .end local v40    # "style":I
    :cond_1c4
    const/16 v40, 0x1

    .restart local v40    # "style":I
    goto :goto_1a5

    .line 2125
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1c7
    move-object/from16 v0, p9

    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2126
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 2135
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v40    # "style":I
    :cond_1cf
    const/4 v4, 0x2

    move/from16 v0, p4

    if-gt v0, v4, :cond_211

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    sub-int v4, v4, p2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_211

    .line 2136
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    .line 2135
    if-eqz v4, :cond_211

    .line 2137
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    .line 2135
    if-eqz v4, :cond_211

    .line 2146
    move-object/from16 v0, p0

    iget v4, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    rem-int/lit8 v28, v4, 0x64

    .line 2147
    .local v28, "ambiguousTwoDigitYear":I
    move/from16 v0, v28

    if-ne v12, v0, :cond_219

    const/4 v4, 0x1

    :goto_1fe
    const/4 v5, 0x0

    aput-boolean v4, p6, v5

    .line 2148
    move-object/from16 v0, p0

    iget v4, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    div-int/lit8 v4, v4, 0x64

    mul-int/lit8 v5, v4, 0x64

    .line 2149
    move/from16 v0, v28

    if-ge v12, v0, :cond_21b

    const/16 v4, 0x64

    .line 2148
    :goto_20f
    add-int/2addr v4, v5

    add-int/2addr v12, v4

    .line 2151
    .end local v28    # "ambiguousTwoDigitYear":I
    :cond_211
    move-object/from16 v0, p9

    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2152
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 2147
    .restart local v28    # "ambiguousTwoDigitYear":I
    :cond_219
    const/4 v4, 0x0

    goto :goto_1fe

    .line 2149
    :cond_21b
    const/4 v4, 0x0

    goto :goto_20f

    .line 2157
    .end local v28    # "ambiguousTwoDigitYear":I
    :pswitch_21d
    const/16 v17, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v13, p2

    move v14, v7

    move-object/from16 v18, p9

    .line 2156
    invoke-direct/range {v9 .. v18}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    move-result v36

    .line 2158
    .local v36, "idx":I
    if-lez v36, :cond_5c

    .line 2159
    return v36

    .line 2168
    .end local v36    # "idx":I
    :pswitch_231
    const/16 v17, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v13, p2

    move v14, v7

    move-object/from16 v18, p9

    .line 2167
    invoke-direct/range {v9 .. v18}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    move-result v36

    .line 2169
    .restart local v36    # "idx":I
    if-lez v36, :cond_5c

    .line 2170
    return v36

    .line 2176
    .end local v36    # "idx":I
    :pswitch_245
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result v4

    if-nez v4, :cond_252

    .line 2178
    const/4 v4, 0x1

    if-lt v12, v4, :cond_5c

    const/16 v4, 0x18

    if-gt v12, v4, :cond_5c

    .line 2183
    :cond_252
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v12, v4, :cond_261

    .line 2184
    const/4 v12, 0x0

    .line 2186
    :cond_261
    const/16 v4, 0xb

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2187
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 2192
    :pswitch_26b
    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, p2

    move/from16 v20, v7

    move/from16 v21, v16

    move-object/from16 v23, p9

    .line 2191
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    move-result v36

    .line 2193
    .restart local v36    # "idx":I
    if-lez v36, :cond_5c

    .line 2194
    return v36

    .line 2202
    .end local v36    # "idx":I
    :pswitch_280
    const/16 v22, 0x1

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, p2

    move/from16 v20, v7

    move/from16 v21, v16

    move-object/from16 v23, p9

    .line 2201
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    move-result v36

    .line 2203
    .restart local v36    # "idx":I
    if-lez v36, :cond_5c

    .line 2204
    return v36

    .line 2211
    .end local v36    # "idx":I
    :pswitch_295
    if-eqz v16, :cond_2b0

    .line 2213
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v21

    .line 2212
    const/16 v20, 0x9

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, p2

    move-object/from16 v22, p9

    invoke-direct/range {v17 .. v22}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v37

    .restart local v37    # "index":I
    if-lez v37, :cond_5c

    .line 2214
    return v37

    .line 2217
    .end local v37    # "index":I
    :cond_2b0
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v6, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    .line 2218
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v37

    .restart local v37    # "index":I
    if-lez v37, :cond_5c

    .line 2219
    return v37

    .line 2225
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v37    # "index":I
    :pswitch_2cc
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result v4

    if-nez v4, :cond_2d9

    .line 2227
    const/4 v4, 0x1

    if-lt v12, v4, :cond_5c

    const/16 v4, 0xc

    if-gt v12, v4, :cond_5c

    .line 2232
    :cond_2d9
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v12, v4, :cond_2e8

    .line 2233
    const/4 v12, 0x0

    .line 2235
    :cond_2e8
    const/16 v4, 0xa

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2236
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 2241
    :pswitch_2f2
    const/16 v20, 0x0

    .line 2243
    .local v20, "sign":I
    :try_start_2f4
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_2fb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2f4 .. :try_end_2fb} :catch_3a7

    move-result v29

    .line 2244
    const/16 v4, 0x2b

    move/from16 v0, v29

    if-ne v0, v4, :cond_373

    .line 2245
    const/16 v20, 0x1

    move/from16 v24, v20

    .line 2249
    .end local v20    # "sign":I
    .local v24, "sign":I
    :goto_306
    if-nez v24, :cond_3c2

    .line 2251
    const/16 v4, 0x47

    move/from16 v0, v29

    if-eq v0, v4, :cond_314

    const/16 v4, 0x67

    move/from16 v0, v29

    if-ne v0, v4, :cond_3aa

    .line 2252
    :cond_314
    :try_start_314
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v4, p2

    const-string/jumbo v5, "GMT"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_3aa

    .line 2253
    const-string/jumbo v20, "GMT"

    const-string/jumbo v4, "GMT"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v18, 0x1

    const/16 v21, 0x0

    move-object/from16 v17, p1

    move/from16 v19, p2

    invoke-virtual/range {v17 .. v22}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    .line 2251
    if-eqz v4, :cond_3aa

    .line 2254
    const-string/jumbo v4, "GMT"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, p2

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    .line 2256
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v15, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_483

    .line 2257
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_356
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_314 .. :try_end_356} :catch_47e

    move-result v29

    .line 2258
    const/16 v4, 0x2b

    move/from16 v0, v29

    if-ne v0, v4, :cond_37e

    .line 2259
    const/16 v20, 0x1

    .line 2265
    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    :goto_35f
    if-nez v20, :cond_387

    .line 2266
    const/16 v4, 0xf

    const/4 v5, 0x0

    :try_start_364
    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v5}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v4

    .line 2267
    const/16 v5, 0x10

    const/4 v6, 0x0

    .line 2266
    invoke-virtual {v4, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2268
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 2246
    :cond_373
    const/16 v4, 0x2d

    move/from16 v0, v29

    if-ne v0, v4, :cond_487

    .line 2247
    const/16 v20, -0x1

    move/from16 v24, v20

    .end local v20    # "sign":I
    .restart local v24    # "sign":I
    goto :goto_306

    .line 2260
    :cond_37e
    const/16 v4, 0x2d

    move/from16 v0, v29

    if-ne v0, v4, :cond_483

    .line 2261
    const/16 v20, -0x1

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto :goto_35f

    .line 2272
    :cond_387
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v19

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    const/16 v21, 0x0

    .line 2273
    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v23, p9

    .line 2272
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v35

    .line 2274
    .local v35, "i":I
    if-lez v35, :cond_3a0

    .line 2275
    return v35

    .line 2277
    :cond_3a0
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I
    :try_end_3a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_364 .. :try_end_3a5} :catch_3a7

    goto/16 :goto_5c

    .line 2296
    .end local v35    # "i":I
    :catch_3a7
    move-exception v34

    .local v34, "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_5c

    .line 2281
    .end local v20    # "sign":I
    .end local v34    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v24    # "sign":I
    :cond_3aa
    :try_start_3aa
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v4, v2}, Ljava/text/SimpleDateFormat;->subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v35

    .line 2282
    .restart local v35    # "i":I
    if-lez v35, :cond_3b9

    .line 2283
    return v35

    .line 2285
    :cond_3b9
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    move/from16 v20, v24

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_5c

    .line 2289
    .end local v20    # "sign":I
    .end local v35    # "i":I
    .restart local v24    # "sign":I
    :cond_3c2
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v23, v4, 0x1

    move/from16 v0, v23

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    const/16 v25, 0x0

    .line 2290
    const/16 v26, 0x0

    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move-object/from16 v27, p9

    .line 2289
    invoke-direct/range {v21 .. v27}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v35

    .line 2291
    .restart local v35    # "i":I
    if-lez v35, :cond_3db

    .line 2292
    return v35

    .line 2294
    :cond_3db
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I
    :try_end_3e0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3aa .. :try_end_3e0} :catch_47e

    move/from16 v20, v24

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_5c

    .line 2303
    .end local v20    # "sign":I
    .end local v35    # "i":I
    :pswitch_3e4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v15, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_5c

    .line 2308
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v29

    .line 2309
    const/16 v4, 0x5a

    move/from16 v0, v29

    if-ne v0, v4, :cond_411

    .line 2310
    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v5}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2311
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 2315
    :cond_411
    const/16 v4, 0x2b

    move/from16 v0, v29

    if-ne v0, v4, :cond_437

    .line 2316
    const/16 v20, 0x1

    .line 2323
    .restart local v20    # "sign":I
    :goto_419
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v19

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    .line 2324
    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_448

    const/16 v22, 0x1

    :goto_428
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v21, p4

    move-object/from16 v23, p9

    .line 2323
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v35

    .line 2325
    .restart local v35    # "i":I
    if-lez v35, :cond_44b

    .line 2326
    return v35

    .line 2317
    .end local v20    # "sign":I
    .end local v35    # "i":I
    :cond_437
    const/16 v4, 0x2d

    move/from16 v0, v29

    if-ne v0, v4, :cond_440

    .line 2318
    const/16 v20, -0x1

    .restart local v20    # "sign":I
    goto :goto_419

    .line 2320
    .end local v20    # "sign":I
    :cond_440
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto/16 :goto_5c

    .line 2324
    .restart local v20    # "sign":I
    :cond_448
    const/16 v22, 0x0

    goto :goto_428

    .line 2328
    .restart local v35    # "i":I
    :cond_44b
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto/16 :goto_5c

    .line 2353
    .end local v20    # "sign":I
    .end local v35    # "i":I
    .restart local v39    # "parseStart":I
    :cond_452
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    .restart local v38    # "number":Ljava/lang/Number;
    goto/16 :goto_a6

    .line 2368
    :cond_45e
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->intValue()I

    move-result v12

    goto/16 :goto_ca

    .line 2374
    :cond_464
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_eb

    .line 2375
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v4, v5, :cond_eb

    goto/16 :goto_e4

    .line 2296
    .end local v38    # "number":Ljava/lang/Number;
    .end local v39    # "parseStart":I
    .restart local v24    # "sign":I
    :catch_47e
    move-exception v34

    .restart local v34    # "e":Ljava/lang/IndexOutOfBoundsException;
    move/from16 v20, v24

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_5c

    .end local v20    # "sign":I
    .end local v34    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v24    # "sign":I
    :cond_483
    move/from16 v20, v24

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_35f

    :cond_487
    move/from16 v24, v20

    .end local v20    # "sign":I
    .restart local v24    # "sign":I
    goto/16 :goto_306

    .line 2097
    nop

    :pswitch_data_48c
    .packed-switch 0x0
        :pswitch_160
        :pswitch_196
        :pswitch_21d
        :pswitch_87
        :pswitch_245
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_26b
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_295
        :pswitch_2cc
        :pswitch_87
        :pswitch_2f2
        :pswitch_2f2
        :pswitch_196
        :pswitch_87
        :pswitch_3e4
        :pswitch_231
        :pswitch_280
    .end packed-switch
.end method

.method private subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I
    .registers 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "sign"    # I
    .param p4, "count"    # I
    .param p5, "colonRequired"    # Z
    .param p6, "calb"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 1946
    move v3, p2

    .line 1950
    .local v3, "index":I
    add-int/lit8 v3, p2, 0x1

    :try_start_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1953
    .local v0, "c":C
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_a} :catch_7b

    move-result v6

    if-nez v6, :cond_10

    .line 2003
    .end local v0    # "c":C
    :cond_d
    :goto_d
    rsub-int/lit8 v6, v3, 0x1

    return v6

    .line 1956
    .restart local v0    # "c":C
    :cond_10
    add-int/lit8 v2, v0, -0x30

    .line 1957
    .local v2, "hours":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    :try_start_14
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1958
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_1b} :catch_7d

    move-result v6

    if-eqz v6, :cond_2a

    .line 1959
    mul-int/lit8 v6, v2, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v2, v6, v7

    .line 1963
    :goto_24
    const/16 v6, 0x17

    if-le v2, v6, :cond_2e

    move v3, v4

    .line 1964
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_d

    .line 1961
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_2a
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_24

    .line 1966
    :cond_2e
    const/4 v5, 0x0

    .line 1967
    .local v5, "minutes":I
    const/4 v6, 0x1

    if-eq p4, v6, :cond_80

    .line 1969
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    :try_start_34
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_37
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_34 .. :try_end_37} :catch_7b

    move-result v0

    .line 1979
    const/16 v6, 0x3a

    if-ne v0, v6, :cond_4a

    .line 1980
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    :try_start_3e
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1984
    :goto_42
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_45
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3e .. :try_end_45} :catch_7d

    move-result v6

    if-nez v6, :cond_4e

    move v3, v4

    .line 1985
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_d

    .line 1981
    :cond_4a
    if-nez p5, :cond_d

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_42

    .line 1987
    :cond_4e
    add-int/lit8 v5, v0, -0x30

    .line 1988
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    :try_start_52
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1989
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1992
    mul-int/lit8 v6, v5, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v5, v6, v7

    .line 1993
    const/16 v6, 0x3b

    if-gt v5, v6, :cond_d

    .line 1997
    :goto_66
    mul-int/lit8 v6, v2, 0x3c

    add-int/2addr v5, v6

    .line 1998
    const v6, 0xea60

    mul-int/2addr v6, v5

    mul-int/2addr v6, p3

    const/16 v7, 0xf

    invoke-virtual {p6, v7, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v6

    .line 1999
    const/16 v7, 0x10

    const/4 v8, 0x0

    .line 1998
    invoke-virtual {v6, v7, v8}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;
    :try_end_7a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_52 .. :try_end_7a} :catch_7b

    .line 2000
    return v3

    .line 2001
    .end local v0    # "c":C
    .end local v2    # "hours":I
    .end local v5    # "minutes":I
    :catch_7b
    move-exception v1

    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_d

    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "index":I
    .restart local v0    # "c":C
    .restart local v2    # "hours":I
    .restart local v4    # "index":I
    :catch_7d
    move-exception v1

    .restart local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_d

    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "index":I
    .restart local v4    # "index":I
    .restart local v5    # "minutes":I
    :cond_80
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_66
.end method

.method private subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 1752
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-boolean v0, v0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    if-eqz v0, :cond_b

    .line 1754
    invoke-direct {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->subParseZoneStringFromSymbols(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v0

    return v0

    .line 1756
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->subParseZoneStringFromICU(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v0

    return v0
.end method

.method private subParseZoneStringFromICU(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .registers 26
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 1786
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1788
    .local v10, "currentTimeZoneID":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v20

    .line 1789
    .local v20, "tzNames":Landroid/icu/text/TimeZoneNames;
    const/4 v9, 0x0

    .line 1792
    .local v9, "bestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    const/4 v11, 0x0

    .line 1795
    .local v11, "currentTzMetaZoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v3, "UTC"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v3, v3, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_9e

    .line 1796
    const-string/jumbo v6, "UTC"

    const-string/jumbo v3, "UTC"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    .line 1795
    if-eqz v3, :cond_9e

    .line 1797
    new-instance v9, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 1798
    .end local v9    # "bestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v4, "UTC"

    const-string/jumbo v5, "UTC"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    .line 1797
    invoke-direct {v9, v3, v4, v6, v5}, Landroid/icu/text/TimeZoneNames$MatchInfo;-><init>(Landroid/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1828
    .end local v11    # "currentTzMetaZoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_49
    invoke-virtual {v9}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v19

    .line 1829
    .local v19, "tzId":Ljava/lang/String;
    if-nez v19, :cond_63

    .line 1830
    if-nez v11, :cond_57

    .line 1831
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/icu/text/TimeZoneNames;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11

    .line 1833
    :cond_57
    invoke-virtual {v9}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 1834
    move-object/from16 v19, v10

    .line 1847
    :cond_63
    :goto_63
    invoke-static/range {v19 .. v19}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    .line 1848
    .local v17, "newTimeZone":Ljava/util/TimeZone;
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    .line 1849
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1853
    :cond_76
    sget-object v3, Ljava/text/SimpleDateFormat;->DST_NAME_TYPES:Ljava/util/Set;

    invoke-virtual {v9}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 1854
    .local v13, "isDst":Z
    if-eqz v13, :cond_125

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v12

    .line 1855
    .local v12, "dstAmount":I
    :goto_86
    if-eqz v13, :cond_8a

    if-eqz v12, :cond_97

    .line 1856
    :cond_8a
    const/16 v3, 0xf

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/text/CalendarBuilder;->clear(I)Ljava/text/CalendarBuilder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1859
    :cond_97
    invoke-virtual {v9}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v3

    add-int v3, v3, p2

    return v3

    .line 1800
    .end local v12    # "dstAmount":I
    .end local v13    # "isDst":Z
    .end local v17    # "newTimeZone":Ljava/util/TimeZone;
    .end local v19    # "tzId":Ljava/lang/String;
    .restart local v9    # "bestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .restart local v11    # "currentTzMetaZoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9e
    sget-object v3, Ljava/text/SimpleDateFormat;->NAME_TYPES:Ljava/util/EnumSet;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v16

    .line 1801
    .local v16, "matches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v9    # "bestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v11    # "currentTzMetaZoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v15, "match$iterator":Ljava/util/Iterator;
    :cond_ae
    :goto_ae
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_dd

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 1802
    .local v14, "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    if-eqz v9, :cond_c6

    invoke-virtual {v9}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v3

    invoke-virtual {v14}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v4

    if-ge v3, v4, :cond_c8

    .line 1803
    :cond_c6
    move-object v9, v14

    .line 1802
    .local v9, "bestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    goto :goto_ae

    .line 1804
    .end local v9    # "bestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_c8
    invoke-virtual {v9}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v3

    invoke-virtual {v14}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v4

    if-ne v3, v4, :cond_ae

    .line 1805
    invoke-virtual {v14}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 1808
    move-object v9, v14

    .line 1822
    .end local v14    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_dd
    :goto_dd
    if-nez v9, :cond_49

    .line 1824
    move/from16 v0, p2

    neg-int v3, v0

    return v3

    .line 1810
    .restart local v14    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_e3
    invoke-virtual {v14}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ae

    .line 1811
    if-nez v11, :cond_f1

    .line 1813
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/icu/text/TimeZoneNames;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11

    .line 1815
    :cond_f1
    invoke-virtual {v14}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 1816
    move-object v9, v14

    .line 1817
    .restart local v9    # "bestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    goto :goto_dd

    .line 1837
    .end local v9    # "bestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v14    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v15    # "match$iterator":Ljava/util/Iterator;
    .end local v16    # "matches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .restart local v19    # "tzId":Ljava/lang/String;
    :cond_fd
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-static {v3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v21

    .line 1838
    .local v21, "uLocale":Landroid/icu/util/ULocale;
    invoke-virtual/range {v21 .. v21}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v18

    .line 1839
    .local v18, "region":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_117

    .line 1840
    invoke-static/range {v21 .. v21}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v21

    .line 1841
    invoke-virtual/range {v21 .. v21}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v18

    .line 1843
    :cond_117
    invoke-virtual {v9}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_63

    .line 1854
    .end local v18    # "region":Ljava/lang/String;
    .end local v21    # "uLocale":Landroid/icu/util/ULocale;
    .restart local v13    # "isDst":Z
    .restart local v17    # "newTimeZone":Ljava/util/TimeZone;
    :cond_125
    const/4 v12, 0x0

    .restart local v12    # "dstAmount":I
    goto/16 :goto_86
.end method

.method private subParseZoneStringFromSymbols(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .registers 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 1866
    const/4 v6, 0x0

    .line 1867
    .local v6, "useSameName":Z
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1872
    .local v0, "currentTimeZone":Ljava/util/TimeZone;
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    move-result v7

    .line 1873
    .local v7, "zoneIndex":I
    const/4 v5, 0x0

    .line 1874
    .local v5, "tz":Ljava/util/TimeZone;
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v9

    .line 1875
    .local v9, "zoneStrings":[[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1876
    .local v8, "zoneNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1877
    .local v4, "nameIndex":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_37

    .line 1878
    aget-object v8, v9, v7

    .line 1879
    .local v8, "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_37

    .line 1880
    const/4 v10, 0x2

    if-gt v4, v10, :cond_30

    .line 1882
    aget-object v10, v8, v4

    add-int/lit8 v11, v4, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 1884
    .end local v6    # "useSameName":Z
    :cond_30
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1887
    .end local v5    # "tz":Ljava/util/TimeZone;
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_37
    if-nez v5, :cond_66

    .line 1888
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    move-result v7

    .line 1889
    const/4 v10, -0x1

    if-eq v7, v10, :cond_66

    .line 1890
    aget-object v8, v9, v7

    .line 1891
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_66

    .line 1892
    const/4 v10, 0x2

    if-gt v4, v10, :cond_5f

    .line 1893
    aget-object v10, v8, v4

    add-int/lit8 v11, v4, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 1895
    :cond_5f
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1900
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_66
    if-nez v5, :cond_88

    .line 1901
    array-length v3, v9

    .line 1902
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6a
    if-ge v2, v3, :cond_88

    .line 1903
    aget-object v8, v9, v2

    .line 1904
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_b7

    .line 1905
    const/4 v10, 0x2

    if-gt v4, v10, :cond_81

    .line 1906
    aget-object v10, v8, v4

    add-int/lit8 v11, v4, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 1908
    :cond_81
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1913
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_88
    if-eqz v5, :cond_be

    .line 1914
    invoke-virtual {v5, v0}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_93

    .line 1915
    invoke-virtual {p0, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1923
    :cond_93
    const/4 v10, 0x3

    if-lt v4, v10, :cond_ba

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    .line 1924
    .local v1, "dstAmount":I
    :goto_9a
    if-nez v6, :cond_a1

    const/4 v10, 0x3

    if-lt v4, v10, :cond_bc

    if-nez v1, :cond_bc

    :cond_a1
    const/4 v10, 0x1

    :goto_a2
    if-nez v10, :cond_af

    .line 1925
    const/16 v10, 0xf

    invoke-virtual {p3, v10}, Ljava/text/CalendarBuilder;->clear(I)Ljava/text/CalendarBuilder;

    move-result-object v10

    const/16 v11, 0x10

    invoke-virtual {v10, v11, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1927
    :cond_af
    aget-object v10, v8, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, p2

    return v10

    .line 1902
    .end local v1    # "dstAmount":I
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    :cond_b7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 1923
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_ba
    const/4 v1, 0x0

    .restart local v1    # "dstAmount":I
    goto :goto_9a

    .line 1924
    :cond_bc
    const/4 v10, 0x0

    goto :goto_a2

    .line 1929
    .end local v1    # "dstAmount":I
    :cond_be
    neg-int v10, p2

    return v10
.end method

.method private translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x27

    .line 2491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2492
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2493
    .local v3, "inQuote":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_65

    .line 2494
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2495
    .local v0, "c":C
    if-eqz v3, :cond_1e

    .line 2496
    if-ne v0, v6, :cond_18

    .line 2497
    const/4 v3, 0x0

    .line 2519
    :cond_18
    :goto_18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2493
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2501
    :cond_1e
    if-ne v0, v6, :cond_22

    .line 2502
    const/4 v3, 0x1

    goto :goto_18

    .line 2503
    :cond_22
    const/16 v5, 0x61

    if-lt v0, v5, :cond_3b

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_3b

    .line 2504
    :goto_2a
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2505
    .local v1, "ci":I
    if-ltz v1, :cond_44

    .line 2509
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_18

    .line 2510
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_18

    .line 2503
    .end local v1    # "ci":I
    :cond_3b
    const/16 v5, 0x41

    if-lt v0, v5, :cond_18

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_18

    goto :goto_2a

    .line 2513
    .restart local v1    # "ci":I
    :cond_44
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Illegal pattern  character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2515
    const-string/jumbo v7, "\'"

    .line 2513
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2521
    .end local v0    # "c":C
    .end local v1    # "ci":I
    :cond_65
    if-eqz v3, :cond_70

    .line 2522
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Unfinished quote in pattern"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2524
    :cond_70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private useDateFormatSymbols()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2474
    iget-boolean v1, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    if-eqz v1, :cond_6

    .line 2475
    return v0

    .line 2477
    :cond_6
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->isGregorianCalendar()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    .registers 10
    .param p1, "value"    # I
    .param p2, "minDigits"    # I
    .param p3, "maxDigits"    # I
    .param p4, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v2, 0x2

    .line 1447
    :try_start_1
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    if-nez v1, :cond_13

    .line 1448
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v1, Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    iput-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    .line 1450
    :cond_13
    if-ltz p1, :cond_45

    .line 1451
    const/16 v1, 0x64

    if-ge p1, v1, :cond_58

    const/4 v1, 0x1

    if-lt p2, v1, :cond_58

    if-gt p2, v2, :cond_58

    .line 1452
    const/16 v1, 0xa

    if-ge p1, v1, :cond_31

    .line 1453
    if-ne p2, v2, :cond_29

    .line 1454
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1456
    :cond_29
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    add-int/2addr v1, p1

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1461
    :goto_30
    return-void

    .line 1458
    :cond_31
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1459
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    rem-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_44

    goto :goto_30

    .line 1478
    :catch_44
    move-exception v0

    .line 1481
    :cond_45
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1482
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p3}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1483
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v2, p1

    sget-object v4, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    invoke-virtual {v1, v2, v3, p4, v4}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1484
    return-void

    .line 1462
    :cond_58
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_45

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_45

    .line 1463
    const/4 v1, 0x4

    if-ne p2, v1, :cond_8c

    .line 1464
    :try_start_63
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit16 v2, p1, 0x3e8

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1465
    rem-int/lit16 p1, p1, 0x3e8

    .line 1466
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v2, p1, 0x64

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1467
    rem-int/lit8 p1, p1, 0x64

    .line 1468
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1469
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    rem-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1470
    return-void

    .line 1472
    :cond_8c
    if-ne p2, v2, :cond_45

    if-ne p3, v2, :cond_45

    .line 1473
    rem-int/lit8 v1, p1, 0x64

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_97} :catch_44

    .line 1474
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2570
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v1

    .line 2571
    const-string/jumbo v2, "GyMdkHmsSEDFwWahKzZYuXLc"

    .line 2569
    invoke-direct {p0, p1, v1, v2}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2572
    .local v0, "p":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v1

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 2573
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2574
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2556
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 2557
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2558
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 2608
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 2609
    .local v0, "other":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2610
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 2635
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2636
    return v1

    :cond_8
    move-object v0, p1

    .line 2638
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 2639
    .local v0, "that":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2640
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1, v2}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2639
    :cond_1d
    return v1
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v0, 0x0

    .line 973
    iput v0, p3, Ljava/text/FieldPosition;->endIndex:I

    iput v0, p3, Ljava/text/FieldPosition;->beginIndex:I

    .line 974
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldDelegate()Ljava/text/Format$FieldDelegate;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1030
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1031
    .local v1, "sb":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/text/CharacterIteratorFieldDelegate;

    invoke-direct {v0}, Ljava/text/CharacterIteratorFieldDelegate;-><init>()V

    .line 1034
    .local v0, "delegate":Ljava/text/CharacterIteratorFieldDelegate;
    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_1c

    .line 1035
    check-cast p1, Ljava/util/Date;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p1, v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    .line 1048
    :goto_13
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/CharacterIteratorFieldDelegate;->getIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    .line 1037
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1c
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_2f

    .line 1038
    new-instance v2, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v2, v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 1040
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2f
    if-nez p1, :cond_3a

    .line 1041
    new-instance v2, Ljava/lang/NullPointerException;

    .line 1042
    const-string/jumbo v3, "formatToCharacterIterator must be passed non-null object"

    .line 1041
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1045
    :cond_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1046
    const-string/jumbo v3, "Cannot format given Object as a Date"

    .line 1045
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .registers 2

    .prologue
    .line 955
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .registers 2

    .prologue
    .line 2584
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 2621
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 1526
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1528
    .local v0, "tz":Ljava/util/TimeZone;
    :try_start_4
    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;->parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result-object v1

    .line 1530
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1528
    return-object v1

    .line 1529
    :catchall_c
    move-exception v1

    .line 1530
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1529
    throw v1
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .registers 6
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 942
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 943
    return-void
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .registers 3
    .param p1, "newFormatSymbols"    # Ljava/text/DateFormatSymbols;

    .prologue
    .line 2596
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2597
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    .line 2598
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2542
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2543
    const-string/jumbo v1, "GyMdkHmsSEDFwWahKzZYuXLc"

    .line 2544
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v2

    .line 2542
    invoke-direct {p0, v0, v1, v2}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2533
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
