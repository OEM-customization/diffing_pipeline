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
        Ljava/util/Calendar$CalendarAccessControlContext;,
        Ljava/util/Calendar$AvailableCalendarTypes;,
        Ljava/util/Calendar$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final greylist-max-o ALL_FIELDS:I = 0x1ffff

.field public static final whitelist core-platform-api test-api ALL_STYLES:I = 0x0

.field public static final whitelist core-platform-api test-api AM:I = 0x0

.field public static final whitelist core-platform-api test-api AM_PM:I = 0x9

.field static final greylist-max-o AM_PM_MASK:I = 0x200

.field public static final whitelist core-platform-api test-api APRIL:I = 0x3

.field public static final whitelist core-platform-api test-api AUGUST:I = 0x7

.field private static final greylist-max-o COMPUTED:I = 0x1

.field public static final whitelist core-platform-api test-api DATE:I = 0x5

.field static final greylist-max-o DATE_MASK:I = 0x20

.field public static final whitelist core-platform-api test-api DAY_OF_MONTH:I = 0x5

.field static final greylist-max-o DAY_OF_MONTH_MASK:I = 0x20

.field public static final whitelist core-platform-api test-api DAY_OF_WEEK:I = 0x7

.field public static final whitelist core-platform-api test-api DAY_OF_WEEK_IN_MONTH:I = 0x8

.field static final greylist-max-o DAY_OF_WEEK_IN_MONTH_MASK:I = 0x100

.field static final greylist-max-o DAY_OF_WEEK_MASK:I = 0x80

.field public static final whitelist core-platform-api test-api DAY_OF_YEAR:I = 0x6

.field static final greylist-max-o DAY_OF_YEAR_MASK:I = 0x40

.field public static final whitelist core-platform-api test-api DECEMBER:I = 0xb

.field public static final whitelist core-platform-api test-api DST_OFFSET:I = 0x10

.field static final greylist-max-o DST_OFFSET_MASK:I = 0x10000

.field public static final whitelist core-platform-api test-api ERA:I = 0x0

.field static final greylist-max-o ERA_MASK:I = 0x1

.field public static final whitelist core-platform-api test-api FEBRUARY:I = 0x1

.field public static final whitelist core-platform-api test-api FIELD_COUNT:I = 0x11

.field private static final greylist-max-o FIELD_NAME:[Ljava/lang/String;

.field public static final whitelist core-platform-api test-api FRIDAY:I = 0x6

.field public static final whitelist core-platform-api test-api HOUR:I = 0xa

.field static final greylist-max-o HOUR_MASK:I = 0x400

.field public static final whitelist core-platform-api test-api HOUR_OF_DAY:I = 0xb

.field static final greylist-max-o HOUR_OF_DAY_MASK:I = 0x800

.field public static final whitelist core-platform-api test-api JANUARY:I = 0x0

.field public static final whitelist core-platform-api test-api JULY:I = 0x6

.field public static final whitelist core-platform-api test-api JUNE:I = 0x5

.field public static final whitelist core-platform-api test-api LONG:I = 0x2

.field public static final whitelist core-platform-api test-api LONG_FORMAT:I = 0x2

.field public static final whitelist core-platform-api test-api LONG_STANDALONE:I = 0x8002

.field public static final whitelist core-platform-api test-api MARCH:I = 0x2

.field public static final whitelist core-platform-api test-api MAY:I = 0x4

.field public static final whitelist core-platform-api test-api MILLISECOND:I = 0xe

.field static final greylist-max-o MILLISECOND_MASK:I = 0x4000

.field private static final greylist-max-o MINIMUM_USER_STAMP:I = 0x2

.field public static final whitelist core-platform-api test-api MINUTE:I = 0xc

.field static final greylist-max-o MINUTE_MASK:I = 0x1000

.field public static final whitelist core-platform-api test-api MONDAY:I = 0x2

.field public static final whitelist core-platform-api test-api MONTH:I = 0x2

.field static final greylist-max-o MONTH_MASK:I = 0x4

.field public static final whitelist core-platform-api test-api NARROW_FORMAT:I = 0x4

.field public static final whitelist core-platform-api test-api NARROW_STANDALONE:I = 0x8004

.field public static final whitelist core-platform-api test-api NOVEMBER:I = 0xa

.field public static final whitelist core-platform-api test-api OCTOBER:I = 0x9

.field public static final whitelist core-platform-api test-api PM:I = 0x1

.field public static final whitelist core-platform-api test-api SATURDAY:I = 0x7

.field public static final whitelist core-platform-api test-api SECOND:I = 0xd

.field static final greylist-max-o SECOND_MASK:I = 0x2000

.field public static final whitelist core-platform-api test-api SEPTEMBER:I = 0x8

.field public static final whitelist core-platform-api test-api SHORT:I = 0x1

.field public static final whitelist core-platform-api test-api SHORT_FORMAT:I = 0x1

.field public static final whitelist core-platform-api test-api SHORT_STANDALONE:I = 0x8001

.field static final greylist-max-o STANDALONE_MASK:I = 0x8000

.field public static final whitelist core-platform-api test-api SUNDAY:I = 0x1

.field public static final whitelist core-platform-api test-api THURSDAY:I = 0x5

.field public static final whitelist core-platform-api test-api TUESDAY:I = 0x3

.field public static final whitelist core-platform-api test-api UNDECIMBER:I = 0xc

.field private static final greylist-max-o UNSET:I = 0x0

.field public static final whitelist core-platform-api test-api WEDNESDAY:I = 0x4

.field public static final whitelist core-platform-api test-api WEEK_OF_MONTH:I = 0x4

.field static final greylist-max-o WEEK_OF_MONTH_MASK:I = 0x10

.field public static final whitelist core-platform-api test-api WEEK_OF_YEAR:I = 0x3

.field static final greylist-max-o WEEK_OF_YEAR_MASK:I = 0x8

.field public static final whitelist core-platform-api test-api YEAR:I = 0x1

.field static final greylist-max-o YEAR_MASK:I = 0x2

.field public static final whitelist core-platform-api test-api ZONE_OFFSET:I = 0xf

.field static final greylist-max-o ZONE_OFFSET_MASK:I = 0x8000

.field private static final greylist-max-o cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "[I>;"
        }
    .end annotation
.end field

.field static final greylist-max-o currentSerialVersion:I = 0x1

.field static final whitelist serialVersionUID:J = -0x1915b2e13723a472L


# instance fields
.field transient greylist-max-o areAllFieldsSet:Z

.field protected whitelist core-platform-api test-api areFieldsSet:Z

.field protected whitelist core-platform-api test-api fields:[I

.field private greylist-max-o firstDayOfWeek:I

.field protected whitelist core-platform-api test-api isSet:[Z

.field protected whitelist core-platform-api test-api isTimeSet:Z

.field private greylist-max-o lenient:Z

.field private greylist-max-o minimalDaysInFirstWeek:I

.field private greylist-max-o nextStamp:I

.field private greylist-max-o serialVersionOnStream:I

.field private transient greylist-max-o sharedZone:Z

.field private transient greylist-max-o stamp:[I

.field protected whitelist core-platform-api test-api time:J

.field private greylist zone:Ljava/util/TimeZone;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 19

    .line 307
    nop

    .line 928
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    .line 3310
    const-string v2, "ERA"

    const-string v3, "YEAR"

    const-string v4, "MONTH"

    const-string v5, "WEEK_OF_YEAR"

    const-string v6, "WEEK_OF_MONTH"

    const-string v7, "DAY_OF_MONTH"

    const-string v8, "DAY_OF_YEAR"

    const-string v9, "DAY_OF_WEEK"

    const-string v10, "DAY_OF_WEEK_IN_MONTH"

    const-string v11, "AM_PM"

    const-string v12, "HOUR"

    const-string v13, "HOUR_OF_DAY"

    const-string v14, "MINUTE"

    const-string v15, "SECOND"

    const-string v16, "MILLISECOND"

    const-string v17, "ZONE_OFFSET"

    const-string v18, "DST_OFFSET"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    return-void
.end method

.method protected constructor whitelist core-platform-api test-api <init>()V
    .registers 3

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

.method protected constructor whitelist core-platform-api test-api <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 1597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    .line 908
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 961
    const/4 v1, 0x2

    iput v1, p0, Ljava/util/Calendar;->nextStamp:I

    .line 993
    iput v0, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    .line 1603
    if-nez p2, :cond_14

    .line 1604
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 1607
    :cond_14
    const/16 v0, 0x11

    new-array v1, v0, [I

    iput-object v1, p0, Ljava/util/Calendar;->fields:[I

    .line 1608
    new-array v1, v0, [Z

    iput-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    .line 1609
    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/Calendar;->stamp:[I

    .line 1611
    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 1612
    invoke-direct {p0, p2}, Ljava/util/Calendar;->setWeekCountData(Ljava/util/Locale;)V

    .line 1613
    return-void
.end method

.method private greylist-max-o adjustStamp()V
    .registers 7

    .line 3428
    const/4 v0, 0x2

    .line 3429
    .local v0, "max":I
    const/4 v1, 0x2

    .line 3432
    .local v1, "newStamp":I
    :goto_2
    const v2, 0x7fffffff

    .line 3433
    .local v2, "min":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    iget-object v4, p0, Ljava/util/Calendar;->stamp:[I

    array-length v5, v4

    if-ge v3, v5, :cond_18

    .line 3434
    aget v4, v4, v3

    .line 3435
    .local v4, "v":I
    if-lt v4, v1, :cond_12

    if-le v2, v4, :cond_12

    .line 3436
    move v2, v4

    .line 3438
    :cond_12
    if-ge v0, v4, :cond_15

    .line 3439
    move v0, v4

    .line 3433
    .end local v4    # "v":I
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3442
    .end local v3    # "i":I
    :cond_18
    if-eq v0, v2, :cond_20

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_20

    .line 3443
    goto :goto_34

    .line 3445
    :cond_20
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_21
    iget-object v4, p0, Ljava/util/Calendar;->stamp:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2f

    .line 3446
    aget v5, v4, v3

    if-ne v5, v2, :cond_2c

    .line 3447
    aput v1, v4, v3

    .line 3445
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 3450
    .end local v3    # "i":I
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    .line 3451
    if-ne v2, v0, :cond_37

    .line 3452
    nop

    .line 3455
    .end local v2    # "min":I
    :goto_34
    iput v1, p0, Ljava/util/Calendar;->nextStamp:I

    .line 3456
    return-void

    .line 3454
    :cond_37
    goto :goto_2
.end method

.method private static greylist-max-o aggregateStamp(II)I
    .registers 3
    .param p0, "stamp_a"    # I
    .param p1, "stamp_b"    # I

    .line 2605
    if-eqz p0, :cond_b

    if-nez p1, :cond_5

    goto :goto_b

    .line 2608
    :cond_5
    if-le p0, p1, :cond_9

    move v0, p0

    goto :goto_a

    :cond_9
    move v0, p1

    :goto_a
    return v0

    .line 2606
    :cond_b
    :goto_b
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V
    .registers 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "valid"    # Z
    .param p3, "value"    # J

    .line 3363
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3364
    if-eqz p2, :cond_e

    .line 3365
    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 3367
    :cond_e
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3369
    :goto_13
    return-void
.end method

.method private greylist-max-o compareTo(J)I
    .registers 6
    .param p1, "t"    # J

    .line 3410
    invoke-static {p0}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v0

    .line 3411
    .local v0, "thisTime":J
    cmp-long v2, v0, p1

    if-lez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_11

    :cond_a
    cmp-long v2, v0, p1

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_11

    :cond_10
    const/4 v2, -0x1

    :goto_11
    return v2
.end method

.method private static greylist-max-o createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 3
    .param p0, "zone"    # Ljava/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 1684
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api getAvailableCalendarTypes()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2627
    # getter for: Ljava/util/Calendar$AvailableCalendarTypes;->SET:Ljava/util/Set;
    invoke-static {}, Ljava/util/Calendar$AvailableCalendarTypes;->access$000()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized whitelist core-platform-api test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 2

    const-class v0, Ljava/util/Calendar;

    monitor-enter v0

    .line 1699
    :try_start_3
    invoke-static {}, Ljava/text/DateFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object v1

    .line 1699
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private greylist-max-o getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;
    .registers 10
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2190
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 2191
    .local v0, "symbols":Ljava/text/DateFormatSymbols;
    invoke-direct {p0, p1, p2, v0}, Ljava/util/Calendar;->getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;

    move-result-object v1

    .line 2192
    .local v1, "strings":[Ljava/lang/String;
    if-eqz v1, :cond_29

    .line 2193
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2194
    .local v2, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, v1

    if-ge v3, v4, :cond_28

    .line 2195
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1c

    .line 2196
    goto :goto_25

    .line 2198
    :cond_1c
    aget-object v4, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2194
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2200
    .end local v3    # "i":I
    :cond_28
    return-object v2

    .line 2202
    .end local v2    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_29
    const/4 v2, 0x0

    return-object v2
.end method

.method static greylist-max-o getFieldName(I)Ljava/lang/String;
    .registers 2
    .param p0, "field"    # I

    .line 3326
    sget-object v0, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private greylist-max-o getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;
    .registers 8
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "symbols"    # Ljava/text/DateFormatSymbols;

    .line 2225
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->getBaseStyle(I)I

    move-result v0

    .line 2228
    .local v0, "baseStyle":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 2229
    const/4 v1, 0x0

    return-object v1

    .line 2232
    :cond_9
    const/4 v1, 0x0

    .line 2233
    .local v1, "strings":[Ljava/lang/String;
    if-eqz p1, :cond_36

    const/4 v2, 0x2

    if-eq p1, v2, :cond_29

    const/4 v3, 0x7

    if-eq p1, v3, :cond_1c

    const/16 v2, 0x9

    if-eq p1, v2, :cond_17

    goto :goto_3b

    .line 2247
    :cond_17
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 2243
    :cond_1c
    if-ne v0, v2, :cond_23

    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    :cond_23
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v2

    :goto_27
    move-object v1, v2

    .line 2244
    goto :goto_3b

    .line 2239
    :cond_29
    if-ne v0, v2, :cond_30

    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v2

    goto :goto_34

    :cond_30
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v2

    :goto_34
    move-object v1, v2

    .line 2240
    goto :goto_3b

    .line 2235
    :cond_36
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v1

    .line 2236
    nop

    .line 2250
    :goto_3b
    return-object v1
.end method

.method public static whitelist core-platform-api test-api getInstance()Ljava/util/Calendar;
    .registers 2

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

.method public static whitelist core-platform-api test-api getInstance(Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 2
    .param p0, "aLocale"    # Ljava/util/Locale;

    .line 1652
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .registers 2
    .param p0, "zone"    # Ljava/util/TimeZone;

    .line 1639
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 3
    .param p0, "zone"    # Ljava/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 1667
    invoke-static {p0, p1}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getJapaneseImperialInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 3
    .param p0, "zone"    # Ljava/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 1676
    new-instance v0, Ljava/util/JapaneseImperialCalendar;

    invoke-direct {v0, p0, p1}, Ljava/util/JapaneseImperialCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static greylist-max-o getMillisOf(Ljava/util/Calendar;)J
    .registers 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 3415
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v0, :cond_7

    .line 3416
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    return-wide v0

    .line 3418
    :cond_7
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 3419
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 3420
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private greylist-max-o invalidateWeekFields()V
    .registers 8

    .line 3464
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v1, 0x4

    aget v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v2, v3, :cond_e

    aget v0, v0, v4

    if-eq v0, v3, :cond_e

    .line 3466
    return-void

    .line 3472
    :cond_e
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 3473
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 3474
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 3475
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->clear(I)V

    .line 3477
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    aget v2, v2, v1

    if-ne v2, v3, :cond_2f

    .line 3478
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 3479
    .local v2, "weekOfMonth":I
    iget-object v5, p0, Ljava/util/Calendar;->fields:[I

    aget v6, v5, v1

    if-eq v6, v2, :cond_2f

    .line 3480
    aput v2, v5, v1

    .line 3484
    .end local v2    # "weekOfMonth":I
    :cond_2f
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    aget v1, v1, v4

    if-ne v1, v3, :cond_41

    .line 3485
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 3486
    .local v1, "weekOfYear":I
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    aget v3, v2, v4

    if-eq v3, v1, :cond_41

    .line 3487
    aput v1, v2, v4

    .line 3490
    .end local v1    # "weekOfYear":I
    :cond_41
    return-void
.end method

.method static greylist-max-o isFieldSet(II)Z
    .registers 4
    .param p0, "fieldMask"    # I
    .param p1, "field"    # I

    .line 2399
    const/4 v0, 0x1

    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private greylist-max-o isNarrowFormatStyle(I)Z
    .registers 3
    .param p1, "style"    # I

    .line 2595
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private greylist-max-o isNarrowStyle(I)Z
    .registers 3
    .param p1, "style"    # I

    .line 2591
    const/4 v0, 0x4

    if-eq p1, v0, :cond_b

    const v0, 0x8004

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private greylist-max-o isStandaloneStyle(I)Z
    .registers 3
    .param p1, "style"    # I

    .line 2587
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 3542
    move-object v0, p1

    .line 3543
    .local v0, "input":Ljava/io/ObjectInputStream;
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3545
    const/16 v1, 0x11

    new-array v2, v1, [I

    iput-object v2, p0, Ljava/util/Calendar;->stamp:[I

    .line 3550
    iget v2, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-lt v2, v4, :cond_23

    .line 3552
    iput-boolean v3, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 3553
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    if-nez v2, :cond_1a

    .line 3554
    new-array v2, v1, [I

    iput-object v2, p0, Ljava/util/Calendar;->fields:[I

    .line 3556
    :cond_1a
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    if-nez v2, :cond_33

    .line 3557
    new-array v1, v1, [Z

    iput-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    goto :goto_33

    .line 3560
    :cond_23
    if-ltz v2, :cond_33

    .line 3562
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, v1, :cond_33

    .line 3563
    iget-object v4, p0, Ljava/util/Calendar;->stamp:[I

    iget-object v5, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v5, v5, v2

    aput v5, v4, v2

    .line 3562
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 3567
    .end local v2    # "i":I
    :cond_33
    :goto_33
    iput v3, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    .line 3575
    iget-object v1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    instance-of v2, v1, Ljava/util/SimpleTimeZone;

    if-eqz v2, :cond_59

    .line 3576
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 3577
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 3578
    .local v2, "tz":Ljava/util/TimeZone;
    if-eqz v2, :cond_59

    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 3579
    iput-object v2, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 3582
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "tz":Ljava/util/TimeZone;
    :cond_59
    return-void
.end method

.method private greylist-max-o setWeekCountData(Ljava/util/Locale;)V
    .registers 7
    .param p1, "desiredLocale"    # Ljava/util/Locale;

    .line 3379
    invoke-static {p1}, Llibcore/icu/LocaleData;->getCompatibleLocaleForBug159514442(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p1

    .line 3381
    sget-object v0, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3382
    .local v0, "data":[I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2c

    .line 3383
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 3387
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v3

    .line 3388
    .local v3, "localeData":Llibcore/icu/LocaleData;
    iget-object v4, v3, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 3389
    iget-object v4, v3, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v1

    .line 3391
    sget-object v4, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3393
    .end local v3    # "localeData":Llibcore/icu/LocaleData;
    :cond_2c
    aget v2, v0, v2

    iput v2, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    .line 3394
    aget v1, v0, v1

    iput v1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    .line 3395
    return-void
.end method

.method public static greylist-max-o toStandaloneStyle(I)I
    .registers 2
    .param p0, "style"    # I

    .line 2583
    const v0, 0x8000

    or-int/2addr v0, p0

    return v0
.end method

.method private greylist-max-o updateTime()V
    .registers 2

    .line 3403
    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    .line 3406
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 3407
    return-void
.end method

.method private declared-synchronized whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 3510
    :try_start_1
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_a

    .line 3512
    :try_start_5
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    .line 3514
    goto :goto_a

    .end local p0    # "this":Ljava/util/Calendar;
    :catch_9
    move-exception v0

    .line 3519
    :cond_a
    :goto_a
    :try_start_a
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 3520
    monitor-exit p0

    return-void

    .line 3509
    .end local p1    # "stream":Ljava/io/ObjectOutputStream;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public abstract whitelist core-platform-api test-api add(II)V
.end method

.method public whitelist core-platform-api test-api after(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "when"    # Ljava/lang/Object;

    .line 2763
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    .line 2764
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 2763
    :goto_10
    return v0
.end method

.method public whitelist core-platform-api test-api before(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "when"    # Ljava/lang/Object;

    .line 2742
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    .line 2743
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 2742
    :goto_10
    return v0
.end method

.method greylist-max-o checkDisplayNameParams(IIIILjava/util/Locale;I)Z
    .registers 9
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "minStyle"    # I
    .param p4, "maxStyle"    # I
    .param p5, "locale"    # Ljava/util/Locale;
    .param p6, "fieldMask"    # I

    .line 2207
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->getBaseStyle(I)I

    move-result v0

    .line 2208
    .local v0, "baseStyle":I
    if-ltz p1, :cond_21

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge p1, v1, :cond_21

    if-lt v0, p3, :cond_21

    if-gt v0, p4, :cond_21

    .line 2214
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1b

    .line 2218
    if-eqz p5, :cond_19

    .line 2221
    invoke-static {p6, p1}, Ljava/util/Calendar;->isFieldSet(II)Z

    move-result v1

    return v1

    .line 2219
    :cond_19
    const/4 v1, 0x0

    throw v1

    .line 2215
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2210
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public final whitelist core-platform-api test-api clear()V
    .registers 5

    .line 1966
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_15

    .line 1967
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    aput v3, v1, v0

    aput v3, v2, v0

    .line 1968
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    aput-boolean v3, v1, v0

    move v0, v2

    goto :goto_1

    .line 1970
    .end local v2    # "i":I
    :cond_15
    iput-boolean v3, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v3, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 1971
    iput-boolean v3, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1972
    return-void
.end method

.method public final whitelist core-platform-api test-api clear(I)V
    .registers 4
    .param p1, "field"    # I

    .line 1997
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    const/4 v1, 0x0

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

.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 6

    .line 3291
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 3293
    .local v0, "other":Ljava/util/Calendar;
    const/16 v1, 0x11

    new-array v2, v1, [I

    iput-object v2, v0, Ljava/util/Calendar;->fields:[I

    .line 3294
    new-array v2, v1, [Z

    iput-object v2, v0, Ljava/util/Calendar;->isSet:[Z

    .line 3295
    new-array v2, v1, [I

    iput-object v2, v0, Ljava/util/Calendar;->stamp:[I

    .line 3296
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_32

    .line 3297
    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    aget v4, v4, v2

    aput v4, v3, v2

    .line 3298
    iget-object v3, v0, Ljava/util/Calendar;->stamp:[I

    iget-object v4, p0, Ljava/util/Calendar;->stamp:[I

    aget v4, v4, v2

    aput v4, v3, v2

    .line 3299
    iget-object v3, v0, Ljava/util/Calendar;->isSet:[Z

    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v4, v4, v2

    aput-boolean v4, v3, v2

    .line 3296
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 3301
    .end local v2    # "i":I
    :cond_32
    iget-object v1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    iput-object v1, v0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;
    :try_end_3c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 3302
    return-object v0

    .line 3304
    .end local v0    # "other":Ljava/util/Calendar;
    :catch_3d
    move-exception v0

    .line 3306
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic whitelist core-platform-api test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 307
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    return p1
.end method

.method public whitelist core-platform-api test-api compareTo(Ljava/util/Calendar;)I
    .registers 4
    .param p1, "anotherCalendar"    # Ljava/util/Calendar;

    .line 2788
    invoke-static {p1}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;->compareTo(J)I

    move-result v0

    return v0
.end method

.method protected whitelist core-platform-api test-api complete()V
    .registers 2

    .line 2262
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_7

    .line 2263
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V

    .line 2265
    :cond_7
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-nez v0, :cond_17

    .line 2266
    :cond_f
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    .line 2267
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2269
    :cond_17
    return-void
.end method

.method protected abstract whitelist core-platform-api test-api computeFields()V
.end method

.method protected abstract whitelist core-platform-api test-api computeTime()V
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2690
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2691
    return v0

    .line 2694
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    move-object v2, p1

    check-cast v2, Ljava/util/Calendar;

    .line 2695
    .local v2, "that":Ljava/util/Calendar;
    invoke-static {v2}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Ljava/util/Calendar;->compareTo(J)I

    move-result v3

    if-nez v3, :cond_2f

    iget-boolean v3, p0, Ljava/util/Calendar;->lenient:Z

    iget-boolean v4, v2, Ljava/util/Calendar;->lenient:Z

    if-ne v3, v4, :cond_2f

    iget v3, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    iget v4, v2, Ljava/util/Calendar;->firstDayOfWeek:I

    if-ne v3, v4, :cond_2f

    iget v3, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    iget v4, v2, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    if-ne v3, v4, :cond_2f

    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    iget-object v4, v2, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 2699
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_31

    if-eqz v3, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    .line 2695
    :goto_30
    return v0

    .line 2700
    .end local v2    # "that":Ljava/util/Calendar;
    :catch_31
    move-exception v0

    .line 2705
    return v1
.end method

.method public whitelist core-platform-api test-api get(I)I
    .registers 3
    .param p1, "field"    # I

    .line 1809
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1810
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->internalGet(I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getActualMaximum(I)I
    .registers 7
    .param p1, "field"    # I

    .line 3245
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    .line 3246
    .local v0, "fieldValue":I
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    .line 3249
    .local v1, "endValue":I
    if-ne v0, v1, :cond_b

    .line 3250
    return v0

    .line 3255
    :cond_b
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 3256
    .local v2, "work":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 3260
    const/4 v3, 0x3

    if-eq p1, v3, :cond_1b

    const/4 v3, 0x4

    if-ne p1, v3, :cond_21

    .line 3261
    :cond_1b
    const/4 v3, 0x7

    iget v4, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 3267
    :cond_21
    move v3, v0

    .line 3270
    .local v3, "result":I
    :cond_22
    invoke-virtual {v2, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 3271
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v0, :cond_2c

    .line 3272
    goto :goto_31

    .line 3274
    :cond_2c
    move v3, v0

    .line 3275
    add-int/lit8 v0, v0, 0x1

    .line 3277
    if-le v0, v1, :cond_22

    .line 3279
    :goto_31
    return v3
.end method

.method public whitelist core-platform-api test-api getActualMinimum(I)I
    .registers 7
    .param p1, "field"    # I

    .line 3191
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    .line 3192
    .local v0, "fieldValue":I
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    .line 3195
    .local v1, "endValue":I
    if-ne v0, v1, :cond_b

    .line 3196
    return v0

    .line 3201
    :cond_b
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 3202
    .local v2, "work":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 3207
    move v3, v0

    .line 3210
    .local v3, "result":I
    :cond_16
    invoke-virtual {v2, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 3211
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v0, :cond_20

    .line 3212
    goto :goto_25

    .line 3214
    :cond_20
    move v3, v0

    .line 3215
    add-int/lit8 v0, v0, -0x1

    .line 3217
    if-ge v0, v1, :cond_16

    .line 3219
    :goto_25
    return v3
.end method

.method greylist-max-o getBaseStyle(I)I
    .registers 3
    .param p1, "style"    # I

    .line 2574
    const v0, -0x8001

    and-int/2addr v0, p1

    return v0
.end method

.method public whitelist core-platform-api test-api getCalendarType()Ljava/lang/String;
    .registers 2

    .line 2662
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .registers 11
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 2067
    if-nez p2, :cond_3

    .line 2068
    const/4 p2, 0x1

    .line 2071
    :cond_3
    const/4 v3, 0x1

    const/4 v4, 0x4

    const/16 v6, 0x285

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 2073
    return-object v1

    .line 2076
    :cond_13
    invoke-virtual {p0}, Ljava/util/Calendar;->getCalendarType()Ljava/lang/String;

    move-result-object v0

    .line 2077
    .local v0, "calendarType":Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2079
    .local v2, "fieldValue":I
    invoke-direct {p0, p2}, Ljava/util/Calendar;->isStandaloneStyle(I)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-direct {p0, p2}, Ljava/util/Calendar;->isNarrowFormatStyle(I)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_39

    .line 2100
    :cond_28
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v3

    .line 2101
    .local v3, "symbols":Ljava/text/DateFormatSymbols;
    invoke-direct {p0, p1, p2, v3}, Ljava/util/Calendar;->getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;

    move-result-object v4

    .line 2102
    .local v4, "strings":[Ljava/lang/String;
    if-eqz v4, :cond_38

    .line 2103
    array-length v5, v4

    if-ge v2, v5, :cond_38

    .line 2104
    aget-object v1, v4, v2

    return-object v1

    .line 2107
    :cond_38
    return-object v1

    .line 2080
    .end local v3    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v4    # "strings":[Ljava/lang/String;
    :cond_39
    :goto_39
    invoke-static {v0, p1, v2, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2084
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_5e

    .line 2085
    invoke-direct {p0, p2}, Ljava/util/Calendar;->isNarrowFormatStyle(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 2086
    nop

    .line 2088
    invoke-static {p2}, Ljava/util/Calendar;->toStandaloneStyle(I)I

    move-result v3

    .line 2086
    invoke-static {v0, p1, v2, v3, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5e

    .line 2090
    :cond_4f
    invoke-direct {p0, p2}, Ljava/util/Calendar;->isStandaloneStyle(I)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 2091
    nop

    .line 2093
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->getBaseStyle(I)I

    move-result v3

    .line 2091
    invoke-static {v0, p1, v2, v3, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2097
    :cond_5e
    :goto_5e
    return-object v1
.end method

.method public whitelist core-platform-api test-api getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;
    .registers 11
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2160
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v6, 0x285

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2162
    const/4 v0, 0x0

    return-object v0

    .line 2165
    :cond_10
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 2167
    invoke-virtual {p0}, Ljava/util/Calendar;->getCalendarType()Ljava/lang/String;

    move-result-object v0

    .line 2168
    .local v0, "calendarType":Ljava/lang/String;
    if-eqz p2, :cond_2b

    invoke-direct {p0, p2}, Ljava/util/Calendar;->isStandaloneStyle(I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-direct {p0, p2}, Ljava/util/Calendar;->isNarrowFormatStyle(I)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_2b

    .line 2186
    :cond_26
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Calendar;->getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 2170
    :cond_2b
    :goto_2b
    invoke-static {v0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v1

    .line 2173
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v1, :cond_4c

    .line 2174
    invoke-direct {p0, p2}, Ljava/util/Calendar;->isNarrowFormatStyle(I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2175
    nop

    .line 2176
    invoke-static {p2}, Ljava/util/Calendar;->toStandaloneStyle(I)I

    move-result v2

    .line 2175
    invoke-static {v0, p1, v2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v1

    goto :goto_4c

    .line 2177
    :cond_41
    if-eqz p2, :cond_4c

    .line 2178
    nop

    .line 2179
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->getBaseStyle(I)I

    move-result v2

    .line 2178
    invoke-static {v0, p1, v2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v1

    .line 2182
    :cond_4c
    :goto_4c
    return-object v1
.end method

.method public whitelist core-platform-api test-api getFirstDayOfWeek()I
    .registers 2

    .line 2964
    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    return v0
.end method

.method public abstract whitelist core-platform-api test-api getGreatestMinimum(I)I
.end method

.method public abstract whitelist core-platform-api test-api getLeastMaximum(I)I
.end method

.method public abstract whitelist core-platform-api test-api getMaximum(I)I
.end method

.method public whitelist core-platform-api test-api getMinimalDaysInFirstWeek()I
    .registers 2

    .line 2998
    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    return v0
.end method

.method public abstract whitelist core-platform-api test-api getMinimum(I)I
.end method

.method final greylist-max-o getSetStateFields()I
    .registers 4

    .line 2295
    const/4 v0, 0x0

    .line 2296
    .local v0, "mask":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 2297
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    aget v2, v2, v1

    if-eqz v2, :cond_10

    .line 2298
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 2296
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2301
    .end local v1    # "i":I
    :cond_13
    return v0
.end method

.method public final whitelist core-platform-api test-api getTime()Ljava/util/Date;
    .registers 4

    .line 1734
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api getTimeInMillis()J
    .registers 3

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

.method public whitelist core-platform-api test-api getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 2887
    iget-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    if-eqz v0, :cond_11

    .line 2888
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    iput-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 2889
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 2891
    :cond_11
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getWeekYear()I
    .registers 2

    .line 3036
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api getWeeksInWeekYear()I
    .registers 2

    .line 3093
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o getZone()Ljava/util/TimeZone;
    .registers 2

    .line 2898
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 7

    .line 2717
    iget-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    iget v1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iget v1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 2720
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 2721
    .local v0, "otheritems":I
    invoke-static {p0}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v1

    .line 2722
    .local v1, "t":J
    long-to-int v3, v1

    const/16 v4, 0x20

    shr-long v4, v1, v4

    long-to-int v4, v4

    xor-int/2addr v3, v4

    xor-int/2addr v3, v0

    return v3
.end method

.method protected final whitelist core-platform-api test-api internalGet(I)I
    .registers 3
    .param p1, "field"    # I

    .line 1823
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method final greylist-max-o internalSet(II)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "value"    # I

    .line 1840
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput p2, v0, p1

    .line 1841
    return-void
.end method

.method final greylist-max-o isExternallySet(I)Z
    .registers 4
    .param p1, "field"    # I

    .line 2285
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    aget v0, v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method final greylist-max-o isFullyNormalized()Z
    .registers 2

    .line 2384
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist core-platform-api test-api isLenient()Z
    .registers 2

    .line 2934
    iget-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    return v0
.end method

.method final greylist-max-o isPartiallyNormalized()Z
    .registers 2

    .line 2376
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist core-platform-api test-api isSet(I)Z
    .registers 3
    .param p1, "field"    # I

    .line 2016
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    aget v0, v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist core-platform-api test-api isWeekDateSupported()Z
    .registers 2

    .line 3014
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api roll(II)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 2847
    :goto_0
    if-lez p2, :cond_9

    .line 2848
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->roll(IZ)V

    .line 2849
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2851
    :cond_9
    :goto_9
    if-gez p2, :cond_12

    .line 2852
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->roll(IZ)V

    .line 2853
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 2855
    :cond_12
    return-void
.end method

.method public abstract whitelist core-platform-api test-api roll(IZ)V
.end method

.method final greylist-max-o selectFields()I
    .registers 16

    .line 2429
    const/4 v0, 0x2

    .line 2431
    .local v0, "fieldMask":I
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eqz v1, :cond_a

    .line 2432
    or-int/lit8 v0, v0, 0x1

    .line 2446
    :cond_a
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v2, 0x7

    aget v2, v1, v2

    .line 2447
    .local v2, "dowStamp":I
    const/4 v3, 0x2

    aget v4, v1, v3

    .line 2448
    .local v4, "monthStamp":I
    const/4 v5, 0x5

    aget v5, v1, v5

    .line 2449
    .local v5, "domStamp":I
    const/4 v6, 0x4

    aget v1, v1, v6

    invoke-static {v1, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v1

    .line 2450
    .local v1, "womStamp":I
    iget-object v7, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v8, 0x8

    aget v7, v7, v8

    invoke-static {v7, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v7

    .line 2451
    .local v7, "dowimStamp":I
    iget-object v9, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v10, 0x6

    aget v10, v9, v10

    .line 2452
    .local v10, "doyStamp":I
    const/4 v11, 0x3

    aget v9, v9, v11

    invoke-static {v9, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v9

    .line 2454
    .local v9, "woyStamp":I
    move v12, v5

    .line 2455
    .local v12, "bestStamp":I
    if-le v1, v12, :cond_36

    .line 2456
    move v12, v1

    .line 2458
    :cond_36
    if-le v7, v12, :cond_39

    .line 2459
    move v12, v7

    .line 2461
    :cond_39
    if-le v10, v12, :cond_3c

    .line 2462
    move v12, v10

    .line 2464
    :cond_3c
    if-le v9, v12, :cond_3f

    .line 2465
    move v12, v9

    .line 2472
    :cond_3f
    if-nez v12, :cond_5b

    .line 2473
    iget-object v13, p0, Ljava/util/Calendar;->stamp:[I

    aget v1, v13, v6

    .line 2474
    aget v13, v13, v8

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2475
    iget-object v13, p0, Ljava/util/Calendar;->stamp:[I

    aget v9, v13, v11

    .line 2476
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2482
    if-nez v12, :cond_5b

    .line 2483
    move v5, v4

    move v12, v4

    .line 2487
    :cond_5b
    if-eq v12, v5, :cond_7f

    if-ne v12, v1, :cond_67

    iget-object v13, p0, Ljava/util/Calendar;->stamp:[I

    aget v14, v13, v6

    aget v13, v13, v11

    if-ge v14, v13, :cond_7f

    :cond_67
    if-ne v12, v7, :cond_72

    iget-object v13, p0, Ljava/util/Calendar;->stamp:[I

    aget v14, v13, v8

    aget v11, v13, v11

    if-lt v14, v11, :cond_72

    goto :goto_7f

    .line 2518
    :cond_72
    nop

    .line 2520
    if-ne v12, v10, :cond_78

    .line 2521
    or-int/lit8 v0, v0, 0x40

    goto :goto_a8

    .line 2523
    :cond_78
    nop

    .line 2524
    if-eqz v2, :cond_7d

    .line 2525
    or-int/lit16 v0, v0, 0x80

    .line 2527
    :cond_7d
    or-int/2addr v0, v8

    goto :goto_a8

    .line 2490
    :cond_7f
    :goto_7f
    or-int/2addr v0, v6

    .line 2491
    if-ne v12, v5, :cond_85

    .line 2492
    or-int/lit8 v0, v0, 0x20

    goto :goto_a8

    .line 2494
    :cond_85
    nop

    .line 2495
    if-eqz v2, :cond_8a

    .line 2496
    or-int/lit16 v0, v0, 0x80

    .line 2498
    :cond_8a
    if-ne v1, v7, :cond_9a

    .line 2501
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    aget v6, v11, v6

    aget v8, v11, v8

    if-lt v6, v8, :cond_97

    .line 2502
    or-int/lit8 v0, v0, 0x10

    goto :goto_a8

    .line 2504
    :cond_97
    or-int/lit16 v0, v0, 0x100

    goto :goto_a8

    .line 2507
    :cond_9a
    if-ne v12, v1, :cond_9f

    .line 2508
    or-int/lit8 v0, v0, 0x10

    goto :goto_a8

    .line 2510
    :cond_9f
    nop

    .line 2511
    iget-object v6, p0, Ljava/util/Calendar;->stamp:[I

    aget v6, v6, v8

    if-eqz v6, :cond_a8

    .line 2512
    or-int/lit16 v0, v0, 0x100

    .line 2534
    :cond_a8
    :goto_a8
    iget-object v6, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v8, 0xb

    aget v8, v6, v8

    .line 2535
    .local v8, "hourOfDayStamp":I
    const/16 v11, 0xa

    aget v13, v6, v11

    const/16 v14, 0x9

    aget v6, v6, v14

    invoke-static {v13, v6}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v6

    .line 2536
    .local v6, "hourStamp":I
    if-le v6, v8, :cond_be

    move v13, v6

    goto :goto_bf

    :cond_be
    move v13, v8

    :goto_bf
    move v12, v13

    .line 2539
    if-nez v12, :cond_cc

    .line 2540
    iget-object v13, p0, Ljava/util/Calendar;->stamp:[I

    aget v11, v13, v11

    aget v13, v13, v14

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2544
    :cond_cc
    if-eqz v12, :cond_dd

    .line 2545
    if-ne v12, v8, :cond_d3

    .line 2546
    or-int/lit16 v0, v0, 0x800

    goto :goto_dd

    .line 2548
    :cond_d3
    or-int/lit16 v0, v0, 0x400

    .line 2549
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    aget v11, v11, v14

    if-eqz v11, :cond_dd

    .line 2550
    or-int/lit16 v0, v0, 0x200

    .line 2554
    :cond_dd
    :goto_dd
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v13, 0xc

    aget v11, v11, v13

    if-eqz v11, :cond_e7

    .line 2555
    or-int/lit16 v0, v0, 0x1000

    .line 2557
    :cond_e7
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v13, 0xd

    aget v11, v11, v13

    if-eqz v11, :cond_f1

    .line 2558
    or-int/lit16 v0, v0, 0x2000

    .line 2560
    :cond_f1
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v13, 0xe

    aget v11, v11, v13

    if-eqz v11, :cond_fb

    .line 2561
    or-int/lit16 v0, v0, 0x4000

    .line 2563
    :cond_fb
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v13, 0xf

    aget v11, v11, v13

    if-lt v11, v3, :cond_107

    .line 2564
    const v11, 0x8000

    or-int/2addr v0, v11

    .line 2566
    :cond_107
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v13, 0x10

    aget v11, v11, v13

    if-lt v11, v3, :cond_112

    .line 2567
    const/high16 v3, 0x10000

    or-int/2addr v0, v3

    .line 2570
    :cond_112
    return v0
.end method

.method public whitelist core-platform-api test-api set(II)V
    .registers 6
    .param p1, "field"    # I
    .param p2, "value"    # I

    .line 1861
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-nez v0, :cond_b

    .line 1862
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    .line 1864
    :cond_b
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->internalSet(II)V

    .line 1865
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1866
    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

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
    const v0, 0x7fffffff

    if-ne v2, v0, :cond_2a

    .line 1870
    invoke-direct {p0}, Ljava/util/Calendar;->adjustStamp()V

    .line 1872
    :cond_2a
    return-void
.end method

.method public final whitelist core-platform-api test-api set(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

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

.method public final whitelist core-platform-api test-api set(IIIII)V
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

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

.method public final whitelist core-platform-api test-api set(IIIIII)V
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

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

.method final greylist-max-o setFieldsComputed(I)V
    .registers 5
    .param p1, "fieldMask"    # I

    .line 2318
    const/4 v0, 0x1

    const v1, 0x1ffff

    if-ne p1, v1, :cond_1c

    .line 2319
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 2320
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    aput v0, v2, v1

    .line 2321
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v0, v2, v1

    .line 2319
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2323
    .end local v1    # "i":I
    :cond_17
    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    goto :goto_41

    .line 2325
    :cond_1c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1d
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v1, v2, :cond_41

    .line 2326
    and-int/lit8 v2, p1, 0x1

    if-ne v2, v0, :cond_2f

    .line 2327
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    aput v0, v2, v1

    .line 2328
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v0, v2, v1

    goto :goto_3c

    .line 2330
    :cond_2f
    iget-boolean v2, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v2, :cond_3c

    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_3c

    .line 2331
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2334
    :cond_3c
    :goto_3c
    ushr-int/lit8 p1, p1, 0x1

    .line 2325
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 2337
    .end local v1    # "i":I
    :cond_41
    :goto_41
    return-void
.end method

.method final greylist-max-o setFieldsNormalized(I)V
    .registers 6
    .param p1, "fieldMask"    # I

    .line 2355
    const/4 v0, 0x0

    const v1, 0x1ffff

    if-eq p1, v1, :cond_1f

    .line 2356
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1f

    .line 2357
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_1a

    .line 2358
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    aput v0, v2, v1

    aput v0, v3, v1

    .line 2359
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v0, v2, v1

    .line 2361
    :cond_1a
    shr-int/lit8 p1, p1, 0x1

    .line 2356
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2367
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 2368
    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2369
    return-void
.end method

.method public whitelist core-platform-api test-api setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "value"    # I

    .line 2947
    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    if-ne v0, p1, :cond_5

    .line 2948
    return-void

    .line 2950
    :cond_5
    iput p1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    .line 2951
    invoke-direct {p0}, Ljava/util/Calendar;->invalidateWeekFields()V

    .line 2952
    return-void
.end method

.method public whitelist core-platform-api test-api setLenient(Z)V
    .registers 2
    .param p1, "lenient"    # Z

    .line 2922
    iput-boolean p1, p0, Ljava/util/Calendar;->lenient:Z

    .line 2923
    return-void
.end method

.method public whitelist core-platform-api test-api setMinimalDaysInFirstWeek(I)V
    .registers 3
    .param p1, "value"    # I

    .line 2979
    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    if-ne v0, p1, :cond_5

    .line 2980
    return-void

    .line 2982
    :cond_5
    iput p1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    .line 2983
    invoke-direct {p0}, Ljava/util/Calendar;->invalidateWeekFields()V

    .line 2984
    return-void
.end method

.method public final whitelist core-platform-api test-api setTime(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 1749
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1750
    return-void
.end method

.method public whitelist core-platform-api test-api setTimeInMillis(J)V
    .registers 5
    .param p1, "millis"    # J

    .line 1779
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_13

    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v0, :cond_13

    .line 1782
    return-void

    .line 1784
    :cond_13
    iput-wide p1, p0, Ljava/util/Calendar;->time:J

    .line 1785
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1786
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1787
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    .line 1788
    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 1789
    return-void
.end method

.method public whitelist core-platform-api test-api setTimeZone(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "value"    # Ljava/util/TimeZone;

    .line 2864
    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 2865
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 2875
    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2876
    return-void
.end method

.method final greylist-max-o setUnnormalized()V
    .registers 2

    .line 2391
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 2392
    return-void
.end method

.method public whitelist core-platform-api test-api setWeekDate(III)V
    .registers 5
    .param p1, "weekYear"    # I
    .param p2, "weekOfYear"    # I
    .param p3, "dayOfWeek"    # I

    .line 3072
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o setZoneShared(Z)V
    .registers 2
    .param p1, "shared"    # Z

    .line 2905
    iput-boolean p1, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 2906
    return-void
.end method

.method public final whitelist core-platform-api test-api toInstant()Ljava/time/Instant;
    .registers 3

    .line 3594
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 7

    .line 3343
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3344
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3345
    iget-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    const-string v4, "time"

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 3346
    const-string v1, ",areFieldsSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3347
    const-string v1, ",areAllFieldsSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3348
    const-string v1, ",lenient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljava/util/Calendar;->lenient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3349
    const-string v1, ",zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3350
    iget v1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    int-to-long v1, v1

    const-string v3, ",firstDayOfWeek"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 3351
    iget v1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    int-to-long v1, v1

    const-string v3, ",minimalDaysInFirstWeek"

    invoke-static {v0, v3, v4, v1, v2}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 3352
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    const/16 v2, 0x11

    if-ge v1, v2, :cond_76

    .line 3353
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3354
    sget-object v2, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->isSet(I)Z

    move-result v3

    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-static {v0, v2, v3, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 3352
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 3356
    .end local v1    # "i":I
    :cond_76
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
