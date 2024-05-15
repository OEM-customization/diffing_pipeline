.class public abstract Ljava/util/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Calendar$AvailableCalendarTypes;,
        Ljava/util/Calendar$Builder;,
        Ljava/util/Calendar$CalendarAccessControlContext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final ALL_FIELDS:I = 0x1ffff

.field public static final ALL_STYLES:I = 0x0

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x9

.field static final AM_PM_MASK:I = 0x200

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field private static final COMPUTED:I = 0x1

.field public static final DATE:I = 0x5

.field static final DATE_MASK:I = 0x20

.field public static final DAY_OF_MONTH:I = 0x5

.field static final DAY_OF_MONTH_MASK:I = 0x20

.field public static final DAY_OF_WEEK:I = 0x7

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x8

.field static final DAY_OF_WEEK_IN_MONTH_MASK:I = 0x100

.field static final DAY_OF_WEEK_MASK:I = 0x80

.field public static final DAY_OF_YEAR:I = 0x6

.field static final DAY_OF_YEAR_MASK:I = 0x40

.field public static final DECEMBER:I = 0xb

.field public static final DST_OFFSET:I = 0x10

.field static final DST_OFFSET_MASK:I = 0x10000

.field public static final ERA:I = 0x0

.field static final ERA_MASK:I = 0x1

.field public static final FEBRUARY:I = 0x1

.field public static final FIELD_COUNT:I = 0x11

.field private static final FIELD_NAME:[Ljava/lang/String;

.field public static final FRIDAY:I = 0x6

.field public static final HOUR:I = 0xa

.field static final HOUR_MASK:I = 0x400

.field public static final HOUR_OF_DAY:I = 0xb

.field static final HOUR_OF_DAY_MASK:I = 0x800

.field public static final JANUARY:I = 0x0

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field public static final LONG:I = 0x2

.field public static final LONG_FORMAT:I = 0x2

.field public static final LONG_STANDALONE:I = 0x8002

.field public static final MARCH:I = 0x2

.field public static final MAY:I = 0x4

.field public static final MILLISECOND:I = 0xe

.field static final MILLISECOND_MASK:I = 0x4000

.field private static final MINIMUM_USER_STAMP:I = 0x2

.field public static final MINUTE:I = 0xc

.field static final MINUTE_MASK:I = 0x1000

.field public static final MONDAY:I = 0x2

.field public static final MONTH:I = 0x2

.field static final MONTH_MASK:I = 0x4

.field public static final NARROW_FORMAT:I = 0x4

.field public static final NARROW_STANDALONE:I = 0x8004

.field public static final NOVEMBER:I = 0xa

.field public static final OCTOBER:I = 0x9

.field public static final PM:I = 0x1

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0xd

.field static final SECOND_MASK:I = 0x2000

.field public static final SEPTEMBER:I = 0x8

.field public static final SHORT:I = 0x1

.field public static final SHORT_FORMAT:I = 0x1

.field public static final SHORT_STANDALONE:I = 0x8001

.field static final STANDALONE_MASK:I = 0x8000

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final UNDECIMBER:I = 0xc

.field private static final UNSET:I = 0x0

.field public static final WEDNESDAY:I = 0x4

.field public static final WEEK_OF_MONTH:I = 0x4

.field static final WEEK_OF_MONTH_MASK:I = 0x10

.field public static final WEEK_OF_YEAR:I = 0x3

.field static final WEEK_OF_YEAR_MASK:I = 0x8

.field public static final YEAR:I = 0x1

.field static final YEAR_MASK:I = 0x2

.field public static final ZONE_OFFSET:I = 0xf

.field static final ZONE_OFFSET_MASK:I = 0x8000

.field private static final cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "[I>;"
        }
    .end annotation
.end field

.field static final currentSerialVersion:I = 0x1

.field static final serialVersionUID:J = -0x1915b2e13723a472L


# instance fields
.field transient areAllFieldsSet:Z

.field protected areFieldsSet:Z

.field protected fields:[I

.field private firstDayOfWeek:I

.field protected isSet:[Z

.field protected isTimeSet:Z

.field private lenient:Z

.field private minimalDaysInFirstWeek:I

.field private nextStamp:I

.field private serialVersionOnStream:I

.field private transient sharedZone:Z

.field private transient stamp:[I

.field protected time:J

.field private zone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x3

    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/Calendar;->-assertionsDisabled:Z

    .line 929
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 928
    sput-object v0, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    .line 3305
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    .line 3306
    const-string/jumbo v1, "ERA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "YEAR"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "MONTH"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "WEEK_OF_YEAR"

    aput-object v1, v0, v3

    const-string/jumbo v1, "WEEK_OF_MONTH"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "DAY_OF_MONTH"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3307
    const-string/jumbo v1, "DAY_OF_YEAR"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "DAY_OF_WEEK"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "DAY_OF_WEEK_IN_MONTH"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "AM_PM"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "HOUR"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 3308
    const-string/jumbo v1, "HOUR_OF_DAY"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "MINUTE"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "SECOND"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "MILLISECOND"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "ZONE_OFFSET"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 3309
    const-string/jumbo v1, "DST_OFFSET"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 3305
    sput-object v0, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    .line 307
    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 1586
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 1587
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 1588
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 6
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x11

    .line 1596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-boolean v2, p0, Ljava/util/Calendar;->lenient:Z

    .line 908
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 961
    const/4 v0, 0x2

    iput v0, p0, Ljava/util/Calendar;->nextStamp:I

    .line 993
    iput v2, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    .line 1603
    if-nez p2, :cond_16

    .line 1604
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 1607
    :cond_16
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/util/Calendar;->fields:[I

    .line 1608
    new-array v0, v1, [Z

    iput-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    .line 1609
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/util/Calendar;->stamp:[I

    .line 1611
    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 1612
    invoke-direct {p0, p2}, Ljava/util/Calendar;->setWeekCountData(Ljava/util/Locale;)V

    .line 1613
    return-void
.end method

.method private adjustStamp()V
    .registers 7

    .prologue
    .line 3422
    const/4 v1, 0x2

    .line 3423
    .local v1, "max":I
    const/4 v3, 0x2

    .line 3426
    .local v3, "newStamp":I
    :cond_2
    const v2, 0x7fffffff

    .line 3427
    .local v2, "min":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    array-length v5, v5

    if-ge v0, v5, :cond_1a

    .line 3428
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    aget v4, v5, v0

    .line 3429
    .local v4, "v":I
    if-lt v4, v3, :cond_14

    if-le v2, v4, :cond_14

    .line 3430
    move v2, v4

    .line 3432
    :cond_14
    if-ge v1, v4, :cond_17

    .line 3433
    move v1, v4

    .line 3427
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3436
    .end local v4    # "v":I
    :cond_1a
    if-eq v1, v2, :cond_24

    const v5, 0x7fffffff

    if-ne v2, v5, :cond_24

    .line 3449
    :goto_21
    iput v3, p0, Ljava/util/Calendar;->nextStamp:I

    .line 3450
    return-void

    .line 3439
    :cond_24
    const/4 v0, 0x0

    :goto_25
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    array-length v5, v5

    if-ge v0, v5, :cond_37

    .line 3440
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    aget v5, v5, v0

    if-ne v5, v2, :cond_34

    .line 3441
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    aput v3, v5, v0

    .line 3439
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 3444
    :cond_37
    add-int/lit8 v3, v3, 0x1

    .line 3445
    if-ne v2, v1, :cond_2

    goto :goto_21
.end method

.method private static aggregateStamp(II)I
    .registers 3
    .param p0, "stamp_a"    # I
    .param p1, "stamp_b"    # I

    .prologue
    const/4 v0, 0x0

    .line 2600
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 2601
    :cond_5
    return v0

    .line 2603
    :cond_6
    if-le p0, p1, :cond_9

    .end local p0    # "stamp_a":I
    :goto_8
    return p0

    .restart local p0    # "stamp_a":I
    :cond_9
    move p0, p1

    goto :goto_8
.end method

.method private static appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V
    .registers 8
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "valid"    # Z
    .param p3, "value"    # J

    .prologue
    .line 3358
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3359
    if-eqz p2, :cond_f

    .line 3360
    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3364
    :goto_e
    return-void

    .line 3362
    :cond_f
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e
.end method

.method private compareTo(J)I
    .registers 6
    .param p1, "t"    # J

    .prologue
    .line 3404
    invoke-static {p0}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v0

    .line 3405
    .local v0, "thisTime":J
    cmp-long v2, v0, p1

    if-lez v2, :cond_a

    const/4 v2, 0x1

    :goto_9
    return v2

    :cond_a
    cmp-long v2, v0, p1

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_9

    :cond_10
    const/4 v2, -0x1

    goto :goto_9
.end method

.method private static createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 3
    .param p0, "zone"    # Ljava/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    .prologue
    .line 1684
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getAvailableCalendarTypes()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2622
    invoke-static {}, Ljava/util/Calendar$AvailableCalendarTypes;->-get0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .registers 2

    .prologue
    const-class v0, Ljava/util/Calendar;

    monitor-enter v0

    .line 1699
    :try_start_3
    invoke-static {}, Ljava/text/DateFormat;->getAvailableLocales()[Ljava/util/Locale;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;
    .registers 10
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2190
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v3

    .line 2191
    .local v3, "symbols":Ljava/text/DateFormatSymbols;
    invoke-direct {p0, p1, p2, v3}, Ljava/util/Calendar;->getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;

    move-result-object v2

    .line 2192
    .local v2, "strings":[Ljava/lang/String;
    if-eqz v2, :cond_2a

    .line 2193
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2194
    .local v1, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v4, v2

    if-ge v0, v4, :cond_29

    .line 2195
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1f

    .line 2194
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2198
    :cond_1f
    aget-object v4, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 2200
    :cond_29
    return-object v1

    .line 2202
    .end local v0    # "i":I
    .end local v1    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2a
    return-object v4
.end method

.method static getFieldName(I)Ljava/lang/String;
    .registers 2
    .param p0, "field"    # I

    .prologue
    .line 3321
    sget-object v0, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;
    .registers 8
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "symbols"    # Ljava/text/DateFormatSymbols;

    .prologue
    const/4 v3, 0x2

    .line 2225
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->getBaseStyle(I)I

    move-result v0

    .line 2228
    .local v0, "baseStyle":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_a

    .line 2229
    const/4 v2, 0x0

    return-object v2

    .line 2232
    :cond_a
    const/4 v1, 0x0

    .line 2233
    .local v1, "strings":[Ljava/lang/String;
    sparse-switch p1, :sswitch_data_32

    .line 2250
    .end local v1    # "strings":[Ljava/lang/String;
    :goto_e
    return-object v1

    .line 2235
    .restart local v1    # "strings":[Ljava/lang/String;
    :sswitch_f
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v1

    .local v1, "strings":[Ljava/lang/String;
    goto :goto_e

    .line 2239
    .local v1, "strings":[Ljava/lang/String;
    :sswitch_14
    if-ne v0, v3, :cond_1b

    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    .local v1, "strings":[Ljava/lang/String;
    goto :goto_e

    .local v1, "strings":[Ljava/lang/String;
    :cond_1b
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    .local v1, "strings":[Ljava/lang/String;
    goto :goto_e

    .line 2243
    .local v1, "strings":[Ljava/lang/String;
    :sswitch_20
    if-ne v0, v3, :cond_27

    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    .local v1, "strings":[Ljava/lang/String;
    goto :goto_e

    .local v1, "strings":[Ljava/lang/String;
    :cond_27
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    .local v1, "strings":[Ljava/lang/String;
    goto :goto_e

    .line 2247
    .local v1, "strings":[Ljava/lang/String;
    :sswitch_2c
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .local v1, "strings":[Ljava/lang/String;
    goto :goto_e

    .line 2233
    nop

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_f
        0x2 -> :sswitch_14
        0x7 -> :sswitch_20
        0x9 -> :sswitch_2c
    .end sparse-switch
.end method

.method public static getInstance()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 1625
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 2
    .param p0, "aLocale"    # Ljava/util/Locale;

    .prologue
    .line 1652
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .registers 2
    .param p0, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 1639
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 3
    .param p0, "zone"    # Ljava/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    .prologue
    .line 1667
    invoke-static {p0, p1}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getJapaneseImperialInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 3
    .param p0, "zone"    # Ljava/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    .prologue
    .line 1676
    new-instance v0, Ljava/util/JapaneseImperialCalendar;

    invoke-direct {v0, p0, p1}, Ljava/util/JapaneseImperialCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static getMillisOf(Ljava/util/Calendar;)J
    .registers 5
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 3409
    iget-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v1, :cond_7

    .line 3410
    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    return-wide v2

    .line 3412
    :cond_7
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 3413
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 3414
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private invalidateWeekFields()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 3458
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    aget v3, v3, v5

    if-eq v3, v6, :cond_10

    .line 3459
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    aget v3, v3, v4

    if-eq v3, v6, :cond_10

    .line 3460
    return-void

    .line 3466
    :cond_10
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 3467
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setLenient(Z)V

    .line 3468
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->clear(I)V

    .line 3469
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->clear(I)V

    .line 3471
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    aget v3, v3, v5

    if-ne v3, v6, :cond_33

    .line 3472
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 3473
    .local v1, "weekOfMonth":I
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aget v3, v3, v5

    if-eq v3, v1, :cond_33

    .line 3474
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aput v1, v3, v5

    .line 3478
    .end local v1    # "weekOfMonth":I
    :cond_33
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    aget v3, v3, v4

    if-ne v3, v6, :cond_47

    .line 3479
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 3480
    .local v2, "weekOfYear":I
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aget v3, v3, v4

    if-eq v3, v2, :cond_47

    .line 3481
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aput v2, v3, v4

    .line 3484
    .end local v2    # "weekOfYear":I
    :cond_47
    return-void
.end method

.method static isFieldSet(II)Z
    .registers 5
    .param p0, "fieldMask"    # I
    .param p1, "field"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2399
    shl-int v2, v0, p1

    and-int/2addr v2, p0

    if-eqz v2, :cond_8

    :goto_7
    return v0

    :cond_8
    move v0, v1

    goto :goto_7
.end method

.method private isNarrowFormatStyle(I)Z
    .registers 3
    .param p1, "style"    # I

    .prologue
    .line 2590
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private isNarrowStyle(I)Z
    .registers 4
    .param p1, "style"    # I

    .prologue
    const/4 v0, 0x1

    .line 2586
    const/4 v1, 0x4

    if-eq p1, v1, :cond_9

    const v1, 0x8004

    if-ne p1, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isStandaloneStyle(I)Z
    .registers 4
    .param p1, "style"    # I

    .prologue
    const/4 v0, 0x0

    .line 2582
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 11
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v8, 0x11

    .line 3536
    move-object v2, p1

    .line 3537
    .local v2, "input":Ljava/io/ObjectInputStream;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3539
    new-array v4, v8, [I

    iput-object v4, p0, Ljava/util/Calendar;->stamp:[I

    .line 3544
    iget v4, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    const/4 v7, 0x2

    if-lt v4, v7, :cond_4c

    .line 3546
    iput-boolean v5, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 3547
    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    if-nez v4, :cond_1b

    .line 3548
    new-array v4, v8, [I

    iput-object v4, p0, Ljava/util/Calendar;->fields:[I

    .line 3550
    :cond_1b
    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    if-nez v4, :cond_23

    .line 3551
    new-array v4, v8, [Z

    iput-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    .line 3561
    :cond_23
    iput v5, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    .line 3569
    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    instance-of v4, v4, Ljava/util/SimpleTimeZone;

    if-eqz v4, :cond_4b

    .line 3570
    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 3571
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 3572
    .local v3, "tz":Ljava/util/TimeZone;
    if-eqz v3, :cond_4b

    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 3573
    iput-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 3576
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "tz":Ljava/util/TimeZone;
    :cond_4b
    return-void

    .line 3554
    :cond_4c
    iget v4, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    if-ltz v4, :cond_23

    .line 3556
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_51
    if-ge v0, v8, :cond_23

    .line 3557
    iget-object v7, p0, Ljava/util/Calendar;->stamp:[I

    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_61

    move v4, v5

    :goto_5c
    aput v4, v7, v0

    .line 3556
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_61
    move v4, v6

    .line 3557
    goto :goto_5c
.end method

.method private setWeekCountData(Ljava/util/Locale;)V
    .registers 7
    .param p1, "desiredLocale"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3375
    sget-object v2, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3376
    .local v0, "data":[I
    if-nez v0, :cond_28

    .line 3377
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 3381
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 3382
    .local v1, "localeData":Llibcore/icu/LocaleData;
    iget-object v2, v1, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    .line 3383
    iget-object v2, v1, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v4

    .line 3385
    sget-object v2, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3387
    .end local v1    # "localeData":Llibcore/icu/LocaleData;
    :cond_28
    aget v2, v0, v3

    iput v2, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    .line 3388
    aget v2, v0, v4

    iput v2, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    .line 3389
    return-void
.end method

.method private toStandaloneStyle(I)I
    .registers 3
    .param p1, "style"    # I

    .prologue
    .line 2578
    const v0, 0x8000

    or-int/2addr v0, p1

    return v0
.end method

.method private updateTime()V
    .registers 2

    .prologue
    .line 3397
    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    .line 3400
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 3401
    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 3504
    :try_start_1
    iget-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v1, :cond_8

    .line 3506
    :try_start_5
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_8} :catch_d
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    .line 3513
    :cond_8
    :goto_8
    :try_start_8
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_f

    monitor-exit p0

    .line 3514
    return-void

    .line 3508
    :catch_d
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_8

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public abstract add(II)V
.end method

.method public after(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "when"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 2758
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_e

    .line 2759
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "when":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    .line 2758
    :cond_e
    return v0
.end method

.method public before(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "when"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 2737
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_e

    .line 2738
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "when":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gez v1, :cond_e

    const/4 v0, 0x1

    .line 2737
    :cond_e
    return v0
.end method

.method checkDisplayNameParams(IIIILjava/util/Locale;I)Z
    .registers 9
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "minStyle"    # I
    .param p4, "maxStyle"    # I
    .param p5, "locale"    # Ljava/util/Locale;
    .param p6, "fieldMask"    # I

    .prologue
    .line 2207
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->getBaseStyle(I)I

    move-result v0

    .line 2208
    .local v0, "baseStyle":I
    if-ltz p1, :cond_b

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    array-length v1, v1

    if-lt p1, v1, :cond_11

    .line 2210
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2209
    :cond_11
    if-lt v0, p3, :cond_b

    if-gt v0, p4, :cond_b

    .line 2214
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    .line 2215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2218
    :cond_1e
    if-nez p5, :cond_26

    .line 2219
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2221
    :cond_26
    invoke-static {p6, p1}, Ljava/util/Calendar;->isFieldSet(II)Z

    move-result v1

    return v1
.end method

.method public final clear()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1966
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v0, v2, :cond_17

    .line 1967
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aput v4, v3, v0

    aput v4, v2, v0

    .line 1968
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-boolean v4, v2, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 1970
    :cond_17
    iput-boolean v4, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v4, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 1971
    iput-boolean v4, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1972
    return-void
.end method

.method public final clear(I)V
    .registers 4
    .param p1, "field"    # I

    .prologue
    const/4 v1, 0x0

    .line 1997
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput v1, v0, p1

    .line 1998
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    aput v1, v0, p1

    .line 1999
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v1, v0, p1

    .line 2001
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2002
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 2003
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 7

    .prologue
    const/16 v5, 0x11

    .line 3286
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 3288
    .local v2, "other":Ljava/util/Calendar;
    const/16 v3, 0x11

    new-array v3, v3, [I

    iput-object v3, v2, Ljava/util/Calendar;->fields:[I

    .line 3289
    const/16 v3, 0x11

    new-array v3, v3, [Z

    iput-object v3, v2, Ljava/util/Calendar;->isSet:[Z

    .line 3290
    const/16 v3, 0x11

    new-array v3, v3, [I

    iput-object v3, v2, Ljava/util/Calendar;->stamp:[I

    .line 3291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    if-ge v1, v5, :cond_38

    .line 3292
    iget-object v3, v2, Ljava/util/Calendar;->fields:[I

    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    aget v4, v4, v1

    aput v4, v3, v1

    .line 3293
    iget-object v3, v2, Ljava/util/Calendar;->stamp:[I

    iget-object v4, p0, Ljava/util/Calendar;->stamp:[I

    aget v4, v4, v1

    aput v4, v3, v1

    .line 3294
    iget-object v3, v2, Ljava/util/Calendar;->isSet:[Z

    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v4, v4, v1

    aput-boolean v4, v3, v1

    .line 3291
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 3296
    :cond_38
    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TimeZone;

    iput-object v3, v2, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;
    :try_end_42
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_42} :catch_43

    .line 3297
    return-object v2

    .line 3299
    .end local v1    # "i":I
    .end local v2    # "other":Ljava/util/Calendar;
    :catch_43
    move-exception v0

    .line 3301
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 2762
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/Calendar;)I
    .registers 4
    .param p1, "anotherCalendar"    # Ljava/util/Calendar;

    .prologue
    .line 2783
    invoke-static {p1}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;->compareTo(J)I

    move-result v0

    return v0
.end method

.method protected complete()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2262
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_8

    .line 2263
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V

    .line 2265
    :cond_8
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    .line 2266
    :cond_12
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    .line 2267
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2269
    :cond_19
    return-void
.end method

.method protected abstract computeFields()V
.end method

.method protected abstract computeTime()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 2685
    if-ne p0, p1, :cond_5

    .line 2686
    const/4 v4, 0x1

    return v4

    .line 2689
    :cond_5
    :try_start_5
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    move-object v3, v0

    .line 2690
    .local v3, "that":Ljava/util/Calendar;
    invoke-static {v3}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Ljava/util/Calendar;->compareTo(J)I

    move-result v5

    if-nez v5, :cond_2d

    .line 2691
    iget-boolean v5, p0, Ljava/util/Calendar;->lenient:Z

    iget-boolean v6, v3, Ljava/util/Calendar;->lenient:Z

    if-ne v5, v6, :cond_2d

    .line 2692
    iget v5, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    iget v6, v3, Ljava/util/Calendar;->firstDayOfWeek:I

    if-ne v5, v6, :cond_2d

    .line 2693
    iget v5, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    iget v6, v3, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    if-ne v5, v6, :cond_2d

    .line 2694
    iget-object v5, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    iget-object v6, v3, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v5, v6}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2e

    move-result v4

    .line 2690
    :cond_2d
    return v4

    .line 2695
    .end local v3    # "that":Ljava/util/Calendar;
    :catch_2e
    move-exception v2

    .line 2700
    .local v2, "e":Ljava/lang/Exception;
    return v4
.end method

.method public get(I)I
    .registers 3
    .param p1, "field"    # I

    .prologue
    .line 1809
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1810
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->internalGet(I)I

    move-result v0

    return v0
.end method

.method public getActualMaximum(I)I
    .registers 8
    .param p1, "field"    # I

    .prologue
    .line 3240
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v1

    .line 3241
    .local v1, "fieldValue":I
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    .line 3244
    .local v0, "endValue":I
    if-ne v1, v0, :cond_b

    .line 3245
    return v1

    .line 3250
    :cond_b
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    .line 3251
    .local v3, "work":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setLenient(Z)V

    .line 3255
    const/4 v4, 0x3

    if-eq p1, v4, :cond_1b

    const/4 v4, 0x4

    if-ne p1, v4, :cond_21

    .line 3256
    :cond_1b
    iget v4, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    const/4 v5, 0x7

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 3262
    :cond_21
    move v2, v1

    .line 3265
    .local v2, "result":I
    :goto_22
    invoke-virtual {v3, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 3266
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v1, :cond_2c

    .line 3274
    :cond_2b
    return v2

    .line 3269
    :cond_2c
    move v2, v1

    .line 3270
    add-int/lit8 v1, v1, 0x1

    .line 3272
    if-gt v1, v0, :cond_2b

    goto :goto_22
.end method

.method public getActualMinimum(I)I
    .registers 7
    .param p1, "field"    # I

    .prologue
    .line 3186
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v1

    .line 3187
    .local v1, "fieldValue":I
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v0

    .line 3190
    .local v0, "endValue":I
    if-ne v1, v0, :cond_b

    .line 3191
    return v1

    .line 3196
    :cond_b
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    .line 3197
    .local v3, "work":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setLenient(Z)V

    .line 3202
    move v2, v1

    .line 3205
    .local v2, "result":I
    :goto_16
    invoke-virtual {v3, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 3206
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v1, :cond_20

    .line 3214
    :cond_1f
    return v2

    .line 3209
    :cond_20
    move v2, v1

    .line 3210
    add-int/lit8 v1, v1, -0x1

    .line 3212
    if-lt v1, v0, :cond_1f

    goto :goto_16
.end method

.method getBaseStyle(I)I
    .registers 3
    .param p1, "style"    # I

    .prologue
    .line 2574
    const v0, -0x8001

    and-int/2addr v0, p1

    return v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2657
    invoke-virtual {p0}, Ljava/util/Calendar;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .registers 16
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 2067
    if-nez p2, :cond_3

    .line 2068
    const/4 p2, 0x1

    .line 2071
    :cond_3
    const/4 v3, 0x1

    const/4 v4, 0x4

    .line 2072
    const/16 v6, 0x285

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 2071
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2073
    const/4 v0, 0x0

    return-object v0

    .line 2076
    :cond_13
    invoke-virtual {p0}, Ljava/util/Calendar;->getCalendarType()Ljava/lang/String;

    move-result-object v7

    .line 2077
    .local v7, "calendarType":Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 2079
    .local v8, "fieldValue":I
    invoke-direct {p0, p2}, Ljava/util/Calendar;->isStandaloneStyle(I)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct {p0, p2}, Ljava/util/Calendar;->isNarrowFormatStyle(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2080
    :cond_27
    invoke-static {v7, p1, v8, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 2084
    .local v11, "val":Ljava/lang/String;
    if-nez v11, :cond_3b

    .line 2085
    invoke-direct {p0, p2}, Ljava/util/Calendar;->isNarrowFormatStyle(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2088
    invoke-direct {p0, p2}, Ljava/util/Calendar;->toStandaloneStyle(I)I

    move-result v0

    .line 2086
    invoke-static {v7, p1, v8, v0, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 2097
    :cond_3b
    :goto_3b
    return-object v11

    .line 2090
    :cond_3c
    invoke-direct {p0, p2}, Ljava/util/Calendar;->isStandaloneStyle(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2093
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->getBaseStyle(I)I

    move-result v0

    .line 2091
    invoke-static {v7, p1, v8, v0, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3b

    .line 2100
    .end local v11    # "val":Ljava/lang/String;
    :cond_4b
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v10

    .line 2101
    .local v10, "symbols":Ljava/text/DateFormatSymbols;
    invoke-direct {p0, p1, p2, v10}, Ljava/util/Calendar;->getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;

    move-result-object v9

    .line 2102
    .local v9, "strings":[Ljava/lang/String;
    if-eqz v9, :cond_5b

    .line 2103
    array-length v0, v9

    if-ge v8, v0, :cond_5b

    .line 2104
    aget-object v0, v9, v8

    return-object v0

    .line 2107
    :cond_5b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;
    .registers 14
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 2160
    const/4 v4, 0x4

    .line 2161
    const/16 v6, 0x285

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 2160
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2162
    return-object v9

    .line 2165
    :cond_10
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 2167
    invoke-virtual {p0}, Ljava/util/Calendar;->getCalendarType()Ljava/lang/String;

    move-result-object v7

    .line 2168
    .local v7, "calendarType":Ljava/lang/String;
    if-eqz p2, :cond_25

    invoke-direct {p0, p2}, Ljava/util/Calendar;->isStandaloneStyle(I)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-direct {p0, p2}, Ljava/util/Calendar;->isNarrowFormatStyle(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2170
    :cond_25
    invoke-static {v7, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .line 2173
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v8, :cond_39

    .line 2174
    invoke-direct {p0, p2}, Ljava/util/Calendar;->isNarrowFormatStyle(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2176
    invoke-direct {p0, p2}, Ljava/util/Calendar;->toStandaloneStyle(I)I

    move-result v0

    .line 2175
    invoke-static {v7, p1, v0, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .line 2182
    :cond_39
    :goto_39
    return-object v8

    .line 2177
    :cond_3a
    if-eqz p2, :cond_39

    .line 2179
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->getBaseStyle(I)I

    move-result v0

    .line 2178
    invoke-static {v7, p1, v0, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    goto :goto_39

    .line 2186
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_45
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Calendar;->getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    .prologue
    .line 2959
    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    return v0
.end method

.method public abstract getGreatestMinimum(I)I
.end method

.method public abstract getLeastMaximum(I)I
.end method

.method public abstract getMaximum(I)I
.end method

.method public getMinimalDaysInFirstWeek()I
    .registers 2

    .prologue
    .line 2993
    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    return v0
.end method

.method public abstract getMinimum(I)I
.end method

.method final getSetStateFields()I
    .registers 4

    .prologue
    .line 2295
    const/4 v1, 0x0

    .line 2296
    .local v1, "mask":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v0, v2, :cond_13

    .line 2297
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    aget v2, v2, v0

    if-eqz v2, :cond_10

    .line 2298
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    .line 2296
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2301
    :cond_13
    return v1
.end method

.method public final getTime()Ljava/util/Date;
    .registers 5

    .prologue
    .line 1734
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimeInMillis()J
    .registers 3

    .prologue
    .line 1760
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_7

    .line 1761
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V

    .line 1763
    :cond_7
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .prologue
    .line 2882
    iget-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    if-eqz v0, :cond_11

    .line 2883
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    iput-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 2884
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 2886
    :cond_11
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getWeekYear()I
    .registers 2

    .prologue
    .line 3031
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWeeksInWeekYear()I
    .registers 2

    .prologue
    .line 3088
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getZone()Ljava/util/TimeZone;
    .registers 2

    .prologue
    .line 2893
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 2712
    iget-boolean v1, p0, Ljava/util/Calendar;->lenient:Z

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    .line 2713
    :goto_5
    iget v4, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    shl-int/lit8 v4, v4, 0x1

    .line 2712
    or-int/2addr v1, v4

    .line 2714
    iget v4, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    shl-int/lit8 v4, v4, 0x4

    .line 2712
    or-int/2addr v1, v4

    .line 2715
    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->hashCode()I

    move-result v4

    shl-int/lit8 v4, v4, 0x7

    .line 2712
    or-int v0, v1, v4

    .line 2716
    .local v0, "otheritems":I
    invoke-static {p0}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 2717
    .local v2, "t":J
    long-to-int v1, v2

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    xor-int/2addr v1, v4

    xor-int/2addr v1, v0

    return v1

    .line 2712
    .end local v0    # "otheritems":I
    .end local v2    # "t":J
    :cond_26
    const/4 v1, 0x0

    goto :goto_5
.end method

.method protected final internalGet(I)I
    .registers 3
    .param p1, "field"    # I

    .prologue
    .line 1823
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method final internalSet(II)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    .line 1840
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput p2, v0, p1

    .line 1841
    return-void
.end method

.method final isExternallySet(I)Z
    .registers 4
    .param p1, "field"    # I

    .prologue
    .line 2285
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    aget v0, v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method final isFullyNormalized()Z
    .registers 2

    .prologue
    .line 2384
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isLenient()Z
    .registers 2

    .prologue
    .line 2929
    iget-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    return v0
.end method

.method final isPartiallyNormalized()Z
    .registers 2

    .prologue
    .line 2376
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isSet(I)Z
    .registers 4
    .param p1, "field"    # I

    .prologue
    const/4 v0, 0x0

    .line 2016
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    aget v1, v1, p1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isWeekDateSupported()Z
    .registers 2

    .prologue
    .line 3009
    const/4 v0, 0x0

    return v0
.end method

.method public roll(II)V
    .registers 5
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .prologue
    const/4 v1, 0x0

    .line 2842
    :goto_1
    if-lez p2, :cond_a

    .line 2843
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->roll(IZ)V

    .line 2844
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 2846
    :cond_a
    :goto_a
    if-gez p2, :cond_12

    .line 2847
    invoke-virtual {p0, p1, v1}, Ljava/util/Calendar;->roll(IZ)V

    .line 2848
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 2850
    :cond_12
    return-void
.end method

.method public abstract roll(IZ)V
.end method

.method final selectFields()I
    .registers 15

    .prologue
    .line 2429
    const/4 v5, 0x2

    .line 2431
    .local v5, "fieldMask":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    if-eqz v11, :cond_9

    .line 2432
    const/4 v5, 0x3

    .line 2446
    :cond_9
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x7

    aget v2, v11, v12

    .line 2447
    .local v2, "dowStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x2

    aget v8, v11, v12

    .line 2448
    .local v8, "monthStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x5

    aget v1, v11, v12

    .line 2449
    .local v1, "domStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    invoke-static {v11, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v9

    .line 2450
    .local v9, "womStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    invoke-static {v11, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v3

    .line 2451
    .local v3, "dowimStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x6

    aget v4, v11, v12

    .line 2452
    .local v4, "doyStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-static {v11, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v10

    .line 2454
    .local v10, "woyStamp":I
    move v0, v1

    .line 2455
    .local v0, "bestStamp":I
    if-le v9, v1, :cond_3d

    .line 2456
    move v0, v9

    .line 2458
    :cond_3d
    if-le v3, v0, :cond_40

    .line 2459
    move v0, v3

    .line 2461
    :cond_40
    if-le v4, v0, :cond_43

    .line 2462
    move v0, v4

    .line 2464
    :cond_43
    if-le v10, v0, :cond_46

    .line 2465
    move v0, v10

    .line 2472
    :cond_46
    if-nez v0, :cond_68

    .line 2473
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x4

    aget v9, v11, v12

    .line 2474
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2475
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x3

    aget v10, v11, v12

    .line 2476
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2482
    if-nez v0, :cond_68

    .line 2483
    move v1, v8

    move v0, v8

    .line 2487
    :cond_68
    if-eq v0, v1, :cond_78

    .line 2488
    if-ne v0, v9, :cond_e7

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    if-lt v11, v12, :cond_e7

    .line 2490
    :cond_78
    or-int/lit8 v5, v5, 0x4

    .line 2491
    if-ne v0, v1, :cond_106

    .line 2492
    or-int/lit8 v5, v5, 0x20

    .line 2534
    :cond_7e
    :goto_7e
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xb

    aget v6, v11, v12

    .line 2535
    .local v6, "hourOfDayStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xa

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    invoke-static {v11, v12}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v7

    .line 2536
    .local v7, "hourStamp":I
    if-le v7, v6, :cond_167

    move v0, v7

    .line 2539
    :goto_97
    if-nez v0, :cond_a9

    .line 2540
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xa

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2544
    :cond_a9
    if-eqz v0, :cond_af

    .line 2545
    if-ne v0, v6, :cond_16a

    .line 2546
    or-int/lit16 v5, v5, 0x800

    .line 2554
    :cond_af
    :goto_af
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xc

    aget v11, v11, v12

    if-eqz v11, :cond_b9

    .line 2555
    or-int/lit16 v5, v5, 0x1000

    .line 2557
    :cond_b9
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xd

    aget v11, v11, v12

    if-eqz v11, :cond_c3

    .line 2558
    or-int/lit16 v5, v5, 0x2000

    .line 2560
    :cond_c3
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xe

    aget v11, v11, v12

    if-eqz v11, :cond_cd

    .line 2561
    or-int/lit16 v5, v5, 0x4000

    .line 2563
    :cond_cd
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xf

    aget v11, v11, v12

    const/4 v12, 0x2

    if-lt v11, v12, :cond_da

    .line 2564
    const v11, 0x8000

    or-int/2addr v5, v11

    .line 2566
    :cond_da
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x10

    aget v11, v11, v12

    const/4 v12, 0x2

    if-lt v11, v12, :cond_e6

    .line 2567
    const/high16 v11, 0x10000

    or-int/2addr v5, v11

    .line 2570
    :cond_e6
    return v5

    .line 2489
    .end local v6    # "hourOfDayStamp":I
    .end local v7    # "hourStamp":I
    :cond_e7
    if-ne v0, v3, :cond_f6

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    if-ge v11, v12, :cond_78

    .line 2518
    :cond_f6
    sget-boolean v11, Ljava/util/Calendar;->-assertionsDisabled:Z

    if-nez v11, :cond_14d

    if-eq v0, v4, :cond_14d

    if-eq v0, v10, :cond_14d

    .line 2519
    if-eqz v0, :cond_14d

    .line 2518
    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 2494
    :cond_106
    sget-boolean v11, Ljava/util/Calendar;->-assertionsDisabled:Z

    if-nez v11, :cond_114

    if-eq v0, v9, :cond_114

    if-eq v0, v3, :cond_114

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 2495
    :cond_114
    if-eqz v2, :cond_118

    .line 2496
    or-int/lit16 v5, v5, 0x80

    .line 2498
    :cond_118
    if-ne v9, v3, :cond_12f

    .line 2501
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    if-lt v11, v12, :cond_12b

    .line 2502
    or-int/lit8 v5, v5, 0x10

    goto/16 :goto_7e

    .line 2504
    :cond_12b
    or-int/lit16 v5, v5, 0x100

    goto/16 :goto_7e

    .line 2507
    :cond_12f
    if-ne v0, v9, :cond_135

    .line 2508
    or-int/lit8 v5, v5, 0x10

    goto/16 :goto_7e

    .line 2510
    :cond_135
    sget-boolean v11, Ljava/util/Calendar;->-assertionsDisabled:Z

    if-nez v11, :cond_141

    if-eq v0, v3, :cond_141

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 2511
    :cond_141
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    if-eqz v11, :cond_7e

    .line 2512
    or-int/lit16 v5, v5, 0x100

    goto/16 :goto_7e

    .line 2520
    :cond_14d
    if-ne v0, v4, :cond_153

    .line 2521
    or-int/lit8 v5, v5, 0x40

    goto/16 :goto_7e

    .line 2523
    :cond_153
    sget-boolean v11, Ljava/util/Calendar;->-assertionsDisabled:Z

    if-nez v11, :cond_15f

    if-eq v0, v10, :cond_15f

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 2524
    :cond_15f
    if-eqz v2, :cond_163

    .line 2525
    or-int/lit16 v5, v5, 0x80

    .line 2527
    :cond_163
    or-int/lit8 v5, v5, 0x8

    goto/16 :goto_7e

    .line 2536
    .restart local v6    # "hourOfDayStamp":I
    .restart local v7    # "hourStamp":I
    :cond_167
    move v0, v6

    goto/16 :goto_97

    .line 2548
    :cond_16a
    or-int/lit16 v5, v5, 0x400

    .line 2549
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x9

    aget v11, v11, v12

    if-eqz v11, :cond_af

    .line 2550
    or-int/lit16 v5, v5, 0x200

    goto/16 :goto_af
.end method

.method public set(II)V
    .registers 6
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 1861
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    .line 1862
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    .line 1864
    :cond_e
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->internalSet(II)V

    .line 1865
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1866
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1867
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1868
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    iget v1, p0, Ljava/util/Calendar;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Calendar;->nextStamp:I

    aput v1, v0, p1

    .line 1869
    iget v0, p0, Ljava/util/Calendar;->nextStamp:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2e

    .line 1870
    invoke-direct {p0}, Ljava/util/Calendar;->adjustStamp()V

    .line 1872
    :cond_2e
    return-void
.end method

.method public final set(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .prologue
    .line 1890
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1891
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 1892
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 1893
    return-void
.end method

.method public final set(IIIII)V
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .prologue
    .line 1914
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1915
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 1916
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 1917
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    .line 1918
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    .line 1919
    return-void
.end method

.method public final set(IIIIII)V
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .prologue
    .line 1942
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1943
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 1944
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 1945
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    .line 1946
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    .line 1947
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Ljava/util/Calendar;->set(II)V

    .line 1948
    return-void
.end method

.method final setFieldsComputed(I)V
    .registers 5
    .param p1, "fieldMask"    # I

    .prologue
    const/4 v2, 0x1

    .line 2318
    const v1, 0x1ffff

    if-ne p1, v1, :cond_1c

    .line 2319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 2320
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    aput v2, v1, v0

    .line 2321
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v2, v1, v0

    .line 2319
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2323
    :cond_17
    iput-boolean v2, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 2337
    :cond_1b
    return-void

    .line 2325
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1d
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 2326
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v2, :cond_33

    .line 2327
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    aput v2, v1, v0

    .line 2328
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v2, v1, v0

    .line 2334
    :cond_2e
    :goto_2e
    ushr-int/lit8 p1, p1, 0x1

    .line 2325
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 2330
    :cond_33
    iget-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v1, v1, v0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2e

    .line 2331
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    goto :goto_2e
.end method

.method final setFieldsNormalized(I)V
    .registers 6
    .param p1, "fieldMask"    # I

    .prologue
    const/4 v3, 0x0

    .line 2355
    const v1, 0x1ffff

    if-eq p1, v1, :cond_21

    .line 2356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 2357
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_1c

    .line 2358
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    aput v3, v2, v0

    aput v3, v1, v0

    .line 2359
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v3, v1, v0

    .line 2361
    :cond_1c
    shr-int/lit8 p1, p1, 0x1

    .line 2356
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2367
    .end local v0    # "i":I
    :cond_21
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 2368
    iput-boolean v3, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2369
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2942
    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    if-ne v0, p1, :cond_5

    .line 2943
    return-void

    .line 2945
    :cond_5
    iput p1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    .line 2946
    invoke-direct {p0}, Ljava/util/Calendar;->invalidateWeekFields()V

    .line 2947
    return-void
.end method

.method public setLenient(Z)V
    .registers 2
    .param p1, "lenient"    # Z

    .prologue
    .line 2917
    iput-boolean p1, p0, Ljava/util/Calendar;->lenient:Z

    .line 2918
    return-void
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2974
    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    if-ne v0, p1, :cond_5

    .line 2975
    return-void

    .line 2977
    :cond_5
    iput p1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    .line 2978
    invoke-direct {p0}, Ljava/util/Calendar;->invalidateWeekFields()V

    .line 2979
    return-void
.end method

.method public final setTime(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 1749
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1750
    return-void
.end method

.method public setTimeInMillis(J)V
    .registers 6
    .param p1, "millis"    # J

    .prologue
    const/4 v2, 0x1

    .line 1779
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_14

    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v0, :cond_14

    .line 1782
    return-void

    .line 1784
    :cond_14
    iput-wide p1, p0, Ljava/util/Calendar;->time:J

    .line 1785
    iput-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1786
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1787
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    .line 1788
    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v2, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 1789
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "value"    # Ljava/util/TimeZone;

    .prologue
    const/4 v0, 0x0

    .line 2859
    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 2860
    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 2870
    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2871
    return-void
.end method

.method final setUnnormalized()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2391
    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 2392
    return-void
.end method

.method public setWeekDate(III)V
    .registers 5
    .param p1, "weekYear"    # I
    .param p2, "weekOfYear"    # I
    .param p3, "dayOfWeek"    # I

    .prologue
    .line 3067
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method setZoneShared(Z)V
    .registers 2
    .param p1, "shared"    # Z

    .prologue
    .line 2900
    iput-boolean p1, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 2901
    return-void
.end method

.method public final toInstant()Ljava/time/Instant;
    .registers 3

    .prologue
    .line 3588
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 3338
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x320

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3339
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Calendar;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3340
    const-string/jumbo v2, "time"

    iget-boolean v3, p0, Ljava/util/Calendar;->isTimeSet:Z

    iget-wide v4, p0, Ljava/util/Calendar;->time:J

    invoke-static {v0, v2, v3, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 3341
    const-string/jumbo v2, ",areFieldsSet="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3342
    const-string/jumbo v2, ",areAllFieldsSet="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3343
    const-string/jumbo v2, ",lenient="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->lenient:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3344
    const-string/jumbo v2, ",zone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3345
    const-string/jumbo v2, ",firstDayOfWeek"

    iget v3, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    int-to-long v4, v3

    invoke-static {v0, v2, v6, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 3346
    const-string/jumbo v2, ",minimalDaysInFirstWeek"

    iget v3, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    int-to-long v4, v3

    invoke-static {v0, v2, v6, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 3347
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_66
    const/16 v2, 0x11

    if-ge v1, v2, :cond_82

    .line 3348
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3349
    sget-object v2, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->isSet(I)Z

    move-result v3

    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-static {v0, v2, v3, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 3347
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 3351
    :cond_82
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
