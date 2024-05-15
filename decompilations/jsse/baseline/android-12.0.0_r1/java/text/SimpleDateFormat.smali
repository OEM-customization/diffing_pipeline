.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o GMT:Ljava/lang/String; = "GMT"

.field private static final greylist-max-o MILLIS_PER_MINUTE:I = 0xea60

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

.field private transient blacklist timeZoneNames:Lcom/android/icu/text/ExtendedTimeZoneNames;

.field transient greylist-max-o useDateFormatSymbols:Z

.field private transient greylist-max-o zeroDigit:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 457
    nop

    .line 567
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    .line 1131
    const/16 v0, 0x1a

    new-array v2, v0, [I

    fill-array-data v2, :array_b8

    sput-object v2, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    .line 1164
    new-array v2, v0, [I

    fill-array-data v2, :array_f0

    sput-object v2, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    .line 1197
    new-array v0, v0, [Ljava/text/DateFormat$Field;

    const/4 v2, 0x0

    sget-object v3, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    sget-object v2, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/4 v2, 0x4

    sget-object v3, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    sget-object v3, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    sget-object v3, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    sget-object v3, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    sget-object v3, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    sget-object v3, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    sget-object v3, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0xc

    sget-object v3, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0xd

    sget-object v3, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0xe

    sget-object v3, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0xf

    sget-object v3, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0x10

    sget-object v3, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0x11

    sget-object v3, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0x12

    sget-object v3, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0x13

    sget-object v3, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0x14

    sget-object v3, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0x15

    sget-object v3, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0x16

    sget-object v3, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0x17

    sget-object v3, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0x18

    sget-object v3, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    const/16 v2, 0x19

    sget-object v3, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v2

    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    .line 2921
    new-array v0, v1, [I

    fill-array-data v0, :array_128

    sput-object v0, Ljava/text/SimpleDateFormat;->REST_OF_STYLES:[I

    return-void

    :array_b8
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

    :array_f0
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

    :array_128
    .array-data 4
        0x8001
        0x2
        0x8002
    .end array-data
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 611
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(IILjava/util/Locale;)V

    .line 613
    return-void
.end method

.method constructor greylist-max-o <init>(IILjava/util/Locale;)V
    .registers 5
    .param p1, "timeStyle"    # I
    .param p2, "dateStyle"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 623
    invoke-static {p1, p2, p3}, Ljava/text/SimpleDateFormat;->getDateTimeFormat(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 624
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 663
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 664
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatSymbols"    # Ljava/text/DateFormatSymbols;

    .line 701
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 482
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 501
    const/16 v1, 0x2d

    iput-char v1, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 507
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 702
    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    .line 706
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 707
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 708
    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 709
    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 710
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 711
    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    .line 712
    return-void

    .line 703
    :cond_2e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 679
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 482
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 501
    const/16 v0, 0x2d

    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 680
    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    .line 684
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 685
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 686
    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 687
    iput-object p2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 688
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 689
    return-void

    .line 681
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private blacklist applyPatternImpl(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 2834
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 2835
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2836
    return-void
.end method

.method private greylist-max-o checkNegativeNumberExpression()V
    .registers 5

    .line 2981
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    instance-of v0, v0, Ljava/text/DecimalFormat;

    if-eqz v0, :cond_59

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    .line 2982
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 2983
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v0, Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 2984
    .local v0, "numberPattern":Ljava/lang/String;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 2985
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 2987
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2990
    .local v1, "separatorIndex":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_53

    .line 2991
    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2992
    .local v2, "minusIndex":I
    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v2, v3, :cond_53

    const/16 v3, 0x23

    .line 2993
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v2, v3, :cond_53

    .line 2994
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 2995
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v3, Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v3

    iput-char v3, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 2998
    .end local v2    # "minusIndex":I
    :cond_53
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    .line 3000
    .end local v1    # "separatorIndex":I
    :cond_55
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    .line 3002
    .end local v0    # "numberPattern":Ljava/lang/String;
    :cond_59
    return-void
.end method

.method private greylist-max-o compile(Ljava/lang/String;)[C
    .registers 18
    .param p1, "pattern"    # Ljava/lang/String;

    .line 809
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 810
    .local v1, "length":I
    const/4 v2, 0x0

    .line 811
    .local v2, "inQuote":Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 812
    .local v3, "compiledCode":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 819
    .local v4, "tmpBuffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 820
    .local v5, "count":I
    const/4 v6, -0x1

    .line 823
    .local v6, "lastTag":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_12
    const/4 v8, 0x0

    if-ge v7, v1, :cond_113

    .line 824
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 826
    .local v9, "c":C
    const/16 v10, 0x80

    const/16 v11, 0x27

    const/4 v12, 0x1

    if-ne v9, v11, :cond_83

    .line 829
    add-int/lit8 v13, v7, 0x1

    if-ge v13, v1, :cond_44

    .line 830
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 831
    if-ne v9, v11, :cond_44

    .line 832
    add-int/lit8 v7, v7, 0x1

    .line 833
    if-eqz v5, :cond_35

    .line 834
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 842
    const/4 v6, -0x1

    .line 843
    const/4 v5, 0x0

    .line 845
    :cond_35
    if-eqz v2, :cond_3c

    .line 846
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_10f

    .line 848
    :cond_3c
    or-int/lit16 v8, v9, 0x6400

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 850
    goto/16 :goto_10f

    .line 853
    :cond_44
    if-nez v2, :cond_5c

    .line 854
    if-eqz v5, :cond_4d

    .line 855
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 863
    const/4 v6, -0x1

    .line 864
    const/4 v5, 0x0

    .line 866
    :cond_4d
    if-nez v4, :cond_56

    .line 867
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v8

    goto :goto_59

    .line 869
    :cond_56
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 871
    :goto_59
    const/4 v2, 0x1

    goto/16 :goto_10f

    .line 873
    :cond_5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 874
    .local v11, "len":I
    if-ne v11, v12, :cond_78

    .line 875
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 876
    .local v8, "ch":C
    if-ge v8, v10, :cond_6f

    .line 877
    or-int/lit16 v10, v8, 0x6400

    int-to-char v10, v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 879
    :cond_6f
    const/16 v10, 0x6501

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 882
    .end local v8    # "ch":C
    :goto_77
    goto :goto_80

    .line 883
    :cond_78
    const/16 v8, 0x65

    invoke-static {v8, v11, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 884
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 886
    :goto_80
    const/4 v2, 0x0

    .line 888
    .end local v11    # "len":I
    goto/16 :goto_10f

    .line 890
    :cond_83
    if-eqz v2, :cond_8a

    .line 891
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 892
    goto/16 :goto_10f

    .line 894
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

    .line 930
    :cond_9b
    const-string v8, "GyMdkHmsSEDFwWahKzZYuXLcbB"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v10, v8

    .local v10, "tag":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_b4

    .line 934
    if-eq v6, v11, :cond_b0

    if-ne v6, v10, :cond_aa

    goto :goto_b0

    .line 939
    :cond_aa
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 947
    move v6, v10

    .line 948
    const/4 v5, 0x1

    goto :goto_10f

    .line 935
    :cond_b0
    :goto_b0
    move v6, v10

    .line 936
    add-int/lit8 v5, v5, 0x1

    .line 937
    goto :goto_10f

    .line 931
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

    .line 895
    .end local v10    # "tag":I
    :cond_d0
    :goto_d0
    if-eqz v5, :cond_d7

    .line 896
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 904
    const/4 v6, -0x1

    .line 905
    const/4 v5, 0x0

    .line 907
    :cond_d7
    if-ge v9, v10, :cond_e0

    .line 909
    or-int/lit16 v8, v9, 0x6400

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10f

    .line 914
    :cond_e0
    add-int/lit8 v10, v7, 0x1

    .local v10, "j":I
    :goto_e2
    if-ge v10, v1, :cond_f7

    .line 915
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 916
    .local v12, "d":C
    if-eq v12, v11, :cond_f7

    if-lt v12, v13, :cond_ee

    if-le v12, v8, :cond_f7

    :cond_ee
    if-lt v12, v15, :cond_f3

    if-gt v12, v14, :cond_f3

    .line 917
    goto :goto_f7

    .line 914
    .end local v12    # "d":C
    :cond_f3
    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x1

    goto :goto_e2

    .line 920
    :cond_f7
    :goto_f7
    sub-int v8, v10, v7

    or-int/lit16 v8, v8, 0x6500

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 921
    :goto_ff
    if-ge v7, v10, :cond_10b

    .line 922
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 921
    add-int/lit8 v7, v7, 0x1

    goto :goto_ff

    .line 924
    :cond_10b
    nop

    .end local v10    # "j":I
    add-int/lit8 v7, v7, -0x1

    .line 926
    nop

    .line 823
    .end local v9    # "c":C
    :goto_10f
    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto/16 :goto_12

    .line 951
    .end local v7    # "i":I
    :cond_113
    if-nez v2, :cond_124

    .line 955
    if-eqz v5, :cond_11a

    .line 956
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 971
    :cond_11a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 972
    .local v7, "len":I
    new-array v9, v7, [C

    .line 973
    .local v9, "r":[C
    invoke-virtual {v3, v8, v7, v9, v8}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 974
    return-object v9

    .line 952
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

    .line 981
    const/16 v0, 0x15

    if-ne p0, v0, :cond_1f

    const/4 v0, 0x4

    if-ge p1, v0, :cond_8

    goto :goto_1f

    .line 982
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

    .line 984
    :cond_1f
    :goto_1f
    const/16 v0, 0xff

    if-ge p1, v0, :cond_2b

    .line 985
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 987
    :cond_2b
    shl-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 988
    ushr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 989
    const v0, 0xffff

    and-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 991
    :goto_40
    return-void
.end method

.method private greylist-max-o format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;
    .registers 14
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "delegate"    # Ljava/text/Format$FieldDelegate;

    .line 1060
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1062
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    move-result v0

    .line 1064
    .local v0, "useDateFormatSymbols":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v3, v2

    if-ge v1, v3, :cond_46

    .line 1065
    aget-char v3, v2, v1

    ushr-int/lit8 v7, v3, 0x8

    .line 1066
    .local v7, "tag":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget-char v1, v2, v1

    const/16 v4, 0xff

    and-int/2addr v1, v4

    .line 1067
    .local v1, "count":I
    if-ne v1, v4, :cond_2a

    .line 1068
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-char v3, v2, v3

    shl-int/lit8 v1, v3, 0x10

    .line 1069
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-char v4, v2, v4

    or-int/2addr v1, v4

    move v8, v1

    move v9, v3

    goto :goto_2c

    .line 1067
    :cond_2a
    move v8, v1

    move v9, v3

    .line 1072
    .end local v1    # "count":I
    .end local v3    # "i":I
    .local v8, "count":I
    .local v9, "i":I
    :goto_2c
    packed-switch v7, :pswitch_data_48

    .line 1083
    move-object v1, p0

    move v2, v7

    move v3, v8

    move-object v4, p3

    move-object v5, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V

    goto :goto_44

    .line 1078
    :pswitch_39
    invoke-virtual {p2, v2, v9, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1079
    add-int/2addr v9, v8

    .line 1080
    move v1, v9

    goto :goto_45

    .line 1074
    :pswitch_3f
    int-to-char v1, v8

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1075
    nop

    .line 1086
    .end local v7    # "tag":I
    .end local v8    # "count":I
    :goto_44
    move v1, v9

    .end local v9    # "i":I
    .local v1, "i":I
    :goto_45
    goto :goto_a

    .line 1087
    .end local v1    # "i":I
    :cond_46
    return-object p2

    nop

    :pswitch_data_48
    .packed-switch 0x64
        :pswitch_3f
        :pswitch_39
    .end packed-switch
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

    .line 1598
    const/4 v0, 0x0

    .line 1599
    .local v0, "current":Ljava/lang/String;
    const/4 v1, 0x3

    if-eqz p5, :cond_3c

    .line 1601
    const/4 v2, 0x4

    if-ne p1, v2, :cond_15

    .line 1602
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

    .line 1603
    .end local v1    # "months":[Ljava/lang/String;
    :cond_15
    const/4 v2, 0x5

    if-ne p1, v2, :cond_26

    .line 1604
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

    .line 1605
    .end local v1    # "months":[Ljava/lang/String;
    :cond_26
    if-ne p1, v1, :cond_36

    .line 1606
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

    .line 1608
    .end local v1    # "months":[Ljava/lang/String;
    :cond_36
    const/4 v1, 0x0

    .line 1611
    .restart local v1    # "months":[Ljava/lang/String;
    :goto_37
    if-eqz v1, :cond_3b

    .line 1612
    aget-object v0, v1, p2

    .line 1614
    .end local v1    # "months":[Ljava/lang/String;
    :cond_3b
    goto :goto_4e

    .line 1615
    :cond_3c
    if-ge p1, v1, :cond_40

    .line 1616
    const/4 v0, 0x0

    goto :goto_4e

    .line 1618
    :cond_40
    if-eqz p6, :cond_46

    .line 1619
    invoke-static {p8}, Ljava/util/Calendar;->toStandaloneStyle(I)I

    move-result p8

    .line 1621
    :cond_46
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v1, p7, p8, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1625
    :goto_4e
    if-nez v0, :cond_55

    .line 1626
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v1, p1, p3, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    .line 1629
    :cond_55
    return-object v0
.end method

.method private greylist-max-o formatWeekday(IIZZ)Ljava/lang/String;
    .registers 7
    .param p1, "count"    # I
    .param p2, "value"    # I
    .param p3, "useDateFormatSymbols"    # Z
    .param p4, "standalone"    # Z

    .line 1577
    if-eqz p3, :cond_34

    .line 1579
    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    .line 1580
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

    .line 1581
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_13
    const/4 v0, 0x5

    if-ne p1, v0, :cond_24

    .line 1583
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

    .line 1586
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

    .line 1589
    .restart local v0    # "weekdays":[Ljava/lang/String;
    :goto_31
    aget-object v1, v0, p2

    return-object v1

    .line 1592
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

    .line 627
    invoke-static {p2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 628
    .local v0, "localeData":Llibcore/icu/LocaleData;
    if-ltz p0, :cond_20

    if-ltz p1, :cond_20

    .line 629
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 630
    invoke-virtual {v0, p1}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 631
    invoke-virtual {v0, p0}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 633
    .local v1, "dateTimeArgs":[Ljava/lang/Object;
    const-string v2, "{0} {1}"

    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 634
    .end local v1    # "dateTimeArgs":[Ljava/lang/Object;
    :cond_20
    if-ltz p0, :cond_27

    .line 635
    invoke-virtual {v0, p0}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 636
    :cond_27
    if-ltz p1, :cond_2e

    .line 637
    invoke-virtual {v0, p1}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 639
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

    .line 2925
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 2927
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Ljava/text/SimpleDateFormat;->REST_OF_STYLES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1d

    aget v4, v1, v3

    .line 2928
    .local v4, "style":I
    iget-object v5, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5, p1, v4, p2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    .line 2929
    .local v5, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v5, :cond_1a

    .line 2930
    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2927
    .end local v4    # "style":I
    .end local v5    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2933
    :cond_1d
    return-object v0
.end method

.method private blacklist getExtendedTimeZoneNames()Lcom/android/icu/text/ExtendedTimeZoneNames;
    .registers 2

    .line 1998
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->timeZoneNames:Lcom/android/icu/text/ExtendedTimeZoneNames;

    if-nez v0, :cond_10

    .line 1999
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/icu/text/ExtendedTimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Lcom/android/icu/text/ExtendedTimeZoneNames;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->timeZoneNames:Lcom/android/icu/text/ExtendedTimeZoneNames;

    .line 2001
    :cond_10
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->timeZoneNames:Lcom/android/icu/text/ExtendedTimeZoneNames;

    return-object v0
.end method

.method private greylist-max-o getTimeZoneNames()Landroid/icu/text/TimeZoneNames;
    .registers 2

    .line 2005
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->getExtendedTimeZoneNames()Lcom/android/icu/text/ExtendedTimeZoneNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/icu/text/ExtendedTimeZoneNames;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o initialize(Ljava/util/Locale;)V
    .registers 5
    .param p1, "loc"    # Ljava/util/Locale;

    .line 717
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 720
    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/NumberFormat;

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 721
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    if-nez v1, :cond_27

    .line 722
    invoke-static {p1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 723
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 726
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    :cond_27
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 730
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    .line 731
    return-void
.end method

.method private greylist-max-o initializeCalendar(Ljava/util/Locale;)V
    .registers 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 734
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_f

    .line 735
    nop

    .line 740
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 742
    :cond_f
    return-void
.end method

.method private greylist-max-o initializeDefaultCentury()V
    .registers 4

    .line 997
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 998
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    const/16 v2, -0x50

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 999
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 1000
    return-void
.end method

.method private greylist-max-o isDigit(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 2198
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

    .line 1912
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p4, :cond_8f

    .line 1920
    instance-of v0, p4, Ljava/util/NavigableMap;

    if-eqz v0, :cond_4b

    move-object v0, p4

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 1921
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

    .line 1923
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

    .line 1924
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p5, p3, v0}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1925
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    return v0

    .line 1927
    .end local v1    # "name":Ljava/lang/String;
    :cond_48
    goto :goto_1a

    .line 1928
    :cond_49
    neg-int v0, p2

    return v0

    .line 1931
    :cond_4b
    const/4 v0, 0x0

    .line 1933
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

    .line 1934
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    .line 1935
    .local v9, "length":I
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v9, v3, :cond_79

    .line 1936
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

    .line 1937
    move-object v0, v2

    .line 1940
    .end local v2    # "name":Ljava/lang/String;
    .end local v9    # "length":I
    :cond_79
    goto :goto_54

    .line 1942
    :cond_7a
    if-eqz v0, :cond_8f

    .line 1943
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p5, p3, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1944
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    return v1

    .line 1947
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

    .line 1862
    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v0, 0x0

    .line 1863
    .local v0, "i":I
    array-length v9, v8

    .line 1865
    .local v9, "count":I
    const/4 v1, 0x7

    if-ne v7, v1, :cond_c

    .line 1866
    const/4 v0, 0x1

    .line 1873
    :cond_c
    const/4 v1, 0x0

    .local v1, "bestMatchLength":I
    const/4 v2, -0x1

    move v10, v0

    move v11, v1

    move v12, v2

    .line 1874
    .end local v0    # "i":I
    .end local v1    # "bestMatchLength":I
    .local v10, "i":I
    .local v11, "bestMatchLength":I
    .local v12, "bestMatch":I
    :goto_11
    if-ge v10, v9, :cond_52

    .line 1876
    aget-object v0, v8, v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    .line 1879
    .local v13, "length":I
    if-le v13, v11, :cond_2b

    const/4 v1, 0x1

    aget-object v3, v8, v10

    const/4 v4, 0x0

    .line 1880
    move-object v0, p1

    move/from16 v2, p2

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1882
    move v12, v10

    .line 1883
    move v11, v13

    .line 1889
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

    .line 1891
    move-object v0, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1892
    move v0, v10

    .line 1893
    .end local v12    # "bestMatch":I
    .local v0, "bestMatch":I
    add-int/lit8 v1, v13, -0x1

    move v12, v0

    move v11, v1

    .line 1874
    .end local v0    # "bestMatch":I
    .end local v13    # "length":I
    .restart local v12    # "bestMatch":I
    :cond_4f
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 1897
    :cond_52
    if-ltz v12, :cond_5c

    .line 1899
    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1900
    add-int v1, v6, v11

    return v1

    .line 1902
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

    .line 1951
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-gt v0, v1, :cond_19

    .line 1954
    aget-object v1, p3, v0

    .line 1955
    .local v1, "zoneName":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1956
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1955
    move-object v2, p1

    move v4, p2

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1957
    return v0

    .line 1951
    .end local v1    # "zoneName":Ljava/lang/String;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1960
    .end local v0    # "i":I
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
    .registers 4
    .param p1, "startDate"    # Ljava/util/Date;

    .line 1006
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1007
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1008
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    .line 1009
    return-void
.end method

.method private greylist-max-o parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 27
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1734
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->checkNegativeNumberExpression()V

    .line 1736
    iget v0, v13, Ljava/text/ParsePosition;->index:I

    .line 1737
    .local v0, "start":I
    move v14, v0

    .line 1738
    .local v14, "oldStart":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 1740
    .local v15, "textLength":I
    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/16 v16, 0x0

    aput-boolean v16, v1, v16

    move-object/from16 v17, v1

    .line 1742
    .local v17, "ambiguousYear":[Z
    new-instance v1, Ljava/text/CalendarBuilder;

    invoke-direct {v1}, Ljava/text/CalendarBuilder;-><init>()V

    move-object v10, v1

    .line 1744
    .local v10, "calb":Ljava/text/CalendarBuilder;
    const/4 v1, 0x0

    move v9, v0

    .end local v0    # "start":I
    .local v1, "i":I
    .local v9, "start":I
    :goto_21
    iget-object v0, v11, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v2, v0

    const/16 v3, 0x64

    const/16 v18, 0x0

    if-ge v1, v2, :cond_df

    .line 1745
    aget-char v2, v0, v1

    ushr-int/lit8 v19, v2, 0x8

    .line 1746
    .local v19, "tag":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-char v1, v0, v1

    const/16 v4, 0xff

    and-int/2addr v1, v4

    .line 1747
    .local v1, "count":I
    if-ne v1, v4, :cond_45

    .line 1748
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    aget-char v2, v0, v2

    shl-int/lit8 v1, v2, 0x10

    .line 1749
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "i":I
    .restart local v2    # "i":I
    aget-char v5, v0, v5

    or-int/2addr v1, v5

    move v8, v1

    move v7, v2

    goto :goto_47

    .line 1747
    :cond_45
    move v8, v1

    move v7, v2

    .line 1752
    .end local v1    # "count":I
    .end local v2    # "i":I
    .local v7, "i":I
    .local v8, "count":I
    :goto_47
    packed-switch v19, :pswitch_data_118

    .line 1779
    const/4 v1, 0x0

    .line 1789
    .local v1, "obeyCount":Z
    const/4 v2, 0x0

    .line 1791
    .local v2, "useFollowingMinusSignAsDelimiter":Z
    array-length v5, v0

    if-ge v7, v5, :cond_b4

    .line 1792
    aget-char v5, v0, v7

    ushr-int/lit8 v5, v5, 0x8

    .line 1793
    .local v5, "nextTag":I
    const/16 v6, 0x65

    if-eq v5, v3, :cond_93

    if-eq v5, v6, :cond_93

    .line 1795
    const/4 v1, 0x1

    goto :goto_93

    .line 1763
    .end local v1    # "obeyCount":Z
    .end local v2    # "useFollowingMinusSignAsDelimiter":Z
    .end local v5    # "nextTag":I
    :goto_5b
    :pswitch_5b
    add-int/lit8 v0, v8, -0x1

    .end local v8    # "count":I
    .local v0, "count":I
    if-lez v8, :cond_79

    .line 1764
    if-ge v9, v15, :cond_74

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, v11, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v3, v7, 0x1

    .end local v7    # "i":I
    .local v3, "i":I
    aget-char v2, v2, v7

    if-eq v1, v2, :cond_6f

    move v7, v3

    goto :goto_74

    .line 1769
    :cond_6f
    add-int/lit8 v9, v9, 0x1

    move v8, v0

    move v7, v3

    goto :goto_5b

    .line 1765
    .end local v3    # "i":I
    .restart local v7    # "i":I
    :cond_74
    :goto_74
    iput v14, v13, Ljava/text/ParsePosition;->index:I

    .line 1766
    iput v9, v13, Ljava/text/ParsePosition;->errorIndex:I

    .line 1767
    return-object v18

    .line 1763
    :cond_79
    move v1, v7

    move-object/from16 v23, v10

    goto/16 :goto_d9

    .line 1754
    .end local v0    # "count":I
    .restart local v8    # "count":I
    :pswitch_7e
    if-ge v9, v15, :cond_8e

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-char v1, v8

    if-eq v0, v1, :cond_88

    goto :goto_8e

    .line 1759
    :cond_88
    add-int/lit8 v9, v9, 0x1

    .line 1760
    move v1, v7

    move-object/from16 v23, v10

    goto :goto_d9

    .line 1755
    :cond_8e
    :goto_8e
    iput v14, v13, Ljava/text/ParsePosition;->index:I

    .line 1756
    iput v9, v13, Ljava/text/ParsePosition;->errorIndex:I

    .line 1757
    return-object v18

    .line 1798
    .restart local v1    # "obeyCount":Z
    .restart local v2    # "useFollowingMinusSignAsDelimiter":Z
    .restart local v5    # "nextTag":I
    :cond_93
    :goto_93
    iget-boolean v4, v11, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    if-eqz v4, :cond_b0

    if-eq v5, v3, :cond_9b

    if-ne v5, v6, :cond_b0

    .line 1802
    :cond_9b
    if-ne v5, v3, :cond_a3

    .line 1803
    aget-char v0, v0, v7

    const/16 v3, 0xff

    and-int/2addr v0, v3

    .local v0, "c":I
    goto :goto_a7

    .line 1805
    .end local v0    # "c":I
    :cond_a3
    add-int/lit8 v3, v7, 0x1

    aget-char v0, v0, v3

    .line 1808
    .restart local v0    # "c":I
    :goto_a7
    iget-char v3, v11, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v0, v3, :cond_b0

    .line 1809
    const/4 v2, 0x1

    move v0, v1

    move/from16 v20, v2

    goto :goto_b7

    .line 1813
    .end local v0    # "c":I
    .end local v5    # "nextTag":I
    :cond_b0
    move v0, v1

    move/from16 v20, v2

    goto :goto_b7

    .line 1791
    :cond_b4
    move v0, v1

    move/from16 v20, v2

    .line 1813
    .end local v1    # "obeyCount":Z
    .end local v2    # "useFollowingMinusSignAsDelimiter":Z
    .local v0, "obeyCount":Z
    .local v20, "useFollowingMinusSignAsDelimiter":Z
    :goto_b7
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v9

    move/from16 v4, v19

    move v5, v8

    move v6, v0

    move/from16 v21, v7

    .end local v7    # "i":I
    .local v21, "i":I
    move-object/from16 v7, v17

    move/from16 v22, v8

    .end local v8    # "count":I
    .local v22, "count":I
    move-object/from16 v8, p2

    move v12, v9

    .end local v9    # "start":I
    .local v12, "start":I
    move/from16 v9, v20

    move-object/from16 v23, v10

    .end local v10    # "calb":Ljava/text/CalendarBuilder;
    .local v23, "calb":Ljava/text/CalendarBuilder;
    invoke-direct/range {v1 .. v10}, Ljava/text/SimpleDateFormat;->subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I

    move-result v1

    .line 1816
    .end local v12    # "start":I
    .local v1, "start":I
    if-gez v1, :cond_d6

    .line 1817
    iput v14, v13, Ljava/text/ParsePosition;->index:I

    .line 1818
    return-object v18

    .line 1816
    :cond_d6
    move v9, v1

    move/from16 v1, v21

    .line 1821
    .end local v0    # "obeyCount":Z
    .end local v19    # "tag":I
    .end local v20    # "useFollowingMinusSignAsDelimiter":Z
    .end local v21    # "i":I
    .end local v22    # "count":I
    .local v1, "i":I
    .restart local v9    # "start":I
    :goto_d9
    move-object/from16 v12, p1

    move-object/from16 v10, v23

    goto/16 :goto_21

    .line 1744
    .end local v23    # "calb":Ljava/text/CalendarBuilder;
    .restart local v10    # "calb":Ljava/text/CalendarBuilder;
    :cond_df
    move v12, v9

    move-object/from16 v23, v10

    .line 1827
    .end local v1    # "i":I
    .end local v9    # "start":I
    .end local v10    # "calb":Ljava/text/CalendarBuilder;
    .restart local v12    # "start":I
    .restart local v23    # "calb":Ljava/text/CalendarBuilder;
    iput v12, v13, Ljava/text/ParsePosition;->index:I

    .line 1831
    :try_start_e4
    iget-object v0, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;
    :try_end_e6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e4 .. :try_end_e6} :catch_10f

    move-object/from16 v1, v23

    .end local v23    # "calb":Ljava/text/CalendarBuilder;
    .local v1, "calb":Ljava/text/CalendarBuilder;
    :try_start_e8
    invoke-virtual {v1, v0}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 1834
    .local v0, "parsedDate":Ljava/util/Date;
    aget-boolean v2, v17, v16

    if-eqz v2, :cond_10b

    .line 1835
    iget-object v2, v11, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 1836
    invoke-virtual {v1, v3}, Ljava/text/CalendarBuilder;->addYear(I)Ljava/text/CalendarBuilder;

    move-result-object v2

    iget-object v3, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2
    :try_end_10a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e8 .. :try_end_10a} :catch_10d

    move-object v0, v2

    .line 1846
    :cond_10b
    nop

    .line 1848
    return-object v0

    .line 1842
    .end local v0    # "parsedDate":Ljava/util/Date;
    :catch_10d
    move-exception v0

    goto :goto_112

    .end local v1    # "calb":Ljava/text/CalendarBuilder;
    .restart local v23    # "calb":Ljava/text/CalendarBuilder;
    :catch_10f
    move-exception v0

    move-object/from16 v1, v23

    .line 1843
    .end local v23    # "calb":Ljava/text/CalendarBuilder;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "calb":Ljava/text/CalendarBuilder;
    :goto_112
    iput v12, v13, Ljava/text/ParsePosition;->errorIndex:I

    .line 1844
    iput v14, v13, Ljava/text/ParsePosition;->index:I

    .line 1845
    return-object v18

    nop

    :pswitch_data_118
    .packed-switch 0x64
        :pswitch_7e
        :pswitch_5b
    .end packed-switch
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

    .line 2673
    move-object v6, p0

    const/4 v0, 0x2

    move v7, p2

    if-gt v7, v0, :cond_11

    .line 2678
    add-int/lit8 v1, p3, -0x1

    move-object/from16 v8, p9

    invoke-virtual {v8, v0, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2679
    move-object/from16 v9, p6

    iget v0, v9, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2682
    :cond_11
    move-object/from16 v9, p6

    move-object/from16 v8, p9

    const/4 v10, -0x1

    .line 2683
    .local v10, "index":I
    if-eqz p7, :cond_55

    .line 2687
    const/4 v3, 0x2

    .line 2689
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

    .line 2687
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v10, v0

    if-lez v0, :cond_35

    .line 2691
    return v10

    .line 2694
    :cond_35
    const/4 v3, 0x2

    .line 2696
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

    .line 2694
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

    .line 2698
    return v1

    .line 2694
    :cond_52
    move/from16 v11, p5

    goto :goto_6e

    .line 2701
    .end local v1    # "index":I
    .restart local v10    # "index":I
    :cond_55
    iget-object v0, v6, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    move/from16 v11, p5

    invoke-direct {p0, v11, v0}, Ljava/text/SimpleDateFormat;->getDisplayNamesMap(ILjava/util/Locale;)Ljava/util/Map;

    move-result-object v12

    .line 2702
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

    .line 2703
    return v1

    .line 2707
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

    .line 2712
    move-object v6, p0

    const/4 v7, -0x1

    .line 2713
    .local v7, "index":I
    if-eqz p4, :cond_41

    .line 2716
    const/4 v3, 0x7

    .line 2718
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

    .line 2716
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v7, v0

    if-lez v0, :cond_21

    .line 2720
    return v7

    .line 2724
    :cond_21
    const/4 v3, 0x7

    .line 2726
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

    .line 2724
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

    .line 2728
    return v1

    .line 2724
    :cond_3e
    move/from16 v12, p3

    goto :goto_71

    .line 2731
    .end local v1    # "index":I
    .restart local v7    # "index":I
    :cond_41
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_72

    move-object v8, v0

    .line 2732
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

    .line 2733
    .local v11, "style":I
    iget-object v0, v6, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v1, v6, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    move/from16 v12, p3

    invoke-virtual {v0, v12, v11, v1}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v13

    .line 2734
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

    .line 2735
    return v10

    .line 2732
    .end local v11    # "style":I
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    :cond_6e
    move/from16 v12, p3

    move v1, v10

    .line 2740
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

    .line 2944
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2947
    :try_start_3
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_42

    .line 2950
    nop

    .line 2952
    iget v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_15

    .line 2954
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    goto :goto_1a

    .line 2958
    :cond_15
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 2960
    :goto_1a
    iput v1, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 2966
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 2967
    .local v0, "tz":Ljava/util/TimeZone;
    instance-of v1, v0, Ljava/util/SimpleTimeZone;

    if-eqz v1, :cond_41

    .line 2968
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 2969
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 2970
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

    .line 2971
    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2974
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "zi":Ljava/util/TimeZone;
    :cond_41
    return-void

    .line 2948
    .end local v0    # "tz":Ljava/util/TimeZone;
    :catch_42
    move-exception v0

    .line 2949
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "invalid pattern"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V
    .registers 26
    .param p1, "patternCharIndex"    # I
    .param p2, "count"    # I
    .param p3, "delegate"    # Ljava/text/Format$FieldDelegate;
    .param p4, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "useDateFormatSymbols"    # Z

    .line 1236
    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    const v13, 0x7fffffff

    .line 1237
    .local v13, "maxIntCount":I
    const/4 v0, 0x0

    .line 1238
    .local v0, "current":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    .line 1240
    .local v14, "beginOffset":I
    sget-object v1, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v2, v1, p1

    .line 1242
    .local v2, "field":I
    const/16 v3, 0x3e8

    const/16 v4, 0x11

    if-ne v2, v4, :cond_3a

    .line 1243
    iget-object v4, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1244
    iget-object v1, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getWeekYear()I

    move-result v1

    move/from16 v15, p1

    move v8, v1

    move v7, v2

    .local v1, "value":I
    goto :goto_56

    .line 1247
    .end local v1    # "value":I
    :cond_2d
    const/4 v4, 0x1

    .line 1248
    .end local p1    # "patternCharIndex":I
    .local v4, "patternCharIndex":I
    aget v2, v1, v4

    .line 1249
    iget-object v1, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move v8, v1

    move v7, v2

    move v15, v4

    .restart local v1    # "value":I
    goto :goto_56

    .line 1251
    .end local v1    # "value":I
    .end local v4    # "patternCharIndex":I
    .restart local p1    # "patternCharIndex":I
    :cond_3a
    if-ne v2, v3, :cond_4c

    .line 1252
    iget-object v1, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/text/CalendarBuilder;->toISODayOfWeek(I)I

    move-result v1

    move/from16 v15, p1

    move v8, v1

    move v7, v2

    .restart local v1    # "value":I
    goto :goto_56

    .line 1254
    .end local v1    # "value":I
    :cond_4c
    iget-object v1, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move/from16 v15, p1

    move v8, v1

    move v7, v2

    .line 1257
    .end local v2    # "field":I
    .end local p1    # "patternCharIndex":I
    .local v7, "field":I
    .local v8, "value":I
    .local v15, "patternCharIndex":I
    :goto_56
    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-lt v10, v1, :cond_5d

    move v5, v2

    goto :goto_5e

    :cond_5d
    move v5, v4

    :goto_5e
    move v6, v5

    .line 1258
    .local v6, "style":I
    if-nez v12, :cond_6e

    if-eq v7, v3, :cond_6e

    .line 1259
    iget-object v3, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v5, v9, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v7, v6, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_70

    .line 1266
    :cond_6e
    move-object/from16 v16, v0

    .end local v0    # "current":Ljava/lang/String;
    .local v16, "current":Ljava/lang/String;
    :goto_70
    const/16 v0, 0xf

    const/16 v3, 0x10

    const/4 v5, 0x0

    packed-switch v15, :pswitch_data_300

    .line 1558
    :pswitch_78
    move/from16 v17, v7

    move/from16 v18, v14

    move v7, v6

    move v14, v8

    .end local v6    # "style":I
    .end local v8    # "value":I
    .local v7, "style":I
    .local v14, "value":I
    .local v17, "field":I
    .local v18, "beginOffset":I
    if-nez v16, :cond_2db

    .line 1559
    invoke-direct {v9, v14, v10, v13, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2db

    .line 1404
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .restart local v6    # "style":I
    .local v7, "field":I
    .restart local v8    # "value":I
    .local v14, "beginOffset":I
    :pswitch_85
    const-string v16, ""

    .line 1405
    move/from16 v17, v7

    move/from16 v18, v14

    move-object/from16 v14, v16

    move v7, v6

    goto/16 :goto_2de

    .line 1387
    :pswitch_90
    if-nez v16, :cond_9f

    .line 1388
    invoke-direct {v9, v10, v8, v12, v4}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v7

    move/from16 v18, v14

    move-object/from16 v14, v16

    move v7, v6

    goto/16 :goto_2de

    .line 1387
    :cond_9f
    move/from16 v17, v7

    move/from16 v18, v14

    move v7, v6

    move v14, v8

    goto/16 :goto_2db

    .line 1348
    :pswitch_a7
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v8

    move v3, v13

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 p1, v6

    .end local v6    # "style":I
    .local p1, "style":I
    move/from16 v6, v17

    move/from16 v17, v7

    .end local v7    # "field":I
    .restart local v17    # "field":I
    move/from16 v18, v14

    move v14, v8

    .end local v8    # "value":I
    .local v14, "value":I
    .restart local v18    # "beginOffset":I
    move/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZII)Ljava/lang/String;

    move-result-object v16

    .line 1351
    move/from16 v7, p1

    move v8, v14

    move-object/from16 v14, v16

    goto/16 :goto_2de

    .line 1505
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "field":I
    .restart local v8    # "value":I
    .local v14, "beginOffset":I
    :pswitch_c9
    move/from16 p1, v6

    move/from16 v17, v7

    move/from16 v18, v14

    move v14, v8

    .end local v6    # "style":I
    .end local v7    # "field":I
    .end local v8    # "value":I
    .local v14, "value":I
    .restart local v17    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local p1    # "style":I
    iget-object v1, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 1506
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int v8, v0, v1

    .line 1508
    .end local v14    # "value":I
    .restart local v8    # "value":I
    if-nez v8, :cond_eb

    .line 1509
    const/16 v0, 0x5a

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1510
    move/from16 v7, p1

    move-object/from16 v14, v16

    goto/16 :goto_2de

    .line 1513
    :cond_eb
    const v0, 0xea60

    div-int/2addr v8, v0

    .line 1514
    if-ltz v8, :cond_f7

    .line 1515
    const/16 v0, 0x2b

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_fe

    .line 1517
    :cond_f7
    const/16 v0, 0x2d

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1518
    neg-int v0, v8

    move v8, v0

    .line 1521
    :goto_fe
    div-int/lit8 v0, v8, 0x3c

    invoke-static {v11, v0, v2}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 1522
    if-ne v10, v4, :cond_106

    .line 1523
    goto :goto_114

    .line 1526
    :cond_106
    const/4 v0, 0x3

    if-ne v10, v0, :cond_10e

    .line 1527
    const/16 v0, 0x3a

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1529
    :cond_10e
    rem-int/lit8 v0, v8, 0x3c

    invoke-static {v11, v0, v2}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 1530
    nop

    .line 1564
    :goto_114
    move/from16 v7, p1

    move-object/from16 v14, v16

    goto/16 :goto_2de

    .line 1496
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "field":I
    .local v14, "beginOffset":I
    :pswitch_11a
    move/from16 p1, v6

    move/from16 v17, v7

    move/from16 v18, v14

    move v14, v8

    .end local v6    # "style":I
    .end local v7    # "field":I
    .end local v8    # "value":I
    .local v14, "value":I
    .restart local v17    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local p1    # "style":I
    iget-object v2, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int v8, v0, v2

    .line 1497
    .end local v14    # "value":I
    .restart local v8    # "value":I
    if-lt v10, v1, :cond_133

    move v0, v4

    goto :goto_134

    :cond_133
    move v0, v5

    .line 1498
    .local v0, "includeSeparator":Z
    :goto_134
    if-ne v10, v1, :cond_137

    goto :goto_138

    :cond_137
    move v4, v5

    :goto_138
    move v1, v4

    .line 1499
    .local v1, "includeGmt":Z
    invoke-static {v1, v0, v8}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1501
    move/from16 v7, p1

    move-object/from16 v14, v16

    goto/16 :goto_2de

    .line 1419
    .end local v0    # "includeSeparator":Z
    .end local v1    # "includeGmt":Z
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "field":I
    .local v14, "beginOffset":I
    :pswitch_146
    move/from16 p1, v6

    move/from16 v17, v7

    move/from16 v18, v14

    move v14, v8

    .end local v6    # "style":I
    .end local v7    # "field":I
    .end local v8    # "value":I
    .local v14, "value":I
    .restart local v17    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local p1    # "style":I
    if-nez v16, :cond_1c5

    .line 1445
    iget-object v2, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 1446
    .local v2, "tz":Ljava/util/TimeZone;
    iget-object v6, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eqz v6, :cond_15f

    move v6, v4

    goto :goto_160

    :cond_15f
    move v6, v5

    .line 1448
    .local v6, "daylight":Z
    :goto_160
    iget-object v7, v9, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-boolean v7, v7, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    if-eqz v7, :cond_17a

    .line 1451
    if-ge v10, v1, :cond_169

    goto :goto_16a

    :cond_169
    move v5, v4

    :goto_16a
    move v1, v5

    .line 1452
    .local v1, "tzstyle":I
    iget-object v5, v9, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1453
    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    .line 1452
    invoke-static {v5, v7, v6, v1}, Llibcore/icu/TimeZoneNames;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    .line 1454
    .local v1, "zoneString":Ljava/lang/String;
    goto :goto_1a4

    .line 1456
    .end local v1    # "zoneString":Ljava/lang/String;
    :cond_17a
    if-ge v10, v1, :cond_185

    .line 1457
    if-eqz v6, :cond_181

    .line 1458
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_183

    .line 1459
    :cond_181
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_183
    nop

    .local v1, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_18d

    .line 1461
    .end local v1    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_185
    if-eqz v6, :cond_18a

    .line 1462
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_18c

    .line 1463
    :cond_18a
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_18c
    nop

    .line 1465
    .restart local v1    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :goto_18d
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1466
    .local v5, "canonicalID":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v7

    iget-object v8, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 1467
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v7, v5, v1, v3, v4}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1469
    .end local v5    # "canonicalID":Ljava/lang/String;
    .local v1, "zoneString":Ljava/lang/String;
    :goto_1a4
    if-eqz v1, :cond_1aa

    .line 1470
    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c1

    .line 1472
    :cond_1aa
    iget-object v3, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 1473
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 1474
    .local v0, "offsetMillis":I
    const/4 v3, 0x1

    invoke-static {v3, v3, v0}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1477
    .end local v0    # "offsetMillis":I
    .end local v1    # "zoneString":Ljava/lang/String;
    .end local v2    # "tz":Ljava/util/TimeZone;
    .end local v6    # "daylight":Z
    :goto_1c1
    move/from16 v7, p1

    goto/16 :goto_2db

    .line 1419
    :cond_1c5
    move/from16 v7, p1

    goto/16 :goto_2db

    .line 1408
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .end local p1    # "style":I
    .local v6, "style":I
    .restart local v7    # "field":I
    .restart local v8    # "value":I
    .local v14, "beginOffset":I
    :pswitch_1c9
    move/from16 p1, v6

    move/from16 v17, v7

    move/from16 v18, v14

    move v14, v8

    .end local v6    # "style":I
    .end local v7    # "field":I
    .end local v8    # "value":I
    .local v14, "value":I
    .restart local v17    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local p1    # "style":I
    if-nez v16, :cond_1ec

    .line 1409
    if-nez v14, :cond_1e5

    .line 1410
    iget-object v0, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {v9, v0, v10, v13, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v7, p1

    goto/16 :goto_2db

    .line 1413
    :cond_1e5
    invoke-direct {v9, v14, v10, v13, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v7, p1

    goto/16 :goto_2db

    .line 1408
    :cond_1ec
    move/from16 v7, p1

    goto/16 :goto_2db

    .line 1394
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "field":I
    .restart local v8    # "value":I
    .local v14, "beginOffset":I
    :pswitch_1f0
    move/from16 p1, v6

    move/from16 v17, v7

    move/from16 v18, v14

    move v14, v8

    .end local v6    # "style":I
    .end local v7    # "field":I
    .end local v8    # "value":I
    .local v14, "value":I
    .restart local v17    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local p1    # "style":I
    if-eqz v12, :cond_208

    .line 1395
    iget-object v0, v9, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 1396
    .local v0, "ampm":[Ljava/lang/String;
    aget-object v16, v0, v14

    .line 1397
    .end local v0    # "ampm":[Ljava/lang/String;
    move/from16 v7, p1

    move v8, v14

    move-object/from16 v14, v16

    goto/16 :goto_2de

    .line 1394
    :cond_208
    move/from16 v7, p1

    goto/16 :goto_2db

    .line 1379
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "field":I
    .restart local v8    # "value":I
    .local v14, "beginOffset":I
    :pswitch_20c
    move/from16 p1, v6

    move/from16 v17, v7

    move/from16 v18, v14

    move v14, v8

    .end local v6    # "style":I
    .end local v7    # "field":I
    .end local v8    # "value":I
    .local v14, "value":I
    .restart local v17    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local p1    # "style":I
    if-nez v16, :cond_220

    .line 1380
    invoke-direct {v9, v10, v14, v12, v5}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    move-result-object v16

    move/from16 v7, p1

    move v8, v14

    move-object/from16 v14, v16

    goto/16 :goto_2de

    .line 1379
    :cond_220
    move/from16 v7, p1

    goto/16 :goto_2db

    .line 1538
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "field":I
    .restart local v8    # "value":I
    .local v14, "beginOffset":I
    :pswitch_224
    move/from16 p1, v6

    move/from16 v17, v7

    move/from16 v18, v14

    move v14, v8

    .end local v6    # "style":I
    .end local v7    # "field":I
    .end local v8    # "value":I
    .local v14, "value":I
    .restart local v17    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local p1    # "style":I
    if-nez v16, :cond_246

    .line 1539
    int-to-double v0, v14

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v8, v0

    .line 1540
    .end local v14    # "value":I
    .restart local v8    # "value":I
    invoke-direct {v9, v8, v10, v10, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v7, p1

    move-object/from16 v14, v16

    goto/16 :goto_2de

    .line 1538
    .end local v8    # "value":I
    .restart local v14    # "value":I
    :cond_246
    move/from16 v7, p1

    goto/16 :goto_2db

    .line 1354
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "field":I
    .restart local v8    # "value":I
    .local v14, "beginOffset":I
    :pswitch_24a
    move/from16 p1, v6

    move/from16 v17, v7

    move/from16 v18, v14

    move v14, v8

    .end local v6    # "style":I
    .end local v7    # "field":I
    .end local v8    # "value":I
    .local v14, "value":I
    .restart local v17    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local p1    # "style":I
    if-nez v16, :cond_26d

    .line 1355
    if-nez v14, :cond_266

    .line 1356
    iget-object v0, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {v9, v0, v10, v13, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v7, p1

    goto/16 :goto_2db

    .line 1359
    :cond_266
    invoke-direct {v9, v14, v10, v13, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v7, p1

    goto/16 :goto_2db

    .line 1354
    :cond_26d
    move/from16 v7, p1

    goto/16 :goto_2db

    .line 1321
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "field":I
    .restart local v8    # "value":I
    .local v14, "beginOffset":I
    :pswitch_271
    move/from16 p1, v6

    move/from16 v17, v7

    move/from16 v18, v14

    move v14, v8

    .end local v6    # "style":I
    .end local v7    # "field":I
    .end local v8    # "value":I
    .local v14, "value":I
    .restart local v17    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local p1    # "style":I
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v14

    move v3, v13

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZII)Ljava/lang/String;

    move-result-object v16

    .line 1324
    move/from16 v7, p1

    move v8, v14

    move-object/from16 v14, v16

    goto/16 :goto_2de

    .line 1281
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .end local p1    # "style":I
    .restart local v6    # "style":I
    .restart local v7    # "field":I
    .restart local v8    # "value":I
    .local v14, "beginOffset":I
    :pswitch_290
    move v1, v4

    move/from16 p1, v6

    move/from16 v17, v7

    move/from16 v18, v14

    move v14, v8

    .end local v6    # "style":I
    .end local v7    # "field":I
    .end local v8    # "value":I
    .local v14, "value":I
    .restart local v17    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local p1    # "style":I
    iget-object v0, v9, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_2ac

    .line 1282
    if-eq v10, v2, :cond_2a6

    .line 1283
    invoke-direct {v9, v14, v10, v13, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v7, p1

    goto :goto_2db

    .line 1285
    :cond_2a6
    invoke-direct {v9, v14, v2, v2, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move/from16 v7, p1

    goto :goto_2db

    .line 1288
    :cond_2ac
    if-nez v16, :cond_2b9

    .line 1289
    move/from16 v7, p1

    .end local p1    # "style":I
    .local v7, "style":I
    if-ne v7, v2, :cond_2b4

    move v4, v1

    goto :goto_2b5

    :cond_2b4
    move v4, v10

    :goto_2b5
    invoke-direct {v9, v14, v4, v13, v11}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto :goto_2db

    .line 1288
    .end local v7    # "style":I
    .restart local p1    # "style":I
    :cond_2b9
    move/from16 v7, p1

    .end local p1    # "style":I
    .restart local v7    # "style":I
    goto :goto_2db

    .line 1268
    .end local v17    # "field":I
    .end local v18    # "beginOffset":I
    .restart local v6    # "style":I
    .local v7, "field":I
    .restart local v8    # "value":I
    .local v14, "beginOffset":I
    :pswitch_2bc
    move/from16 v17, v7

    move/from16 v18, v14

    move v7, v6

    move v14, v8

    .end local v6    # "style":I
    .end local v8    # "value":I
    .local v7, "style":I
    .local v14, "value":I
    .restart local v17    # "field":I
    .restart local v18    # "beginOffset":I
    if-eqz v12, :cond_2cf

    .line 1269
    iget-object v0, v9, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v0

    .line 1270
    .local v0, "eras":[Ljava/lang/String;
    array-length v1, v0

    if-ge v14, v1, :cond_2cf

    .line 1271
    aget-object v16, v0, v14

    .line 1274
    .end local v0    # "eras":[Ljava/lang/String;
    :cond_2cf
    if-nez v16, :cond_2d7

    .line 1275
    const-string v16, ""

    move v8, v14

    move-object/from16 v14, v16

    goto :goto_2de

    .line 1274
    :cond_2d7
    move v8, v14

    move-object/from16 v14, v16

    goto :goto_2de

    .line 1564
    :cond_2db
    :goto_2db
    move v8, v14

    move-object/from16 v14, v16

    .end local v16    # "current":Ljava/lang/String;
    .restart local v8    # "value":I
    .local v14, "current":Ljava/lang/String;
    :goto_2de
    if-eqz v14, :cond_2e3

    .line 1565
    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1568
    :cond_2e3
    sget-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    aget v16, v0, v15

    .line 1569
    .local v16, "fieldID":I
    sget-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    aget-object v19, v0, v15

    .line 1571
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

    .line 1572
    return-void

    nop

    :pswitch_data_300
    .packed-switch 0x0
        :pswitch_2bc
        :pswitch_290
        :pswitch_271
        :pswitch_78
        :pswitch_24a
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_224
        :pswitch_20c
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_1f0
        :pswitch_1c9
        :pswitch_78
        :pswitch_146
        :pswitch_11a
        :pswitch_290
        :pswitch_78
        :pswitch_c9
        :pswitch_a7
        :pswitch_90
        :pswitch_85
        :pswitch_85
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

    .line 2223
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p4

    move-object/from16 v15, p7

    move-object/from16 v10, p9

    const-string v0, "GMT"

    const/4 v1, 0x0

    .line 2224
    .local v1, "value":I
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v9, v2

    .line 2225
    .local v9, "pos":Ljava/text/ParsePosition;
    iput v13, v9, Ljava/text/ParsePosition;->index:I

    .line 2226
    const/16 v2, 0x13

    move/from16 v3, p3

    if-ne v3, v2, :cond_29

    iget-object v4, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v4

    if-nez v4, :cond_29

    .line 2228
    const/4 v3, 0x1

    move v8, v3

    .end local p3    # "patternCharIndex":I
    .local v3, "patternCharIndex":I
    goto :goto_2a

    .line 2230
    .end local v3    # "patternCharIndex":I
    .restart local p3    # "patternCharIndex":I
    :cond_29
    move v8, v3

    .end local p3    # "patternCharIndex":I
    .local v8, "patternCharIndex":I
    :goto_2a
    sget-object v3, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v6, v3, v8

    .line 2235
    .local v6, "field":I
    :goto_2e
    iget v3, v9, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v16, -0x1

    if-lt v3, v4, :cond_3b

    .line 2236
    iput v13, v15, Ljava/text/ParsePosition;->errorIndex:I

    .line 2237
    return v16

    .line 2239
    :cond_3b
    iget v3, v9, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2240
    .local v3, "c":C
    const/16 v4, 0x20

    const/4 v5, 0x1

    if-eq v3, v4, :cond_542

    const/16 v4, 0x9

    if-eq v3, v4, :cond_542

    .line 2241
    nop

    .line 2246
    .end local v3    # "c":C
    iget v4, v9, Ljava/text/ParsePosition;->index:I

    .line 2254
    .local v4, "actualStart":I
    const/4 v3, 0x4

    const/16 v7, 0xf

    const/4 v2, 0x2

    if-eq v8, v3, :cond_5f

    if-eq v8, v7, :cond_5f

    if-ne v8, v2, :cond_59

    if-le v14, v2, :cond_5f

    :cond_59
    if-eq v8, v5, :cond_5f

    const/16 v2, 0x13

    if-ne v8, v2, :cond_c5

    .line 2261
    :cond_5f
    if-eqz p5, :cond_78

    .line 2262
    add-int v2, v13, v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_6a

    .line 2263
    goto :goto_88

    .line 2265
    :cond_6a
    iget-object v2, v11, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    add-int v3, v13, v14

    const/4 v7, 0x0

    invoke-virtual {v12, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v9}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    .local v2, "number":Ljava/lang/Number;
    goto :goto_7e

    .line 2267
    .end local v2    # "number":Ljava/lang/Number;
    :cond_78
    iget-object v2, v11, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v2, v12, v9}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    .line 2269
    .restart local v2    # "number":Ljava/lang/Number;
    :goto_7e
    if-nez v2, :cond_90

    .line 2270
    if-ne v8, v5, :cond_88

    iget-object v3, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v3, v3, Ljava/util/GregorianCalendar;

    if-eqz v3, :cond_c5

    .line 2664
    .end local v2    # "number":Ljava/lang/Number;
    :cond_88
    :goto_88
    move-object v7, v9

    move-object v15, v10

    move-object v9, v12

    move v10, v4

    move v4, v6

    move v6, v8

    goto/16 :goto_53a

    .line 2274
    .restart local v2    # "number":Ljava/lang/Number;
    :cond_90
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 2276
    if-eqz p8, :cond_c5

    if-gez v1, :cond_c5

    iget v3, v9, Ljava/text/ParsePosition;->index:I

    .line 2277
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_aa

    iget v3, v9, Ljava/text/ParsePosition;->index:I

    .line 2278
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v7, v11, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v3, v7, :cond_bd

    :cond_aa
    iget v3, v9, Ljava/text/ParsePosition;->index:I

    .line 2279
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v3, v7, :cond_c5

    iget v3, v9, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v3, v5

    .line 2280
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v7, v11, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v3, v7, :cond_c5

    .line 2281
    :cond_bd
    neg-int v1, v1

    .line 2282
    iget v3, v9, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v3, v5

    iput v3, v9, Ljava/text/ParsePosition;->index:I

    move v7, v1

    goto :goto_c6

    .line 2287
    .end local v2    # "number":Ljava/lang/Number;
    :cond_c5
    move v7, v1

    .end local v1    # "value":I
    .local v7, "value":I
    :goto_c6
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    move-result v19

    .line 2290
    .local v19, "useDateFormatSymbols":Z
    const/16 v3, 0x10

    const/16 v2, 0x2d

    const/16 v1, 0x2b

    packed-switch v8, :pswitch_data_55a

    .line 2616
    :pswitch_d3
    move v13, v6

    move/from16 v22, v8

    move-object v8, v9

    move-object v15, v10

    move-object v9, v12

    move v10, v4

    move v12, v7

    move v7, v5

    .end local v4    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .end local v9    # "pos":Ljava/text/ParsePosition;
    .local v8, "pos":Ljava/text/ParsePosition;
    .local v10, "actualStart":I
    .local v12, "value":I
    .local v13, "field":I
    .local v22, "patternCharIndex":I
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 2618
    .local v0, "parseStart":I
    if-eqz p5, :cond_4bf

    .line 2619
    move v4, v13

    .end local v13    # "field":I
    .local v4, "field":I
    add-int v1, p2, v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_4b1

    .line 2620
    move-object v7, v8

    move/from16 v21, v12

    move/from16 v6, v22

    goto/16 :goto_538

    .line 2454
    .end local v0    # "parseStart":I
    .end local v10    # "actualStart":I
    .end local v12    # "value":I
    .end local v22    # "patternCharIndex":I
    .local v4, "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    .local v8, "patternCharIndex":I
    .restart local v9    # "pos":Ljava/text/ParsePosition;
    :pswitch_f2
    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v5, v4

    .end local v4    # "actualStart":I
    .local v5, "actualStart":I
    move v4, v6

    move v15, v5

    .end local v5    # "actualStart":I
    .local v15, "actualStart":I
    move/from16 v5, v19

    move/from16 v20, v6

    .end local v6    # "field":I
    .local v20, "field":I
    move v6, v0

    move/from16 v21, v7

    .end local v7    # "value":I
    .local v21, "value":I
    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    move-result v0

    .line 2456
    .local v0, "idx":I
    if-lez v0, :cond_10c

    .line 2457
    return v0

    .line 2456
    :cond_10c
    move v6, v8

    move-object v7, v9

    move-object v9, v12

    move/from16 v4, v20

    move/from16 v24, v15

    move-object v15, v10

    move/from16 v10, v24

    goto/16 :goto_538

    .line 2390
    .end local v0    # "idx":I
    .end local v15    # "actualStart":I
    .end local v20    # "field":I
    .end local v21    # "value":I
    .restart local v4    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    :pswitch_118
    move v15, v4

    move/from16 v20, v6

    move/from16 v21, v7

    .end local v4    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .restart local v15    # "actualStart":I
    .restart local v20    # "field":I
    .restart local v21    # "value":I
    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    move/from16 v4, v21

    move/from16 v5, p2

    move-object v7, v9

    move/from16 v22, v8

    .end local v8    # "patternCharIndex":I
    .restart local v22    # "patternCharIndex":I
    move/from16 v8, v19

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

    .line 2392
    .restart local v0    # "idx":I
    if-lez v0, :cond_13b

    .line 2393
    return v0

    .line 2392
    :cond_13b
    move-object v9, v12

    move-object v7, v15

    move/from16 v4, v20

    move/from16 v6, v22

    move/from16 v10, v23

    move-object v15, v11

    move-object/from16 v11, p0

    goto/16 :goto_538

    .line 2571
    .end local v0    # "idx":I
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v20    # "field":I
    .end local v21    # "value":I
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .restart local v4    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    .restart local v8    # "patternCharIndex":I
    .restart local v9    # "pos":Ljava/text/ParsePosition;
    :pswitch_148
    move/from16 v23, v4

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object v15, v9

    move-object v11, v10

    .end local v4    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .end local v8    # "patternCharIndex":I
    .end local v9    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "pos":Ljava/text/ParsePosition;
    .restart local v20    # "field":I
    .restart local v21    # "value":I
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v0, v4

    if-gtz v0, :cond_168

    .line 2572
    move-object v9, v12

    move-object v7, v15

    move/from16 v4, v20

    move/from16 v6, v22

    move/from16 v10, v23

    move-object v15, v11

    move-object/from16 v11, p0

    goto/16 :goto_538

    .line 2576
    :cond_168
    iget v0, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2577
    .local v0, "c":C
    const/16 v4, 0x5a

    if-ne v0, v4, :cond_182

    .line 2578
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2579
    iget v1, v15, Ljava/text/ParsePosition;->index:I

    add-int/2addr v1, v5

    iput v1, v15, Ljava/text/ParsePosition;->index:I

    return v1

    .line 2583
    :cond_182
    if-ne v0, v1, :cond_187

    .line 2584
    const/4 v1, 0x1

    move v8, v1

    .local v1, "sign":I
    goto :goto_18b

    .line 2585
    .end local v1    # "sign":I
    :cond_187
    if-ne v0, v2, :cond_1b7

    .line 2586
    const/4 v1, -0x1

    move v8, v1

    .line 2591
    .local v8, "sign":I
    :goto_18b
    iget v1, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v15, Ljava/text/ParsePosition;->index:I

    const/4 v1, 0x3

    if-ne v14, v1, :cond_196

    move v6, v5

    goto :goto_197

    :cond_196
    const/4 v6, 0x0

    :goto_197
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v4, v8

    move/from16 v5, p4

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v1

    .line 2593
    .local v1, "i":I
    if-lez v1, :cond_1a7

    .line 2594
    return v1

    .line 2596
    :cond_1a7
    neg-int v2, v1

    iput v2, v15, Ljava/text/ParsePosition;->index:I

    .line 2598
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v8    # "sign":I
    move-object v9, v12

    move-object v7, v15

    move/from16 v4, v20

    move/from16 v6, v22

    move/from16 v10, v23

    move-object v15, v11

    move-object/from16 v11, p0

    goto/16 :goto_538

    .line 2588
    .restart local v0    # "c":C
    :cond_1b7
    iget v1, v15, Ljava/text/ParsePosition;->index:I

    add-int/2addr v1, v5

    iput v1, v15, Ljava/text/ParsePosition;->index:I

    .line 2589
    move-object v9, v12

    move-object v7, v15

    move/from16 v4, v20

    move/from16 v6, v22

    move/from16 v10, v23

    move-object v15, v11

    move-object/from16 v11, p0

    goto/16 :goto_538

    .line 2495
    .end local v0    # "c":C
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v20    # "field":I
    .end local v21    # "value":I
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .restart local v4    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    .local v8, "patternCharIndex":I
    .restart local v9    # "pos":Ljava/text/ParsePosition;
    :pswitch_1c9
    move/from16 v23, v4

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object v15, v9

    move-object v11, v10

    .end local v4    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .end local v8    # "patternCharIndex":I
    .end local v9    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "pos":Ljava/text/ParsePosition;
    .restart local v20    # "field":I
    .restart local v21    # "value":I
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    const/4 v4, 0x0

    .line 2497
    .local v4, "sign":I
    :try_start_1d4
    iget v6, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6
    :try_end_1da
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d4 .. :try_end_1da} :catch_2a2

    move v8, v6

    .line 2498
    .local v8, "c":C
    if-ne v8, v1, :cond_1e0

    .line 2499
    const/4 v4, 0x1

    move v9, v4

    goto :goto_1e6

    .line 2500
    :cond_1e0
    if-ne v8, v2, :cond_1e5

    .line 2501
    const/4 v4, -0x1

    move v9, v4

    goto :goto_1e6

    .line 2500
    :cond_1e5
    move v9, v4

    .line 2503
    .end local v4    # "sign":I
    .local v9, "sign":I
    :goto_1e6
    if-nez v9, :cond_281

    .line 2505
    const/16 v4, 0x47

    if-eq v8, v4, :cond_1f0

    const/16 v4, 0x67

    if-ne v8, v4, :cond_26c

    .line 2506
    :cond_1f0
    :try_start_1f0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_1f9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f0 .. :try_end_1f9} :catch_27c

    if-lt v4, v6, :cond_26c

    const/4 v4, 0x1

    :try_start_1fc
    const-string v6, "GMT"

    const/4 v7, 0x0

    .line 2507
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v1, p1

    move v2, v4

    move v4, v3

    move/from16 v3, p2

    move-object v4, v6

    move v6, v5

    move v5, v7

    move v7, v6

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_26c

    .line 2508
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v13

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    .line 2510
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, v15, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_238

    .line 2511
    iget v0, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v8, v0

    .line 2512
    const/16 v0, 0x2b

    if-ne v8, v0, :cond_232

    .line 2513
    const/4 v0, 0x1

    move v9, v0

    .end local v9    # "sign":I
    .local v0, "sign":I
    goto :goto_238

    .line 2514
    .end local v0    # "sign":I
    .restart local v9    # "sign":I
    :cond_232
    const/16 v0, 0x2d

    if-ne v8, v0, :cond_238

    .line 2515
    const/4 v0, -0x1

    move v9, v0

    .line 2519
    :cond_238
    :goto_238
    if-nez v9, :cond_249

    .line 2520
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v0

    .line 2521
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2522
    iget v0, v15, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2532
    :cond_249
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

    .line 2535
    .local v0, "i":I
    if-lez v0, :cond_25f

    .line 2536
    return v0

    .line 2538
    :cond_25f
    neg-int v1, v0

    iput v1, v15, Ljava/text/ParsePosition;->index:I
    :try_end_262
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1fc .. :try_end_262} :catch_266

    .line 2539
    .end local v0    # "i":I
    move-object v10, v11

    move-object/from16 v11, p0

    goto :goto_29e

    .line 2564
    .end local v8    # "c":C
    :catch_266
    move-exception v0

    move v4, v9

    move-object v10, v11

    move-object/from16 v11, p0

    goto :goto_2a6

    .line 2542
    .restart local v8    # "c":C
    :cond_26c
    :try_start_26c
    iget v0, v15, Ljava/text/ParsePosition;->index:I
    :try_end_26e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_26c .. :try_end_26e} :catch_27c

    move-object v10, v11

    move-object/from16 v11, p0

    :try_start_271
    invoke-direct {v11, v12, v0, v10}, Ljava/text/SimpleDateFormat;->subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v0

    .line 2543
    .restart local v0    # "i":I
    if-lez v0, :cond_278

    .line 2544
    return v0

    .line 2546
    :cond_278
    neg-int v1, v0

    iput v1, v15, Ljava/text/ParsePosition;->index:I

    .line 2547
    .end local v0    # "i":I
    goto :goto_29e

    .line 2564
    .end local v8    # "c":C
    :catch_27c
    move-exception v0

    move-object v10, v11

    move-object/from16 v11, p0

    goto :goto_2a0

    .line 2556
    .restart local v8    # "c":C
    :cond_281
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

    .line 2559
    .restart local v0    # "i":I
    if-lez v0, :cond_29b

    .line 2560
    return v0

    .line 2562
    :cond_29b
    neg-int v1, v0

    iput v1, v15, Ljava/text/ParsePosition;->index:I
    :try_end_29e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_271 .. :try_end_29e} :catch_29f

    .line 2565
    .end local v0    # "i":I
    .end local v8    # "c":C
    :goto_29e
    goto :goto_2a6

    .line 2564
    :catch_29f
    move-exception v0

    :goto_2a0
    move v4, v9

    goto :goto_2a6

    .end local v9    # "sign":I
    .restart local v4    # "sign":I
    :catch_2a2
    move-exception v0

    move-object v10, v11

    move-object/from16 v11, p0

    .line 2567
    .end local v4    # "sign":I
    :goto_2a6
    move-object v9, v12

    move-object v7, v15

    move/from16 v4, v20

    move/from16 v6, v22

    move-object v15, v10

    move/from16 v10, v23

    goto/16 :goto_538

    .line 2479
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v20    # "field":I
    .end local v21    # "value":I
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .local v4, "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    .local v8, "patternCharIndex":I
    .local v9, "pos":Ljava/text/ParsePosition;
    :pswitch_2b1
    move/from16 v23, v4

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object v15, v9

    move v7, v5

    .end local v4    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .end local v8    # "patternCharIndex":I
    .end local v9    # "pos":Ljava/text/ParsePosition;
    .restart local v15    # "pos":Ljava/text/ParsePosition;
    .restart local v20    # "field":I
    .restart local v21    # "value":I
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result v0

    if-nez v0, :cond_2e3

    .line 2481
    move/from16 v9, v21

    .end local v21    # "value":I
    .local v9, "value":I
    if-lt v9, v7, :cond_2d6

    const/16 v0, 0xc

    if-le v9, v0, :cond_2e5

    .line 2482
    move/from16 v21, v9

    move-object v9, v12

    move-object v7, v15

    move/from16 v4, v20

    move/from16 v6, v22

    move-object v15, v10

    move/from16 v10, v23

    goto/16 :goto_538

    .line 2481
    :cond_2d6
    move/from16 v21, v9

    move-object v9, v12

    move-object v7, v15

    move/from16 v4, v20

    move/from16 v6, v22

    move-object v15, v10

    move/from16 v10, v23

    goto/16 :goto_538

    .line 2479
    .end local v9    # "value":I
    .restart local v21    # "value":I
    :cond_2e3
    move/from16 v9, v21

    .line 2486
    .end local v21    # "value":I
    .restart local v9    # "value":I
    :cond_2e5
    iget-object v0, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    add-int/2addr v0, v7

    if-ne v9, v0, :cond_2f2

    .line 2487
    const/4 v7, 0x0

    .end local v9    # "value":I
    .restart local v7    # "value":I
    goto :goto_2f3

    .line 2486
    .end local v7    # "value":I
    .restart local v9    # "value":I
    :cond_2f2
    move v7, v9

    .line 2489
    .end local v9    # "value":I
    .restart local v7    # "value":I
    :goto_2f3
    invoke-virtual {v10, v1, v7}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2490
    iget v0, v15, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2465
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v20    # "field":I
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .restart local v4    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v8    # "patternCharIndex":I
    .local v9, "pos":Ljava/text/ParsePosition;
    :pswitch_2f9
    move/from16 v23, v4

    move/from16 v20, v6

    move/from16 v22, v8

    move-object v15, v9

    move v9, v7

    .end local v4    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .end local v8    # "patternCharIndex":I
    .local v9, "value":I
    .restart local v15    # "pos":Ljava/text/ParsePosition;
    .restart local v20    # "field":I
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    if-eqz v19, :cond_328

    .line 2466
    const/16 v4, 0x9

    iget-object v0, v11, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2467
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v5

    .line 2466
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v1, v0

    .local v1, "index":I
    if-lez v0, :cond_31b

    .line 2468
    return v1

    .line 2466
    :cond_31b
    move/from16 v21, v9

    move-object v9, v12

    move-object v7, v15

    move/from16 v4, v20

    move/from16 v6, v22

    move-object v15, v10

    move/from16 v10, v23

    goto/16 :goto_538

    .line 2471
    .end local v1    # "index":I
    :cond_328
    iget-object v0, v11, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    move/from16 v8, v20

    .end local v20    # "field":I
    .local v8, "field":I
    invoke-direct {v11, v8, v0}, Ljava/text/SimpleDateFormat;->getDisplayNamesMap(ILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 2472
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
    if-lez v1, :cond_342

    .line 2473
    return v2

    .line 2476
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_342
    move v4, v8

    move/from16 v21, v9

    move-object v9, v12

    move-object v7, v15

    move/from16 v6, v22

    move-object v15, v10

    move/from16 v10, v23

    goto/16 :goto_538

    .line 2442
    .end local v2    # "index":I
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .restart local v4    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    .local v8, "patternCharIndex":I
    .local v9, "pos":Ljava/text/ParsePosition;
    :pswitch_34e
    move/from16 v23, v4

    move/from16 v22, v8

    move-object v15, v9

    move v8, v6

    move v9, v7

    .end local v4    # "actualStart":I
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

    move/from16 v5, v19

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    move-result v0

    .line 2444
    .local v0, "idx":I
    if-lez v0, :cond_368

    .line 2445
    return v0

    .line 2444
    :cond_368
    move v4, v8

    move/from16 v21, v9

    move-object v9, v12

    move-object v7, v15

    move/from16 v6, v22

    move-object v15, v10

    move/from16 v10, v23

    goto/16 :goto_538

    .line 2400
    .end local v0    # "idx":I
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .restart local v4    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    .local v8, "patternCharIndex":I
    .local v9, "pos":Ljava/text/ParsePosition;
    :pswitch_374
    move/from16 v23, v4

    move/from16 v22, v8

    move-object v15, v9

    move v8, v6

    move v9, v7

    move v7, v5

    .end local v4    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .local v8, "field":I
    .local v9, "value":I
    .restart local v15    # "pos":Ljava/text/ParsePosition;
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result v0

    if-nez v0, :cond_3a0

    .line 2402
    if-lt v9, v7, :cond_394

    const/16 v0, 0x18

    if-le v9, v0, :cond_3a0

    .line 2403
    move v4, v8

    move/from16 v21, v9

    move-object v9, v12

    move-object v7, v15

    move/from16 v6, v22

    move-object v15, v10

    move/from16 v10, v23

    goto/16 :goto_538

    .line 2402
    :cond_394
    move v4, v8

    move/from16 v21, v9

    move-object v9, v12

    move-object v7, v15

    move/from16 v6, v22

    move-object v15, v10

    move/from16 v10, v23

    goto/16 :goto_538

    .line 2407
    :cond_3a0
    iget-object v0, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    add-int/2addr v0, v7

    if-ne v9, v0, :cond_3ad

    .line 2408
    const/4 v7, 0x0

    .end local v9    # "value":I
    .restart local v7    # "value":I
    goto :goto_3ae

    .line 2407
    .end local v7    # "value":I
    .restart local v9    # "value":I
    :cond_3ad
    move v7, v9

    .line 2410
    .end local v9    # "value":I
    .restart local v7    # "value":I
    :goto_3ae
    invoke-virtual {v10, v1, v7}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2411
    iget v0, v15, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2379
    .end local v15    # "pos":Ljava/text/ParsePosition;
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .restart local v4    # "actualStart":I
    .restart local v6    # "field":I
    .local v8, "patternCharIndex":I
    .local v9, "pos":Ljava/text/ParsePosition;
    :pswitch_3b4
    move/from16 v23, v4

    move/from16 v22, v8

    move-object v15, v9

    move v8, v6

    move v9, v7

    .end local v4    # "actualStart":I
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
    .restart local v13    # "field":I
    move/from16 v8, v19

    move v12, v9

    .end local v9    # "value":I
    .restart local v12    # "value":I
    move v9, v0

    move-object/from16 v18, v15

    move-object v15, v10

    .end local v15    # "pos":Ljava/text/ParsePosition;
    .local v18, "pos":Ljava/text/ParsePosition;
    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    move-result v0

    .line 2381
    .restart local v0    # "idx":I
    if-lez v0, :cond_3d7

    .line 2382
    return v0

    .line 2381
    :cond_3d7
    move-object/from16 v9, p1

    move/from16 v21, v12

    move v4, v13

    move-object/from16 v7, v18

    move/from16 v6, v22

    move/from16 v10, v23

    goto/16 :goto_538

    .line 2306
    .end local v0    # "idx":I
    .end local v12    # "value":I
    .end local v13    # "field":I
    .end local v18    # "pos":Ljava/text/ParsePosition;
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .restart local v4    # "actualStart":I
    .restart local v6    # "field":I
    .restart local v7    # "value":I
    .local v8, "patternCharIndex":I
    .local v9, "pos":Ljava/text/ParsePosition;
    :pswitch_3e4
    move/from16 v23, v4

    move v13, v6

    move v12, v7

    move/from16 v22, v8

    move-object/from16 v18, v9

    move-object v15, v10

    move v7, v5

    .end local v4    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .end local v8    # "patternCharIndex":I
    .end local v9    # "pos":Ljava/text/ParsePosition;
    .restart local v12    # "value":I
    .restart local v13    # "field":I
    .restart local v18    # "pos":Ljava/text/ParsePosition;
    .restart local v22    # "patternCharIndex":I
    .restart local v23    # "actualStart":I
    iget-object v0, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-nez v0, :cond_41f

    .line 2309
    const/4 v0, 0x4

    if-lt v14, v0, :cond_3f9

    const/4 v5, 0x2

    goto :goto_3fa

    :cond_3f9
    move v5, v7

    :goto_3fa
    move v0, v5

    .line 2310
    .local v0, "style":I
    iget-object v1, v11, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v2, v11, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v13, v0, v2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v7

    .line 2311
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_417

    .line 2312
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
    if-lez v1, :cond_417

    .line 2313
    return v2

    .line 2316
    .end local v2    # "index":I
    :cond_417
    invoke-virtual {v15, v13, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2317
    move-object/from16 v8, v18

    .end local v18    # "pos":Ljava/text/ParsePosition;
    .local v8, "pos":Ljava/text/ParsePosition;
    iget v1, v8, Ljava/text/ParsePosition;->index:I

    return v1

    .line 2326
    .end local v0    # "style":I
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "pos":Ljava/text/ParsePosition;
    .restart local v18    # "pos":Ljava/text/ParsePosition;
    :cond_41f
    move-object/from16 v8, v18

    .end local v18    # "pos":Ljava/text/ParsePosition;
    .restart local v8    # "pos":Ljava/text/ParsePosition;
    const/4 v0, 0x2

    if-gt v14, v0, :cond_45d

    iget v1, v8, Ljava/text/ParsePosition;->index:I

    sub-int v1, v1, v23

    if-ne v1, v0, :cond_45d

    .line 2327
    move-object/from16 v9, p1

    move/from16 v10, v23

    .end local v23    # "actualStart":I
    .restart local v10    # "actualStart":I
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_461

    add-int/lit8 v4, v10, 0x1

    .line 2328
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_461

    .line 2337
    iget v0, v11, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    rem-int/lit8 v1, v0, 0x64

    .line 2338
    .local v1, "ambiguousTwoDigitYear":I
    if-ne v12, v1, :cond_44c

    move v5, v7

    goto :goto_44d

    :cond_44c
    const/4 v5, 0x0

    :goto_44d
    const/4 v2, 0x0

    aput-boolean v5, p6, v2

    .line 2339
    const/16 v2, 0x64

    div-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 2340
    if-ge v12, v1, :cond_458

    move v7, v2

    goto :goto_459

    :cond_458
    const/4 v7, 0x0

    :goto_459
    add-int/2addr v0, v7

    add-int v7, v12, v0

    .end local v12    # "value":I
    .local v7, "value":I
    goto :goto_462

    .line 2326
    .end local v1    # "ambiguousTwoDigitYear":I
    .end local v7    # "value":I
    .end local v10    # "actualStart":I
    .restart local v12    # "value":I
    .restart local v23    # "actualStart":I
    :cond_45d
    move-object/from16 v9, p1

    move/from16 v10, v23

    .line 2342
    .end local v23    # "actualStart":I
    .restart local v10    # "actualStart":I
    :cond_461
    move v7, v12

    .end local v12    # "value":I
    .restart local v7    # "value":I
    :goto_462
    invoke-virtual {v15, v13, v7}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2343
    iget v0, v8, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2292
    .end local v10    # "actualStart":I
    .end local v13    # "field":I
    .end local v22    # "patternCharIndex":I
    .restart local v4    # "actualStart":I
    .restart local v6    # "field":I
    .local v8, "patternCharIndex":I
    .restart local v9    # "pos":Ljava/text/ParsePosition;
    :pswitch_468
    move v13, v6

    move/from16 v22, v8

    move-object v8, v9

    move-object v15, v10

    move-object v9, v12

    move v10, v4

    move v12, v7

    .end local v4    # "actualStart":I
    .end local v6    # "field":I
    .end local v7    # "value":I
    .end local v9    # "pos":Ljava/text/ParsePosition;
    .local v8, "pos":Ljava/text/ParsePosition;
    .restart local v10    # "actualStart":I
    .restart local v12    # "value":I
    .restart local v13    # "field":I
    .restart local v22    # "patternCharIndex":I
    if-eqz v19, :cond_491

    .line 2293
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

    .local v1, "index":I
    if-lez v0, :cond_489

    .line 2294
    return v1

    .line 2293
    :cond_489
    move-object v7, v8

    move/from16 v21, v12

    move v4, v13

    move/from16 v6, v22

    goto/16 :goto_538

    .line 2297
    .end local v1    # "index":I
    :cond_491
    iget-object v0, v11, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {v11, v13, v0}, Ljava/text/SimpleDateFormat;->getDisplayNamesMap(ILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 2298
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
    if-lez v1, :cond_4a9

    .line 2299
    return v2

    .line 2302
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4a9
    move-object v7, v8

    move/from16 v21, v12

    move v4, v13

    move/from16 v6, v22

    goto/16 :goto_538

    .line 2622
    .end local v2    # "index":I
    .end local v13    # "field":I
    .local v0, "parseStart":I
    .local v4, "field":I
    :cond_4b1
    iget-object v1, v11, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    add-int v2, p2, v14

    const/4 v5, 0x0

    invoke-virtual {v9, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .local v1, "number":Ljava/lang/Number;
    goto :goto_4c6

    .line 2624
    .end local v1    # "number":Ljava/lang/Number;
    .end local v4    # "field":I
    .restart local v13    # "field":I
    :cond_4bf
    move v4, v13

    .end local v13    # "field":I
    .restart local v4    # "field":I
    iget-object v1, v11, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, v9, v8}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 2626
    .restart local v1    # "number":Ljava/lang/Number;
    :goto_4c6
    if-eqz v1, :cond_533

    .line 2631
    const/16 v2, 0x8

    move/from16 v6, v22

    .end local v22    # "patternCharIndex":I
    .local v6, "patternCharIndex":I
    if-ne v6, v2, :cond_4ed

    .line 2638
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 2639
    .local v2, "doubleValue":D
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    sub-int/2addr v5, v0

    .line 2640
    .local v5, "width":I
    move-object/from16 v18, v8

    .end local v8    # "pos":Ljava/text/ParsePosition;
    .restart local v18    # "pos":Ljava/text/ParsePosition;
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    move/from16 v21, v12

    .end local v12    # "value":I
    .restart local v21    # "value":I
    int-to-double v12, v5

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    .line 2641
    .local v7, "divisor":D
    div-double v12, v2, v7

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v12, v12, v16

    double-to-int v2, v12

    .line 2642
    .end local v5    # "width":I
    .end local v7    # "divisor":D
    .end local v21    # "value":I
    .local v2, "value":I
    goto :goto_4f5

    .line 2643
    .end local v2    # "value":I
    .end local v18    # "pos":Ljava/text/ParsePosition;
    .restart local v8    # "pos":Ljava/text/ParsePosition;
    .restart local v12    # "value":I
    :cond_4ed
    move-object/from16 v18, v8

    move/from16 v21, v12

    .end local v8    # "pos":Ljava/text/ParsePosition;
    .end local v12    # "value":I
    .restart local v18    # "pos":Ljava/text/ParsePosition;
    .restart local v21    # "value":I
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 2647
    .end local v21    # "value":I
    .restart local v2    # "value":I
    :goto_4f5
    if-eqz p8, :cond_52b

    if-gez v2, :cond_52b

    move-object/from16 v7, v18

    .end local v18    # "pos":Ljava/text/ParsePosition;
    .local v7, "pos":Ljava/text/ParsePosition;
    iget v3, v7, Ljava/text/ParsePosition;->index:I

    .line 2648
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_510

    iget v3, v7, Ljava/text/ParsePosition;->index:I

    .line 2649
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v5, v11, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v3, v5, :cond_50e

    goto :goto_510

    :cond_50e
    const/4 v5, 0x1

    goto :goto_524

    :cond_510
    :goto_510
    iget v3, v7, Ljava/text/ParsePosition;->index:I

    .line 2650
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_52d

    iget v3, v7, Ljava/text/ParsePosition;->index:I

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 2651
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v8, v11, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v3, v8, :cond_52d

    .line 2652
    :goto_524
    neg-int v2, v2

    .line 2653
    iget v3, v7, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v3, v5

    iput v3, v7, Ljava/text/ParsePosition;->index:I

    goto :goto_52d

    .line 2647
    .end local v7    # "pos":Ljava/text/ParsePosition;
    .restart local v18    # "pos":Ljava/text/ParsePosition;
    :cond_52b
    move-object/from16 v7, v18

    .line 2656
    .end local v18    # "pos":Ljava/text/ParsePosition;
    .restart local v7    # "pos":Ljava/text/ParsePosition;
    :cond_52d
    :goto_52d
    invoke-virtual {v15, v4, v2}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2657
    iget v3, v7, Ljava/text/ParsePosition;->index:I

    return v3

    .line 2626
    .end local v2    # "value":I
    .end local v6    # "patternCharIndex":I
    .end local v7    # "pos":Ljava/text/ParsePosition;
    .restart local v8    # "pos":Ljava/text/ParsePosition;
    .restart local v12    # "value":I
    .restart local v22    # "patternCharIndex":I
    :cond_533
    move-object v7, v8

    move/from16 v21, v12

    move/from16 v6, v22

    .line 2664
    .end local v0    # "parseStart":I
    .end local v1    # "number":Ljava/lang/Number;
    .end local v4    # "field":I
    .end local v8    # "pos":Ljava/text/ParsePosition;
    .end local v10    # "actualStart":I
    .end local v19    # "useDateFormatSymbols":Z
    .restart local v13    # "field":I
    .restart local v18    # "pos":Ljava/text/ParsePosition;
    .restart local v23    # "actualStart":I
    :goto_538
    move/from16 v1, v21

    .end local v12    # "value":I
    .end local v13    # "field":I
    .end local v18    # "pos":Ljava/text/ParsePosition;
    .end local v22    # "patternCharIndex":I
    .end local v23    # "actualStart":I
    .local v1, "value":I
    .restart local v4    # "field":I
    .restart local v6    # "patternCharIndex":I
    .restart local v7    # "pos":Ljava/text/ParsePosition;
    .restart local v10    # "actualStart":I
    :goto_53a
    iget v0, v7, Ljava/text/ParsePosition;->index:I

    move-object/from16 v8, p7

    move v2, v10

    .end local v10    # "actualStart":I
    .local v2, "actualStart":I
    iput v0, v8, Ljava/text/ParsePosition;->errorIndex:I

    .line 2665
    return v16

    .line 2240
    .end local v2    # "actualStart":I
    .end local v4    # "field":I
    .end local v7    # "pos":Ljava/text/ParsePosition;
    .restart local v3    # "c":C
    .local v6, "field":I
    .local v8, "patternCharIndex":I
    .restart local v9    # "pos":Ljava/text/ParsePosition;
    :cond_542
    move v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move-object v9, v12

    move-object v8, v15

    move-object v15, v10

    .line 2243
    .end local v8    # "patternCharIndex":I
    .end local v9    # "pos":Ljava/text/ParsePosition;
    .restart local v4    # "field":I
    .local v6, "patternCharIndex":I
    .restart local v7    # "pos":Ljava/text/ParsePosition;
    iget v10, v7, Ljava/text/ParsePosition;->index:I

    const/4 v12, 0x1

    add-int/2addr v10, v12

    iput v10, v7, Ljava/text/ParsePosition;->index:I

    .line 2244
    .end local v3    # "c":C
    move/from16 v13, p2

    move-object v12, v9

    move-object v10, v15

    move-object v9, v7

    move-object v15, v8

    move v7, v5

    move v8, v6

    move v6, v4

    goto/16 :goto_2e

    :pswitch_data_55a
    .packed-switch 0x0
        :pswitch_468
        :pswitch_3e4
        :pswitch_3b4
        :pswitch_d3
        :pswitch_374
        :pswitch_d3
        :pswitch_d3
        :pswitch_d3
        :pswitch_d3
        :pswitch_34e
        :pswitch_d3
        :pswitch_d3
        :pswitch_d3
        :pswitch_d3
        :pswitch_2f9
        :pswitch_2b1
        :pswitch_d3
        :pswitch_1c9
        :pswitch_1c9
        :pswitch_3e4
        :pswitch_d3
        :pswitch_148
        :pswitch_118
        :pswitch_f2
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

    .line 2121
    move v0, p2

    .line 2125
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2128
    .local v0, "c":C
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_b} :catch_8c

    if-nez v2, :cond_f

    .line 2129
    goto/16 :goto_8d

    .line 2131
    :cond_f
    add-int/lit8 v2, v0, -0x30

    .line 2132
    .local v2, "hours":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "index":I
    .local v3, "index":I
    :try_start_13
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    .line 2133
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v1
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_1c} :catch_89

    if-eqz v1, :cond_26

    .line 2134
    mul-int/lit8 v1, v2, 0xa

    add-int/lit8 v4, v0, -0x30

    add-int v2, v1, v4

    move v1, v3

    goto :goto_29

    .line 2145
    :cond_26
    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .line 2147
    .end local v3    # "index":I
    .restart local v1    # "index":I
    :goto_29
    const/16 v3, 0x17

    if-le v2, v3, :cond_2f

    .line 2148
    goto/16 :goto_8d

    .line 2150
    :cond_2f
    const/4 v3, 0x0

    .line 2151
    .local v3, "minutes":I
    const/4 v4, 0x1

    if-eq p4, v4, :cond_74

    .line 2153
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    :try_start_35
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1
    :try_end_39
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_35 .. :try_end_39} :catch_71

    move v0, v1

    .line 2169
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_46

    .line 2170
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "index":I
    .restart local v1    # "index":I
    :try_start_40
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v0, v4

    goto :goto_4b

    .line 2171
    .end local v1    # "index":I
    .restart local v4    # "index":I
    :cond_46
    if-eqz p5, :cond_4a

    .line 2172
    move v1, v4

    goto :goto_8d

    .line 2171
    :cond_4a
    move v1, v4

    .line 2175
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :goto_4b
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v4
    :try_end_4f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_40 .. :try_end_4f} :catch_8c

    if-nez v4, :cond_52

    .line 2176
    goto :goto_8d

    .line 2178
    :cond_52
    add-int/lit8 v3, v0, -0x30

    .line 2179
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .restart local v4    # "index":I
    :try_start_56
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    .line 2180
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v1
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_56 .. :try_end_5f} :catch_71

    if-nez v1, :cond_62

    .line 2181
    goto :goto_6d

    .line 2183
    :cond_62
    mul-int/lit8 v1, v3, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v3, v1, v5

    .line 2184
    const/16 v1, 0x3b

    if-le v3, v1, :cond_6f

    .line 2185
    nop

    .line 2194
    .end local v0    # "c":C
    .end local v2    # "hours":I
    .end local v3    # "minutes":I
    :goto_6d
    move v1, v4

    goto :goto_8d

    .line 2184
    .restart local v0    # "c":C
    .restart local v2    # "hours":I
    .restart local v3    # "minutes":I
    :cond_6f
    move v1, v4

    goto :goto_74

    .line 2192
    .end local v0    # "c":C
    .end local v2    # "hours":I
    .end local v3    # "minutes":I
    :catch_71
    move-exception v0

    move v1, v4

    goto :goto_8d

    .line 2188
    .end local v4    # "index":I
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    .restart local v2    # "hours":I
    .restart local v3    # "minutes":I
    :cond_74
    :goto_74
    mul-int/lit8 v4, v2, 0x3c

    add-int/2addr v3, v4

    .line 2189
    const/16 v4, 0xf

    const v5, 0xea60

    mul-int/2addr v5, v3

    mul-int/2addr v5, p3

    :try_start_7e
    invoke-virtual {p6, v4, v5}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    .line 2190
    invoke-virtual {v4, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;
    :try_end_88
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7e .. :try_end_88} :catch_8c

    .line 2191
    return v1

    .line 2192
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

    .line 2194
    :goto_8d
    rsub-int/lit8 v0, v1, 0x1

    return v0
.end method

.method private greylist-max-o subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    .line 1989
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-boolean v0, v0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    if-eqz v0, :cond_b

    .line 1991
    invoke-direct {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->subParseZoneStringFromSymbols(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v0

    return v0

    .line 1993
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->subParseZoneStringFromICU(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o subParseZoneStringFromICU(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .registers 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    .line 2012
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2014
    .local v0, "currentTimeZoneID":Ljava/lang/String;
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->getExtendedTimeZoneNames()Lcom/android/icu/text/ExtendedTimeZoneNames;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/icu/text/ExtendedTimeZoneNames;->matchName(Ljava/lang/CharSequence;ILjava/lang/String;)Lcom/android/icu/text/ExtendedTimeZoneNames$Match;

    move-result-object v1

    .line 2015
    .local v1, "matchedName":Lcom/android/icu/text/ExtendedTimeZoneNames$Match;
    if-nez v1, :cond_18

    .line 2017
    neg-int v2, p2

    return v2

    .line 2020
    :cond_18
    invoke-virtual {v1}, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;->getTzId()Ljava/lang/String;

    move-result-object v2

    .line 2021
    .local v2, "tzId":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2022
    .local v3, "newTimeZone":Ljava/util/TimeZone;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 2023
    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2027
    :cond_29
    invoke-virtual {v1}, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;->isDst()Z

    move-result v4

    .line 2028
    .local v4, "isDst":Z
    if-eqz v4, :cond_34

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v5

    goto :goto_35

    :cond_34
    const/4 v5, 0x0

    .line 2029
    .local v5, "dstAmount":I
    :goto_35
    if-eqz v4, :cond_39

    if-eqz v5, :cond_44

    .line 2030
    :cond_39
    const/16 v6, 0xf

    invoke-virtual {p3, v6}, Ljava/text/CalendarBuilder;->clear(I)Ljava/text/CalendarBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7, v5}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2033
    :cond_44
    invoke-virtual {v1}, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;->getMatchLength()I

    move-result v6

    add-int/2addr v6, p2

    return v6
.end method

.method private greylist-max-o subParseZoneStringFromSymbols(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .registers 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    .line 2041
    const/4 v0, 0x0

    .line 2042
    .local v0, "useSameName":Z
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 2047
    .local v1, "currentTimeZone":Ljava/util/TimeZone;
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    move-result v2

    .line 2048
    .local v2, "zoneIndex":I
    const/4 v3, 0x0

    .line 2049
    .local v3, "tz":Ljava/util/TimeZone;
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v4

    .line 2050
    .local v4, "zoneStrings":[[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2051
    .local v5, "zoneNames":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2052
    .local v6, "nameIndex":I
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eq v2, v7, :cond_38

    .line 2053
    aget-object v5, v4, v2

    .line 2054
    invoke-direct {p0, p1, p2, v5}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v10

    move v6, v10

    if-lez v10, :cond_38

    .line 2055
    if-gt v6, v9, :cond_32

    .line 2057
    aget-object v10, v5, v6

    add-int/lit8 v11, v6, 0x2

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2059
    :cond_32
    aget-object v10, v5, v8

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2062
    :cond_38
    if-nez v3, :cond_65

    .line 2063
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    move-result v2

    .line 2064
    if-eq v2, v7, :cond_65

    .line 2065
    aget-object v5, v4, v2

    .line 2066
    invoke-direct {p0, p1, p2, v5}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v7

    move v6, v7

    if-lez v7, :cond_65

    .line 2067
    if-gt v6, v9, :cond_5f

    .line 2068
    aget-object v7, v5, v6

    add-int/lit8 v10, v6, 0x2

    aget-object v10, v5, v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2070
    :cond_5f
    aget-object v7, v5, v8

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2075
    :cond_65
    if-nez v3, :cond_8a

    .line 2076
    array-length v7, v4

    .line 2077
    .local v7, "len":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_69
    if-ge v10, v7, :cond_8a

    .line 2078
    aget-object v5, v4, v10

    .line 2079
    invoke-direct {p0, p1, p2, v5}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v11

    move v6, v11

    if-lez v11, :cond_87

    .line 2080
    if-gt v6, v9, :cond_80

    .line 2081
    aget-object v9, v5, v6

    add-int/lit8 v11, v6, 0x2

    aget-object v11, v5, v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2083
    :cond_80
    aget-object v9, v5, v8

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2084
    goto :goto_8a

    .line 2077
    :cond_87
    add-int/lit8 v10, v10, 0x1

    goto :goto_69

    .line 2088
    .end local v7    # "len":I
    .end local v10    # "i":I
    :cond_8a
    :goto_8a
    if-eqz v3, :cond_b5

    .line 2089
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_95

    .line 2090
    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2098
    :cond_95
    const/4 v7, 0x3

    if-lt v6, v7, :cond_9c

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v8

    .line 2099
    .local v8, "dstAmount":I
    :cond_9c
    if-nez v0, :cond_ad

    if-lt v6, v7, :cond_a2

    if-eqz v8, :cond_ad

    .line 2100
    :cond_a2
    const/16 v7, 0xf

    invoke-virtual {p3, v7}, Ljava/text/CalendarBuilder;->clear(I)Ljava/text/CalendarBuilder;

    move-result-object v7

    const/16 v9, 0x10

    invoke-virtual {v7, v9, v8}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2102
    :cond_ad
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, p2

    return v7

    .line 2104
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

    .line 2765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2766
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2767
    .local v1, "inQuote":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_60

    .line 2768
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2769
    .local v3, "c":C
    const/16 v4, 0x27

    if-eqz v1, :cond_19

    .line 2770
    if-ne v3, v4, :cond_5a

    .line 2771
    const/4 v1, 0x0

    goto :goto_5a

    .line 2775
    :cond_19
    if-ne v3, v4, :cond_1d

    .line 2776
    const/4 v1, 0x1

    goto :goto_5a

    .line 2777
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

    .line 2778
    :cond_2d
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2779
    .local v4, "ci":I
    if-ltz v4, :cond_3e

    .line 2783
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5a

    .line 2784
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5a

    .line 2787
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

    .line 2793
    .end local v4    # "ci":I
    :cond_5a
    :goto_5a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2767
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2795
    .end local v2    # "i":I
    :cond_60
    if-nez v1, :cond_67

    .line 2798
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2796
    :cond_67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unfinished quote in pattern"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o useDateFormatSymbols()Z
    .registers 3

    .line 2753
    iget-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 2754
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

    .line 2753
    :goto_1e
    return v0
.end method

.method private greylist-max-o zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    .registers 9
    .param p1, "value"    # I
    .param p2, "minDigits"    # I
    .param p3, "maxDigits"    # I
    .param p4, "buffer"    # Ljava/lang/StringBuffer;

    .line 1643
    :try_start_0
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    if-nez v0, :cond_12

    .line 1644
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v0, Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    .line 1646
    :cond_12
    if-ltz p1, :cond_84

    .line 1647
    const/16 v0, 0x64

    const/4 v1, 0x2

    if-ge p1, v0, :cond_44

    const/4 v0, 0x1

    if-lt p2, v0, :cond_44

    if-gt p2, v1, :cond_44

    .line 1648
    const/16 v0, 0xa

    if-ge p1, v0, :cond_31

    .line 1649
    if-ne p2, v1, :cond_29

    .line 1650
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1652
    :cond_29
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    add-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 1654
    :cond_31
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1655
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    rem-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1657
    :goto_43
    return-void

    .line 1658
    :cond_44
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_84

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_84

    .line 1659
    const/4 v0, 0x4

    if-ne p2, v0, :cond_7a

    .line 1660
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit16 v1, p1, 0x3e8

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1661
    rem-int/lit16 v0, p1, 0x3e8

    move p1, v0

    .line 1662
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v1, p1, 0x64

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1663
    rem-int/lit8 v0, p1, 0x64

    move p1, v0

    .line 1664
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1665
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    rem-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1666
    return-void

    .line 1668
    :cond_7a
    if-ne p2, v1, :cond_84

    if-ne p3, v1, :cond_84

    .line 1669
    rem-int/lit8 v0, p1, 0x64

    invoke-direct {p0, v0, v1, v1, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_83} :catch_85

    .line 1670
    return-void

    .line 1675
    :cond_84
    goto :goto_86

    .line 1674
    :catch_85
    move-exception v0

    .line 1677
    :goto_86
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1678
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p3}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1679
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v1, p1

    sget-object v3, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    invoke-virtual {v0, v1, v2, p4, v3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1680
    return-void
.end method


# virtual methods
.method public whitelist test-api applyLocalizedPattern(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 2847
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2848
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v0

    .line 2847
    const-string v1, "GyMdkHmsSEDFwWahKzZYuXLcbB"

    invoke-direct {p0, p1, v0, v1}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2850
    .local v0, "p":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v1

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 2851
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2852
    return-void
.end method

.method public whitelist test-api applyPattern(Ljava/lang/String;)V
    .registers 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 2830
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->applyPatternImpl(Ljava/lang/String;)V

    .line 2831
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 2886
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 2887
    .local v0, "other":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2888
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2913
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2914
    return v1

    .line 2916
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 2917
    .local v0, "that":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2918
    invoke-virtual {v2, v3}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    nop

    .line 2917
    :goto_22
    return v1
.end method

.method public whitelist test-api format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 1052
    const/4 v0, 0x0

    iput v0, p3, Ljava/text/FieldPosition;->endIndex:I

    iput v0, p3, Ljava/text/FieldPosition;->beginIndex:I

    .line 1053
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldDelegate()Ljava/text/Format$FieldDelegate;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1110
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/CharacterIteratorFieldDelegate;

    invoke-direct {v1}, Ljava/text/CharacterIteratorFieldDelegate;-><init>()V

    .line 1113
    .local v1, "delegate":Ljava/text/CharacterIteratorFieldDelegate;
    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_15

    .line 1114
    move-object v2, p1

    check-cast v2, Ljava/util/Date;

    invoke-direct {p0, v2, v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 1116
    :cond_15
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_31

    .line 1117
    new-instance v2, Ljava/util/Date;

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v2, v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    .line 1127
    :goto_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/CharacterIteratorFieldDelegate;->getIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    .line 1119
    :cond_31
    if-nez p1, :cond_3b

    .line 1120
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1124
    :cond_3b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot format given Object as a Date"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api get2DigitYearStart()Ljava/util/Date;
    .registers 2

    .line 1034
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .registers 2

    .line 2862
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2899
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1723
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1725
    .local v0, "tz":Ljava/util/TimeZone;
    :try_start_4
    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;->parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1727
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1725
    return-object v1

    .line 1727
    :catchall_c
    move-exception v1

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1728
    throw v1
.end method

.method public whitelist test-api set2DigitYearStart(Ljava/util/Date;)V
    .registers 5
    .param p1, "startDate"    # Ljava/util/Date;

    .line 1021
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 1022
    return-void
.end method

.method public whitelist test-api setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .registers 3
    .param p1, "newFormatSymbols"    # Ljava/text/DateFormatSymbols;

    .line 2874
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2875
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    .line 2876
    return-void
.end method

.method public whitelist test-api toLocalizedPattern()Ljava/lang/String;
    .registers 4

    .line 2816
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2818
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v1

    .line 2816
    const-string v2, "GyMdkHmsSEDFwWahKzZYuXLcbB"

    invoke-direct {p0, v0, v2, v1}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toPattern()Ljava/lang/String;
    .registers 2

    .line 2807
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
