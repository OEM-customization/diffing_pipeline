.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o DST_NAME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o GMT:Ljava/lang/String; = "GMT"

.field private static final greylist-max-o MILLIS_PER_MINUTE:I = 0xea60

.field private static final greylist-max-o NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PATTERN_INDEX_TO_CALENDAR_FIELD:[I

.field private static final greylist-max-o PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

.field private static final greylist-max-o PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

.field private static final blacklist REST_OF_STYLES:[I

.field private static final greylist-max-o TAG_QUOTE_ASCII_CHAR:I = 0x64

.field private static final greylist-max-o TAG_QUOTE_CHARS:I = 0x65

.field private static final greylist-max-o cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Ljava/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o currentSerialVersion:I = 0x1

.field static final whitelist serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient greylist-max-o compiledPattern:[C

.field private greylist-max-o defaultCenturyStart:Ljava/util/Date;

.field private transient greylist-max-o defaultCenturyStartYear:I

.field private greylist-max-o formatData:Ljava/text/DateFormatSymbols;

.field private transient greylist-max-o hasFollowingMinusSign:Z

.field private greylist-max-o locale:Ljava/util/Locale;

.field private transient greylist-max-o minusSign:C

.field private transient greylist-max-o originalNumberFormat:Ljava/text/NumberFormat;

.field private transient greylist-max-o originalNumberPattern:Ljava/lang/String;

.field private greylist-max-o pattern:Ljava/lang/String;

.field private greylist-max-o serialVersionOnStream:I

.field private transient greylist-max-o timeZoneNames:Landroid/icu/text/TimeZoneNames;

.field transient greylist-max-o useDateFormatSymbols:Z

.field private transient greylist-max-o zeroDigit:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 460
    nop

    .line 570
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    .line 1134
    const/16 v0, 0x1a

    new-array v2, v0, [I

    fill-array-data v2, :array_e4

    sput-object v2, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    .line 1167
    new-array v2, v0, [I

    fill-array-data v2, :array_11c

    sput-object v2, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    .line 1200
    new-array v0, v0, [Ljava/text/DateFormat$Field;

    sget-object v2, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    sget-object v2, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    const/4 v5, 0x2

    aput-object v2, v0, v5

    sget-object v2, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    aput-object v2, v0, v1

    sget-object v2, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    const/4 v6, 0x4

    aput-object v2, v0, v6

    sget-object v2, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    const/4 v7, 0x5

    aput-object v2, v0, v7

    const/4 v2, 0x6

    sget-object v8, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/4 v2, 0x7

    sget-object v8, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0x8

    sget-object v8, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0x9

    sget-object v8, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0xa

    sget-object v8, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0xb

    sget-object v8, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0xc

    sget-object v8, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0xd

    sget-object v8, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0xe

    sget-object v8, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0xf

    sget-object v8, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0x10

    sget-object v8, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0x11

    sget-object v8, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0x12

    sget-object v8, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0x13

    sget-object v8, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0x14

    sget-object v8, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0x15

    sget-object v8, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0x16

    sget-object v8, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0x17

    sget-object v8, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0x18

    sget-object v8, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    const/16 v2, 0x19

    sget-object v8, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    aput-object v8, v0, v2

    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    .line 2010
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    new-array v2, v7, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v7, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v7, v2, v3

    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v3, v2, v4

    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v3, v2, v5

    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v3, v2, v1

    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v3, v2, v6

    .line 2011
    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Ljava/text/SimpleDateFormat;->NAME_TYPES:Ljava/util/EnumSet;

    .line 2018
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .line 2019
    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/text/SimpleDateFormat;->DST_NAME_TYPES:Ljava/util/Set;

    .line 2980
    new-array v0, v1, [I

    fill-array-data v0, :array_154

    sput-object v0, Ljava/text/SimpleDateFormat;->REST_OF_STYLES:[I

    return-void

    :array_e4
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
        0x9
        0x9
    .end array-data

    :array_11c
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
        0xe
        0xe
    .end array-data

    :array_154
    .array-data 4
        0x8001
        0x2
        0x8002
    .end array-data
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 3

    .line 614
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(IILjava/util/Locale;)V

    .line 616
    return-void
.end method

.method constructor greylist-max-o <init>(IILjava/util/Locale;)V
    .registers 5
    .param p1, "timeStyle"    # I
    .param p2, "dateStyle"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 626
    invoke-static {p1, p2, p3}, Ljava/text/SimpleDateFormat;->getDateTimeFormat(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 627
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 666
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 667
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatSymbols"    # Ljava/text/DateFormatSymbols;

    .line 704
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 485
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 504
    const/16 v1, 0x2d

    iput-char v1, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 510
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 705
    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    .line 709
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 710
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 711
    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 712
    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 713
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 714
    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    .line 715
    return-void

    .line 706
    :cond_2e
    const/4 v0, 0x0

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 682
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 485
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 504
    const/16 v0, 0x2d

    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 683
    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    .line 687
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 688
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 689
    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 690
    iput-object p2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 691
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 692
    return-void

    .line 684
    :cond_22
    const/4 v0, 0x0

    throw v0
.end method

.method private blacklist applyPatternImpl(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 2893
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 2894
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2895
    return-void
.end method

.method private greylist-max-o checkNegativeNumberExpression()V
    .registers 5

    .line 3040
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    instance-of v0, v0, Ljava/text/DecimalFormat;

    if-eqz v0, :cond_59

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    .line 3041
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 3042
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v0, Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 3043
    .local v0, "numberPattern":Ljava/lang/String;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 3044
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 3046
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3049
    .local v1, "separatorIndex":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_53

    .line 3050
    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 3051
    .local v2, "minusIndex":I
    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v2, v3, :cond_53

    const/16 v3, 0x23

    .line 3052
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v2, v3, :cond_53

    .line 3053
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 3054
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v3, Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v3

    iput-char v3, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 3057
    .end local v2    # "minusIndex":I
    :cond_53
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    .line 3059
    .end local v1    # "separatorIndex":I
    :cond_55
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    .line 3061
    .end local v0    # "numberPattern":Ljava/lang/String;
    :cond_59
    return-void
.end method

.method private greylist-max-o compile(Ljava/lang/String;)[C
    .registers 18
    .param p1, "pattern"    # Ljava/lang/String;

    .line 812
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 813
    .local v1, "length":I
    const/4 v2, 0x0

    .line 814
    .local v2, "inQuote":Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 815
    .local v3, "compiledCode":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 822
    .local v4, "tmpBuffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 823
    .local v5, "count":I
    const/4 v6, -0x1

    .line 826
    .local v6, "lastTag":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_12
    const/4 v8, 0x0

    if-ge v7, v1, :cond_113

    .line 827
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 829
    .local v9, "c":C
    const/16 v10, 0x80

    const/16 v11, 0x27

    const/4 v12, 0x1

    if-ne v9, v11, :cond_83

    .line 832
    add-int/lit8 v13, v7, 0x1

    if-ge v13, v1, :cond_44

    .line 833
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 834
    if-ne v9, v11, :cond_44

    .line 835
    add-int/lit8 v7, v7, 0x1

    .line 836
    if-eqz v5, :cond_35

    .line 837
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 845
    const/4 v6, -0x1

    .line 846
    const/4 v5, 0x0

    .line 848
    :cond_35
    if-eqz v2, :cond_3c

    .line 849
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_10f

    .line 851
    :cond_3c
    or-int/lit16 v8, v9, 0x6400

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 853
    goto/16 :goto_10f

    .line 856
    :cond_44
    if-nez v2, :cond_5c

    .line 857
    if-eqz v5, :cond_4d

    .line 858
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 866
    const/4 v6, -0x1

    .line 867
    const/4 v5, 0x0

    .line 869
    :cond_4d
    if-nez v4, :cond_56

    .line 870
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v8

    goto :goto_59

    .line 872
    :cond_56
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 874
    :goto_59
    const/4 v2, 0x1

    goto/16 :goto_10f

    .line 876
    :cond_5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 877
    .local v11, "len":I
    if-ne v11, v12, :cond_78

    .line 878
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 879
    .local v8, "ch":C
    if-ge v8, v10, :cond_6f

    .line 880
    or-int/lit16 v10, v8, 0x6400

    int-to-char v10, v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 882
    :cond_6f
    const/16 v10, 0x6501

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 885
    .end local v8    # "ch":C
    :goto_77
    goto :goto_80

    .line 886
    :cond_78
    const/16 v8, 0x65

    invoke-static {v8, v11, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 887
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 889
    :goto_80
    const/4 v2, 0x0

    .line 891
    .end local v11    # "len":I
    goto/16 :goto_10f

    .line 893
    :cond_83
    if-eqz v2, :cond_8a

    .line 894
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 895
    goto/16 :goto_10f

    .line 897
    :cond_8a
    const/16 v8, 0x7a

    const/16 v13, 0x61

    if-lt v9, v13, :cond_92

    if-le v9, v8, :cond_9b

    :cond_92
    const/16 v14, 0x5a

    const/16 v15, 0x41

    if-lt v9, v15, :cond_d0

    if-le v9, v14, :cond_9b

    goto :goto_d0

    .line 933
    :cond_9b
    const-string v8, "GyMdkHmsSEDFwWahKzZYuXLcbB"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v10, v8

    .local v10, "tag":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_b4

    .line 937
    if-eq v6, v11, :cond_b0

    if-ne v6, v10, :cond_aa

    goto :goto_b0

    .line 942
    :cond_aa
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 950
    move v6, v10

    .line 951
    const/4 v5, 0x1

    goto :goto_10f

    .line 938
    :cond_b0
    :goto_b0
    move v6, v10

    .line 939
    add-int/lit8 v5, v5, 0x1

    .line 940
    goto :goto_10f

    .line 934
    :cond_b4
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Illegal pattern character \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 898
    .end local v10    # "tag":I
    :cond_d0
    :goto_d0
    if-eqz v5, :cond_d7

    .line 899
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 907
    const/4 v6, -0x1

    .line 908
    const/4 v5, 0x0

    .line 910
    :cond_d7
    if-ge v9, v10, :cond_e0

    .line 912
    or-int/lit16 v8, v9, 0x6400

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10f

    .line 917
    :cond_e0
    add-int/lit8 v10, v7, 0x1

    .local v10, "j":I
    :goto_e2
    if-ge v10, v1, :cond_f7

    .line 918
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 919
    .local v12, "d":C
    if-eq v12, v11, :cond_f7

    if-lt v12, v13, :cond_ee

    if-le v12, v8, :cond_f7

    :cond_ee
    if-lt v12, v15, :cond_f3

    if-gt v12, v14, :cond_f3

    .line 920
    goto :goto_f7

    .line 917
    .end local v12    # "d":C
    :cond_f3
    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x1

    goto :goto_e2

    .line 923
    :cond_f7
    :goto_f7
    sub-int v8, v10, v7

    or-int/lit16 v8, v8, 0x6500

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 924
    :goto_ff
    if-ge v7, v10, :cond_10b

    .line 925
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 924
    add-int/lit8 v7, v7, 0x1

    goto :goto_ff

    .line 927
    :cond_10b
    nop

    .end local v10    # "j":I
    add-int/lit8 v7, v7, -0x1

    .line 929
    nop

    .line 826
    .end local v9    # "c":C
    :goto_10f
    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto/16 :goto_12

    .line 954
    .end local v7    # "i":I
    :cond_113
    if-nez v2, :cond_124

    .line 958
    if-eqz v5, :cond_11a

    .line 959
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 974
    :cond_11a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 975
    .local v7, "len":I
    new-array v9, v7, [C

    .line 976
    .local v9, "r":[C
    invoke-virtual {v3, v8, v7, v9, v8}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 977
    return-object v9

    .line 955
    .end local v7    # "len":I
    .end local v9    # "r":[C
    :cond_124
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unterminated quote"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static greylist-max-o encode(IILjava/lang/StringBuilder;)V
    .registers 6
    .param p0, "tag"    # I
    .param p1, "length"    # I
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .line 984
    const/16 v0, 0x15

    if-ne p0, v0, :cond_1f

    const/4 v0, 0x4

    if-ge p1, v0, :cond_8

    goto :goto_1f

    .line 985
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid ISO 8601 format: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_1f
    :goto_1f
    const/16 v0, 0xff

    if-ge p1, v0, :cond_2b

    .line 988
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 990
    :cond_2b
    shl-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 991
    ushr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 992
    const v0, 0xffff

    and-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 994
    :goto_40
    return-void
.end method

.method private greylist-max-o format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;
    .registers 14
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "delegate"    # Ljava/text/Format$FieldDelegate;

    .line 1063
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1065
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    move-result v0

    .line 1067
    .local v0, "useDateFormatSymbols":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v3, v2

    if-ge v1, v3, :cond_4d

    .line 1068
    aget-char v3, v2, v1

    ushr-int/lit8 v7, v3, 0x8

    .line 1069
    .local v7, "tag":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget-char v1, v2, v1

    const/16 v4, 0xff

    and-int/2addr v1, v4

    .line 1070
    .local v1, "count":I
    if-ne v1, v4, :cond_2a

    .line 1071
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-char v3, v2, v3

    shl-int/lit8 v1, v3, 0x10

    .line 1072
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-char v2, v2, v4

    or-int/2addr v1, v2

    move v8, v1

    move v9, v3

    goto :goto_2c

    .line 1070
    :cond_2a
    move v8, v1

    move v9, v3

    .line 1075
    .end local v1    # "count":I
    .end local v3    # "i":I
    .local v8, "count":I
    .local v9, "i":I
    :goto_2c
    const/16 v1, 0x64

    if-eq v7, v1, :cond_46

    const/16 v1, 0x65

    if-eq v7, v1, :cond_3e

    .line 1086
    move-object v1, p0

    move v2, v7

    move v3, v8

    move-object v4, p3

    move-object v5, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V

    goto :goto_4b

    .line 1081
    :cond_3e
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    invoke-virtual {p2, v1, v9, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1082
    add-int/2addr v9, v8

    .line 1083
    move v1, v9

    goto :goto_4c

    .line 1077
    :cond_46
    int-to-char v1, v8

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1078
    nop

    .line 1089
    .end local v7    # "tag":I
    .end local v8    # "count":I
    :goto_4b
    move v1, v9

    .end local v9    # "i":I
    .local v1, "i":I
    :goto_4c
    goto :goto_a

    .line 1090
    .end local v1    # "i":I
    :cond_4d
    return-object p2
.end method

.method private blacklist formatMonth(IIILjava/lang/StringBuffer;ZZII)Ljava/lang/String;
    .registers 12
    .param p1, "count"    # I
    .param p2, "value"    # I
    .param p3, "maxIntCount"    # I
    .param p4, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "useDateFormatSymbols"    # Z
    .param p6, "standalone"    # Z
    .param p7, "field"    # I
    .param p8, "style"    # I

    .line 1601
    const/4 v0, 0x0

    .line 1602
    .local v0, "current":Ljava/lang/String;
    const/4 v1, 0x3

    if-eqz p5, :cond_3c

    .line 1604
    const/4 v2, 0x4

    if-ne p1, v2, :cond_15

    .line 1605
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p6, :cond_10

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_10
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    .local v1, "months":[Ljava/lang/String;
    :goto_14
    goto :goto_37

    .line 1606
    .end local v1    # "months":[Ljava/lang/String;
    :cond_15
    const/4 v2, 0x5

    if-ne p1, v2, :cond_26

    .line 1607
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p6, :cond_21

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getTinyStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getTinyMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    :goto_25
    goto :goto_37

    .line 1608
    .end local v1    # "months":[Ljava/lang/String;
    :cond_26
    if-ne p1, v1, :cond_36

    .line 1609
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p6, :cond_31

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    :cond_31
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    :goto_35
    goto :goto_37

    .line 1611
    .end local v1    # "months":[Ljava/lang/String;
    :cond_36
    const/4 v1, 0x0

    .line 1614
    .restart local v1    # "months":[Ljava/lang/String;
    :goto_37
    if-eqz v1, :cond_3b

    .line 1615
    aget-object v0, v1, p2

    .line 1617
    .end local v1    # "months":[Ljava/lang/String;
    :cond_3b
    goto :goto_4e

    .line 1618
    :cond_3c
    if-ge p1, v1, :cond_40

    .line 1619
    const/4 v0, 0x0

    goto :goto_4e

    .line 1621
    :cond_40
    if-eqz p6, :cond_46

    .line 1622
    invoke-static {p8}, Ljava/util/Calendar;->toStandaloneStyle(I)I

    move-result p8

    .line 1624
    :cond_46
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v1, p7, p8, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1628
    :goto_4e
    if-nez v0, :cond_55

    .line 1629
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v1, p1, p3, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    .line 1632
    :cond_55
    return-object v0
.end method

.method private greylist-max-o formatWeekday(IIZZ)Ljava/lang/String;
    .registers 7
    .param p1, "count"    # I
    .param p2, "value"    # I
    .param p3, "useDateFormatSymbols"    # Z
    .param p4, "standalone"    # Z

    .line 1580
    if-eqz p3, :cond_34

    .line 1582
    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    .line 1583
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p4, :cond_e

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    .local v0, "weekdays":[Ljava/lang/String;
    :goto_12
    goto :goto_31

    .line 1584
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_13
    const/4 v0, 0x5

    if-ne p1, v0, :cond_24

    .line 1586
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p4, :cond_1f

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getTinyStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_1f
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getTinyWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    :goto_23
    goto :goto_31

    .line 1589
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_24
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p4, :cond_2d

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_2d
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    .line 1592
    .restart local v0    # "weekdays":[Ljava/lang/String;
    :goto_31
    aget-object v1, v0, p2

    return-object v1

    .line 1595
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o getDateTimeFormat(IILjava/util/Locale;)Ljava/lang/String;
    .registers 7
    .param p0, "timeStyle"    # I
    .param p1, "dateStyle"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .line 630
    invoke-static {p2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 631
    .local v0, "localeData":Llibcore/icu/LocaleData;
    if-ltz p0, :cond_20

    if-ltz p1, :cond_20

    .line 632
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 633
    invoke-virtual {v0, p1}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 634
    invoke-virtual {v0, p0}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 636
    .local v1, "dateTimeArgs":[Ljava/lang/Object;
    const-string v2, "{0} {1}"

    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 637
    .end local v1    # "dateTimeArgs":[Ljava/lang/Object;
    :cond_20
    if-ltz p0, :cond_27

    .line 638
    invoke-virtual {v0, p0}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 639
    :cond_27
    if-ltz p1, :cond_2e

    .line 640
    invoke-virtual {v0, p1}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 642
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No date or time style specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getDisplayNamesMap(ILjava/util/Locale;)Ljava/util/Map;
    .registers 9
    .param p1, "field"    # I
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2984
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 2986
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Ljava/text/SimpleDateFormat;->REST_OF_STYLES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1d

    aget v4, v1, v3

    .line 2987
    .local v4, "style":I
    iget-object v5, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5, p1, v4, p2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    .line 2988
    .local v5, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v5, :cond_1a

    .line 2989
    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2986
    .end local v4    # "style":I
    .end local v5    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2992
    :cond_1d
    return-object v0
.end method

.method private greylist-max-o getTimeZoneNames()Landroid/icu/text/TimeZoneNames;
    .registers 2

    .line 2001
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->timeZoneNames:Landroid/icu/text/TimeZoneNames;

    if-nez v0, :cond_c

    .line 2002
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->timeZoneNames:Landroid/icu/text/TimeZoneNames;

    .line 2004
    :cond_c
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->timeZoneNames:Landroid/icu/text/TimeZoneNames;

    return-object v0
.end method

.method private greylist-max-o initialize(Ljava/util/Locale;)V
    .registers 4
    .param p1, "loc"    # Ljava/util/Locale;

    .line 720
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 723
    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 724
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_29

    .line 725
    invoke-static {p1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 726
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 729
    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :cond_29
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 733
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    .line 734
    return-void
.end method

.method private greylist-max-o initializeCalendar(Ljava/util/Locale;)V
    .registers 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 737
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_f

    .line 738
    nop

    .line 743
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 745
    :cond_f
    return-void
.end method

.method private greylist-max-o initializeDefaultCentury()V
    .registers 4

    .line 1000
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1001
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    const/16 v2, -0x50

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1002
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 1003
    return-void
.end method

.method private greylist-max-o isDigit(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 2257
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    const/16 v0, 0x39

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I
    .registers 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p5, "calb"    # Ljava/text/CalendarBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/text/CalendarBuilder;",
            ")I"
        }
    .end annotation

    .line 1915
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p4, :cond_8f

    .line 1923
    instance-of v0, p4, Ljava/util/NavigableMap;

    if-eqz v0, :cond_4b

    move-object v0, p4

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 1924
    move-object v0, p4

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1926
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    move-object v2, p1

    move v4, p2

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1927
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p5, p3, v0}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1928
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    return v0

    .line 1930
    .end local v1    # "name":Ljava/lang/String;
    :cond_48
    goto :goto_1a

    .line 1931
    :cond_49
    neg-int v0, p2

    return v0

    .line 1934
    :cond_4b
    const/4 v0, 0x0

    .line 1936
    .local v0, "bestMatch":Ljava/lang/String;
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1937
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    .line 1938
    .local v9, "length":I
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v9, v3, :cond_79

    .line 1939
    :cond_6c
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    move v5, p2

    move-object v6, v2

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 1940
    move-object v0, v2

    .line 1943
    .end local v2    # "name":Ljava/lang/String;
    .end local v9    # "length":I
    :cond_79
    goto :goto_54

    .line 1945
    :cond_7a
    if-eqz v0, :cond_8f

    .line 1946
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p5, p3, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1947
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    return v1

    .line 1950
    .end local v0    # "bestMatch":Ljava/lang/String;
    :cond_8f
    neg-int v0, p2

    return v0
.end method

.method private greylist-max-o matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I
    .registers 20
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "data"    # [Ljava/lang/String;
    .param p5, "calb"    # Ljava/text/CalendarBuilder;

    .line 1865
    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v0, 0x0

    .line 1866
    .local v0, "i":I
    array-length v9, v8

    .line 1868
    .local v9, "count":I
    const/4 v1, 0x7

    if-ne v7, v1, :cond_c

    .line 1869
    const/4 v0, 0x1

    .line 1876
    :cond_c
    const/4 v1, 0x0

    .local v1, "bestMatchLength":I
    const/4 v2, -0x1

    move v10, v0

    move v11, v1

    move v12, v2

    .line 1877
    .end local v0    # "i":I
    .end local v1    # "bestMatchLength":I
    .local v10, "i":I
    .local v11, "bestMatchLength":I
    .local v12, "bestMatch":I
    :goto_11
    if-ge v10, v9, :cond_52

    .line 1879
    aget-object v0, v8, v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    .line 1882
    .local v13, "length":I
    if-le v13, v11, :cond_2b

    const/4 v1, 0x1

    aget-object v3, v8, v10

    const/4 v4, 0x0

    .line 1883
    move-object v0, p1

    move/from16 v2, p2

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1885
    move v12, v10

    .line 1886
    move v11, v13

    .line 1892
    :cond_2b
    aget-object v0, v8, v10

    add-int/lit8 v1, v13, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_4f

    add-int/lit8 v0, v13, -0x1

    if-le v0, v11, :cond_4f

    const/4 v1, 0x1

    aget-object v3, v8, v10

    const/4 v4, 0x0

    add-int/lit8 v5, v13, -0x1

    .line 1894
    move-object v0, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1895
    move v0, v10

    .line 1896
    .end local v12    # "bestMatch":I
    .local v0, "bestMatch":I
    add-int/lit8 v1, v13, -0x1

    move v12, v0

    move v11, v1

    .line 1877
    .end local v0    # "bestMatch":I
    .end local v13    # "length":I
    .restart local v12    # "bestMatch":I
    :cond_4f
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 1900
    :cond_52
    if-ltz v12, :cond_5c

    .line 1902
    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1903
    add-int v1, v6, v11

    return v1

    .line 1905
    :cond_5c
    move-object/from16 v0, p5

    neg-int v1, v6

    return v1
.end method

.method private greylist-max-o matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "zoneNames"    # [Ljava/lang/String;

    .line 1954
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-gt v0, v1, :cond_19

    .line 1957
    aget-object v1, p3, v0

    .line 1958
    .local v1, "zoneName":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1959
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1958
    move-object v2, p1

    move v4, p2

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1960
    return v0

    .line 1954
    .end local v1    # "zoneName":Ljava/lang/String;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1963
    .end local v0    # "i":I
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
    .registers 4
    .param p1, "startDate"    # Ljava/util/Date;

    .line 1009
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1010
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1011
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    .line 1012
    return-void
.end method

.method private greylist-max-o parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 28
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1737
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->checkNegativeNumberExpression()V

    .line 1739
    iget v0, v13, Ljava/text/ParsePosition;->index:I

    .line 1740
    .local v0, "start":I
    move v14, v0

    .line 1741
    .local v14, "oldStart":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 1743
    .local v15, "textLength":I
    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/16 v16, 0x0

    aput-boolean v16, v1, v16

    move-object/from16 v17, v1

    .line 1745
    .local v17, "ambiguousYear":[Z
    new-instance v1, Ljava/text/CalendarBuilder;

    invoke-direct {v1}, Ljava/text/CalendarBuilder;-><init>()V

    move-object v10, v1

    .line 1747
    .local v10, "calb":Ljava/text/CalendarBuilder;
    const/4 v1, 0x0

    move v9, v0

    .end local v0    # "start":I
    .local v1, "i":I
    .local v9, "start":I
    :goto_21
    iget-object v0, v11, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v2, v0

    const/16 v18, 0x0

    const/16 v3, 0x64

    if-ge v1, v2, :cond_f5

    .line 1748
    aget-char v2, v0, v1

    ushr-int/lit8 v8, v2, 0x8

    .line 1749
    .local v8, "tag":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-char v1, v0, v1

    const/16 v4, 0xff

    and-int/2addr v1, v4

    .line 1750
    .local v1, "count":I
    if-ne v1, v4, :cond_45

    .line 1751
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    aget-char v2, v0, v2

    shl-int/lit8 v1, v2, 0x10

    .line 1752
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "i":I
    .restart local v2    # "i":I
    aget-char v0, v0, v5

    or-int/2addr v1, v0

    move v0, v1

    move v7, v2

    goto :goto_47

    .line 1750
    :cond_45
    move v0, v1

    move v7, v2

    .line 1755
    .end local v1    # "count":I
    .end local v2    # "i":I
    .local v0, "count":I
    .local v7, "i":I
    :goto_47
    if-eq v8, v3, :cond_d4

    const/16 v1, 0x65

    if-eq v8, v1, :cond_ac

    .line 1782
    const/4 v2, 0x0

    .line 1792
    .local v2, "obeyCount":Z
    const/4 v5, 0x0

    .line 1794
    .local v5, "useFollowingMinusSignAsDelimiter":Z
    iget-object v6, v11, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v4, v6

    if-ge v7, v4, :cond_84

    .line 1795
    aget-char v4, v6, v7

    ushr-int/lit8 v4, v4, 0x8

    .line 1796
    .local v4, "nextTag":I
    if-eq v4, v3, :cond_5d

    if-eq v4, v1, :cond_5d

    .line 1798
    const/4 v2, 0x1

    .line 1801
    :cond_5d
    iget-boolean v6, v11, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    if-eqz v6, :cond_7f

    if-eq v4, v3, :cond_65

    if-ne v4, v1, :cond_7f

    .line 1805
    :cond_65
    if-ne v4, v3, :cond_6f

    .line 1806
    iget-object v1, v11, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v1, v1, v7

    const/16 v3, 0xff

    and-int/2addr v1, v3

    .local v1, "c":I
    goto :goto_75

    .line 1808
    .end local v1    # "c":I
    :cond_6f
    iget-object v1, v11, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v3, v7, 0x1

    aget-char v1, v1, v3

    .line 1811
    .restart local v1    # "c":I
    :goto_75
    iget-char v3, v11, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v1, v3, :cond_7f

    .line 1812
    const/4 v5, 0x1

    move/from16 v19, v2

    move/from16 v20, v5

    goto :goto_88

    .line 1816
    .end local v1    # "c":I
    .end local v4    # "nextTag":I
    :cond_7f
    move/from16 v19, v2

    move/from16 v20, v5

    goto :goto_88

    .line 1794
    :cond_84
    move/from16 v19, v2

    move/from16 v20, v5

    .line 1816
    .end local v2    # "obeyCount":Z
    .end local v5    # "useFollowingMinusSignAsDelimiter":Z
    .local v19, "obeyCount":Z
    .local v20, "useFollowingMinusSignAsDelimiter":Z
    :goto_88
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v9

    move v4, v8

    move v5, v0

    move/from16 v6, v19

    move/from16 v21, v7

    .end local v7    # "i":I
    .local v21, "i":I
    move-object/from16 v7, v17

    move/from16 v22, v8

    .end local v8    # "tag":I
    .local v22, "tag":I
    move-object/from16 v8, p2

    move/from16 v23, v9

    .end local v9    # "start":I
    .local v23, "start":I
    move/from16 v9, v20

    move-object/from16 v24, v10

    .end local v10    # "calb":Ljava/text/CalendarBuilder;
    .local v24, "calb":Ljava/text/CalendarBuilder;
    invoke-direct/range {v1 .. v10}, Ljava/text/SimpleDateFormat;->subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I

    move-result v1

    .line 1819
    .end local v23    # "start":I
    .local v1, "start":I
    if-gez v1, :cond_a8

    .line 1820
    iput v14, v13, Ljava/text/ParsePosition;->index:I

    .line 1821
    return-object v18

    .line 1819
    :cond_a8
    move v9, v1

    move/from16 v1, v21

    goto :goto_ec

    .line 1755
    .end local v1    # "start":I
    .end local v19    # "obeyCount":Z
    .end local v20    # "useFollowingMinusSignAsDelimiter":Z
    .end local v21    # "i":I
    .end local v22    # "tag":I
    .end local v24    # "calb":Ljava/text/CalendarBuilder;
    .restart local v7    # "i":I
    .restart local v8    # "tag":I
    .restart local v9    # "start":I
    .restart local v10    # "calb":Ljava/text/CalendarBuilder;
    :cond_ac
    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v24, v10

    .line 1766
    .end local v8    # "tag":I
    .end local v10    # "calb":Ljava/text/CalendarBuilder;
    .restart local v22    # "tag":I
    .restart local v24    # "calb":Ljava/text/CalendarBuilder;
    :goto_b4
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "count":I
    .local v1, "count":I
    if-lez v0, :cond_d2

    .line 1767
    if-ge v9, v15, :cond_cd

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v2, v11, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v3, v7, 0x1

    .end local v7    # "i":I
    .local v3, "i":I
    aget-char v2, v2, v7

    if-eq v0, v2, :cond_c8

    move v7, v3

    goto :goto_cd

    .line 1772
    :cond_c8
    add-int/lit8 v9, v9, 0x1

    move v0, v1

    move v7, v3

    goto :goto_b4

    .line 1768
    .end local v3    # "i":I
    .restart local v7    # "i":I
    :cond_cd
    :goto_cd
    iput v14, v13, Ljava/text/ParsePosition;->index:I

    .line 1769
    iput v9, v13, Ljava/text/ParsePosition;->errorIndex:I

    .line 1770
    return-object v18

    .line 1766
    :cond_d2
    move v1, v7

    goto :goto_ec

    .line 1757
    .end local v1    # "count":I
    .end local v22    # "tag":I
    .end local v24    # "calb":Ljava/text/CalendarBuilder;
    .restart local v0    # "count":I
    .restart local v8    # "tag":I
    .restart local v10    # "calb":Ljava/text/CalendarBuilder;
    :cond_d4
    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v24, v10

    .end local v7    # "i":I
    .end local v8    # "tag":I
    .end local v9    # "start":I
    .end local v10    # "calb":Ljava/text/CalendarBuilder;
    .restart local v21    # "i":I
    .restart local v22    # "tag":I
    .restart local v23    # "start":I
    .restart local v24    # "calb":Ljava/text/CalendarBuilder;
    move/from16 v2, v23

    .end local v23    # "start":I
    .local v2, "start":I
    if-ge v2, v15, :cond_f0

    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-char v3, v0

    if-eq v1, v3, :cond_e8

    goto :goto_f0

    .line 1762
    :cond_e8
    add-int/lit8 v9, v2, 0x1

    .line 1763
    .end local v2    # "start":I
    .restart local v9    # "start":I
    move/from16 v1, v21

    .line 1824
    .end local v0    # "count":I
    .end local v21    # "i":I
    .end local v22    # "tag":I
    .local v1, "i":I
    :goto_ec
    move-object/from16 v10, v24

    goto/16 :goto_21

    .line 1758
    .end local v1    # "i":I
    .end local v9    # "start":I
    .restart local v0    # "count":I
    .restart local v2    # "start":I
    .restart local v21    # "i":I
    .restart local v22    # "tag":I
    :cond_f0
    :goto_f0
    iput v14, v13, Ljava/text/ParsePosition;->index:I

    .line 1759
    iput v2, v13, Ljava/text/ParsePosition;->errorIndex:I

    .line 1760
    return-object v18

    .line 1747
    .end local v0    # "count":I
    .end local v2    # "start":I
    .end local v21    # "i":I
    .end local v22    # "tag":I
    .end local v24    # "calb":Ljava/text/CalendarBuilder;
    .restart local v1    # "i":I
    .restart local v9    # "start":I
    .restart local v10    # "calb":Ljava/text/CalendarBuilder;
    :cond_f5
    move v2, v9

    move-object/from16 v24, v10

    .line 1830
    .end local v1    # "i":I
    .end local v9    # "start":I
    .end local v10    # "calb":Ljava/text/CalendarBuilder;
    .restart local v2    # "start":I
    .restart local v24    # "calb":Ljava/text/CalendarBuilder;
    iput v2, v13, Ljava/text/ParsePosition;->index:I

    .line 1834
    :try_start_fa
    iget-object v0, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;
    :try_end_fc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fa .. :try_end_fc} :catch_125

    move-object/from16 v1, v24

    .end local v24    # "calb":Ljava/text/CalendarBuilder;
    .local v1, "calb":Ljava/text/CalendarBuilder;
    :try_start_fe
    invoke-virtual {v1, v0}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 1837
    .local v0, "parsedDate":Ljava/util/Date;
    aget-boolean v4, v17, v16

    if-eqz v4, :cond_121

    .line 1838
    iget-object v4, v11, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 1839
    invoke-virtual {v1, v3}, Ljava/text/CalendarBuilder;->addYear(I)Ljava/text/CalendarBuilder;

    move-result-object v3

    iget-object v4, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3
    :try_end_120
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fe .. :try_end_120} :catch_123

    move-object v0, v3

    .line 1849
    :cond_121
    nop

    .line 1851
    return-object v0

    .line 1845
    .end local v0    # "parsedDate":Ljava/util/Date;
    :catch_123
    move-exception v0

    goto :goto_128

    .end local v1    # "calb":Ljava/text/CalendarBuilder;
    .restart local v24    # "calb":Ljava/text/CalendarBuilder;
    :catch_125
    move-exception v0

    move-object/from16 v1, v24

    .line 1846
    .end local v24    # "calb":Ljava/text/CalendarBuilder;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "calb":Ljava/text/CalendarBuilder;
    :goto_128
    iput v2, v13, Ljava/text/ParsePosition;->errorIndex:I

    .line 1847
    iput v14, v13, Ljava/text/ParsePosition;->index:I

    .line 1848
    return-object v18
.end method

.method private greylist-max-o parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I
    .registers 23
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "value"    # I
    .param p4, "start"    # I
    .param p5, "field"    # I
    .param p6, "pos"    # Ljava/text/ParsePosition;
    .param p7, "useDateFormatSymbols"    # Z
    .param p8, "standalone"    # Z
    .param p9, "out"    # Ljava/text/CalendarBuilder;

    .line 2732
    move-object v6, p0

    const/4 v0, 0x2

    move v7, p2

    if-gt v7, v0, :cond_11

    .line 2737
    add-int/lit8 v1, p3, -0x1

    move-object/from16 v8, p9

    invoke-virtual {v8, v0, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2738
    move-object/from16 v9, p6

    iget v0, v9, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2741
    :cond_11
    move-object/from16 v9, p6

    move-object/from16 v8, p9

    const/4 v10, -0x1

    .line 2742
    .local v10, "index":I
    if-eqz p7, :cond_55

    .line 2746
    const/4 v3, 0x2

    .line 2748
    iget-object v0, v6, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p8, :cond_22

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_22
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    :goto_26
    move-object v4, v0

    .line 2746
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v10, v0

    if-lez v0, :cond_35

    .line 2750
    return v10

    .line 2753
    :cond_35
    const/4 v3, 0x2

    .line 2755
    iget-object v0, v6, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p8, :cond_3f

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_3f
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    :goto_43
    move-object v4, v0

    .line 2753
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v1, v0

    .end local v10    # "index":I
    .local v1, "index":I
    if-lez v0, :cond_52

    .line 2757
    return v1

    .line 2753
    :cond_52
    move/from16 v11, p5

    goto :goto_6e

    .line 2760
    .end local v1    # "index":I
    .restart local v10    # "index":I
    :cond_55
    iget-object v0, v6, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    move/from16 v11, p5

    invoke-direct {p0, v11, v0}, Ljava/text/SimpleDateFormat;->getDisplayNamesMap(ILjava/util/Locale;)Ljava/util/Map;

    move-result-object v12

    .line 2761
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v12

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v1, v0

    .end local v10    # "index":I
    .restart local v1    # "index":I
    if-lez v0, :cond_6e

    .line 2762
    return v1

    .line 2766
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6e
    :goto_6e
    return v1
.end method

.method private greylist-max-o parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I
    .registers 21
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "useDateFormatSymbols"    # Z
    .param p5, "standalone"    # Z
    .param p6, "out"    # Ljava/text/CalendarBuilder;

    .line 2771
    move-object v6, p0

    const/4 v7, -0x1

    .line 2772
    .local v7, "index":I
    if-eqz p4, :cond_41

    .line 2775
    const/4 v3, 0x7

    .line 2777
    iget-object v0, v6, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p5, :cond_e

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    :goto_12
    move-object v4, v0

    .line 2775
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v7, v0

    if-lez v0, :cond_21

    .line 2779
    return v7

    .line 2783
    :cond_21
    const/4 v3, 0x7

    .line 2785
    iget-object v0, v6, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p5, :cond_2b

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_2b
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    :goto_2f
    move-object v4, v0

    .line 2783
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v1, v0

    .end local v7    # "index":I
    .local v1, "index":I
    if-lez v0, :cond_3e

    .line 2787
    return v1

    .line 2783
    :cond_3e
    move/from16 v12, p3

    goto :goto_71

    .line 2790
    .end local v1    # "index":I
    .restart local v7    # "index":I
    :cond_41
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_72

    move-object v8, v0

    .line 2791
    .local v8, "styles":[I
    array-length v9, v8

    const/4 v0, 0x0

    move v10, v7

    move v7, v0

    .end local v7    # "index":I
    .local v10, "index":I
    :goto_4c
    if-ge v7, v9, :cond_6e

    aget v11, v8, v7

    .line 2792
    .local v11, "style":I
    iget-object v0, v6, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v1, v6, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    move/from16 v12, p3

    invoke-virtual {v0, v12, v11, v1}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v13

    .line 2793
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v13

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v10, v0

    if-lez v0, :cond_6b

    .line 2794
    return v10

    .line 2791
    .end local v11    # "style":I
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    :cond_6e
    move/from16 v12, p3

    move v1, v10

    .line 2799
    .end local v8    # "styles":[I
    .end local v10    # "index":I
    .restart local v1    # "index":I
    :goto_71
    return v1

    :array_72
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 3003
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3006
    :try_start_3
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_42

    .line 3009
    nop

    .line 3011
    iget v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_15

    .line 3013
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    goto :goto_1a

    .line 3017
    :cond_15
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 3019
    :goto_1a
    iput v1, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 3025
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 3026
    .local v0, "tz":Ljava/util/TimeZone;
    instance-of v1, v0, Ljava/util/SimpleTimeZone;

    if-eqz v1, :cond_41

    .line 3027
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 3028
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 3029
    .local v2, "zi":Ljava/util/TimeZone;
    if-eqz v2, :cond_41

    invoke-virtual {v2, v0}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 3030
    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3033
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "zi":Ljava/util/TimeZone;
    :cond_41
    return-void

    .line 3007
    .end local v0    # "tz":Ljava/util/TimeZone;
    :catch_42
    move-exception v0

    .line 3008
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "invalid pattern"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V
    .registers 27
    .param p1, "patternCharIndex"    # I
    .param p2, "count"    # I
    .param p3, "delegate"    # Ljava/text/Format$FieldDelegate;
    .param p4, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "useDateFormatSymbols"    # Z

    .line 1239
    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    const v13, 0x7fffffff

    .line 1240
    .local v13, "maxIntCount":I
    const/4 v0, 0x0

    .line 1241
    .local v0, "current":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    .line 1243
    .local v14, "beginOffset":I
    sget-object v1, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v1, v1, p1

    .line 1245
    .local v1, "field":I
    const/16 v2, 0x3e8

    const/16 v3, 0x11

    if-ne v1, v3, :cond_3c

    .line 1246
    iget-object v3, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1247
    iget-object v3, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getWeekYear()I

    move-result v3

    move/from16 v15, p1

    move v8, v1

    move v7, v3

    .local v3, "value":I
    goto :goto_58

    .line 1250
    .end local v3    # "value":I
    :cond_2d
    const/4 v3, 0x1

    .line 1251
    .end local p1    # "patternCharIndex":I
    .local v3, "patternCharIndex":I
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v1, v4, v3

    .line 1252
    iget-object v4, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move v8, v1

    move v15, v3

    move v7, v4

    .local v4, "value":I
    goto :goto_58

    .line 1254
    .end local v3    # "patternCharIndex":I
    .end local v4    # "value":I
    .restart local p1    # "patternCharIndex":I
    :cond_3c
    if-ne v1, v2, :cond_4e

    .line 1255
    iget-object v3, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/text/CalendarBuilder;->toISODayOfWeek(I)I

    move-result v3

    move/from16 v15, p1

    move v8, v1

    move v7, v3

    .local v3, "value":I
    goto :goto_58

    .line 1257
    .end local v3    # "value":I
    :cond_4e
    iget-object v3, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move/from16 v15, p1

    move v8, v1

    move v7, v3

    .line 1260
    .end local v1    # "field":I
    .end local p1    # "patternCharIndex":I
    .local v7, "value":I
    .local v8, "field":I
    .local v15, "patternCharIndex":I
    :goto_58
    const/4 v1, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lt v10, v1, :cond_5f

    move v5, v3

    goto :goto_60

    :cond_5f
    move v5, v4

    :goto_60
    move v6, v5

    .line 1261
    .local v6, "style":I
    if-nez v12, :cond_70

    if-eq v8, v2, :cond_70

    .line 1262
    iget-object v2, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v5, v9, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v8, v6, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_72

    .line 1269
    :cond_70
    move-object/from16 v16, v0

    .end local v0    # "current":Ljava/lang/String;
    .local v16, "current":Ljava/lang/String;
    :goto_72
    if-eqz v15, :cond_321

    if-eq v15, v4, :cond_2f3

    if-eq v15, v3, :cond_2d3

    if-eq v15, v1, :cond_2a6

    const/16 v0, 0x8

    if-eq v15, v0, :cond_27c

    const/16 v0, 0x9

    const/4 v2, 0x0

    if-eq v15, v0, :cond_261

    const/16 v0, 0xe

    if-eq v15, v0, :cond_242

    const/16 v0, 0xf

    if-eq v15, v0, :cond_20f

    const/16 v5, 0x10

    packed-switch v15, :pswitch_data_35e

    packed-switch v15, :pswitch_data_368

    .line 1561
    if-nez v16, :cond_a0

    .line 1562
    invoke-direct {v9, v7, v10, v13, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v17, v8

    move/from16 v18, v14

    move v14, v7

    move v7, v6

    goto/16 :goto_31e

    .line 1561
    :cond_a0
    move/from16 v17, v8

    move/from16 v18, v14

    move v14, v7

    move v7, v6

    goto/16 :goto_31e

    .line 1407
    :pswitch_a8
    const-string v16, ""

    .line 1408
    move/from16 v17, v8

    move/from16 v18, v14

    move-object/from16 v8, v16

    move v14, v7

    move v7, v6

    goto/16 :goto_33d

    .line 1390
    :pswitch_b4
    if-nez v16, :cond_c4

    .line 1391
    invoke-direct {v9, v10, v7, v12, v4}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v8

    move/from16 v18, v14

    move-object/from16 v8, v16

    move v14, v7

    move v7, v6

    goto/16 :goto_33d

    .line 1390
    :cond_c4
    move/from16 v17, v8

    move/from16 v18, v14

    move v14, v7

    move v7, v6

    goto/16 :goto_31e

    .line 1351
    :pswitch_cc
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v7

    move v3, v13

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 p1, v6

    .end local v6    # "style":I
    .local p1, "style":I
    move/from16 v6, v17

    move/from16 v18, v7

    .end local v7    # "value":I
    .local v18, "value":I
    move v7, v8

    move/from16 v17, v8

    .end local v8    # "field":I
    .local v17, "field":I
    move/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZII)Ljava/lang/String;

    move-result-object v16

    .line 1354
    move/from16 v7, p1

    move-object/from16 v8, v16

    move/from16 v20, v18

    move/from16 v18, v14

    move/from16 v14, v20

    goto/16 :goto_33d

    .line 1508
    .end local v17    # "field":I
    .end local v18    # "value":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "value":I
    .restart local v8    # "field":I
    :pswitch_f3
    move/from16 p1, v6

    move/from16 v18, v7

    move/from16 v17, v8

    .end local v6    # "style":I
    .end local v7    # "value":I
    .end local v8    # "field":I
    .restart local v17    # "field":I
    .restart local v18    # "value":I
    .restart local p1    # "style":I
    iget-object v1, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 1509
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int v7, v0, v1

    .line 1511
    .end local v18    # "value":I
    .restart local v7    # "value":I
    if-nez v7, :cond_117

    .line 1512
    const/16 v0, 0x5a

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1513
    move/from16 v18, v14

    move-object/from16 v8, v16

    move v14, v7

    move/from16 v7, p1

    goto/16 :goto_33d

    .line 1516
    :cond_117
    const v0, 0xea60

    div-int/2addr v7, v0

    .line 1517
    if-ltz v7, :cond_123

    .line 1518
    const/16 v0, 0x2b

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_12a

    .line 1520
    :cond_123
    const/16 v0, 0x2d

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1521
    neg-int v0, v7

    move v7, v0

    .line 1524
    :goto_12a
    div-int/lit8 v0, v7, 0x3c

    invoke-static {v11, v0, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 1525
    if-ne v10, v4, :cond_132

    .line 1526
    goto :goto_140

    .line 1529
    :cond_132
    const/4 v0, 0x3

    if-ne v10, v0, :cond_13a

    .line 1530
    const/16 v0, 0x3a

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1532
    :cond_13a
    rem-int/lit8 v0, v7, 0x3c

    invoke-static {v11, v0, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 1533
    nop

    .line 1567
    :goto_140
    move/from16 v18, v14

    move-object/from16 v8, v16

    move v14, v7

    move/from16 v7, p1

    goto/16 :goto_33d

    .line 1269
    .end local v17    # "field":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v8    # "field":I
    :pswitch_149
    move/from16 p1, v6

    move/from16 v17, v8

    move v1, v4

    move/from16 v18, v14

    move v14, v7

    .end local v6    # "style":I
    .end local v7    # "value":I
    .end local v8    # "field":I
    .restart local v17    # "field":I
    .restart local v18    # "value":I
    .restart local p1    # "style":I
    goto/16 :goto_2fb

    .line 1499
    .end local v17    # "field":I
    .end local v18    # "value":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "value":I
    .restart local v8    # "field":I
    :pswitch_153
    move/from16 p1, v6

    move/from16 v18, v7

    move/from16 v17, v8

    .end local v6    # "style":I
    .end local v7    # "value":I
    .end local v8    # "field":I
    .restart local v17    # "field":I
    .restart local v18    # "value":I
    .restart local p1    # "style":I
    iget-object v3, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int v7, v0, v3

    .line 1500
    .end local v18    # "value":I
    .restart local v7    # "value":I
    if-lt v10, v1, :cond_16b

    move v0, v4

    goto :goto_16c

    :cond_16b
    move v0, v2

    .line 1501
    .local v0, "includeSeparator":Z
    :goto_16c
    if-ne v10, v1, :cond_16f

    goto :goto_170

    :cond_16f
    move v4, v2

    :goto_170
    move v1, v4

    .line 1502
    .local v1, "includeGmt":Z
    invoke-static {v1, v0, v7}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1504
    move/from16 v18, v14

    move-object/from16 v8, v16

    move v14, v7

    move/from16 v7, p1

    goto/16 :goto_33d

    .line 1422
    .end local v0    # "includeSeparator":Z
    .end local v1    # "includeGmt":Z
    .end local v17    # "field":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v8    # "field":I
    :pswitch_181
    move/from16 p1, v6

    move/from16 v18, v7

    move/from16 v17, v8

    .end local v6    # "style":I
    .end local v7    # "value":I
    .end local v8    # "field":I
    .restart local v17    # "field":I
    .restart local v18    # "value":I
    .restart local p1    # "style":I
    if-nez v16, :cond_205

    .line 1448
    iget-object v3, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1449
    .local v3, "tz":Ljava/util/TimeZone;
    iget-object v6, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eqz v6, :cond_199

    move v6, v4

    goto :goto_19a

    :cond_199
    move v6, v2

    .line 1451
    .local v6, "daylight":Z
    :goto_19a
    iget-object v7, v9, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-boolean v7, v7, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    if-eqz v7, :cond_1b4

    .line 1454
    if-ge v10, v1, :cond_1a3

    goto :goto_1a4

    :cond_1a3
    move v2, v4

    :goto_1a4
    move v1, v2

    .line 1455
    .local v1, "tzstyle":I
    iget-object v2, v9, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1456
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    .line 1455
    invoke-static {v2, v7, v6, v1}, Llibcore/icu/TimeZoneNames;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    .line 1457
    .local v1, "zoneString":Ljava/lang/String;
    goto :goto_1de

    .line 1459
    .end local v1    # "zoneString":Ljava/lang/String;
    :cond_1b4
    if-ge v10, v1, :cond_1bf

    .line 1460
    if-eqz v6, :cond_1bb

    .line 1461
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_1bd

    .line 1462
    :cond_1bb
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_1bd
    nop

    .local v1, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_1c7

    .line 1464
    .end local v1    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_1bf
    if-eqz v6, :cond_1c4

    .line 1465
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_1c6

    .line 1466
    :cond_1c4
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_1c6
    nop

    .line 1468
    .restart local v1    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :goto_1c7
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1469
    .local v2, "canonicalID":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v7

    iget-object v8, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 1470
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v7, v2, v1, v4, v5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1472
    .end local v2    # "canonicalID":Ljava/lang/String;
    .local v1, "zoneString":Ljava/lang/String;
    :goto_1de
    if-eqz v1, :cond_1e4

    .line 1473
    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1fb

    .line 1475
    :cond_1e4
    iget-object v2, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 1476
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1477
    .local v0, "offsetMillis":I
    const/4 v2, 0x1

    invoke-static {v2, v2, v0}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1480
    .end local v0    # "offsetMillis":I
    .end local v1    # "zoneString":Ljava/lang/String;
    .end local v3    # "tz":Ljava/util/TimeZone;
    .end local v6    # "daylight":Z
    :goto_1fb
    move/from16 v7, p1

    move/from16 v20, v18

    move/from16 v18, v14

    move/from16 v14, v20

    goto/16 :goto_31e

    .line 1422
    :cond_205
    move/from16 v7, p1

    move/from16 v20, v18

    move/from16 v18, v14

    move/from16 v14, v20

    goto/16 :goto_31e

    .line 1411
    .end local v17    # "field":I
    .end local v18    # "value":I
    .end local p1    # "style":I
    .local v6, "style":I
    .restart local v7    # "value":I
    .restart local v8    # "field":I
    :cond_20f
    move/from16 p1, v6

    move/from16 v18, v7

    move/from16 v17, v8

    .end local v6    # "style":I
    .end local v7    # "value":I
    .end local v8    # "field":I
    .restart local v17    # "field":I
    .restart local v18    # "value":I
    .restart local p1    # "style":I
    if-nez v16, :cond_239

    .line 1412
    move/from16 v8, v18

    .end local v18    # "value":I
    .local v8, "value":I
    if-nez v8, :cond_22f

    .line 1413
    iget-object v0, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {v9, v0, v10, v13, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v7, p1

    move/from16 v18, v14

    move v14, v8

    goto/16 :goto_31e

    .line 1416
    :cond_22f
    invoke-direct {v9, v8, v10, v13, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v7, p1

    move/from16 v18, v14

    move v14, v8

    goto/16 :goto_31e

    .line 1411
    .end local v8    # "value":I
    .restart local v18    # "value":I
    :cond_239
    move/from16 v8, v18

    .end local v18    # "value":I
    .restart local v8    # "value":I
    move/from16 v7, p1

    move/from16 v18, v14

    move v14, v8

    goto/16 :goto_31e

    .line 1397
    .end local v17    # "field":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "value":I
    .local v8, "field":I
    :cond_242
    move/from16 p1, v6

    move/from16 v17, v8

    move v8, v7

    .end local v6    # "style":I
    .end local v7    # "value":I
    .local v8, "value":I
    .restart local v17    # "field":I
    .restart local p1    # "style":I
    if-eqz v12, :cond_25a

    .line 1398
    iget-object v0, v9, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 1399
    .local v0, "ampm":[Ljava/lang/String;
    aget-object v16, v0, v8

    .line 1400
    .end local v0    # "ampm":[Ljava/lang/String;
    move/from16 v7, p1

    move/from16 v18, v14

    move v14, v8

    move-object/from16 v8, v16

    goto/16 :goto_33d

    .line 1397
    :cond_25a
    move/from16 v7, p1

    move/from16 v18, v14

    move v14, v8

    goto/16 :goto_31e

    .line 1382
    .end local v17    # "field":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "value":I
    .local v8, "field":I
    :cond_261
    move/from16 p1, v6

    move/from16 v17, v8

    move v8, v7

    .end local v6    # "style":I
    .end local v7    # "value":I
    .local v8, "value":I
    .restart local v17    # "field":I
    .restart local p1    # "style":I
    if-nez v16, :cond_275

    .line 1383
    invoke-direct {v9, v10, v8, v12, v2}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    move-result-object v16

    move/from16 v7, p1

    move/from16 v18, v14

    move v14, v8

    move-object/from16 v8, v16

    goto/16 :goto_33d

    .line 1382
    :cond_275
    move/from16 v7, p1

    move/from16 v18, v14

    move v14, v8

    goto/16 :goto_31e

    .line 1541
    .end local v17    # "field":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "value":I
    .local v8, "field":I
    :cond_27c
    move/from16 p1, v6

    move/from16 v17, v8

    move v8, v7

    .end local v6    # "style":I
    .end local v7    # "value":I
    .local v8, "value":I
    .restart local v17    # "field":I
    .restart local p1    # "style":I
    if-nez v16, :cond_29f

    .line 1542
    int-to-double v0, v8

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v7, v0

    .line 1543
    .end local v8    # "value":I
    .restart local v7    # "value":I
    invoke-direct {v9, v7, v10, v10, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v18, v14

    move-object/from16 v8, v16

    move v14, v7

    move/from16 v7, p1

    goto/16 :goto_33d

    .line 1541
    .end local v7    # "value":I
    .restart local v8    # "value":I
    :cond_29f
    move/from16 v7, p1

    move/from16 v18, v14

    move v14, v8

    goto/16 :goto_31e

    .line 1357
    .end local v17    # "field":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "value":I
    .local v8, "field":I
    :cond_2a6
    move/from16 p1, v6

    move/from16 v17, v8

    move v8, v7

    .end local v6    # "style":I
    .end local v7    # "value":I
    .local v8, "value":I
    .restart local v17    # "field":I
    .restart local p1    # "style":I
    if-nez v16, :cond_2cd

    .line 1358
    if-nez v8, :cond_2c3

    .line 1359
    iget-object v0, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {v9, v0, v10, v13, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v7, p1

    move/from16 v18, v14

    move v14, v8

    goto/16 :goto_31e

    .line 1362
    :cond_2c3
    invoke-direct {v9, v8, v10, v13, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v7, p1

    move/from16 v18, v14

    move v14, v8

    goto/16 :goto_31e

    .line 1357
    :cond_2cd
    move/from16 v7, p1

    move/from16 v18, v14

    move v14, v8

    goto :goto_31e

    .line 1324
    .end local v17    # "field":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "value":I
    .local v8, "field":I
    :cond_2d3
    move/from16 p1, v6

    move/from16 v17, v8

    move v8, v7

    .end local v6    # "style":I
    .end local v7    # "value":I
    .local v8, "value":I
    .restart local v17    # "field":I
    .restart local p1    # "style":I
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v8

    move v3, v13

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, v17

    move/from16 v18, v14

    move v14, v8

    .end local v8    # "value":I
    .local v14, "value":I
    .local v18, "beginOffset":I
    move/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZII)Ljava/lang/String;

    move-result-object v16

    .line 1327
    move/from16 v7, p1

    move-object/from16 v8, v16

    goto :goto_33d

    .line 1269
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "value":I
    .local v8, "field":I
    .local v14, "beginOffset":I
    :cond_2f3
    move v1, v4

    move/from16 p1, v6

    move/from16 v17, v8

    move/from16 v18, v14

    move v14, v7

    .line 1284
    .end local v6    # "style":I
    .end local v7    # "value":I
    .end local v8    # "field":I
    .local v14, "value":I
    .restart local v17    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local p1    # "style":I
    :goto_2fb
    iget-object v0, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_30f

    .line 1285
    if-eq v10, v3, :cond_309

    .line 1286
    invoke-direct {v9, v14, v10, v13, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v7, p1

    goto :goto_31e

    .line 1288
    :cond_309
    invoke-direct {v9, v14, v3, v3, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v7, p1

    goto :goto_31e

    .line 1291
    :cond_30f
    if-nez v16, :cond_31c

    .line 1292
    move/from16 v7, p1

    .end local p1    # "style":I
    .local v7, "style":I
    if-ne v7, v3, :cond_317

    move v4, v1

    goto :goto_318

    :cond_317
    move v4, v10

    :goto_318
    invoke-direct {v9, v14, v4, v13, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto :goto_31e

    .line 1291
    .end local v7    # "style":I
    .restart local p1    # "style":I
    :cond_31c
    move/from16 v7, p1

    .line 1567
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .local v7, "value":I
    .restart local v8    # "field":I
    .local v14, "beginOffset":I
    :goto_31e
    move-object/from16 v8, v16

    .end local v6    # "style":I
    .end local v8    # "field":I
    .local v7, "style":I
    .local v14, "value":I
    .restart local v17    # "field":I
    .restart local v18    # "beginOffset":I
    goto :goto_33d

    .line 1271
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .restart local v6    # "style":I
    .local v7, "value":I
    .restart local v8    # "field":I
    .local v14, "beginOffset":I
    :cond_321
    move/from16 v17, v8

    move/from16 v18, v14

    move v14, v7

    move v7, v6

    .end local v6    # "style":I
    .end local v8    # "field":I
    .local v7, "style":I
    .local v14, "value":I
    .restart local v17    # "field":I
    .restart local v18    # "beginOffset":I
    if-eqz v12, :cond_334

    .line 1272
    iget-object v0, v9, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v0

    .line 1273
    .local v0, "eras":[Ljava/lang/String;
    array-length v1, v0

    if-ge v14, v1, :cond_334

    .line 1274
    aget-object v16, v0, v14

    .line 1277
    .end local v0    # "eras":[Ljava/lang/String;
    :cond_334
    if-nez v16, :cond_33b

    .line 1278
    const-string v16, ""

    move-object/from16 v8, v16

    goto :goto_33d

    .line 1277
    :cond_33b
    move-object/from16 v8, v16

    .line 1567
    .end local v16    # "current":Ljava/lang/String;
    .local v8, "current":Ljava/lang/String;
    :goto_33d
    if-eqz v8, :cond_342

    .line 1568
    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1571
    :cond_342
    sget-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    aget v16, v0, v15

    .line 1572
    .local v16, "fieldID":I
    sget-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    aget-object v19, v0, v15

    .line 1574
    .local v19, "f":Ljava/text/DateFormat$Field;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v0, p3

    move/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v19

    move/from16 v4, v18

    move-object/from16 v6, p4

    invoke-interface/range {v0 .. v6}, Ljava/text/Format$FieldDelegate;->formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V

    .line 1575
    return-void

    :pswitch_data_35e
    .packed-switch 0x11
        :pswitch_181
        :pswitch_153
        :pswitch_149
    .end packed-switch

    :pswitch_data_368
    .packed-switch 0x15
        :pswitch_f3
        :pswitch_cc
        :pswitch_b4
        :pswitch_a8
        :pswitch_a8
    .end packed-switch
.end method

.method private greylist-max-o subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I
    .registers 35
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "patternCharIndex"    # I
    .param p4, "count"    # I
    .param p5, "obeyCount"    # Z
    .param p6, "ambiguousYear"    # [Z
    .param p7, "origPos"    # Ljava/text/ParsePosition;
    .param p8, "useFollowingMinusSignAsDelimiter"    # Z
    .param p9, "calb"    # Ljava/text/CalendarBuilder;

    .line 2282
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p4

    move-object/from16 v15, p7

    move-object/from16 v10, p9

    const-string v0, "GMT"

    const/4 v1, 0x0

    .line 2283
    .local v1, "value":I
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v9, v2

    .line 2284
    .local v9, "pos":Ljava/text/ParsePosition;
    iput v13, v9, Ljava/text/ParsePosition;->index:I

    .line 2285
    const/16 v2, 0x13

    move/from16 v3, p3

    if-ne v3, v2, :cond_29

    iget-object v4, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v4

    if-nez v4, :cond_29

    .line 2287
    const/4 v3, 0x1

    move v8, v3

    .end local p3    # "patternCharIndex":I
    .local v3, "patternCharIndex":I
    goto :goto_2a

    .line 2289
    .end local v3    # "patternCharIndex":I
    .restart local p3    # "patternCharIndex":I
    :cond_29
    move v8, v3

    .end local p3    # "patternCharIndex":I
    .local v8, "patternCharIndex":I
    :goto_2a
    sget-object v3, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v6, v3, v8

    .line 2294
    .local v6, "field":I
    :goto_2e
    iget v3, v9, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v16, -0x1

    if-lt v3, v4, :cond_3b

    .line 2295
    iput v13, v15, Ljava/text/ParsePosition;->errorIndex:I

    .line 2296
    return v16

    .line 2298
    :cond_3b
    iget v3, v9, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2299
    .local v3, "c":C
    const/16 v4, 0x20

    const/4 v5, 0x1

    if-eq v3, v4, :cond_559

    const/16 v4, 0x9

    if-eq v3, v4, :cond_559

    .line 2300
    nop

    .line 2305
    .end local v3    # "c":C
    iget v3, v9, Ljava/text/ParsePosition;->index:I

    .line 2313
    .local v3, "actualStart":I
    const/4 v4, 0x4

    const/16 v7, 0xf

    const/4 v2, 0x2

    if-eq v8, v4, :cond_5f

    if-eq v8, v7, :cond_5f

    if-ne v8, v2, :cond_59

    if-le v14, v2, :cond_5f

    :cond_59
    if-eq v8, v5, :cond_5f

    const/16 v7, 0x13

    if-ne v8, v7, :cond_c6

    .line 2320
    :cond_5f
    if-eqz p5, :cond_78

    .line 2321
    add-int v7, v13, v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v7, v4, :cond_6a

    .line 2322
    goto :goto_88

    .line 2324
    :cond_6a
    iget-object v4, v11, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    add-int v7, v13, v14

    const/4 v2, 0x0

    invoke-virtual {v12, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v9}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    .local v2, "number":Ljava/lang/Number;
    goto :goto_7e

    .line 2326
    .end local v2    # "number":Ljava/lang/Number;
    :cond_78
    iget-object v2, v11, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v2, v12, v9}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    .line 2328
    .restart local v2    # "number":Ljava/lang/Number;
    :goto_7e
    if-nez v2, :cond_91

    .line 2329
    if-ne v8, v5, :cond_88

    iget-object v4, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v4, v4, Ljava/util/GregorianCalendar;

    if-eqz v4, :cond_c6

    .line 2723
    .end local v2    # "number":Ljava/lang/Number;
    :cond_88
    :goto_88
    move v13, v6

    move/from16 v22, v8

    move-object v8, v9

    move-object v15, v10

    move-object v9, v12

    move v10, v3

    goto/16 :goto_551

    .line 2333
    .restart local v2    # "number":Ljava/lang/Number;
    :cond_91
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 2335
    if-eqz p8, :cond_c6

    if-gez v1, :cond_c6

    iget v4, v9, Ljava/text/ParsePosition;->index:I

    .line 2336
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_ab

    iget v4, v9, Ljava/text/ParsePosition;->index:I

    .line 2337
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-char v7, v11, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v4, v7, :cond_be

    :cond_ab
    iget v4, v9, Ljava/text/ParsePosition;->index:I

    .line 2338
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_c6

    iget v4, v9, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v4, v5

    .line 2339
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-char v7, v11, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v4, v7, :cond_c6

    .line 2340
    :cond_be
    neg-int v1, v1

    .line 2341
    iget v4, v9, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v4, v5

    iput v4, v9, Ljava/text/ParsePosition;->index:I

    move v7, v1

    goto :goto_c7

    .line 2346
    .end local v2    # "number":Ljava/lang/Number;
    :cond_c6
    move v7, v1

    .end local v1    # "value":I
    .local v7, "value":I
    :goto_c7
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    move-result v20

    .line 2349
    .local v20, "useDateFormatSymbols":Z
    if-eqz v8, :cond_516

    if-eq v8, v5, :cond_491

    const/4 v1, 0x2

    if-eq v8, v1, :cond_466

    const/4 v1, 0x4

    if-eq v8, v1, :cond_426

    const/16 v1, 0x9

    if-eq v8, v1, :cond_400

    const/16 v1, 0xe

    if-eq v8, v1, :cond_3ab

    const/16 v1, 0xf

    if-eq v8, v1, :cond_363

    const/16 v4, 0x10

    const/16 v2, 0x2d

    const/16 v1, 0x2b

    packed-switch v8, :pswitch_data_57a

    packed-switch v8, :pswitch_data_584

    .line 2675
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 2677
    .local v0, "parseStart":I
    if-eqz p5, :cond_113

    .line 2678
    add-int v1, v13, v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_105

    .line 2679
    move v13, v6

    move/from16 v22, v8

    move-object v8, v9

    move-object v15, v10

    move-object v9, v12

    move v10, v3

    move v12, v7

    goto/16 :goto_550

    .line 2681
    :cond_105
    iget-object v1, v11, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    add-int v2, v13, v14

    const/4 v4, 0x0

    invoke-virtual {v12, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .local v1, "number":Ljava/lang/Number;
    goto :goto_119

    .line 2683
    .end local v1    # "number":Ljava/lang/Number;
    :cond_113
    iget-object v1, v11, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, v12, v9}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 2685
    .restart local v1    # "number":Ljava/lang/Number;
    :goto_119
    if-eqz v1, :cond_181

    .line 2690
    const/16 v2, 0x8

    if-ne v8, v2, :cond_13e

    .line 2697
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    .line 2698
    .local v16, "doubleValue":D
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    sub-int/2addr v2, v0

    .line 2699
    .local v2, "width":I
    move/from16 p3, v6

    .end local v6    # "field":I
    .local p3, "field":I
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    move/from16 v21, v3

    .end local v3    # "actualStart":I
    .local v21, "actualStart":I
    int-to-double v3, v2

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 2700
    .local v3, "divisor":D
    div-double v5, v16, v3

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v18

    double-to-int v2, v5

    .line 2701
    .end local v3    # "divisor":D
    .end local v7    # "value":I
    .end local v16    # "doubleValue":D
    .local v2, "value":I
    goto :goto_146

    .line 2702
    .end local v2    # "value":I
    .end local v21    # "actualStart":I
    .end local p3    # "field":I
    .local v3, "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    :cond_13e
    move/from16 v21, v3

    move/from16 p3, v6

    .end local v3    # "actualStart":I
    .end local v6    # "field":I
    .restart local v21    # "actualStart":I
    .restart local p3    # "field":I
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 2706
    .end local v7    # "value":I
    .restart local v2    # "value":I
    :goto_146
    if-eqz p8, :cond_179

    if-gez v2, :cond_179

    iget v3, v9, Ljava/text/ParsePosition;->index:I

    .line 2707
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_15f

    iget v3, v9, Ljava/text/ParsePosition;->index:I

    .line 2708
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v4, v11, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v3, v4, :cond_15d

    goto :goto_15f

    :cond_15d
    const/4 v4, 0x1

    goto :goto_173

    :cond_15f
    :goto_15f
    iget v3, v9, Ljava/text/ParsePosition;->index:I

    .line 2709
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_179

    iget v3, v9, Ljava/text/ParsePosition;->index:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 2710
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v5, v11, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v3, v5, :cond_179

    .line 2711
    :goto_173
    neg-int v2, v2

    .line 2712
    iget v3, v9, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v3, v4

    iput v3, v9, Ljava/text/ParsePosition;->index:I

    .line 2715
    :cond_179
    move/from16 v6, p3

    .end local p3    # "field":I
    .restart local v6    # "field":I
    invoke-virtual {v10, v6, v2}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2716
    iget v3, v9, Ljava/text/ParsePosition;->index:I

    return v3

    .line 2685
    .end local v2    # "value":I
    .end local v21    # "actualStart":I
    .restart local v3    # "actualStart":I
    .restart local v7    # "value":I
    :cond_181
    move/from16 v21, v3

    .end local v3    # "actualStart":I
    .restart local v21    # "actualStart":I
    move v13, v6

    move/from16 v22, v8

    move-object v8, v9

    move-object v15, v10

    move-object v9, v12

    move/from16 v10, v21

    move v12, v7

    goto/16 :goto_550

    .line 2513
    .end local v0    # "parseStart":I
    .end local v1    # "number":Ljava/lang/Number;
    .end local v21    # "actualStart":I
    .restart local v3    # "actualStart":I
    :pswitch_18e
    move/from16 v21, v3

    .end local v3    # "actualStart":I
    .restart local v21    # "actualStart":I
    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, v21

    .end local v21    # "actualStart":I
    .local v5, "actualStart":I
    move/from16 v3, p2

    move v4, v6

    move v15, v5

    .end local v5    # "actualStart":I
    .local v15, "actualStart":I
    move/from16 v5, v20

    move/from16 p3, v6

    .end local v6    # "field":I
    .restart local p3    # "field":I
    move v6, v0

    move/from16 v21, v7

    .end local v7    # "value":I
    .local v21, "value":I
    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    move-result v0

    .line 2515
    .local v0, "idx":I
    if-lez v0, :cond_1ab

    .line 2516
    return v0

    .line 2515
    :cond_1ab
    move/from16 v13, p3

    move/from16 v22, v8

    move-object v8, v9

    move-object v9, v12

    move/from16 v12, v21

    move/from16 v24, v15

    move-object v15, v10

    move/from16 v10, v24

    goto/16 :goto_550

    .line 2449
    .end local v0    # "idx":I
    .end local v15    # "actualStart":I
    .end local v21    # "value":I
    .end local p3    # "field":I
    .restart local v3    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    :pswitch_1ba
    move v15, v3

    move/from16 p3, v6

    move/from16 v21, v7

    .end local v3    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .restart local v15    # "actualStart":I
    .restart local v21    # "value":I
    .restart local p3    # "field":I
    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    move/from16 v4, v21

    move/from16 v5, p2

    move-object v7, v9

    move/from16 v22, v8

    .end local v8    # "patternCharIndex":I
    .local v22, "patternCharIndex":I
    move/from16 v8, v20

    move/from16 v23, v15

    move-object v15, v9

    .end local v9    # "pos":Ljava/text/ParsePosition;
    .local v15, "pos":Ljava/text/ParsePosition;
    .local v23, "actualStart":I
    move v9, v0

    move-object v11, v10

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    move-result v0

    .line 2451
    .restart local v0    # "idx":I
    if-lez v0, :cond_1dd

    .line 2452
    return v0

    .line 2451
    :cond_1dd
    move/from16 v13, p3

    move-object v9, v12

    move-object v8, v15

    move/from16 v12, v21

    move/from16 v10, v23

    move-object v15, v11

    move-object/from16 v11, p0

    goto/16 :goto_550

    .line 2630
    .end local v0    # "idx":I
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v21    # "value":I
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .end local p3    # "field":I
    .restart local v3    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    .restart local v8    # "patternCharIndex":I
    .restart local v9    # "pos":Ljava/text/ParsePosition;
    :pswitch_1ea
    move/from16 v23, v3

    move/from16 p3, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object v15, v9

    move-object v11, v10

    .end local v3    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .end local v8    # "patternCharIndex":I
    .end local v9    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "pos":Ljava/text/ParsePosition;
    .restart local v21    # "value":I
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    .restart local p3    # "field":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v3, v15, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v0, v3

    if-gtz v0, :cond_20a

    .line 2631
    move/from16 v13, p3

    move-object v9, v12

    move-object v8, v15

    move/from16 v12, v21

    move/from16 v10, v23

    move-object v15, v11

    move-object/from16 v11, p0

    goto/16 :goto_550

    .line 2635
    :cond_20a
    iget v0, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2636
    .local v0, "c":C
    const/16 v3, 0x5a

    if-ne v0, v3, :cond_225

    .line 2637
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2638
    iget v1, v15, Ljava/text/ParsePosition;->index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v15, Ljava/text/ParsePosition;->index:I

    return v1

    .line 2642
    :cond_225
    if-ne v0, v1, :cond_22a

    .line 2643
    const/4 v1, 0x1

    move v8, v1

    .local v1, "sign":I
    goto :goto_22e

    .line 2644
    .end local v1    # "sign":I
    :cond_22a
    if-ne v0, v2, :cond_25b

    .line 2645
    const/4 v1, -0x1

    move v8, v1

    .line 2650
    .local v8, "sign":I
    :goto_22e
    iget v1, v15, Ljava/text/ParsePosition;->index:I

    const/4 v2, 0x1

    add-int/lit8 v3, v1, 0x1

    iput v3, v15, Ljava/text/ParsePosition;->index:I

    const/4 v1, 0x3

    if-ne v14, v1, :cond_23a

    const/4 v6, 0x1

    goto :goto_23b

    :cond_23a
    const/4 v6, 0x0

    :goto_23b
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v4, v8

    move/from16 v5, p4

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v1

    .line 2652
    .local v1, "i":I
    if-lez v1, :cond_24b

    .line 2653
    return v1

    .line 2655
    :cond_24b
    neg-int v2, v1

    iput v2, v15, Ljava/text/ParsePosition;->index:I

    .line 2657
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v8    # "sign":I
    move/from16 v13, p3

    move-object v9, v12

    move-object v8, v15

    move/from16 v12, v21

    move/from16 v10, v23

    move-object v15, v11

    move-object/from16 v11, p0

    goto/16 :goto_550

    .line 2647
    .restart local v0    # "c":C
    :cond_25b
    iget v1, v15, Ljava/text/ParsePosition;->index:I

    const/4 v5, 0x1

    add-int/2addr v1, v5

    iput v1, v15, Ljava/text/ParsePosition;->index:I

    .line 2648
    move/from16 v13, p3

    move-object v9, v12

    move-object v8, v15

    move/from16 v12, v21

    move/from16 v10, v23

    move-object v15, v11

    move-object/from16 v11, p0

    goto/16 :goto_550

    .line 2349
    .end local v0    # "c":C
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v21    # "value":I
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .end local p3    # "field":I
    .restart local v3    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    .local v8, "patternCharIndex":I
    .restart local v9    # "pos":Ljava/text/ParsePosition;
    :pswitch_26e
    move/from16 v23, v3

    move/from16 v22, v8

    move-object/from16 v11, p0

    move v13, v6

    move v12, v7

    move-object/from16 v19, v9

    move-object v15, v10

    move v7, v5

    .end local v3    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .end local v8    # "patternCharIndex":I
    .end local v9    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "pos":Ljava/text/ParsePosition;
    .restart local v21    # "value":I
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    .restart local p3    # "field":I
    goto/16 :goto_49b

    .line 2554
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v21    # "value":I
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .end local p3    # "field":I
    .restart local v3    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    .restart local v8    # "patternCharIndex":I
    .restart local v9    # "pos":Ljava/text/ParsePosition;
    :pswitch_27c
    move/from16 v23, v3

    move/from16 p3, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object v15, v9

    move-object v11, v10

    .end local v3    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .end local v8    # "patternCharIndex":I
    .end local v9    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "pos":Ljava/text/ParsePosition;
    .restart local v21    # "value":I
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    .restart local p3    # "field":I
    const/4 v3, 0x0

    .line 2556
    .local v3, "sign":I
    :try_start_287
    iget v6, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6
    :try_end_28d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_287 .. :try_end_28d} :catch_354

    move v8, v6

    .line 2557
    .local v8, "c":C
    if-ne v8, v1, :cond_293

    .line 2558
    const/4 v3, 0x1

    move v9, v3

    goto :goto_299

    .line 2559
    :cond_293
    if-ne v8, v2, :cond_298

    .line 2560
    const/4 v3, -0x1

    move v9, v3

    goto :goto_299

    .line 2559
    :cond_298
    move v9, v3

    .line 2562
    .end local v3    # "sign":I
    .local v9, "sign":I
    :goto_299
    if-nez v9, :cond_333

    .line 2564
    const/16 v3, 0x47

    if-eq v8, v3, :cond_2a3

    const/16 v3, 0x67

    if-ne v8, v3, :cond_31e

    .line 2565
    :cond_2a3
    :try_start_2a3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_2ac
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a3 .. :try_end_2ac} :catch_32e

    if-lt v3, v6, :cond_31e

    const/4 v3, 0x1

    :try_start_2af
    const-string v6, "GMT"

    const/4 v7, 0x0

    .line 2566
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v1, p1

    move v2, v3

    move/from16 v3, p2

    move-object v4, v6

    move v6, v5

    move v5, v7

    move v7, v6

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_31e

    .line 2567
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v13

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    .line 2569
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, v15, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_2ea

    .line 2570
    iget v0, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v8, v0

    .line 2571
    const/16 v0, 0x2b

    if-ne v8, v0, :cond_2e4

    .line 2572
    const/4 v0, 0x1

    move v9, v0

    .end local v9    # "sign":I
    .local v0, "sign":I
    goto :goto_2ea

    .line 2573
    .end local v0    # "sign":I
    .restart local v9    # "sign":I
    :cond_2e4
    const/16 v0, 0x2d

    if-ne v8, v0, :cond_2ea

    .line 2574
    const/4 v0, -0x1

    move v9, v0

    .line 2578
    :cond_2ea
    :goto_2ea
    if-nez v9, :cond_2fb

    .line 2579
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v0

    .line 2580
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2581
    iget v0, v15, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2591
    :cond_2fb
    iget v0, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v15, Ljava/text/ParsePosition;->index:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v4, v9

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v0

    .line 2594
    .local v0, "i":I
    if-lez v0, :cond_311

    .line 2595
    return v0

    .line 2597
    :cond_311
    neg-int v1, v0

    iput v1, v15, Ljava/text/ParsePosition;->index:I
    :try_end_314
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2af .. :try_end_314} :catch_318

    .line 2598
    .end local v0    # "i":I
    move-object v10, v11

    move-object/from16 v11, p0

    goto :goto_350

    .line 2623
    .end local v8    # "c":C
    :catch_318
    move-exception v0

    move v3, v9

    move-object v10, v11

    move-object/from16 v11, p0

    goto :goto_358

    .line 2601
    .restart local v8    # "c":C
    :cond_31e
    :try_start_31e
    iget v0, v15, Ljava/text/ParsePosition;->index:I
    :try_end_320
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31e .. :try_end_320} :catch_32e

    move-object v10, v11

    move-object/from16 v11, p0

    :try_start_323
    invoke-direct {v11, v12, v0, v10}, Ljava/text/SimpleDateFormat;->subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v0

    .line 2602
    .restart local v0    # "i":I
    if-lez v0, :cond_32a

    .line 2603
    return v0

    .line 2605
    :cond_32a
    neg-int v1, v0

    iput v1, v15, Ljava/text/ParsePosition;->index:I

    .line 2606
    .end local v0    # "i":I
    goto :goto_350

    .line 2623
    .end local v8    # "c":C
    :catch_32e
    move-exception v0

    move-object v10, v11

    move-object/from16 v11, p0

    goto :goto_352

    .line 2615
    .restart local v8    # "c":C
    :cond_333
    move v7, v5

    move-object v10, v11

    move-object/from16 v11, p0

    iget v0, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v15, Ljava/text/ParsePosition;->index:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v4, v9

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v0

    .line 2618
    .restart local v0    # "i":I
    if-lez v0, :cond_34d

    .line 2619
    return v0

    .line 2621
    :cond_34d
    neg-int v1, v0

    iput v1, v15, Ljava/text/ParsePosition;->index:I
    :try_end_350
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_323 .. :try_end_350} :catch_351

    .line 2624
    .end local v0    # "i":I
    .end local v8    # "c":C
    :goto_350
    goto :goto_358

    .line 2623
    :catch_351
    move-exception v0

    :goto_352
    move v3, v9

    goto :goto_358

    .end local v9    # "sign":I
    .restart local v3    # "sign":I
    :catch_354
    move-exception v0

    move-object v10, v11

    move-object/from16 v11, p0

    .line 2626
    .end local v3    # "sign":I
    :goto_358
    move/from16 v13, p3

    move-object v9, v12

    move-object v8, v15

    move/from16 v12, v21

    move-object v15, v10

    move/from16 v10, v23

    goto/16 :goto_550

    .line 2538
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v21    # "value":I
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .end local p3    # "field":I
    .local v3, "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    .local v8, "patternCharIndex":I
    .local v9, "pos":Ljava/text/ParsePosition;
    :cond_363
    move/from16 v23, v3

    move/from16 p3, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object v15, v9

    move v7, v5

    .end local v3    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .end local v8    # "patternCharIndex":I
    .end local v9    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "pos":Ljava/text/ParsePosition;
    .restart local v21    # "value":I
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    .restart local p3    # "field":I
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result v0

    if-nez v0, :cond_395

    .line 2540
    move/from16 v9, v21

    .end local v21    # "value":I
    .local v9, "value":I
    if-lt v9, v7, :cond_388

    const/16 v0, 0xc

    if-le v9, v0, :cond_397

    .line 2541
    move/from16 v13, p3

    move-object v8, v15

    move-object v15, v10

    move/from16 v10, v23

    move-object/from16 v24, v12

    move v12, v9

    move-object/from16 v9, v24

    goto/16 :goto_550

    .line 2540
    :cond_388
    move/from16 v13, p3

    move-object v8, v15

    move-object v15, v10

    move/from16 v10, v23

    move-object/from16 v24, v12

    move v12, v9

    move-object/from16 v9, v24

    goto/16 :goto_550

    .line 2538
    .end local v9    # "value":I
    .restart local v21    # "value":I
    :cond_395
    move/from16 v9, v21

    .line 2545
    .end local v21    # "value":I
    .restart local v9    # "value":I
    :cond_397
    iget-object v0, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    add-int/2addr v0, v7

    if-ne v9, v0, :cond_3a4

    .line 2546
    const/4 v7, 0x0

    .end local v9    # "value":I
    .restart local v7    # "value":I
    goto :goto_3a5

    .line 2545
    .end local v7    # "value":I
    .restart local v9    # "value":I
    :cond_3a4
    move v7, v9

    .line 2548
    .end local v9    # "value":I
    .restart local v7    # "value":I
    :goto_3a5
    invoke-virtual {v10, v1, v7}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2549
    iget v0, v15, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2524
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .end local p3    # "field":I
    .restart local v3    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v8    # "patternCharIndex":I
    .local v9, "pos":Ljava/text/ParsePosition;
    :cond_3ab
    move/from16 v23, v3

    move/from16 p3, v6

    move/from16 v22, v8

    move-object v15, v9

    move v9, v7

    .end local v3    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .end local v8    # "patternCharIndex":I
    .local v9, "value":I
    .restart local v15    # "pos":Ljava/text/ParsePosition;
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    .restart local p3    # "field":I
    if-eqz v20, :cond_3da

    .line 2525
    const/16 v4, 0x9

    iget-object v0, v11, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2526
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v5

    .line 2525
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v1, v0

    .local v1, "index":I
    if-lez v0, :cond_3cd

    .line 2527
    return v1

    .line 2525
    :cond_3cd
    move/from16 v13, p3

    move-object v8, v15

    move-object v15, v10

    move/from16 v10, v23

    move-object/from16 v24, v12

    move v12, v9

    move-object/from16 v9, v24

    goto/16 :goto_550

    .line 2530
    .end local v1    # "index":I
    :cond_3da
    iget-object v0, v11, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    move/from16 v8, p3

    .end local p3    # "field":I
    .local v8, "field":I
    invoke-direct {v11, v8, v0}, Ljava/text/SimpleDateFormat;->getDisplayNamesMap(ILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 2531
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v4, v8

    move-object v5, v0

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v1

    move v2, v1

    .local v2, "index":I
    if-lez v1, :cond_3f4

    .line 2532
    return v2

    .line 2535
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3f4
    move v13, v8

    move-object v8, v15

    move-object v15, v10

    move/from16 v10, v23

    move-object/from16 v24, v12

    move v12, v9

    move-object/from16 v9, v24

    goto/16 :goto_550

    .line 2501
    .end local v2    # "index":I
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .restart local v3    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    .local v8, "patternCharIndex":I
    .local v9, "pos":Ljava/text/ParsePosition;
    :cond_400
    move/from16 v23, v3

    move/from16 v22, v8

    move-object v15, v9

    move v8, v6

    move v9, v7

    .end local v3    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .local v8, "field":I
    .local v9, "value":I
    .restart local v15    # "pos":Ljava/text/ParsePosition;
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v4, v8

    move/from16 v5, v20

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    move-result v0

    .line 2503
    .local v0, "idx":I
    if-lez v0, :cond_41a

    .line 2504
    return v0

    .line 2503
    :cond_41a
    move v13, v8

    move-object v8, v15

    move-object v15, v10

    move/from16 v10, v23

    move-object/from16 v24, v12

    move v12, v9

    move-object/from16 v9, v24

    goto/16 :goto_550

    .line 2459
    .end local v0    # "idx":I
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .restart local v3    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    .local v8, "patternCharIndex":I
    .local v9, "pos":Ljava/text/ParsePosition;
    :cond_426
    move/from16 v23, v3

    move/from16 v22, v8

    move-object v15, v9

    move v8, v6

    move v9, v7

    move v7, v5

    .end local v3    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .local v8, "field":I
    .local v9, "value":I
    .restart local v15    # "pos":Ljava/text/ParsePosition;
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result v0

    if-nez v0, :cond_452

    .line 2461
    if-lt v9, v7, :cond_446

    const/16 v0, 0x18

    if-le v9, v0, :cond_452

    .line 2462
    move v13, v8

    move-object v8, v15

    move-object v15, v10

    move/from16 v10, v23

    move-object/from16 v24, v12

    move v12, v9

    move-object/from16 v9, v24

    goto/16 :goto_550

    .line 2461
    :cond_446
    move v13, v8

    move-object v8, v15

    move-object v15, v10

    move/from16 v10, v23

    move-object/from16 v24, v12

    move v12, v9

    move-object/from16 v9, v24

    goto/16 :goto_550

    .line 2466
    :cond_452
    iget-object v0, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    add-int/2addr v0, v7

    if-ne v9, v0, :cond_45f

    .line 2467
    const/4 v7, 0x0

    .end local v9    # "value":I
    .restart local v7    # "value":I
    goto :goto_460

    .line 2466
    .end local v7    # "value":I
    .restart local v9    # "value":I
    :cond_45f
    move v7, v9

    .line 2469
    .end local v9    # "value":I
    .restart local v7    # "value":I
    :goto_460
    invoke-virtual {v10, v1, v7}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2470
    iget v0, v15, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2438
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .restart local v3    # "actualStart":I
    .restart local v6    # "field":I
    .local v8, "patternCharIndex":I
    .local v9, "pos":Ljava/text/ParsePosition;
    :cond_466
    move/from16 v23, v3

    move/from16 v22, v8

    move-object v15, v9

    move v8, v6

    move v9, v7

    .end local v3    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .local v8, "field":I
    .local v9, "value":I
    .restart local v15    # "pos":Ljava/text/ParsePosition;
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    move v4, v9

    move/from16 v5, p2

    move-object v7, v15

    move v13, v8

    .end local v8    # "field":I
    .local v13, "field":I
    move/from16 v8, v20

    move v12, v9

    .end local v9    # "value":I
    .local v12, "value":I
    move v9, v0

    move-object/from16 v19, v15

    move-object v15, v10

    .end local v15    # "pos":Ljava/text/ParsePosition;
    .local v19, "pos":Ljava/text/ParsePosition;
    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    move-result v0

    .line 2440
    .restart local v0    # "idx":I
    if-lez v0, :cond_489

    .line 2441
    return v0

    .line 2440
    :cond_489
    move-object/from16 v9, p1

    move-object/from16 v8, v19

    move/from16 v10, v23

    goto/16 :goto_550

    .line 2349
    .end local v0    # "idx":I
    .end local v12    # "value":I
    .end local v13    # "field":I
    .end local v19    # "pos":Ljava/text/ParsePosition;
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .restart local v3    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    .local v8, "patternCharIndex":I
    .local v9, "pos":Ljava/text/ParsePosition;
    :cond_491
    move/from16 v23, v3

    move v13, v6

    move v12, v7

    move/from16 v22, v8

    move-object/from16 v19, v9

    move-object v15, v10

    move v7, v5

    .line 2365
    .end local v3    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .end local v8    # "patternCharIndex":I
    .end local v9    # "pos":Ljava/text/ParsePosition;
    .restart local v12    # "value":I
    .restart local v13    # "field":I
    .restart local v19    # "pos":Ljava/text/ParsePosition;
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    :goto_49b
    iget-object v0, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-nez v0, :cond_4cc

    .line 2368
    const/4 v0, 0x4

    if-lt v14, v0, :cond_4a6

    const/4 v5, 0x2

    goto :goto_4a7

    :cond_4a6
    move v5, v7

    :goto_4a7
    move v0, v5

    .line 2369
    .local v0, "style":I
    iget-object v1, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v2, v11, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v13, v0, v2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v7

    .line 2370
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_4c4

    .line 2371
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v4, v13

    move-object v5, v7

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v1

    move v2, v1

    .restart local v2    # "index":I
    if-lez v1, :cond_4c4

    .line 2372
    return v2

    .line 2375
    .end local v2    # "index":I
    :cond_4c4
    invoke-virtual {v15, v13, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2376
    move-object/from16 v8, v19

    .end local v19    # "pos":Ljava/text/ParsePosition;
    .local v8, "pos":Ljava/text/ParsePosition;
    iget v1, v8, Ljava/text/ParsePosition;->index:I

    return v1

    .line 2385
    .end local v0    # "style":I
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "pos":Ljava/text/ParsePosition;
    .restart local v19    # "pos":Ljava/text/ParsePosition;
    :cond_4cc
    move-object/from16 v8, v19

    .end local v19    # "pos":Ljava/text/ParsePosition;
    .restart local v8    # "pos":Ljava/text/ParsePosition;
    const/4 v0, 0x2

    if-gt v14, v0, :cond_50b

    iget v1, v8, Ljava/text/ParsePosition;->index:I

    sub-int v1, v1, v23

    if-ne v1, v0, :cond_50b

    .line 2386
    move-object/from16 v9, p1

    move/from16 v10, v23

    .end local v23    # "actualStart":I
    .local v10, "actualStart":I
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_50f

    add-int/lit8 v3, v10, 0x1

    .line 2387
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_50f

    .line 2396
    iget v0, v11, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    const/16 v1, 0x64

    rem-int/2addr v0, v1

    .line 2397
    .local v0, "ambiguousTwoDigitYear":I
    if-ne v12, v0, :cond_4fa

    move v5, v7

    goto :goto_4fb

    :cond_4fa
    const/4 v5, 0x0

    :goto_4fb
    const/4 v2, 0x0

    aput-boolean v5, p6, v2

    .line 2398
    iget v3, v11, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    div-int/2addr v3, v1

    mul-int/2addr v3, v1

    .line 2399
    if-ge v12, v0, :cond_506

    move v7, v1

    goto :goto_507

    :cond_506
    move v7, v2

    :goto_507
    add-int/2addr v3, v7

    add-int v7, v12, v3

    .end local v12    # "value":I
    .local v7, "value":I
    goto :goto_510

    .line 2385
    .end local v0    # "ambiguousTwoDigitYear":I
    .end local v7    # "value":I
    .end local v10    # "actualStart":I
    .restart local v12    # "value":I
    .restart local v23    # "actualStart":I
    :cond_50b
    move-object/from16 v9, p1

    move/from16 v10, v23

    .line 2401
    .end local v23    # "actualStart":I
    .restart local v10    # "actualStart":I
    :cond_50f
    move v7, v12

    .end local v12    # "value":I
    .restart local v7    # "value":I
    :goto_510
    invoke-virtual {v15, v13, v7}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2402
    iget v0, v8, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2351
    .end local v10    # "actualStart":I
    .end local v13    # "field":I
    .end local v22    # "patternCharIndex":I
    .restart local v3    # "actualStart":I
    .restart local v6    # "field":I
    .local v8, "patternCharIndex":I
    .restart local v9    # "pos":Ljava/text/ParsePosition;
    :cond_516
    move v13, v6

    move/from16 v22, v8

    move-object v8, v9

    move-object v15, v10

    move-object v9, v12

    move v10, v3

    move v12, v7

    .end local v3    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .end local v9    # "pos":Ljava/text/ParsePosition;
    .local v8, "pos":Ljava/text/ParsePosition;
    .restart local v10    # "actualStart":I
    .restart local v12    # "value":I
    .restart local v13    # "field":I
    .restart local v22    # "patternCharIndex":I
    if-eqz v20, :cond_537

    .line 2352
    const/4 v4, 0x0

    iget-object v0, v11, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v1, v0

    .restart local v1    # "index":I
    if-lez v0, :cond_550

    .line 2353
    return v1

    .line 2356
    .end local v1    # "index":I
    :cond_537
    iget-object v0, v11, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {v11, v13, v0}, Ljava/text/SimpleDateFormat;->getDisplayNamesMap(ILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 2357
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v4, v13

    move-object v5, v0

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v1

    move v2, v1

    .restart local v2    # "index":I
    if-lez v1, :cond_54f

    .line 2358
    return v2

    .line 2361
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_54f
    nop

    .line 2723
    .end local v2    # "index":I
    .end local v8    # "pos":Ljava/text/ParsePosition;
    .end local v10    # "actualStart":I
    .end local v20    # "useDateFormatSymbols":Z
    .restart local v19    # "pos":Ljava/text/ParsePosition;
    .restart local v23    # "actualStart":I
    :cond_550
    :goto_550
    move v1, v12

    .end local v12    # "value":I
    .end local v19    # "pos":Ljava/text/ParsePosition;
    .end local v23    # "actualStart":I
    .local v1, "value":I
    .restart local v8    # "pos":Ljava/text/ParsePosition;
    .restart local v10    # "actualStart":I
    :goto_551
    iget v0, v8, Ljava/text/ParsePosition;->index:I

    move-object/from16 v4, p7

    move v2, v10

    .end local v10    # "actualStart":I
    .local v2, "actualStart":I
    iput v0, v4, Ljava/text/ParsePosition;->errorIndex:I

    .line 2724
    return v16

    .line 2299
    .end local v2    # "actualStart":I
    .end local v13    # "field":I
    .end local v22    # "patternCharIndex":I
    .local v3, "c":C
    .restart local v6    # "field":I
    .local v8, "patternCharIndex":I
    .restart local v9    # "pos":Ljava/text/ParsePosition;
    :cond_559
    move v13, v6

    move/from16 v22, v8

    move-object v8, v9

    move-object v9, v12

    move-object v4, v15

    move-object v15, v10

    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    .line 2302
    .end local v6    # "field":I
    .end local v9    # "pos":Ljava/text/ParsePosition;
    .local v8, "pos":Ljava/text/ParsePosition;
    .restart local v13    # "field":I
    .restart local v22    # "patternCharIndex":I
    iget v6, v8, Ljava/text/ParsePosition;->index:I

    add-int/2addr v6, v5

    iput v6, v8, Ljava/text/ParsePosition;->index:I

    .line 2303
    .end local v3    # "c":C
    move-object v12, v9

    move v6, v13

    move-object v10, v15

    move/from16 v13, p2

    move-object v15, v4

    move-object v9, v8

    move/from16 v8, v22

    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    goto/16 :goto_2e

    :pswitch_data_57a
    .packed-switch 0x11
        :pswitch_27c
        :pswitch_27c
        :pswitch_26e
    .end packed-switch

    :pswitch_data_584
    .packed-switch 0x15
        :pswitch_1ea
        :pswitch_1ba
        :pswitch_18e
    .end packed-switch
.end method

.method private greylist-max-o subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I
    .registers 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "sign"    # I
    .param p4, "count"    # I
    .param p5, "colon"    # Z
    .param p6, "calb"    # Ljava/text/CalendarBuilder;

    .line 2180
    move v0, p2

    .line 2184
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2187
    .local v0, "c":C
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_b} :catch_8c

    if-nez v2, :cond_f

    .line 2188
    goto/16 :goto_8d

    .line 2190
    :cond_f
    add-int/lit8 v2, v0, -0x30

    .line 2191
    .local v2, "hours":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "index":I
    .local v3, "index":I
    :try_start_13
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    .line 2192
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v1
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_1c} :catch_89

    if-eqz v1, :cond_26

    .line 2193
    mul-int/lit8 v1, v2, 0xa

    add-int/lit8 v4, v0, -0x30

    add-int v2, v1, v4

    move v1, v3

    goto :goto_29

    .line 2204
    :cond_26
    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .line 2206
    .end local v3    # "index":I
    .restart local v1    # "index":I
    :goto_29
    const/16 v3, 0x17

    if-le v2, v3, :cond_2f

    .line 2207
    goto/16 :goto_8d

    .line 2209
    :cond_2f
    const/4 v3, 0x0

    .line 2210
    .local v3, "minutes":I
    const/4 v4, 0x1

    if-eq p4, v4, :cond_74

    .line 2212
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    :try_start_35
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1
    :try_end_39
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_35 .. :try_end_39} :catch_71

    move v0, v1

    .line 2228
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_46

    .line 2229
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "index":I
    .restart local v1    # "index":I
    :try_start_40
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v0, v4

    goto :goto_4b

    .line 2230
    .end local v1    # "index":I
    .restart local v4    # "index":I
    :cond_46
    if-eqz p5, :cond_4a

    .line 2231
    move v1, v4

    goto :goto_8d

    .line 2230
    :cond_4a
    move v1, v4

    .line 2234
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :goto_4b
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v4
    :try_end_4f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_40 .. :try_end_4f} :catch_8c

    if-nez v4, :cond_52

    .line 2235
    goto :goto_8d

    .line 2237
    :cond_52
    add-int/lit8 v3, v0, -0x30

    .line 2238
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .restart local v4    # "index":I
    :try_start_56
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    .line 2239
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v1
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_56 .. :try_end_5f} :catch_71

    if-nez v1, :cond_62

    .line 2240
    goto :goto_6d

    .line 2242
    :cond_62
    mul-int/lit8 v1, v3, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v3, v1, v5

    .line 2243
    const/16 v1, 0x3b

    if-le v3, v1, :cond_6f

    .line 2244
    nop

    .line 2253
    .end local v0    # "c":C
    .end local v2    # "hours":I
    .end local v3    # "minutes":I
    :goto_6d
    move v1, v4

    goto :goto_8d

    .line 2243
    .restart local v0    # "c":C
    .restart local v2    # "hours":I
    .restart local v3    # "minutes":I
    :cond_6f
    move v1, v4

    goto :goto_74

    .line 2251
    .end local v0    # "c":C
    .end local v2    # "hours":I
    .end local v3    # "minutes":I
    :catch_71
    move-exception v0

    move v1, v4

    goto :goto_8d

    .line 2247
    .end local v4    # "index":I
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    .restart local v2    # "hours":I
    .restart local v3    # "minutes":I
    :cond_74
    :goto_74
    mul-int/lit8 v4, v2, 0x3c

    add-int/2addr v3, v4

    .line 2248
    const/16 v4, 0xf

    const v5, 0xea60

    mul-int/2addr v5, v3

    mul-int/2addr v5, p3

    :try_start_7e
    invoke-virtual {p6, v4, v5}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    .line 2249
    invoke-virtual {v4, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;
    :try_end_88
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7e .. :try_end_88} :catch_8c

    .line 2250
    return v1

    .line 2251
    .end local v0    # "c":C
    .end local v1    # "index":I
    .end local v2    # "hours":I
    .local v3, "index":I
    :catch_89
    move-exception v0

    move v1, v3

    goto :goto_8d

    .end local v3    # "index":I
    .restart local v1    # "index":I
    :catch_8c
    move-exception v0

    .line 2253
    :goto_8d
    rsub-int/lit8 v0, v1, 0x1

    return v0
.end method

.method private greylist-max-o subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    .line 1992
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-boolean v0, v0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    if-eqz v0, :cond_b

    .line 1994
    invoke-direct {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->subParseZoneStringFromSymbols(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v0

    return v0

    .line 1996
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->subParseZoneStringFromICU(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o subParseZoneStringFromICU(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    .line 2026
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2028
    .local v0, "currentTimeZoneID":Ljava/lang/String;
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    .line 2029
    .local v1, "tzNames":Landroid/icu/text/TimeZoneNames;
    const/4 v2, 0x0

    .line 2032
    .local v2, "bestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    const/4 v3, 0x0

    .line 2034
    .local v3, "currentTzMetaZoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v4, Ljava/text/SimpleDateFormat;->NAME_TYPES:Ljava/util/EnumSet;

    invoke-virtual {v1, p1, p2, v4}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v4

    .line 2035
    .local v4, "matches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 2036
    .local v6, "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    if-eqz v2, :cond_64

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v7

    invoke-virtual {v6}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v8

    if-ge v7, v8, :cond_35

    goto :goto_64

    .line 2038
    :cond_35
    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v7

    invoke-virtual {v6}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v8

    if-ne v7, v8, :cond_65

    .line 2039
    invoke-virtual {v6}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 2042
    move-object v2, v6

    .line 2043
    goto :goto_66

    .line 2044
    :cond_4b
    invoke-virtual {v6}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_65

    .line 2045
    if-nez v3, :cond_58

    .line 2046
    nop

    .line 2047
    invoke-virtual {v1, v0}, Landroid/icu/text/TimeZoneNames;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 2049
    :cond_58
    invoke-virtual {v6}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 2050
    move-object v2, v6

    .line 2051
    goto :goto_66

    .line 2037
    :cond_64
    :goto_64
    move-object v2, v6

    .line 2055
    .end local v6    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_65
    goto :goto_1c

    .line 2056
    :cond_66
    :goto_66
    if-nez v2, :cond_6a

    .line 2058
    neg-int v5, p2

    return v5

    .line 2061
    :cond_6a
    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v5

    .line 2062
    .local v5, "tzId":Ljava/lang/String;
    if-nez v5, :cond_a2

    .line 2063
    if-nez v3, :cond_76

    .line 2064
    invoke-virtual {v1, v0}, Landroid/icu/text/TimeZoneNames;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 2066
    :cond_76
    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 2067
    move-object v5, v0

    goto :goto_a2

    .line 2070
    :cond_82
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-static {v6}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v6

    .line 2071
    .local v6, "uLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v7

    .line 2072
    .local v7, "region":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_9a

    .line 2073
    invoke-static {v6}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v6

    .line 2074
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v7

    .line 2076
    :cond_9a
    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v7}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2080
    .end local v6    # "uLocale":Landroid/icu/util/ULocale;
    .end local v7    # "region":Ljava/lang/String;
    :cond_a2
    :goto_a2
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 2081
    .local v6, "newTimeZone":Ljava/util/TimeZone;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_af

    .line 2082
    invoke-virtual {p0, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2086
    :cond_af
    sget-object v7, Ljava/text/SimpleDateFormat;->DST_NAME_TYPES:Ljava/util/Set;

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 2087
    .local v7, "isDst":Z
    if-eqz v7, :cond_c0

    invoke-virtual {v6}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v8

    goto :goto_c1

    :cond_c0
    const/4 v8, 0x0

    .line 2088
    .local v8, "dstAmount":I
    :goto_c1
    if-eqz v7, :cond_c5

    if-eqz v8, :cond_d0

    .line 2089
    :cond_c5
    const/16 v9, 0xf

    invoke-virtual {p3, v9}, Ljava/text/CalendarBuilder;->clear(I)Ljava/text/CalendarBuilder;

    move-result-object v9

    const/16 v10, 0x10

    invoke-virtual {v9, v10, v8}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2092
    :cond_d0
    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v9

    add-int/2addr v9, p2

    return v9
.end method

.method private greylist-max-o subParseZoneStringFromSymbols(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .registers 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    .line 2100
    const/4 v0, 0x0

    .line 2101
    .local v0, "useSameName":Z
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 2106
    .local v1, "currentTimeZone":Ljava/util/TimeZone;
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    move-result v2

    .line 2107
    .local v2, "zoneIndex":I
    const/4 v3, 0x0

    .line 2108
    .local v3, "tz":Ljava/util/TimeZone;
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v4

    .line 2109
    .local v4, "zoneStrings":[[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2110
    .local v5, "zoneNames":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2111
    .local v6, "nameIndex":I
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eq v2, v7, :cond_38

    .line 2112
    aget-object v5, v4, v2

    .line 2113
    invoke-direct {p0, p1, p2, v5}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v10

    move v6, v10

    if-lez v10, :cond_38

    .line 2114
    if-gt v6, v9, :cond_32

    .line 2116
    aget-object v10, v5, v6

    add-int/lit8 v11, v6, 0x2

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2118
    :cond_32
    aget-object v10, v5, v8

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2121
    :cond_38
    if-nez v3, :cond_65

    .line 2122
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    move-result v2

    .line 2123
    if-eq v2, v7, :cond_65

    .line 2124
    aget-object v5, v4, v2

    .line 2125
    invoke-direct {p0, p1, p2, v5}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v7

    move v6, v7

    if-lez v7, :cond_65

    .line 2126
    if-gt v6, v9, :cond_5f

    .line 2127
    aget-object v7, v5, v6

    add-int/lit8 v10, v6, 0x2

    aget-object v10, v5, v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2129
    :cond_5f
    aget-object v7, v5, v8

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2134
    :cond_65
    if-nez v3, :cond_8a

    .line 2135
    array-length v7, v4

    .line 2136
    .local v7, "len":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_69
    if-ge v10, v7, :cond_8a

    .line 2137
    aget-object v5, v4, v10

    .line 2138
    invoke-direct {p0, p1, p2, v5}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v11

    move v6, v11

    if-lez v11, :cond_87

    .line 2139
    if-gt v6, v9, :cond_80

    .line 2140
    aget-object v9, v5, v6

    add-int/lit8 v11, v6, 0x2

    aget-object v11, v5, v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2142
    :cond_80
    aget-object v9, v5, v8

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2143
    goto :goto_8a

    .line 2136
    :cond_87
    add-int/lit8 v10, v10, 0x1

    goto :goto_69

    .line 2147
    .end local v7    # "len":I
    .end local v10    # "i":I
    :cond_8a
    :goto_8a
    if-eqz v3, :cond_b5

    .line 2148
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_95

    .line 2149
    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2157
    :cond_95
    const/4 v7, 0x3

    if-lt v6, v7, :cond_9c

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v8

    .line 2158
    .local v8, "dstAmount":I
    :cond_9c
    if-nez v0, :cond_ad

    if-lt v6, v7, :cond_a2

    if-eqz v8, :cond_ad

    .line 2159
    :cond_a2
    const/16 v7, 0xf

    invoke-virtual {p3, v7}, Ljava/text/CalendarBuilder;->clear(I)Ljava/text/CalendarBuilder;

    move-result-object v7

    const/16 v9, 0x10

    invoke-virtual {v7, v9, v8}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2161
    :cond_ad
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, p2

    return v7

    .line 2163
    .end local v8    # "dstAmount":I
    :cond_b5
    neg-int v7, p2

    return v7
.end method

.method private greylist-max-o translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;

    .line 2824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2825
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2826
    .local v1, "inQuote":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_60

    .line 2827
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2828
    .local v3, "c":C
    const/16 v4, 0x27

    if-eqz v1, :cond_19

    .line 2829
    if-ne v3, v4, :cond_5a

    .line 2830
    const/4 v1, 0x0

    goto :goto_5a

    .line 2834
    :cond_19
    if-ne v3, v4, :cond_1d

    .line 2835
    const/4 v1, 0x1

    goto :goto_5a

    .line 2836
    :cond_1d
    const/16 v4, 0x61

    if-lt v3, v4, :cond_25

    const/16 v4, 0x7a

    if-le v3, v4, :cond_2d

    :cond_25
    const/16 v4, 0x41

    if-lt v3, v4, :cond_5a

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_5a

    .line 2837
    :cond_2d
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2838
    .local v4, "ci":I
    if-ltz v4, :cond_3e

    .line 2842
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5a

    .line 2843
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5a

    .line 2846
    :cond_3e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal pattern  character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2852
    .end local v4    # "ci":I
    :cond_5a
    :goto_5a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2826
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2854
    .end local v2    # "i":I
    :cond_60
    if-nez v1, :cond_67

    .line 2857
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2855
    :cond_67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unfinished quote in pattern"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o useDateFormatSymbols()Z
    .registers 3

    .line 2812
    iget-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 2813
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.GregorianCalendar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    if-nez v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 2812
    :goto_1e
    return v0
.end method

.method private greylist-max-o zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    .registers 9
    .param p1, "value"    # I
    .param p2, "minDigits"    # I
    .param p3, "maxDigits"    # I
    .param p4, "buffer"    # Ljava/lang/StringBuffer;

    .line 1646
    :try_start_0
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    if-nez v0, :cond_12

    .line 1647
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v0, Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    .line 1649
    :cond_12
    if-ltz p1, :cond_84

    .line 1650
    const/16 v0, 0x64

    const/4 v1, 0x2

    if-ge p1, v0, :cond_44

    const/4 v0, 0x1

    if-lt p2, v0, :cond_44

    if-gt p2, v1, :cond_44

    .line 1651
    const/16 v0, 0xa

    if-ge p1, v0, :cond_31

    .line 1652
    if-ne p2, v1, :cond_29

    .line 1653
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1655
    :cond_29
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    add-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 1657
    :cond_31
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1658
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    rem-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1660
    :goto_43
    return-void

    .line 1661
    :cond_44
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_84

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_84

    .line 1662
    const/4 v0, 0x4

    if-ne p2, v0, :cond_7a

    .line 1663
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit16 v1, p1, 0x3e8

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1664
    rem-int/lit16 v0, p1, 0x3e8

    move p1, v0

    .line 1665
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v1, p1, 0x64

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1666
    rem-int/lit8 v0, p1, 0x64

    move p1, v0

    .line 1667
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1668
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    rem-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1669
    return-void

    .line 1671
    :cond_7a
    if-ne p2, v1, :cond_84

    if-ne p3, v1, :cond_84

    .line 1672
    rem-int/lit8 v0, p1, 0x64

    invoke-direct {p0, v0, v1, v1, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_83} :catch_85

    .line 1673
    return-void

    .line 1678
    :cond_84
    goto :goto_86

    .line 1677
    :catch_85
    move-exception v0

    .line 1680
    :goto_86
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1681
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p3}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1682
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v1, p1

    sget-object v3, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    invoke-virtual {v0, v1, v2, p4, v3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1683
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api applyLocalizedPattern(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 2906
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2907
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v0

    .line 2906
    const-string v1, "GyMdkHmsSEDFwWahKzZYuXLcbB"

    invoke-direct {p0, p1, v0, v1}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2909
    .local v0, "p":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v1

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 2910
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2911
    return-void
.end method

.method public whitelist core-platform-api test-api applyPattern(Ljava/lang/String;)V
    .registers 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 2889
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->applyPatternImpl(Ljava/lang/String;)V

    .line 2890
    return-void
.end method

.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 3

    .line 2945
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 2946
    .local v0, "other":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2947
    return-object v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2972
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2973
    return v1

    .line 2975
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 2976
    .local v0, "that":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2977
    invoke-virtual {v2, v3}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    nop

    .line 2976
    :goto_22
    return v1
.end method

.method public whitelist core-platform-api test-api format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 1055
    const/4 v0, 0x0

    iput v0, p3, Ljava/text/FieldPosition;->endIndex:I

    iput v0, p3, Ljava/text/FieldPosition;->beginIndex:I

    .line 1056
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldDelegate()Ljava/text/Format$FieldDelegate;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1113
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/CharacterIteratorFieldDelegate;

    invoke-direct {v1}, Ljava/text/CharacterIteratorFieldDelegate;-><init>()V

    .line 1116
    .local v1, "delegate":Ljava/text/CharacterIteratorFieldDelegate;
    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_15

    .line 1117
    move-object v2, p1

    check-cast v2, Ljava/util/Date;

    invoke-direct {p0, v2, v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 1119
    :cond_15
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_31

    .line 1120
    new-instance v2, Ljava/util/Date;

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v2, v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    .line 1130
    :goto_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/CharacterIteratorFieldDelegate;->getIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    .line 1122
    :cond_31
    if-nez p1, :cond_3b

    .line 1123
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1127
    :cond_3b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot format given Object as a Date"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist core-platform-api test-api get2DigitYearStart()Ljava/util/Date;
    .registers 2

    .line 1037
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .registers 2

    .line 2921
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 2958
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1726
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1728
    .local v0, "tz":Ljava/util/TimeZone;
    :try_start_4
    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;->parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1730
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1728
    return-object v1

    .line 1730
    :catchall_c
    move-exception v1

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1731
    throw v1
.end method

.method public whitelist core-platform-api test-api set2DigitYearStart(Ljava/util/Date;)V
    .registers 5
    .param p1, "startDate"    # Ljava/util/Date;

    .line 1024
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 1025
    return-void
.end method

.method public whitelist core-platform-api test-api setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .registers 3
    .param p1, "newFormatSymbols"    # Ljava/text/DateFormatSymbols;

    .line 2933
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2934
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    .line 2935
    return-void
.end method

.method public whitelist core-platform-api test-api toLocalizedPattern()Ljava/lang/String;
    .registers 4

    .line 2875
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2877
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v1

    .line 2875
    const-string v2, "GyMdkHmsSEDFwWahKzZYuXLcbB"

    invoke-direct {p0, v0, v2, v1}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toPattern()Ljava/lang/String;
    .registers 2

    .line 2866
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
