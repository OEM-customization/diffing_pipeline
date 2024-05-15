.class public Ljava/util/GregorianCalendar;
.super Ljava/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api AD:I = 0x1

.field public static final whitelist test-api BC:I = 0x0

.field static final greylist-max-o BCE:I = 0x0

.field static final greylist-max-o CE:I = 0x1

.field static final greylist-max-o DEFAULT_GREGORIAN_CUTOVER:J = -0xb1d069b5400L

.field private static final greylist-max-o EPOCH_OFFSET:I = 0xaf93b

.field private static final greylist-max-o EPOCH_YEAR:I = 0x7b2

.field static final greylist-max-o LEAP_MONTH_LENGTH:[I

.field static final greylist-max-o LEAST_MAX_VALUES:[I

.field static final greylist-max-o MAX_VALUES:[I

.field static final greylist-max-o MIN_VALUES:[I

.field static final greylist-max-o MONTH_LENGTH:[I

.field private static final greylist-max-o ONE_DAY:J = 0x5265c00L

.field private static final greylist-max-o ONE_HOUR:I = 0x36ee80

.field private static final greylist-max-o ONE_MINUTE:I = 0xea60

.field private static final greylist-max-o ONE_SECOND:I = 0x3e8

.field private static final greylist-max-o ONE_WEEK:J = 0x240c8400L

.field private static final greylist-max-o gcal:Lsun/util/calendar/Gregorian;

.field private static greylist-max-o jcal:Lsun/util/calendar/JulianCalendar; = null

.field private static greylist-max-o jeras:[Lsun/util/calendar/Era; = null

.field static final whitelist serialVersionUID:J = -0x70c228291a4f2f3fL


# instance fields
.field private transient greylist-max-o cachedFixedDate:J

.field private transient greylist-max-o calsys:Lsun/util/calendar/BaseCalendar;

.field private transient greylist-max-o cdate:Lsun/util/calendar/BaseCalendar$Date;

.field private transient greylist-max-o gdate:Lsun/util/calendar/BaseCalendar$Date;

.field private greylist-max-o gregorianCutover:J

.field private transient greylist-max-o gregorianCutoverDate:J

.field private transient greylist-max-o gregorianCutoverYear:I

.field private transient greylist-max-o gregorianCutoverYearJulian:I

.field private transient greylist-max-o originalFields:[I

.field private transient greylist-max-o zoneOffsets:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 331
    nop

    .line 401
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_30

    sput-object v1, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    .line 403
    new-array v0, v0, [I

    fill-array-data v0, :array_4c

    sput-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    .line 440
    const/16 v0, 0x11

    new-array v1, v0, [I

    fill-array-data v1, :array_68

    sput-object v1, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    .line 459
    new-array v1, v0, [I

    fill-array-data v1, :array_8e

    sput-object v1, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    .line 478
    new-array v0, v0, [I

    fill-array-data v0, :array_b4

    sput-object v0, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    .line 504
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    sput-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 503
    return-void

    nop

    :array_30
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_4c
    .array-data 4
        0x1f
        0x1d
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_68
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x2ca1c80
        0x0
    .end array-data

    :array_8e
    .array-data 4
        0x1
        0x116babfe
        0xb
        0x34
        0x4
        0x1c
        0x16d
        0x7
        0x4
        0x1
        0xb
        0x17
        0x3b
        0x3b
        0x3e7
        0x3010b00
        0x124f80
    .end array-data

    :array_b4
    .array-data 4
        0x1
        0x116bd2d2
        0xb
        0x35
        0x6
        0x1f
        0x16e
        0x7
        0x6
        0x1
        0xb
        0x17
        0x3b
        0x3b
        0x3e7
        0x3010b00
        0x6ddd00
    .end array-data
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 592
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 593
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setZoneShared(Z)V

    .line 594
    return-void
.end method

.method public constructor whitelist test-api <init>(III)V
    .registers 12
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 641
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    .line 642
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIII)V
    .registers 14
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .line 659
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    .line 660
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIIII)V
    .registers 15
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .line 679
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    .line 680
    return-void
.end method

.method constructor greylist-max-o <init>(IIIIIII)V
    .registers 12
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "millis"    # I

    .line 700
    invoke-direct {p0}, Ljava/util/Calendar;-><init>()V

    .line 528
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 533
    const-wide/32 v0, 0x8d0c8

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 540
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 546
    iput v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 2294
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 701
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 702
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 703
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 704
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 708
    const/16 v1, 0xa

    const/16 v2, 0xc

    if-lt p4, v2, :cond_46

    const/16 v3, 0x17

    if-gt p4, v3, :cond_46

    .line 712
    const/16 v3, 0x9

    invoke-virtual {p0, v3, v0}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 713
    add-int/lit8 v0, p4, -0xc

    invoke-virtual {p0, v1, v0}, Ljava/util/GregorianCalendar;->internalSet(II)V

    goto :goto_49

    .line 717
    :cond_46
    invoke-virtual {p0, v1, p4}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 720
    :goto_49
    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    .line 722
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 723
    invoke-virtual {p0, v2, p5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 724
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 727
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p7}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 728
    return-void
.end method

.method constructor greylist-max-o <init>(J)V
    .registers 3
    .param p1, "milliseconds"    # J

    .line 744
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 745
    invoke-virtual {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 746
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 614
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 615
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setZoneShared(Z)V

    .line 616
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 604
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 605
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 626
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 528
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 533
    const-wide/32 v0, 0x8d0c8

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 540
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 546
    iput v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 2294
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 627
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v0, p1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 629
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V
    .registers 6
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "flag"    # Z

    .line 738
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 528
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 533
    const-wide/32 v0, 0x8d0c8

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 540
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 546
    iput v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 2294
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 739
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 740
    return-void
.end method

.method private greylist-max-o actualMonthLength()I
    .registers 11

    .line 3306
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    .line 3307
    .local v0, "year":I
    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v0, v1, :cond_17

    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v0, v1, :cond_17

    .line 3308
    iget-object v1, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v2, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v1

    return v1

    .line 3310
    :cond_17
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    .line 3311
    .local v1, "date":Lsun/util/calendar/BaseCalendar$Date;
    iget-object v2, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v2, v1}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v2

    .line 3312
    .local v2, "fd":J
    invoke-direct {p0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v4

    .line 3313
    .local v4, "month1":J
    iget-object v6, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v6, v1}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v4

    .line 3314
    .local v6, "next1":J
    iget-wide v8, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_3b

    .line 3315
    sub-long v8, v6, v4

    long-to-int v8, v8

    return v8

    .line 3317
    :cond_3b
    iget-object v8, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v9, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v8, v9, :cond_49

    .line 3318
    sget-object v8, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v9, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v8, v9}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v1

    .line 3320
    :cond_49
    sget-object v8, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v8, v1, v6, v7}, Lsun/util/calendar/Gregorian;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 3321
    invoke-direct {p0, v1, v6, v7}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v6

    .line 3322
    sub-long v8, v6, v4

    long-to-int v8, v8

    return v8
.end method

.method private greylist-max-o adjustDstOffsetForInvalidWallClock(JLjava/util/TimeZone;I)I
    .registers 8
    .param p1, "standardTimeInZone"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;
    .param p4, "dstOffset"    # I

    .line 2992
    if-eqz p4, :cond_11

    .line 2995
    new-instance v0, Ljava/util/Date;

    int-to-long v1, p4

    sub-long v1, p1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2996
    const/4 p4, 0x0

    .line 2999
    :cond_11
    return p4
.end method

.method private greylist-max-o adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J
    .registers 13
    .param p1, "tzMask"    # I
    .param p2, "utcTimeInMillis"    # J
    .param p4, "zone"    # Ljava/util/TimeZone;

    .line 2890
    const/4 v0, 0x0

    .line 2891
    .local v0, "zoneOffset":I
    const/4 v1, 0x0

    .line 2895
    .local v1, "dstOffset":I
    const/16 v2, 0xf

    const v3, 0x18000

    if-eq p1, v3, :cond_42

    .line 2896
    iget-object v3, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    if-nez v3, :cond_12

    .line 2897
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    .line 2899
    :cond_12
    invoke-static {p1, v2}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2900
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    goto :goto_21

    :cond_1d
    invoke-virtual {p4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    .line 2908
    .local v3, "gmtOffset":I
    :goto_21
    int-to-long v4, v3

    sub-long v4, p2, v4

    .line 2911
    .local v4, "standardTimeInZone":J
    instance-of v6, p4, Llibcore/util/ZoneInfo;

    if-eqz v6, :cond_31

    .line 2913
    move-object v6, p4

    check-cast v6, Llibcore/util/ZoneInfo;

    .line 2914
    .local v6, "zoneInfo":Llibcore/util/ZoneInfo;
    iget-object v7, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {v6, v4, v5, v7}, Llibcore/util/ZoneInfo;->getOffsetsByUtcTime(J[I)I

    .line 2915
    .end local v6    # "zoneInfo":Llibcore/util/ZoneInfo;
    goto :goto_36

    .line 2916
    :cond_31
    iget-object v6, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {p4, v4, v5, v6}, Ljava/util/TimeZone;->getOffsets(J[I)I

    .line 2918
    :goto_36
    iget-object v6, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    const/4 v7, 0x0

    aget v0, v6, v7

    .line 2919
    const/4 v7, 0x1

    aget v1, v6, v7

    .line 2922
    invoke-direct {p0, v4, v5, p4, v1}, Ljava/util/GregorianCalendar;->adjustDstOffsetForInvalidWallClock(JLjava/util/TimeZone;I)I

    move-result v1

    .line 2927
    .end local v3    # "gmtOffset":I
    .end local v4    # "standardTimeInZone":J
    :cond_42
    if-eqz p1, :cond_5a

    .line 2928
    invoke-static {p1, v2}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 2929
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    .line 2931
    :cond_4e
    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2932
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    .line 2937
    :cond_5a
    int-to-long v2, v0

    sub-long v2, p2, v2

    .line 2938
    .local v2, "standardTimeInZone":J
    int-to-long v4, v1

    sub-long v4, v2, v4

    return-wide v4
.end method

.method private greylist-max-o computeFields(II)I
    .registers 36
    .param p1, "fieldMask"    # I
    .param p2, "tzMask"    # I

    .line 2342
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 2343
    .local v3, "zoneOffset":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v4

    .line 2344
    .local v4, "tz":Ljava/util/TimeZone;
    iget-object v5, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    const/4 v6, 0x2

    if-nez v5, :cond_14

    .line 2345
    new-array v5, v6, [I

    iput-object v5, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    .line 2347
    :cond_14
    const v5, 0x18000

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v5, :cond_41

    .line 2348
    instance-of v9, v4, Llibcore/util/ZoneInfo;

    if-eqz v9, :cond_2b

    .line 2352
    move-object v9, v4

    check-cast v9, Llibcore/util/ZoneInfo;

    .line 2353
    .local v9, "zoneInfo":Llibcore/util/ZoneInfo;
    iget-wide v10, v0, Ljava/util/GregorianCalendar;->time:J

    iget-object v12, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {v9, v10, v11, v12}, Llibcore/util/ZoneInfo;->getOffsetsByUtcTime(J[I)I

    move-result v3

    .line 2355
    .end local v9    # "zoneInfo":Llibcore/util/ZoneInfo;
    goto :goto_41

    .line 2356
    :cond_2b
    iget-wide v9, v0, Ljava/util/GregorianCalendar;->time:J

    invoke-virtual {v4, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 2357
    iget-object v9, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    aput v10, v9, v7

    .line 2358
    iget-object v9, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    aget v10, v9, v7

    sub-int v10, v3, v10

    aput v10, v9, v8

    .line 2361
    :cond_41
    :goto_41
    const/16 v9, 0x10

    const/16 v10, 0xf

    if-eqz v2, :cond_6b

    .line 2362
    invoke-static {v2, v10}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_55

    .line 2363
    iget-object v11, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {v0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v12

    aput v12, v11, v7

    .line 2365
    :cond_55
    invoke-static {v2, v9}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_63

    .line 2366
    iget-object v11, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v12

    aput v12, v11, v8

    .line 2368
    :cond_63
    iget-object v11, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    aget v12, v11, v7

    aget v11, v11, v8

    add-int v3, v12, v11

    .line 2374
    :cond_6b
    int-to-long v11, v3

    const-wide/32 v13, 0x5265c00

    div-long/2addr v11, v13

    .line 2375
    .local v11, "fixedDate":J
    const v15, 0x5265c00

    rem-int v15, v3, v15

    .line 2376
    .local v15, "timeOfDay":I
    iget-wide v9, v0, Ljava/util/GregorianCalendar;->time:J

    div-long/2addr v9, v13

    add-long/2addr v11, v9

    .line 2377
    iget-wide v9, v0, Ljava/util/GregorianCalendar;->time:J

    rem-long/2addr v9, v13

    long-to-int v9, v9

    add-int/2addr v15, v9

    .line 2378
    int-to-long v9, v15

    cmp-long v9, v9, v13

    const-wide/16 v18, 0x1

    if-ltz v9, :cond_8b

    .line 2379
    int-to-long v9, v15

    sub-long/2addr v9, v13

    long-to-int v9, v9

    .line 2380
    .end local v15    # "timeOfDay":I
    .local v9, "timeOfDay":I
    add-long v11, v11, v18

    goto :goto_94

    .line 2382
    .end local v9    # "timeOfDay":I
    .restart local v15    # "timeOfDay":I
    :cond_8b
    :goto_8b
    if-gez v15, :cond_93

    .line 2383
    int-to-long v9, v15

    add-long/2addr v9, v13

    long-to-int v15, v9

    .line 2384
    sub-long v11, v11, v18

    goto :goto_8b

    .line 2382
    :cond_93
    move v9, v15

    .line 2387
    .end local v15    # "timeOfDay":I
    .restart local v9    # "timeOfDay":I
    :goto_94
    const-wide/32 v13, 0xaf93b

    add-long/2addr v11, v13

    .line 2389
    const/4 v10, 0x1

    .line 2391
    .local v10, "era":I
    iget-wide v13, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v13, v11, v13

    if-ltz v13, :cond_c4

    .line 2393
    nop

    .line 2395
    nop

    .line 2410
    iget-wide v13, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    cmp-long v13, v11, v13

    if-eqz v13, :cond_b0

    .line 2411
    sget-object v13, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    iget-object v14, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v13, v14, v11, v12}, Lsun/util/calendar/Gregorian;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 2412
    iput-wide v11, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 2415
    :cond_b0
    iget-object v13, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v13}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v13

    .line 2416
    .local v13, "year":I
    if-gtz v13, :cond_bb

    .line 2417
    rsub-int/lit8 v13, v13, 0x1

    .line 2418
    const/4 v10, 0x0

    .line 2420
    :cond_bb
    sget-object v14, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    iput-object v14, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2421
    iget-object v14, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    iput-object v14, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 2422
    goto :goto_ef

    .line 2425
    .end local v13    # "year":I
    :cond_c4
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v13

    iput-object v13, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2426
    sget-object v13, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsun/util/calendar/JulianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v13

    iput-object v13, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 2427
    sget-object v14, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual {v14, v13, v11, v12}, Lsun/util/calendar/JulianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 2428
    iget-object v13, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v13}, Lsun/util/calendar/BaseCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v13

    .line 2429
    .local v13, "e":Lsun/util/calendar/Era;
    sget-object v14, Ljava/util/GregorianCalendar;->jeras:[Lsun/util/calendar/Era;

    aget-object v14, v14, v7

    if-ne v13, v14, :cond_e8

    .line 2430
    const/4 v10, 0x0

    .line 2432
    :cond_e8
    iget-object v14, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v14}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v14

    move v13, v14

    .line 2436
    .local v13, "year":I
    :goto_ef
    invoke-virtual {v0, v7, v10}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2437
    invoke-virtual {v0, v8, v13}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2438
    or-int/lit8 v14, v1, 0x3

    .line 2440
    .local v14, "mask":I
    iget-object v15, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v15}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v15

    sub-int/2addr v15, v8

    .line 2441
    .local v15, "month":I
    iget-object v8, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v8

    .line 2444
    .local v8, "dayOfMonth":I
    and-int/lit16 v5, v1, 0xa4

    if-eqz v5, :cond_11b

    .line 2446
    invoke-virtual {v0, v6, v15}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2447
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v8}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2448
    iget-object v5, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v0, v6, v5}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2449
    or-int/lit16 v14, v14, 0xa4

    .line 2452
    :cond_11b
    and-int/lit16 v5, v1, 0x7e00

    if-eqz v5, :cond_175

    .line 2454
    const/16 v5, 0x9

    const/16 v6, 0xb

    if-eqz v9, :cond_158

    .line 2455
    const v26, 0x36ee80

    div-int v7, v9, v26

    .line 2456
    .local v7, "hours":I
    invoke-virtual {v0, v6, v7}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2457
    div-int/lit8 v6, v7, 0xc

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2458
    rem-int/lit8 v5, v7, 0xc

    const/16 v6, 0xa

    invoke-virtual {v0, v6, v5}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2459
    rem-int v5, v9, v26

    .line 2460
    .local v5, "r":I
    const v6, 0xea60

    div-int v2, v5, v6

    const/16 v6, 0xc

    invoke-virtual {v0, v6, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2461
    const v2, 0xea60

    rem-int/2addr v5, v2

    .line 2462
    div-int/lit16 v2, v5, 0x3e8

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2463
    rem-int/lit16 v2, v5, 0x3e8

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2464
    .end local v5    # "r":I
    .end local v7    # "hours":I
    goto :goto_173

    .line 2465
    :cond_158
    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2466
    invoke-virtual {v0, v5, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2467
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2468
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2469
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2470
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2472
    :goto_173
    or-int/lit16 v14, v14, 0x7e00

    .line 2476
    :cond_175
    const v2, 0x18000

    and-int v5, v1, v2

    if-eqz v5, :cond_191

    .line 2477
    iget-object v5, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-virtual {v0, v6, v5}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2478
    iget-object v5, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/16 v6, 0x10

    invoke-virtual {v0, v6, v5}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2479
    or-int/2addr v14, v2

    .line 2482
    :cond_191
    and-int/lit16 v2, v1, 0x158

    if-eqz v2, :cond_360

    .line 2483
    iget-object v2, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    .line 2484
    .local v2, "normalizedYear":I
    iget-object v5, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v6, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    const/4 v7, 0x1

    invoke-virtual {v5, v2, v7, v7, v6}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v5

    .line 2485
    .local v5, "fixedDateJan1":J
    move/from16 v17, v3

    move-object/from16 v16, v4

    .end local v3    # "zoneOffset":I
    .end local v4    # "tz":Ljava/util/TimeZone;
    .local v16, "tz":Ljava/util/TimeZone;
    .local v17, "zoneOffset":I
    sub-long v3, v11, v5

    long-to-int v3, v3

    add-int/2addr v3, v7

    .line 2486
    .local v3, "dayOfYear":I
    move-wide/from16 v21, v5

    .end local v5    # "fixedDateJan1":J
    .local v21, "fixedDateJan1":J
    int-to-long v4, v8

    sub-long v4, v11, v4

    add-long v4, v4, v18

    .line 2487
    .local v4, "fixedDateMonth1":J
    const/4 v6, 0x0

    .line 2488
    .local v6, "cutoverGap":I
    iget-object v7, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    sget-object v1, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-ne v7, v1, :cond_1bd

    iget v1, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    goto :goto_1bf

    :cond_1bd
    iget v1, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 2489
    .local v1, "cutoverYear":I
    :goto_1bf
    add-int/lit8 v7, v8, -0x1

    .line 2492
    .local v7, "relativeDayOfMonth":I
    if-ne v2, v1, :cond_1fd

    .line 2494
    move-wide/from16 v23, v4

    .end local v4    # "fixedDateMonth1":J
    .local v23, "fixedDateMonth1":J
    iget v4, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    iget v5, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-gt v4, v5, :cond_1e3

    .line 2498
    iget-object v4, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {v0, v4, v11, v12}, Ljava/util/GregorianCalendar;->getFixedDateJan1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v4

    .line 2499
    .end local v21    # "fixedDateJan1":J
    .local v4, "fixedDateJan1":J
    move-wide/from16 v21, v4

    .end local v4    # "fixedDateJan1":J
    .restart local v21    # "fixedDateJan1":J
    iget-wide v4, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v4, v11, v4

    if-ltz v4, :cond_1e0

    .line 2500
    iget-object v4, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {v0, v4, v11, v12}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v4

    .end local v23    # "fixedDateMonth1":J
    .local v4, "fixedDateMonth1":J
    goto :goto_1e5

    .line 2499
    .end local v4    # "fixedDateMonth1":J
    .restart local v23    # "fixedDateMonth1":J
    :cond_1e0
    move-wide/from16 v4, v23

    goto :goto_1e5

    .line 2494
    :cond_1e3
    move-wide/from16 v4, v23

    .line 2503
    .end local v23    # "fixedDateMonth1":J
    .restart local v4    # "fixedDateMonth1":J
    :goto_1e5
    move/from16 v25, v6

    move/from16 v26, v7

    .end local v6    # "cutoverGap":I
    .end local v7    # "relativeDayOfMonth":I
    .local v25, "cutoverGap":I
    .local v26, "relativeDayOfMonth":I
    sub-long v6, v11, v21

    long-to-int v6, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 2504
    .local v6, "realDayOfYear":I
    sub-int v7, v3, v6

    .line 2505
    .end local v25    # "cutoverGap":I
    .local v7, "cutoverGap":I
    move v3, v6

    .line 2506
    move/from16 v23, v6

    move/from16 v24, v7

    .end local v6    # "realDayOfYear":I
    .end local v7    # "cutoverGap":I
    .local v23, "realDayOfYear":I
    .local v24, "cutoverGap":I
    sub-long v6, v11, v4

    long-to-int v7, v6

    move/from16 v26, v7

    move-wide/from16 v6, v21

    .end local v26    # "relativeDayOfMonth":I
    .local v7, "relativeDayOfMonth":I
    goto :goto_207

    .line 2492
    .end local v23    # "realDayOfYear":I
    .end local v24    # "cutoverGap":I
    .local v6, "cutoverGap":I
    :cond_1fd
    move-wide/from16 v23, v4

    move/from16 v25, v6

    move/from16 v26, v7

    .end local v4    # "fixedDateMonth1":J
    .end local v6    # "cutoverGap":I
    .end local v7    # "relativeDayOfMonth":I
    .local v23, "fixedDateMonth1":J
    .restart local v25    # "cutoverGap":I
    .restart local v26    # "relativeDayOfMonth":I
    move-wide/from16 v6, v21

    move/from16 v24, v25

    .line 2508
    .end local v21    # "fixedDateJan1":J
    .end local v23    # "fixedDateMonth1":J
    .end local v25    # "cutoverGap":I
    .restart local v4    # "fixedDateMonth1":J
    .local v6, "fixedDateJan1":J
    .restart local v24    # "cutoverGap":I
    :goto_207
    move/from16 v21, v8

    .end local v8    # "dayOfMonth":I
    .local v21, "dayOfMonth":I
    const/4 v8, 0x6

    invoke-virtual {v0, v8, v3}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2509
    const/16 v8, 0x8

    div-int/lit8 v22, v26, 0x7

    move/from16 v23, v3

    const/16 v20, 0x1

    .end local v3    # "dayOfYear":I
    .local v23, "dayOfYear":I
    add-int/lit8 v3, v22, 0x1

    invoke-virtual {v0, v8, v3}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2511
    invoke-direct {v0, v6, v7, v11, v12}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v3

    .line 2515
    .local v3, "weekOfYear":I
    if-nez v3, :cond_2bc

    .line 2523
    move/from16 v22, v9

    .end local v9    # "timeOfDay":I
    .local v22, "timeOfDay":I
    sub-long v8, v6, v18

    .line 2524
    .local v8, "fixedDec31":J
    const-wide/16 v27, 0x16d

    sub-long v27, v6, v27

    .line 2525
    .local v27, "prevJan1":J
    move/from16 v29, v10

    .end local v10    # "era":I
    .local v29, "era":I
    add-int/lit8 v10, v1, 0x1

    if-le v2, v10, :cond_24c

    .line 2526
    add-int/lit8 v10, v2, -0x1

    invoke-static {v10}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v10

    if-eqz v10, :cond_243

    .line 2527
    sub-long v27, v27, v18

    move/from16 v30, v1

    move/from16 v31, v13

    move/from16 v32, v15

    move v15, v14

    move-wide/from16 v13, v27

    goto/16 :goto_2b4

    .line 2526
    :cond_243
    move/from16 v30, v1

    move/from16 v31, v13

    move/from16 v32, v15

    move v15, v14

    goto/16 :goto_2b2

    .line 2529
    :cond_24c
    iget v10, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-gt v2, v10, :cond_26c

    .line 2530
    add-int/lit8 v10, v2, -0x1

    invoke-static {v10}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v10

    if-eqz v10, :cond_264

    .line 2531
    sub-long v27, v27, v18

    move/from16 v30, v1

    move/from16 v31, v13

    move/from16 v32, v15

    move v15, v14

    move-wide/from16 v13, v27

    goto :goto_2b4

    .line 2530
    :cond_264
    move/from16 v30, v1

    move/from16 v31, v13

    move/from16 v32, v15

    move v15, v14

    goto :goto_2b2

    .line 2534
    :cond_26c
    iget-object v10, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2536
    .local v10, "calForJan1":Lsun/util/calendar/BaseCalendar;
    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v18

    move/from16 v30, v1

    .end local v1    # "cutoverYear":I
    .local v30, "cutoverYear":I
    invoke-virtual/range {v18 .. v18}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    .line 2537
    .local v1, "prevYear":I
    move-object/from16 v18, v10

    .end local v10    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .local v18, "calForJan1":Lsun/util/calendar/BaseCalendar;
    iget v10, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ne v1, v10, :cond_29c

    .line 2538
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v10

    .line 2539
    .end local v18    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .restart local v10    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    move/from16 v31, v13

    .end local v13    # "year":I
    .local v31, "year":I
    sget-object v13, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    if-ne v10, v13, :cond_294

    .line 2540
    move/from16 v32, v15

    const/4 v13, 0x0

    const/4 v15, 0x1

    .end local v15    # "month":I
    .local v32, "month":I
    invoke-virtual {v10, v1, v15, v15, v13}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v27

    move v15, v14

    move-wide/from16 v13, v27

    goto :goto_2b4

    .line 2545
    .end local v32    # "month":I
    .restart local v15    # "month":I
    :cond_294
    move/from16 v32, v15

    .end local v15    # "month":I
    .restart local v32    # "month":I
    move v15, v14

    .end local v14    # "mask":I
    .local v15, "mask":I
    iget-wide v13, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 2546
    .end local v27    # "prevJan1":J
    .local v13, "prevJan1":J
    sget-object v10, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_2b4

    .line 2548
    .end local v10    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .end local v31    # "year":I
    .end local v32    # "month":I
    .local v13, "year":I
    .restart local v14    # "mask":I
    .local v15, "month":I
    .restart local v18    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .restart local v27    # "prevJan1":J
    :cond_29c
    move/from16 v31, v13

    move/from16 v32, v15

    move v15, v14

    .end local v13    # "year":I
    .end local v14    # "mask":I
    .local v15, "mask":I
    .restart local v31    # "year":I
    .restart local v32    # "month":I
    iget v10, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-gt v1, v10, :cond_2b2

    .line 2549
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v10

    .line 2550
    .end local v18    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .restart local v10    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v10, v1, v14, v14, v13}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v27

    move-wide/from16 v13, v27

    goto :goto_2b4

    .line 2556
    .end local v10    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .end local v30    # "cutoverYear":I
    .end local v31    # "year":I
    .end local v32    # "month":I
    .local v1, "cutoverYear":I
    .restart local v13    # "year":I
    .restart local v14    # "mask":I
    .local v15, "month":I
    :cond_2b2
    :goto_2b2
    move-wide/from16 v13, v27

    .end local v1    # "cutoverYear":I
    .end local v14    # "mask":I
    .end local v27    # "prevJan1":J
    .local v13, "prevJan1":J
    .local v15, "mask":I
    .restart local v30    # "cutoverYear":I
    .restart local v31    # "year":I
    .restart local v32    # "month":I
    :goto_2b4
    invoke-direct {v0, v13, v14, v8, v9}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v3

    .line 2557
    .end local v8    # "fixedDec31":J
    .end local v13    # "prevJan1":J
    move/from16 v20, v2

    goto/16 :goto_350

    .line 2558
    .end local v22    # "timeOfDay":I
    .end local v29    # "era":I
    .end local v30    # "cutoverYear":I
    .end local v31    # "year":I
    .end local v32    # "month":I
    .restart local v1    # "cutoverYear":I
    .restart local v9    # "timeOfDay":I
    .local v10, "era":I
    .local v13, "year":I
    .restart local v14    # "mask":I
    .local v15, "month":I
    :cond_2bc
    move/from16 v30, v1

    move/from16 v22, v9

    move/from16 v29, v10

    move/from16 v31, v13

    move/from16 v32, v15

    move v15, v14

    .end local v1    # "cutoverYear":I
    .end local v9    # "timeOfDay":I
    .end local v10    # "era":I
    .end local v13    # "year":I
    .end local v14    # "mask":I
    .local v15, "mask":I
    .restart local v22    # "timeOfDay":I
    .restart local v29    # "era":I
    .restart local v30    # "cutoverYear":I
    .restart local v31    # "year":I
    .restart local v32    # "month":I
    iget v1, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-gt v2, v1, :cond_320

    iget v8, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    add-int/lit8 v9, v8, -0x1

    if-ge v2, v9, :cond_2d4

    move/from16 v20, v2

    goto :goto_322

    .line 2575
    :cond_2d4
    iget-object v9, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2576
    .local v9, "calForJan1":Lsun/util/calendar/BaseCalendar;
    add-int/lit8 v10, v2, 0x1

    .line 2577
    .local v10, "nextYear":I
    const/4 v13, 0x1

    add-int/2addr v8, v13

    if-ne v10, v8, :cond_2e0

    if-ge v10, v1, :cond_2e0

    .line 2580
    iget v10, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 2582
    :cond_2e0
    if-ne v10, v1, :cond_2e6

    .line 2583
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v9

    .line 2587
    :cond_2e6
    iget v1, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-gt v10, v1, :cond_2f6

    iget v8, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v8, v1, :cond_2f6

    if-ne v10, v8, :cond_2f1

    goto :goto_2f6

    .line 2595
    :cond_2f1
    iget-wide v13, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 2596
    .local v13, "nextJan1":J
    sget-object v9, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_2fc

    .line 2590
    .end local v13    # "nextJan1":J
    :cond_2f6
    :goto_2f6
    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-virtual {v9, v10, v8, v8, v1}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v13

    .line 2599
    .restart local v13    # "nextJan1":J
    :goto_2fc
    const-wide/16 v18, 0x6

    move v8, v2

    .end local v2    # "normalizedYear":I
    .local v8, "normalizedYear":I
    add-long v1, v13, v18

    .line 2600
    move/from16 v20, v8

    .end local v8    # "normalizedYear":I
    .local v20, "normalizedYear":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v8

    .line 2599
    invoke-static {v1, v2, v8}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v1

    .line 2601
    .local v1, "nextJan1st":J
    move-object/from16 v18, v9

    .end local v9    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .restart local v18    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    sub-long v8, v1, v13

    long-to-int v8, v8

    .line 2602
    .local v8, "ndays":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v9

    if-lt v8, v9, :cond_350

    const-wide/16 v27, 0x7

    sub-long v27, v1, v27

    cmp-long v9, v11, v27

    if-ltz v9, :cond_350

    .line 2604
    const/4 v3, 0x1

    goto :goto_350

    .line 2558
    .end local v1    # "nextJan1st":J
    .end local v8    # "ndays":I
    .end local v10    # "nextYear":I
    .end local v13    # "nextJan1":J
    .end local v18    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .end local v20    # "normalizedYear":I
    .restart local v2    # "normalizedYear":I
    :cond_320
    move/from16 v20, v2

    .line 2561
    .end local v2    # "normalizedYear":I
    .restart local v20    # "normalizedYear":I
    :goto_322
    const/16 v1, 0x34

    if-lt v3, v1, :cond_350

    .line 2562
    const-wide/16 v1, 0x16d

    add-long/2addr v1, v6

    .line 2563
    .local v1, "nextJan1":J
    iget-object v8, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->isLeapYear()Z

    move-result v8

    if-eqz v8, :cond_333

    .line 2564
    add-long v1, v1, v18

    .line 2566
    :cond_333
    const-wide/16 v8, 0x6

    add-long/2addr v8, v1

    .line 2567
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v10

    .line 2566
    invoke-static {v8, v9, v10}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v8

    .line 2568
    .local v8, "nextJan1st":J
    sub-long v13, v8, v1

    long-to-int v10, v13

    .line 2569
    .local v10, "ndays":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v13

    if-lt v10, v13, :cond_350

    const-wide/16 v13, 0x7

    sub-long v13, v8, v13

    cmp-long v13, v11, v13

    if-ltz v13, :cond_350

    .line 2571
    const/4 v3, 0x1

    .line 2608
    .end local v1    # "nextJan1":J
    .end local v8    # "nextJan1st":J
    .end local v10    # "ndays":I
    :cond_350
    :goto_350
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2609
    const/4 v1, 0x4

    invoke-direct {v0, v4, v5, v11, v12}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2610
    move v14, v15

    .end local v15    # "mask":I
    .restart local v14    # "mask":I
    or-int/lit16 v14, v14, 0x158

    goto :goto_36e

    .line 2482
    .end local v6    # "fixedDateJan1":J
    .end local v16    # "tz":Ljava/util/TimeZone;
    .end local v17    # "zoneOffset":I
    .end local v20    # "normalizedYear":I
    .end local v21    # "dayOfMonth":I
    .end local v22    # "timeOfDay":I
    .end local v23    # "dayOfYear":I
    .end local v24    # "cutoverGap":I
    .end local v26    # "relativeDayOfMonth":I
    .end local v29    # "era":I
    .end local v30    # "cutoverYear":I
    .end local v31    # "year":I
    .end local v32    # "month":I
    .local v3, "zoneOffset":I
    .local v4, "tz":Ljava/util/TimeZone;
    .local v8, "dayOfMonth":I
    .local v9, "timeOfDay":I
    .local v10, "era":I
    .local v13, "year":I
    .local v15, "month":I
    :cond_360
    move/from16 v17, v3

    move-object/from16 v16, v4

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v29, v10

    move/from16 v31, v13

    move/from16 v32, v15

    .line 2612
    .end local v3    # "zoneOffset":I
    .end local v4    # "tz":Ljava/util/TimeZone;
    .end local v8    # "dayOfMonth":I
    .end local v9    # "timeOfDay":I
    .end local v10    # "era":I
    .end local v13    # "year":I
    .end local v15    # "month":I
    .restart local v16    # "tz":Ljava/util/TimeZone;
    .restart local v17    # "zoneOffset":I
    .restart local v21    # "dayOfMonth":I
    .restart local v22    # "timeOfDay":I
    .restart local v29    # "era":I
    .restart local v31    # "year":I
    .restart local v32    # "month":I
    :goto_36e
    return v14
.end method

.method public static whitelist test-api from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;
    .registers 6
    .param p0, "zdt"    # Ljava/time/ZonedDateTime;

    .line 3456
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 3457
    .local v0, "cal":Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 3458
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 3459
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    .line 3461
    :try_start_1f
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 3462
    invoke-virtual {p0, v3}, Ljava/time/ZonedDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v3, v3

    .line 3461
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V
    :try_end_37
    .catch Ljava/lang/ArithmeticException; {:try_start_1f .. :try_end_37} :catch_39

    .line 3465
    nop

    .line 3466
    return-object v0

    .line 3463
    :catch_39
    move-exception v1

    .line 3464
    .local v1, "ex":Ljava/lang/ArithmeticException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private greylist-max-o getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;
    .registers 5
    .param p1, "fd"    # J

    .line 3259
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_d

    :cond_9
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 3260
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    :goto_d
    sget-object v1, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    .line 3261
    .local v1, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 3262
    return-object v1
.end method

.method private greylist-max-o getCurrentFixedDate()J
    .registers 3

    .line 3371
    iget-object v0, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    sget-object v1, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-ne v0, v1, :cond_9

    iget-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    goto :goto_f

    :cond_9
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    :goto_f
    return-wide v0
.end method

.method private greylist-max-o getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;
    .registers 3

    .line 3169
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ge v0, v1, :cond_9

    .line 3170
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    return-object v0

    .line 3172
    :cond_9
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getFixedDate(Lsun/util/calendar/BaseCalendar;II)J
    .registers 21
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "year"    # I
    .param p3, "fieldMask"    # I

    .line 3015
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 3016
    .local v3, "month":I
    const/4 v4, 0x2

    invoke-static {v2, v4}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_32

    .line 3019
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 3022
    const/16 v5, 0xb

    if-le v3, v5, :cond_1e

    .line 3023
    div-int/lit8 v5, v3, 0xc

    add-int v5, p2, v5

    .line 3024
    .end local p2    # "year":I
    .local v5, "year":I
    rem-int/lit8 v3, v3, 0xc

    goto :goto_34

    .line 3025
    .end local v5    # "year":I
    .restart local p2    # "year":I
    :cond_1e
    if-gez v3, :cond_2f

    .line 3026
    new-array v5, v6, [I

    .line 3027
    .local v5, "rem":[I
    const/16 v7, 0xc

    invoke-static {v3, v7, v5}, Lsun/util/calendar/CalendarUtils;->floorDivide(II[I)I

    move-result v7

    add-int v7, p2, v7

    .line 3028
    .end local p2    # "year":I
    .local v7, "year":I
    const/4 v8, 0x0

    aget v3, v5, v8

    move v5, v7

    goto :goto_34

    .line 3025
    .end local v5    # "rem":[I
    .end local v7    # "year":I
    .restart local p2    # "year":I
    :cond_2f
    move/from16 v5, p2

    goto :goto_34

    .line 3016
    :cond_32
    move/from16 v5, p2

    .line 3034
    .end local p2    # "year":I
    .local v5, "year":I
    :goto_34
    add-int/lit8 v7, v3, 0x1

    .line 3035
    sget-object v8, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-ne v1, v8, :cond_3d

    iget-object v9, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    goto :goto_3e

    :cond_3d
    const/4 v9, 0x0

    .line 3034
    :goto_3e
    invoke-virtual {v1, v5, v7, v6, v9}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v9

    .line 3036
    .local v9, "fixedDate":J
    invoke-static {v2, v4}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v4

    const-wide/16 v11, 0x7

    const-wide/16 v13, 0x6

    const-wide/16 v15, 0x1

    const/4 v7, 0x7

    if-eqz v4, :cond_e8

    .line 3038
    const/4 v4, 0x5

    invoke-static {v2, v4}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 3045
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 3048
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    int-to-long v6, v4

    add-long/2addr v9, v6

    .line 3049
    sub-long/2addr v9, v15

    move v6, v5

    goto/16 :goto_144

    .line 3045
    :cond_66
    move v6, v5

    goto/16 :goto_144

    .line 3052
    :cond_69
    const/4 v4, 0x4

    invoke-static {v2, v4}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 3053
    move/from16 p2, v5

    .end local v5    # "year":I
    .restart local p2    # "year":I
    add-long v4, v9, v13

    .line 3054
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v15

    .line 3053
    invoke-static {v4, v5, v15}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    .line 3057
    .local v4, "firstDayOfWeek":J
    sub-long v15, v4, v9

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v8

    int-to-long v13, v8

    cmp-long v8, v15, v13

    if-ltz v8, :cond_88

    .line 3058
    sub-long/2addr v4, v11

    .line 3060
    :cond_88
    invoke-static {v2, v7}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 3061
    const-wide/16 v11, 0x6

    add-long v13, v4, v11

    .line 3062
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v8

    .line 3061
    invoke-static {v13, v14, v8}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    .line 3067
    :cond_9a
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v8

    sub-int/2addr v8, v6

    mul-int/2addr v8, v7

    int-to-long v6, v8

    add-long v9, v4, v6

    .line 3068
    .end local v4    # "firstDayOfWeek":J
    move/from16 v6, p2

    goto/16 :goto_144

    .line 3070
    .end local p2    # "year":I
    .restart local v5    # "year":I
    :cond_a8
    move/from16 p2, v5

    .end local v5    # "year":I
    .restart local p2    # "year":I
    invoke-static {v2, v7}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 3071
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    .local v4, "dayOfWeek":I
    goto :goto_b9

    .line 3073
    .end local v4    # "dayOfWeek":I
    :cond_b5
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v4

    .line 3079
    .restart local v4    # "dayOfWeek":I
    :goto_b9
    const/16 v5, 0x8

    invoke-static {v2, v5}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 3080
    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v5

    .local v5, "dowim":I
    goto :goto_c7

    .line 3082
    .end local v5    # "dowim":I
    :cond_c6
    const/4 v5, 0x1

    .line 3084
    .restart local v5    # "dowim":I
    :goto_c7
    if-ltz v5, :cond_d6

    .line 3085
    mul-int/lit8 v6, v5, 0x7

    int-to-long v6, v6

    add-long/2addr v6, v9

    sub-long/2addr v6, v15

    invoke-static {v6, v7, v4}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v6

    move-wide v9, v6

    move/from16 v6, p2

    .end local v9    # "fixedDate":J
    .local v6, "fixedDate":J
    goto :goto_e7

    .line 3090
    .end local v6    # "fixedDate":J
    .restart local v9    # "fixedDate":J
    :cond_d6
    move/from16 v6, p2

    .end local p2    # "year":I
    .local v6, "year":I
    invoke-direct {v0, v3, v6}, Ljava/util/GregorianCalendar;->monthLength(II)I

    move-result v8

    add-int/lit8 v11, v5, 0x1

    mul-int/2addr v11, v7

    add-int/2addr v8, v11

    .line 3092
    .local v8, "lastDate":I
    int-to-long v11, v8

    add-long/2addr v11, v9

    sub-long/2addr v11, v15

    invoke-static {v11, v12, v4}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v9

    .line 3095
    .end local v4    # "dayOfWeek":I
    .end local v5    # "dowim":I
    .end local v8    # "lastDate":I
    :goto_e7
    goto :goto_144

    .line 3098
    .end local v6    # "year":I
    .local v5, "year":I
    :cond_e8
    move v6, v5

    .end local v5    # "year":I
    .restart local v6    # "year":I
    iget v4, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ne v6, v4, :cond_fb

    if-ne v1, v8, :cond_fb

    iget-wide v13, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v5, v9, v13

    if-gez v5, :cond_fb

    iget v5, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v4, v5, :cond_fb

    .line 3104
    iget-wide v9, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 3107
    :cond_fb
    const/4 v4, 0x6

    invoke-static {v2, v4}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v5

    if-eqz v5, :cond_10a

    .line 3109
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v9, v4

    .line 3110
    sub-long/2addr v9, v15

    goto :goto_144

    .line 3112
    :cond_10a
    const-wide/16 v4, 0x6

    add-long v13, v9, v4

    .line 3113
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v4

    .line 3112
    invoke-static {v13, v14, v4}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    .line 3116
    .local v4, "firstDayOfWeek":J
    sub-long v13, v4, v9

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v8

    int-to-long v7, v8

    cmp-long v7, v13, v7

    if-ltz v7, :cond_122

    .line 3117
    sub-long/2addr v4, v11

    .line 3119
    :cond_122
    const/4 v7, 0x7

    invoke-static {v2, v7}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v8

    if-eqz v8, :cond_13a

    .line 3120
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v7

    .line 3121
    .local v7, "dayOfWeek":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v8

    if-eq v7, v8, :cond_13a

    .line 3122
    const-wide/16 v13, 0x6

    add-long/2addr v13, v4

    invoke-static {v13, v14, v7}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    .line 3126
    .end local v7    # "dayOfWeek":I
    :cond_13a
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v7

    int-to-long v7, v7

    sub-long/2addr v7, v15

    mul-long/2addr v7, v11

    add-long v9, v4, v7

    .line 3130
    .end local v4    # "firstDayOfWeek":J
    :goto_144
    return-wide v9
.end method

.method private greylist-max-o getFixedDateJan1(Lsun/util/calendar/BaseCalendar$Date;J)J
    .registers 8
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p2, "fixedDate"    # J

    .line 3194
    nop

    .line 3196
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v0, v1, :cond_e

    .line 3197
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_e

    .line 3202
    return-wide v0

    .line 3206
    :cond_e
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 3207
    .local v0, "juliancal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v1

    return-wide v1
.end method

.method private greylist-max-o getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J
    .registers 11
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p2, "fixedDate"    # J

    .line 3220
    nop

    .line 3222
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 3223
    .local v0, "gCutover":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v1

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1d

    .line 3224
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v1

    if-ne v1, v4, :cond_1d

    .line 3226
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v1

    int-to-long v4, v1

    sub-long v4, p2, v4

    add-long/2addr v4, v2

    return-wide v4

    .line 3231
    :cond_1d
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v5

    if-ne v1, v5, :cond_4e

    .line 3233
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getLastJulianDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v1

    .line 3234
    .local v1, "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    iget v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v2, v3, :cond_4b

    .line 3235
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v2

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_4b

    .line 3237
    sget-object v2, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    .line 3238
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v5

    const/4 v6, 0x0

    .line 3237
    invoke-virtual {v2, v3, v5, v4, v6}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v2

    .local v2, "fixedDateMonth1":J
    goto :goto_4d

    .line 3243
    .end local v2    # "fixedDateMonth1":J
    :cond_4b
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 3245
    .end local v1    # "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    .restart local v2    # "fixedDateMonth1":J
    :goto_4d
    goto :goto_56

    .line 3247
    .end local v2    # "fixedDateMonth1":J
    :cond_4e
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v1

    int-to-long v4, v1

    sub-long v4, p2, v4

    add-long/2addr v2, v4

    .line 3250
    .restart local v2    # "fixedDateMonth1":J
    :goto_56
    return-wide v2
.end method

.method private greylist-max-o getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;
    .registers 3

    .line 3270
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized greylist-max-o getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;
    .registers 2

    const-class v0, Ljava/util/GregorianCalendar;

    monitor-enter v0

    .line 3156
    :try_start_3
    sget-object v1, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    if-nez v1, :cond_17

    .line 3157
    const-string v1, "julian"

    invoke-static {v1}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/JulianCalendar;

    sput-object v1, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    .line 3158
    invoke-virtual {v1}, Lsun/util/calendar/JulianCalendar;->getEras()[Lsun/util/calendar/Era;

    move-result-object v1

    sput-object v1, Ljava/util/GregorianCalendar;->jeras:[Lsun/util/calendar/Era;

    .line 3160
    :cond_17
    sget-object v1, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v0

    return-object v1

    .line 3155
    :catchall_1b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private greylist-max-o getLastJulianDate()Lsun/util/calendar/BaseCalendar$Date;
    .registers 5

    .line 3278
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getNormalizedCalendar()Ljava/util/GregorianCalendar;
    .registers 3

    .line 3140
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isFullyNormalized()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3141
    move-object v0, p0

    .local v0, "gc":Ljava/util/GregorianCalendar;
    goto :goto_15

    .line 3144
    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    :cond_8
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 3145
    .restart local v0    # "gc":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 3146
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->complete()V

    .line 3148
    :goto_15
    return-object v0
.end method

.method private static greylist-max-o getRolledValue(IIII)I
    .registers 6
    .param p0, "value"    # I
    .param p1, "amount"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 3378
    nop

    .line 3379
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    .line 3380
    .local v0, "range":I
    rem-int/2addr p1, v0

    .line 3381
    add-int v1, p0, p1

    .line 3382
    .local v1, "n":I
    if-le v1, p3, :cond_c

    .line 3383
    sub-int/2addr v1, v0

    goto :goto_f

    .line 3384
    :cond_c
    if-ge v1, p2, :cond_f

    .line 3385
    add-int/2addr v1, v0

    .line 3387
    :cond_f
    :goto_f
    nop

    .line 3388
    return v1
.end method

.method private greylist-max-o getWeekNumber(JJ)I
    .registers 10
    .param p1, "fixedDay1"    # J
    .param p3, "fixedDate"    # J

    .line 2627
    const-wide/16 v0, 0x6

    add-long/2addr v0, p1

    .line 2628
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v2

    .line 2627
    invoke-static {v0, v1, v2}, Lsun/util/calendar/Gregorian;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    .line 2629
    .local v0, "fixedDay1st":J
    sub-long v2, v0, p1

    long-to-int v2, v2

    .line 2630
    .local v2, "ndays":I
    nop

    .line 2631
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-lt v2, v3, :cond_18

    .line 2632
    const-wide/16 v3, 0x7

    sub-long/2addr v0, v3

    .line 2634
    :cond_18
    sub-long v3, p3, v0

    long-to-int v3, v3

    .line 2635
    .local v3, "normalizedDayOfPeriod":I
    if-ltz v3, :cond_22

    .line 2636
    div-int/lit8 v4, v3, 0x7

    add-int/lit8 v4, v4, 0x1

    return v4

    .line 2638
    :cond_22
    const/4 v4, 0x7

    invoke-static {v3, v4}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private greylist-max-o getYearOffsetInMillis()J
    .registers 7

    .line 1998
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    .line 1999
    .local v0, "t":J
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 2000
    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    .line 2001
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 2002
    mul-long/2addr v0, v2

    .line 2003
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 2004
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 2005
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 2006
    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 2005
    return-wide v2
.end method

.method private greylist-max-o internalGetEra()I
    .registers 3

    .line 3396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method private greylist-max-o isCutoverYear(I)Z
    .registers 4
    .param p1, "normalizedYear"    # I

    .line 3180
    iget-object v0, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    sget-object v1, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-ne v0, v1, :cond_9

    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    goto :goto_b

    :cond_9
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 3181
    .local v0, "cutoverYear":I
    :goto_b
    if-ne p1, v0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method private greylist-max-o monthLength(I)I
    .registers 4
    .param p1, "month"    # I

    .line 3298
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    .line 3299
    .local v0, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v1

    if-nez v1, :cond_d

    .line 3300
    rsub-int/lit8 v0, v0, 0x1

    .line 3302
    :cond_d
    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;->monthLength(II)I

    move-result v1

    return v1
.end method

.method private greylist-max-o monthLength(II)I
    .registers 4
    .param p1, "month"    # I
    .param p2, "year"    # I

    .line 3288
    invoke-virtual {p0, p2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    aget v0, v0, p1

    goto :goto_f

    :cond_b
    sget-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    aget v0, v0, p1

    :goto_f
    return v0
.end method

.method private greylist-max-o pinDayOfMonth()V
    .registers 5

    .line 3352
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    .line 3354
    .local v0, "year":I
    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    const/4 v2, 0x5

    if-gt v0, v1, :cond_18

    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ge v0, v1, :cond_f

    goto :goto_18

    .line 3357
    :cond_f
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 3358
    .local v1, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v3

    .local v3, "monthLen":I
    goto :goto_21

    .line 3355
    .end local v1    # "gc":Ljava/util/GregorianCalendar;
    .end local v3    # "monthLen":I
    :cond_18
    :goto_18
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/GregorianCalendar;->monthLength(I)I

    move-result v3

    .line 3360
    .restart local v3    # "monthLen":I
    :goto_21
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    .line 3361
    .local v1, "dom":I
    if-le v1, v3, :cond_2a

    .line 3362
    invoke-virtual {p0, v2, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 3364
    :cond_2a
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 3404
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3405
    iget-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v0, :cond_17

    .line 3406
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 3407
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 3409
    :cond_17
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(J)V

    .line 3410
    return-void
.end method

.method private greylist-max-o setGregorianChange(J)V
    .registers 10
    .param p1, "cutoverTime"    # J

    .line 776
    iput-wide p1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 777
    const-wide/32 v0, 0x5265c00

    invoke-static {p1, p2, v0, v1}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0xaf93b

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 785
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_1d

    .line 786
    add-long/2addr v0, v3

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 789
    :cond_1d
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 792
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v1

    iput v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 794
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v1

    .line 795
    .local v1, "julianCal":Lsun/util/calendar/BaseCalendar;
    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 796
    iget-wide v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    sub-long/2addr v5, v3

    invoke-virtual {v1, v0, v5, v6}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 797
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 799
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->time:J

    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4b

    .line 802
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->setUnnormalized()V

    .line 804
    :cond_4b
    return-void
.end method

.method private greylist-max-o yearLength()I
    .registers 3

    .line 3338
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    .line 3339
    .local v0, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v1

    if-nez v1, :cond_d

    .line 3340
    rsub-int/lit8 v0, v0, 0x1

    .line 3342
    :cond_d
    invoke-direct {p0, v0}, Ljava/util/GregorianCalendar;->yearLength(I)I

    move-result v1

    return v1
.end method

.method private greylist-max-o yearLength(I)I
    .registers 3
    .param p1, "year"    # I

    .line 3330
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    return v0
.end method


# virtual methods
.method public whitelist test-api add(II)V
    .registers 15
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 922
    if-nez p2, :cond_3

    .line 923
    return-void

    .line 926
    :cond_3
    if-ltz p1, :cond_125

    const/16 v0, 0xf

    if-ge p1, v0, :cond_125

    .line 931
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 933
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3e

    .line 934
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    .line 935
    .local v2, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v3

    if-ne v3, v1, :cond_2a

    .line 936
    add-int/2addr v2, p2

    .line 937
    if-lez v2, :cond_21

    .line 938
    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_39

    .line 940
    :cond_21
    rsub-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 942
    invoke-virtual {p0, v0, v0}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_39

    .line 946
    :cond_2a
    sub-int/2addr v2, p2

    .line 947
    if-lez v2, :cond_31

    .line 948
    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_39

    .line 950
    :cond_31
    rsub-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 952
    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 955
    :goto_39
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->pinDayOfMonth()V

    .line 956
    .end local v2    # "year":I
    goto/16 :goto_124

    :cond_3e
    const/4 v2, 0x2

    const/16 v3, 0xc

    if-ne p1, v2, :cond_95

    .line 957
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    add-int/2addr v4, p2

    .line 958
    .local v4, "month":I
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v5

    .line 961
    .local v5, "year":I
    if-ltz v4, :cond_51

    .line 962
    div-int/lit8 v3, v4, 0xc

    .local v3, "y_amount":I
    goto :goto_56

    .line 964
    .end local v3    # "y_amount":I
    :cond_51
    add-int/lit8 v6, v4, 0x1

    div-int/2addr v6, v3

    add-int/lit8 v3, v6, -0x1

    .line 966
    .restart local v3    # "y_amount":I
    :goto_56
    if-eqz v3, :cond_7d

    .line 967
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v6

    if-ne v6, v1, :cond_6e

    .line 968
    add-int/2addr v5, v3

    .line 969
    if-lez v5, :cond_65

    .line 970
    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_7d

    .line 972
    :cond_65
    rsub-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 974
    invoke-virtual {p0, v0, v0}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_7d

    .line 978
    :cond_6e
    sub-int/2addr v5, v3

    .line 979
    if-lez v5, :cond_75

    .line 980
    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_7d

    .line 982
    :cond_75
    rsub-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 984
    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 989
    :cond_7d
    :goto_7d
    if-ltz v4, :cond_85

    .line 990
    rem-int/lit8 v0, v4, 0xc

    invoke-virtual {p0, v2, v0}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_90

    .line 993
    :cond_85
    rem-int/lit8 v4, v4, 0xc

    .line 994
    if-gez v4, :cond_8b

    .line 995
    add-int/lit8 v4, v4, 0xc

    .line 997
    :cond_8b
    add-int/lit8 v0, v4, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 999
    :goto_90
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->pinDayOfMonth()V

    .line 1000
    .end local v3    # "y_amount":I
    .end local v4    # "month":I
    .end local v5    # "year":I
    goto/16 :goto_124

    :cond_95
    if-nez p1, :cond_a7

    .line 1001
    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    add-int/2addr v2, p2

    .line 1002
    .local v2, "era":I
    if-gez v2, :cond_9f

    .line 1003
    const/4 v2, 0x0

    .line 1005
    :cond_9f
    if-le v2, v1, :cond_a2

    .line 1006
    const/4 v2, 0x1

    .line 1008
    :cond_a2
    invoke-virtual {p0, v0, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1009
    .end local v2    # "era":I
    goto/16 :goto_124

    .line 1010
    :cond_a7
    int-to-long v0, p2

    .line 1011
    .local v0, "delta":J
    const-wide/16 v4, 0x0

    .line 1012
    .local v4, "timeOfDay":J
    const-wide/16 v6, 0x3e8

    packed-switch p1, :pswitch_data_12c

    goto :goto_ca

    .line 1029
    :pswitch_b0
    goto :goto_ca

    .line 1025
    :pswitch_b1
    mul-long/2addr v0, v6

    .line 1026
    goto :goto_ca

    .line 1021
    :pswitch_b3
    const-wide/32 v8, 0xea60

    mul-long/2addr v0, v8

    .line 1022
    goto :goto_ca

    .line 1017
    :pswitch_b8
    const-wide/32 v8, 0x36ee80

    mul-long/2addr v0, v8

    .line 1018
    goto :goto_ca

    .line 1048
    :pswitch_bd
    div-int/lit8 v2, p2, 0x2

    int-to-long v0, v2

    .line 1049
    rem-int/lit8 v2, p2, 0x2

    mul-int/2addr v2, v3

    int-to-long v4, v2

    goto :goto_ca

    .line 1043
    :pswitch_c5
    goto :goto_ca

    .line 1037
    :pswitch_c6
    const-wide/16 v8, 0x7

    mul-long/2addr v0, v8

    .line 1038
    nop

    .line 1055
    :goto_ca
    const/16 v2, 0xa

    if-lt p1, v2, :cond_d5

    .line 1056
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->time:J

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1057
    return-void

    .line 1066
    :cond_d5
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v8

    .line 1067
    .local v8, "fd":J
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v10, v2

    add-long/2addr v4, v10

    .line 1068
    const-wide/16 v10, 0x3c

    mul-long/2addr v4, v10

    .line 1069
    invoke-virtual {p0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v4, v2

    .line 1070
    mul-long/2addr v4, v10

    .line 1071
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v4, v2

    .line 1072
    mul-long/2addr v4, v6

    .line 1073
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v4, v2

    .line 1074
    const-wide/32 v2, 0x5265c00

    cmp-long v6, v4, v2

    const-wide/16 v10, 0x1

    if-ltz v6, :cond_108

    .line 1075
    add-long/2addr v8, v10

    .line 1076
    sub-long/2addr v4, v2

    goto :goto_110

    .line 1077
    :cond_108
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_110

    .line 1078
    sub-long/2addr v8, v10

    .line 1079
    add-long/2addr v4, v2

    .line 1082
    :cond_110
    :goto_110
    add-long/2addr v8, v0

    .line 1085
    const-wide/32 v6, 0xaf93b

    sub-long v6, v8, v6

    mul-long/2addr v6, v2

    add-long/2addr v6, v4

    .line 1089
    .local v6, "utcTime":J
    const/4 v2, 0x0

    .line 1092
    .local v2, "tzMask":I
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {p0, v2, v6, v7, v3}, Ljava/util/GregorianCalendar;->adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J

    move-result-wide v10

    .line 1095
    .local v10, "millis":J
    invoke-virtual {p0, v10, v11}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1098
    .end local v0    # "delta":J
    .end local v2    # "tzMask":I
    .end local v4    # "timeOfDay":J
    .end local v6    # "utcTime":J
    .end local v8    # "fd":J
    .end local v10    # "millis":J
    :goto_124
    return-void

    .line 927
    :cond_125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    nop

    :pswitch_data_12c
    .packed-switch 0x3
        :pswitch_c6
        :pswitch_c6
        :pswitch_c5
        :pswitch_c5
        :pswitch_c5
        :pswitch_c6
        :pswitch_bd
        :pswitch_b8
        :pswitch_b8
        :pswitch_b3
        :pswitch_b1
        :pswitch_b0
    .end packed-switch
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5

    .line 2012
    invoke-super {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 2014
    .local v0, "other":Ljava/util/GregorianCalendar;
    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 2015
    iget-object v2, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v2, :cond_23

    .line 2016
    iget-object v3, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v2, v3, :cond_21

    .line 2017
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    goto :goto_23

    .line 2019
    :cond_21
    iput-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 2022
    :cond_23
    :goto_23
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    .line 2023
    iput-object v1, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    .line 2024
    return-object v0
.end method

.method protected whitelist test-api computeFields()V
    .registers 4

    .line 2308
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isPartiallyNormalized()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2310
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getSetStateFields()I

    move-result v0

    .line 2311
    .local v0, "mask":I
    not-int v1, v0

    const v2, 0x1ffff

    and-int/2addr v1, v2

    .line 2314
    .local v1, "fieldMask":I
    if-nez v1, :cond_15

    iget-object v2, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    if-nez v2, :cond_1f

    .line 2315
    :cond_15
    const v2, 0x18000

    and-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Ljava/util/GregorianCalendar;->computeFields(II)I

    move-result v2

    or-int/2addr v0, v2

    .line 2317
    nop

    .line 2319
    .end local v1    # "fieldMask":I
    :cond_1f
    goto :goto_27

    .line 2320
    .end local v0    # "mask":I
    :cond_20
    const v0, 0x1ffff

    .line 2321
    .restart local v0    # "mask":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->computeFields(II)I

    .line 2324
    :goto_27
    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    .line 2325
    return-void
.end method

.method protected whitelist test-api computeTime()V
    .registers 20

    .line 2653
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v1

    const/16 v2, 0x11

    if-nez v1, :cond_3d

    .line 2654
    iget-object v1, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    if-nez v1, :cond_12

    .line 2655
    new-array v1, v2, [I

    iput-object v1, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    .line 2657
    :cond_12
    const/4 v1, 0x0

    .local v1, "field":I
    :goto_13
    if-ge v1, v2, :cond_3d

    .line 2658
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 2659
    .local v3, "value":I
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isExternallySet(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2661
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v4

    if-lt v3, v4, :cond_2c

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v4

    if-gt v3, v4, :cond_2c

    goto :goto_36

    .line 2662
    :cond_2c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2665
    :cond_36
    :goto_36
    iget-object v4, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    aput v3, v4, v1

    .line 2657
    .end local v3    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2671
    .end local v1    # "field":I
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->selectFields()I

    move-result v1

    .line 2676
    .local v1, "fieldMask":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    goto :goto_4f

    :cond_4d
    const/16 v4, 0x7b2

    .line 2678
    .local v4, "year":I
    :goto_4f
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v5

    .line 2679
    .local v5, "era":I
    if-nez v5, :cond_58

    .line 2680
    rsub-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 2681
    :cond_58
    if-ne v5, v3, :cond_1ef

    .line 2690
    :goto_5a
    const/4 v6, 0x0

    if-gtz v4, :cond_68

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v7

    if-nez v7, :cond_68

    .line 2691
    or-int/lit8 v1, v1, 0x1

    .line 2692
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    .line 2697
    :cond_68
    const-wide/16 v7, 0x0

    .line 2698
    .local v7, "timeOfDay":J
    const/16 v3, 0xb

    invoke-static {v1, v3}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v9

    const/16 v10, 0xc

    if-eqz v9, :cond_7b

    .line 2699
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    int-to-long v11, v3

    add-long/2addr v7, v11

    goto :goto_92

    .line 2701
    :cond_7b
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    int-to-long v11, v3

    add-long/2addr v7, v11

    .line 2703
    const/16 v3, 0x9

    invoke-static {v1, v3}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v9

    if-eqz v9, :cond_92

    .line 2704
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    mul-int/2addr v3, v10

    int-to-long v11, v3

    add-long/2addr v7, v11

    .line 2707
    :cond_92
    :goto_92
    const-wide/16 v11, 0x3c

    mul-long/2addr v7, v11

    .line 2708
    invoke-virtual {v0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    int-to-long v9, v3

    add-long/2addr v7, v9

    .line 2709
    mul-long/2addr v7, v11

    .line 2710
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    int-to-long v9, v3

    add-long/2addr v7, v9

    .line 2711
    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    .line 2712
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    int-to-long v9, v3

    add-long/2addr v7, v9

    .line 2716
    const-wide/32 v9, 0x5265c00

    div-long v11, v7, v9

    .line 2717
    .local v11, "fixedDate":J
    rem-long/2addr v7, v9

    .line 2718
    :goto_b5
    const-wide/16 v13, 0x0

    cmp-long v3, v7, v13

    if-gez v3, :cond_c0

    .line 2719
    add-long/2addr v7, v9

    .line 2720
    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    goto :goto_b5

    .line 2726
    :cond_c0
    iget v3, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-le v4, v3, :cond_e2

    iget v13, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-le v4, v13, :cond_e2

    .line 2727
    sget-object v3, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-direct {v0, v3, v4, v1}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v13

    add-long/2addr v13, v11

    .line 2728
    .local v13, "gfd":J
    iget-wide v2, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v2, v13, v2

    if-ltz v2, :cond_d8

    .line 2729
    move-wide v2, v13

    .line 2730
    .end local v11    # "fixedDate":J
    .local v2, "fixedDate":J
    goto/16 :goto_14f

    .line 2732
    .end local v2    # "fixedDate":J
    .restart local v11    # "fixedDate":J
    :cond_d8
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v2

    invoke-direct {v0, v2, v4, v1}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v2

    add-long/2addr v2, v11

    .local v2, "jfd":J
    goto :goto_10c

    .line 2733
    .end local v2    # "jfd":J
    .end local v13    # "gfd":J
    :cond_e2
    if-ge v4, v3, :cond_fc

    iget v2, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ge v4, v2, :cond_fc

    .line 2734
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v2

    invoke-direct {v0, v2, v4, v1}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v2

    add-long/2addr v2, v11

    .line 2735
    .restart local v2    # "jfd":J
    iget-wide v13, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v13, v2, v13

    if-gez v13, :cond_fa

    .line 2736
    move-wide v11, v2

    .line 2737
    goto/16 :goto_14f

    .line 2739
    :cond_fa
    move-wide v13, v2

    .restart local v13    # "gfd":J
    goto :goto_10c

    .line 2741
    .end local v2    # "jfd":J
    .end local v13    # "gfd":J
    :cond_fc
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v2

    invoke-direct {v0, v2, v4, v1}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v2

    add-long/2addr v2, v11

    .line 2742
    .restart local v2    # "jfd":J
    sget-object v13, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-direct {v0, v13, v4, v1}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v13

    add-long/2addr v13, v11

    .line 2749
    .restart local v13    # "gfd":J
    :goto_10c
    const/4 v15, 0x6

    invoke-static {v1, v15}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v15

    if-nez v15, :cond_11a

    const/4 v15, 0x3

    invoke-static {v1, v15}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v15

    if-eqz v15, :cond_127

    .line 2750
    :cond_11a
    iget v15, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v6, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v15, v6, :cond_122

    .line 2751
    move-wide v11, v2

    .line 2752
    goto :goto_14f

    .line 2753
    :cond_122
    if-ne v4, v15, :cond_127

    .line 2754
    move-wide v11, v13

    .line 2755
    move-wide v2, v11

    goto :goto_14f

    .line 2759
    :cond_127
    iget-wide v9, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v6, v13, v9

    if-ltz v6, :cond_142

    .line 2760
    cmp-long v6, v2, v9

    if-ltz v6, :cond_134

    .line 2761
    move-wide v9, v13

    move-wide v2, v9

    .end local v11    # "fixedDate":J
    .local v9, "fixedDate":J
    goto :goto_14f

    .line 2766
    .end local v9    # "fixedDate":J
    .restart local v11    # "fixedDate":J
    :cond_134
    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    sget-object v9, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-eq v6, v9, :cond_13f

    if-nez v6, :cond_13d

    goto :goto_13f

    .line 2769
    :cond_13d
    move-wide v9, v2

    .end local v11    # "fixedDate":J
    .restart local v9    # "fixedDate":J
    goto :goto_14f

    .line 2767
    .end local v9    # "fixedDate":J
    .restart local v11    # "fixedDate":J
    :cond_13f
    :goto_13f
    move-wide v9, v13

    move-wide v2, v9

    .end local v11    # "fixedDate":J
    .restart local v9    # "fixedDate":J
    goto :goto_14f

    .line 2773
    .end local v9    # "fixedDate":J
    .restart local v11    # "fixedDate":J
    :cond_142
    cmp-long v6, v2, v9

    if-gez v6, :cond_148

    .line 2774
    move-wide v9, v2

    .end local v11    # "fixedDate":J
    .restart local v9    # "fixedDate":J
    goto :goto_14f

    .line 2777
    .end local v9    # "fixedDate":J
    .restart local v11    # "fixedDate":J
    :cond_148
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v6

    if-eqz v6, :cond_1e5

    .line 2782
    move-wide v9, v2

    .line 2788
    .end local v11    # "fixedDate":J
    .end local v13    # "gfd":J
    .local v2, "fixedDate":J
    :goto_14f
    const-wide/32 v9, 0xaf93b

    sub-long v9, v2, v9

    const-wide/32 v11, 0x5265c00

    mul-long/2addr v9, v11

    add-long/2addr v9, v7

    .line 2803
    .local v9, "millis":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v6

    .line 2805
    .local v6, "zone":Ljava/util/TimeZone;
    const v11, 0x18000

    and-int/2addr v11, v1

    .line 2807
    .local v11, "tzMask":I
    invoke-direct {v0, v11, v9, v10, v6}, Ljava/util/GregorianCalendar;->adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J

    move-result-wide v9

    .line 2811
    iput-wide v9, v0, Ljava/util/GregorianCalendar;->time:J

    .line 2813
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getSetStateFields()I

    move-result v12

    or-int/2addr v12, v1

    invoke-direct {v0, v12, v11}, Ljava/util/GregorianCalendar;->computeFields(II)I

    move-result v12

    .line 2815
    .local v12, "mask":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v13

    if-nez v13, :cond_1dd

    .line 2816
    const/4 v13, 0x0

    .local v13, "field":I
    :goto_177
    const/16 v14, 0x11

    if-ge v13, v14, :cond_1d8

    .line 2817
    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->isExternallySet(I)Z

    move-result v15

    if-nez v15, :cond_182

    .line 2818
    goto :goto_18c

    .line 2820
    :cond_182
    iget-object v15, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    aget v15, v15, v13

    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v14

    if-ne v15, v14, :cond_18f

    .line 2816
    :goto_18c
    add-int/lit8 v13, v13, 0x1

    goto :goto_177

    .line 2821
    :cond_18f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    aget v15, v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " -> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2823
    .local v14, "s":Ljava/lang/String;
    iget-object v15, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    move/from16 v16, v1

    .end local v1    # "fieldMask":I
    .local v16, "fieldMask":I
    iget-object v1, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-wide/from16 v17, v2

    .end local v2    # "fixedDate":J
    .local v17, "fixedDate":J
    iget-object v2, v0, Ljava/util/GregorianCalendar;->fields:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v15, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2824
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Ljava/util/GregorianCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2816
    .end local v14    # "s":Ljava/lang/String;
    .end local v16    # "fieldMask":I
    .end local v17    # "fixedDate":J
    .restart local v1    # "fieldMask":I
    .restart local v2    # "fixedDate":J
    :cond_1d8
    move/from16 v16, v1

    move-wide/from16 v17, v2

    .end local v1    # "fieldMask":I
    .end local v2    # "fixedDate":J
    .restart local v16    # "fieldMask":I
    .restart local v17    # "fixedDate":J
    goto :goto_1e1

    .line 2815
    .end local v13    # "field":I
    .end local v16    # "fieldMask":I
    .end local v17    # "fixedDate":J
    .restart local v1    # "fieldMask":I
    .restart local v2    # "fixedDate":J
    :cond_1dd
    move/from16 v16, v1

    move-wide/from16 v17, v2

    .line 2828
    .end local v1    # "fieldMask":I
    .end local v2    # "fixedDate":J
    .restart local v16    # "fieldMask":I
    .restart local v17    # "fixedDate":J
    :goto_1e1
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->setFieldsNormalized(I)V

    .line 2829
    return-void

    .line 2778
    .end local v6    # "zone":Ljava/util/TimeZone;
    .end local v9    # "millis":J
    .end local v12    # "mask":I
    .end local v16    # "fieldMask":I
    .end local v17    # "fixedDate":J
    .restart local v1    # "fieldMask":I
    .local v2, "jfd":J
    .local v11, "fixedDate":J
    .local v13, "gfd":J
    :cond_1e5
    move/from16 v16, v1

    .end local v1    # "fieldMask":I
    .restart local v16    # "fieldMask":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v6, "the specified date doesn\'t exist"

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2686
    .end local v2    # "jfd":J
    .end local v7    # "timeOfDay":J
    .end local v11    # "fixedDate":J
    .end local v13    # "gfd":J
    .end local v16    # "fieldMask":I
    .restart local v1    # "fieldMask":I
    :cond_1ef
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid era"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 877
    instance-of v0, p1, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_17

    .line 878
    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-object v2, p1

    check-cast v2, Ljava/util/GregorianCalendar;

    iget-wide v2, v2, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 877
    :goto_18
    return v0
.end method

.method public whitelist test-api getActualMaximum(I)I
    .registers 19
    .param p1, "field"    # I

    .line 1742
    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, 0x1fe81

    .line 1745
    .local v2, "fieldsForFixedMax":I
    const/4 v3, 0x1

    shl-int v4, v3, v1

    const v5, 0x1fe81

    and-int/2addr v4, v5

    if-eqz v4, :cond_15

    .line 1746
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v3

    return v3

    .line 1749
    :cond_15
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v4

    .line 1750
    .local v4, "gc":Ljava/util/GregorianCalendar;
    iget-object v5, v4, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1751
    .local v5, "date":Lsun/util/calendar/BaseCalendar$Date;
    iget-object v6, v4, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 1752
    .local v6, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v7

    .line 1754
    .local v7, "normalizedYear":I
    const/4 v8, -0x1

    .line 1755
    .local v8, "value":I
    const/4 v9, 0x5

    const-wide/16 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x7

    packed-switch v1, :pswitch_data_274

    .line 1988
    :pswitch_2a
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3

    .line 1901
    :pswitch_30
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v10

    .line 1902
    .local v10, "dow":I
    invoke-direct {v4, v7}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 1903
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/util/calendar/BaseCalendar$Date;

    .line 1904
    .local v9, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v6, v9}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v11

    .line 1905
    .local v11, "ndays":I
    invoke-virtual {v9, v3}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1906
    invoke-virtual {v6, v9}, Lsun/util/calendar/BaseCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1907
    invoke-virtual {v9}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v3

    .line 1908
    .end local v9    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .local v3, "dow1":I
    goto :goto_67

    .line 1910
    .end local v3    # "dow1":I
    .end local v11    # "ndays":I
    :cond_4f
    if-ne v4, v0, :cond_58

    .line 1911
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/GregorianCalendar;

    .line 1913
    :cond_58
    invoke-direct {v4}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v11

    .line 1914
    .restart local v11    # "ndays":I
    invoke-virtual {v4, v9}, Ljava/util/GregorianCalendar;->getActualMinimum(I)I

    move-result v3

    invoke-virtual {v4, v9, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1915
    invoke-virtual {v4, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1917
    .restart local v3    # "dow1":I
    :goto_67
    sub-int v9, v10, v3

    .line 1918
    .local v9, "x":I
    if-gez v9, :cond_6d

    .line 1919
    add-int/lit8 v9, v9, 0x7

    .line 1921
    :cond_6d
    sub-int/2addr v11, v9

    .line 1922
    add-int/lit8 v12, v11, 0x6

    div-int/2addr v12, v13

    .line 1924
    .end local v3    # "dow1":I
    .end local v8    # "value":I
    .end local v9    # "x":I
    .end local v10    # "dow":I
    .end local v11    # "ndays":I
    .local v12, "value":I
    goto/16 :goto_273

    .line 1796
    .end local v12    # "value":I
    .restart local v8    # "value":I
    :pswitch_73
    invoke-direct {v4, v7}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v9

    if-nez v9, :cond_7f

    .line 1797
    invoke-virtual {v6, v5}, Lsun/util/calendar/BaseCalendar;->getYearLength(Lsun/util/calendar/CalendarDate;)I

    move-result v12

    .line 1798
    .end local v8    # "value":I
    .restart local v12    # "value":I
    goto/16 :goto_273

    .line 1803
    .end local v12    # "value":I
    .restart local v8    # "value":I
    :cond_7f
    iget v9, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v10, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v9, v10, :cond_8e

    .line 1804
    invoke-direct {v4}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v9

    .line 1805
    .local v9, "cocal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {v9, v7, v3, v3, v12}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v9

    .line 1806
    .local v9, "jan1":J
    goto :goto_97

    .end local v9    # "jan1":J
    :cond_8e
    if-ne v7, v10, :cond_95

    .line 1807
    invoke-virtual {v6, v7, v3, v3, v12}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v9

    .restart local v9    # "jan1":J
    goto :goto_97

    .line 1809
    .end local v9    # "jan1":J
    :cond_95
    iget-wide v9, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 1812
    .restart local v9    # "jan1":J
    :goto_97
    sget-object v11, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v11, v7, v3, v3, v12}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v11

    .line 1813
    .local v11, "nextJan1":J
    iget-wide v13, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v3, v11, v13

    if-gez v3, :cond_a7

    .line 1814
    iget-wide v11, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 1816
    :cond_a7
    nop

    .line 1818
    nop

    .line 1820
    sub-long v13, v11, v9

    long-to-int v12, v13

    .line 1822
    .end local v8    # "value":I
    .end local v9    # "jan1":J
    .end local v11    # "nextJan1":J
    .restart local v12    # "value":I
    goto/16 :goto_273

    .line 1776
    .end local v12    # "value":I
    .restart local v8    # "value":I
    :pswitch_ae
    invoke-virtual {v6, v5}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v12

    .line 1777
    .end local v8    # "value":I
    .restart local v12    # "value":I
    invoke-direct {v4, v7}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v3

    if-eqz v3, :cond_273

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v3

    if-ne v3, v12, :cond_c0

    .line 1778
    goto/16 :goto_273

    .line 1782
    :cond_c0
    invoke-direct {v4}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v8

    .line 1783
    .local v8, "fd":J
    iget-wide v13, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v3, v8, v13

    if-ltz v3, :cond_cc

    .line 1784
    goto/16 :goto_273

    .line 1786
    :cond_cc
    invoke-direct {v4}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v3

    .line 1787
    .local v3, "monthLength":I
    iget-object v13, v4, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {v4, v13, v8, v9}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v13

    move-wide v15, v8

    .end local v8    # "fd":J
    .local v15, "fd":J
    int-to-long v8, v3

    add-long/2addr v13, v8

    sub-long/2addr v13, v10

    .line 1789
    .local v13, "monthEnd":J
    invoke-direct {v4, v13, v14}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v8

    .line 1790
    .local v8, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v12

    .line 1792
    .end local v3    # "monthLength":I
    .end local v8    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v13    # "monthEnd":J
    .end local v15    # "fd":J
    goto/16 :goto_273

    .line 1860
    .end local v12    # "value":I
    .local v8, "value":I
    :pswitch_e4
    invoke-direct {v4, v7}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v9

    if-nez v9, :cond_125

    .line 1861
    invoke-virtual {v6, v12}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v9

    .line 1862
    .local v9, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v10

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v11

    invoke-virtual {v9, v10, v11, v3}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1863
    invoke-virtual {v6, v9}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v3

    .line 1864
    .local v3, "dayOfWeek":I
    invoke-virtual {v6, v9}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v10

    .line 1865
    .local v10, "monthLength":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v11

    sub-int/2addr v3, v11

    .line 1866
    if-gez v3, :cond_10a

    .line 1867
    add-int/lit8 v3, v3, 0x7

    .line 1869
    :cond_10a
    rsub-int/lit8 v11, v3, 0x7

    .line 1870
    .local v11, "nDaysFirstWeek":I
    const/4 v8, 0x3

    .line 1871
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v12

    if-lt v11, v12, :cond_117

    .line 1872
    add-int/lit8 v8, v8, 0x1

    move v12, v8

    goto :goto_118

    .line 1871
    :cond_117
    move v12, v8

    .line 1874
    .end local v8    # "value":I
    .restart local v12    # "value":I
    :goto_118
    add-int/lit8 v8, v11, 0x15

    sub-int/2addr v10, v8

    .line 1875
    if-lez v10, :cond_273

    .line 1876
    add-int/lit8 v12, v12, 0x1

    .line 1877
    if-le v10, v13, :cond_273

    .line 1878
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_273

    .line 1885
    .end local v3    # "dayOfWeek":I
    .end local v9    # "d":Lsun/util/calendar/CalendarDate;
    .end local v10    # "monthLength":I
    .end local v11    # "nDaysFirstWeek":I
    .end local v12    # "value":I
    .restart local v8    # "value":I
    :cond_125
    if-ne v4, v0, :cond_12e

    .line 1886
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    check-cast v4, Ljava/util/GregorianCalendar;

    .line 1888
    :cond_12e
    invoke-virtual {v4, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v9

    .line 1889
    .local v9, "y":I
    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    .line 1891
    .local v11, "m":I
    :cond_137
    const/4 v12, 0x4

    invoke-virtual {v4, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 1892
    invoke-virtual {v4, v12, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 1893
    invoke-virtual {v4, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-ne v12, v9, :cond_14b

    invoke-virtual {v4, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-eq v12, v11, :cond_137

    .line 1895
    .end local v9    # "y":I
    .end local v11    # "m":I
    :cond_14b
    move v12, v8

    goto/16 :goto_273

    .line 1826
    :pswitch_14e
    invoke-direct {v4, v7}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v10

    const/4 v11, 0x6

    if-nez v10, :cond_18e

    .line 1828
    sget-object v10, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v6, v10}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v10

    .line 1829
    .local v10, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v12

    invoke-virtual {v10, v12, v3, v3}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1830
    invoke-virtual {v6, v10}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v12

    .line 1832
    .local v12, "dayOfWeek":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v13

    sub-int/2addr v12, v13

    .line 1833
    if-gez v12, :cond_16f

    .line 1834
    add-int/lit8 v12, v12, 0x7

    .line 1836
    :cond_16f
    const/16 v8, 0x34

    .line 1837
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v13

    add-int/2addr v13, v12

    sub-int/2addr v13, v3

    .line 1838
    .local v13, "magic":I
    if-eq v13, v11, :cond_189

    .line 1839
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->isLeapYear()Z

    move-result v3

    if-eqz v3, :cond_186

    if-eq v13, v9, :cond_185

    const/16 v3, 0xc

    if-ne v13, v3, :cond_186

    :cond_185
    goto :goto_189

    .line 1990
    .end local v10    # "d":Lsun/util/calendar/CalendarDate;
    .end local v12    # "dayOfWeek":I
    .end local v13    # "magic":I
    :cond_186
    move v12, v8

    goto/16 :goto_273

    .line 1840
    .restart local v10    # "d":Lsun/util/calendar/CalendarDate;
    .restart local v12    # "dayOfWeek":I
    .restart local v13    # "magic":I
    :cond_189
    :goto_189
    add-int/lit8 v3, v8, 0x1

    move v12, v3

    .end local v8    # "value":I
    .local v3, "value":I
    goto/16 :goto_273

    .line 1845
    .end local v3    # "value":I
    .end local v10    # "d":Lsun/util/calendar/CalendarDate;
    .end local v12    # "dayOfWeek":I
    .end local v13    # "magic":I
    .restart local v8    # "value":I
    :cond_18e
    if-ne v4, v0, :cond_197

    .line 1846
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    check-cast v4, Ljava/util/GregorianCalendar;

    .line 1848
    :cond_197
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v9

    .line 1849
    .local v9, "maxDayOfYear":I
    invoke-virtual {v4, v11, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1850
    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 1851
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v12

    if-eq v3, v12, :cond_1b8

    .line 1852
    add-int/lit8 v3, v9, -0x7

    invoke-virtual {v4, v11, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1853
    invoke-virtual {v4, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    move v12, v3

    .end local v8    # "value":I
    .restart local v3    # "value":I
    goto :goto_1b9

    .line 1851
    .end local v3    # "value":I
    .restart local v8    # "value":I
    :cond_1b8
    move v12, v8

    .line 1856
    .end local v8    # "value":I
    .end local v9    # "maxDayOfYear":I
    .local v12, "value":I
    :goto_1b9
    goto/16 :goto_273

    .line 1758
    .end local v12    # "value":I
    .restart local v8    # "value":I
    :pswitch_1bb
    invoke-direct {v4, v7}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v9

    if-nez v9, :cond_1c5

    .line 1759
    const/16 v12, 0xb

    .line 1760
    .end local v8    # "value":I
    .restart local v12    # "value":I
    goto/16 :goto_273

    .line 1766
    .end local v12    # "value":I
    .restart local v8    # "value":I
    :cond_1c5
    :goto_1c5
    sget-object v9, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    add-int/2addr v7, v3

    invoke-virtual {v9, v7, v3, v3, v12}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v13

    .line 1767
    .local v13, "nextJan1":J
    move-object v9, v4

    .end local v4    # "gc":Ljava/util/GregorianCalendar;
    .local v9, "gc":Ljava/util/GregorianCalendar;
    iget-wide v3, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v3, v13, v3

    if-ltz v3, :cond_1e8

    .line 1768
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    .line 1769
    .local v3, "d":Lsun/util/calendar/BaseCalendar$Date;
    sub-long v10, v13, v10

    invoke-virtual {v6, v3, v10, v11}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 1770
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v4

    const/4 v10, 0x1

    add-int/lit8 v12, v4, -0x1

    .line 1772
    .end local v3    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v8    # "value":I
    .end local v13    # "nextJan1":J
    .restart local v12    # "value":I
    move-object v4, v9

    goto/16 :goto_273

    .line 1767
    .end local v12    # "value":I
    .restart local v8    # "value":I
    .restart local v13    # "nextJan1":J
    :cond_1e8
    move-object v4, v9

    const/4 v3, 0x1

    goto :goto_1c5

    .line 1947
    .end local v9    # "gc":Ljava/util/GregorianCalendar;
    .end local v13    # "nextJan1":J
    .restart local v4    # "gc":Ljava/util/GregorianCalendar;
    :pswitch_1eb
    move-object v9, v4

    .end local v4    # "gc":Ljava/util/GregorianCalendar;
    .restart local v9    # "gc":Ljava/util/GregorianCalendar;
    if-ne v9, v0, :cond_1f6

    .line 1948
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/GregorianCalendar;

    .end local v9    # "gc":Ljava/util/GregorianCalendar;
    .restart local v4    # "gc":Ljava/util/GregorianCalendar;
    goto :goto_1f7

    .line 1947
    .end local v4    # "gc":Ljava/util/GregorianCalendar;
    .restart local v9    # "gc":Ljava/util/GregorianCalendar;
    :cond_1f6
    move-object v4, v9

    .line 1955
    .end local v9    # "gc":Ljava/util/GregorianCalendar;
    .restart local v4    # "gc":Ljava/util/GregorianCalendar;
    :goto_1f7
    invoke-direct {v4}, Ljava/util/GregorianCalendar;->getYearOffsetInMillis()J

    move-result-wide v12

    .line 1957
    .local v12, "current":J
    invoke-direct {v4}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_21a

    .line 1958
    const-wide v10, 0x7fffffffffffffffL

    invoke-virtual {v4, v10, v11}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1959
    invoke-virtual {v4, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1960
    .end local v8    # "value":I
    .local v3, "value":I
    invoke-direct {v4}, Ljava/util/GregorianCalendar;->getYearOffsetInMillis()J

    move-result-wide v8

    .line 1961
    .local v8, "maxEnd":J
    cmp-long v10, v12, v8

    if-lez v10, :cond_218

    .line 1962
    add-int/lit8 v3, v3, -0x1

    .line 1964
    .end local v8    # "maxEnd":J
    :cond_218
    move v12, v3

    goto :goto_272

    .line 1965
    .end local v3    # "value":I
    .local v8, "value":I
    :cond_21a
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v14

    iget-wide v10, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v3, v14, v10

    if-ltz v3, :cond_227

    .line 1966
    sget-object v3, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_22b

    :cond_227
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v3

    .line 1967
    .local v3, "mincal":Lsun/util/calendar/CalendarSystem;
    :goto_22b
    const-wide/high16 v9, -0x8000000000000000L

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v3, v9, v10, v11}, Lsun/util/calendar/CalendarSystem;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v9

    .line 1968
    .local v9, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v6, v9}, Lsun/util/calendar/BaseCalendar;->getDayOfYear(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    const-wide/16 v14, 0x1

    sub-long/2addr v10, v14

    const-wide/16 v14, 0x18

    mul-long/2addr v10, v14

    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v10, v14

    .line 1969
    .local v10, "maxEnd":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v10, v14

    .line 1970
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v10, v14

    .line 1971
    const-wide/16 v14, 0x3c

    mul-long/2addr v10, v14

    .line 1972
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v10, v14

    .line 1973
    const-wide/16 v14, 0x3e8

    mul-long/2addr v10, v14

    .line 1974
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getMillis()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v10, v14

    .line 1975
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v8

    .line 1976
    if-gtz v8, :cond_269

    .line 1977
    nop

    .line 1978
    rsub-int/lit8 v8, v8, 0x1

    .line 1980
    :cond_269
    cmp-long v14, v12, v10

    if-gez v14, :cond_271

    .line 1981
    add-int/lit8 v8, v8, -0x1

    move v12, v8

    goto :goto_272

    .line 1980
    :cond_271
    move v12, v8

    .line 1985
    .end local v3    # "mincal":Lsun/util/calendar/CalendarSystem;
    .end local v8    # "value":I
    .end local v9    # "d":Lsun/util/calendar/CalendarDate;
    .end local v10    # "maxEnd":J
    .local v12, "value":I
    :goto_272
    nop

    .line 1990
    :cond_273
    :goto_273
    return v12

    :pswitch_data_274
    .packed-switch 0x1
        :pswitch_1eb
        :pswitch_1bb
        :pswitch_14e
        :pswitch_e4
        :pswitch_ae
        :pswitch_73
        :pswitch_2a
        :pswitch_30
    .end packed-switch
.end method

.method public whitelist test-api getActualMinimum(I)I
    .registers 8
    .param p1, "field"    # I

    .line 1698
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2a

    .line 1699
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 1700
    .local v0, "gc":Ljava/util/GregorianCalendar;
    iget-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    .line 1701
    .local v1, "year":I
    iget v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v1, v2, :cond_15

    iget v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v1, v2, :cond_2a

    .line 1702
    :cond_15
    iget-object v2, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v3, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v3, v2}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v2

    .line 1703
    .local v2, "month1":J
    invoke-direct {p0, v2, v3}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v4

    .line 1704
    .local v4, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v5

    return v5

    .line 1707
    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    .end local v1    # "year":I
    .end local v2    # "month1":J
    .end local v4    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_2a
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getCalendarType()Ljava/lang/String;
    .registers 2

    .line 858
    const-string v0, "gregory"

    return-object v0
.end method

.method public whitelist test-api getGreatestMinimum(I)I
    .registers 7
    .param p1, "field"    # I

    .line 1618
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1e

    .line 1619
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 1620
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v0, v1, v2}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v1

    .line 1621
    .local v1, "mon1":J
    invoke-direct {p0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 1622
    sget-object v3, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v3, v3, p1

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    .line 1624
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v1    # "mon1":J
    :cond_1e
    sget-object v0, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    return v0
.end method

.method public final whitelist test-api getGregorianChange()Ljava/util/Date;
    .registers 4

    .line 815
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public whitelist test-api getLeastMaximum(I)I
    .registers 8
    .param p1, "field"    # I

    .line 1648
    packed-switch p1, :pswitch_data_34

    .line 1666
    :pswitch_3
    sget-object v0, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    aget v0, v0, p1

    return v0

    .line 1657
    :pswitch_8
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 1658
    .local v0, "gc":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 1659
    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1660
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    .line 1661
    .local v1, "v1":I
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1662
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    .line 1663
    .local v2, "v2":I
    sget-object v3, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    aget v3, v3, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist test-api getMaximum(I)I
    .registers 8
    .param p1, "field"    # I

    .line 1569
    packed-switch p1, :pswitch_data_3c

    :pswitch_3
    goto :goto_37

    .line 1581
    :pswitch_4
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_b

    .line 1582
    goto :goto_37

    .line 1585
    :cond_b
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 1586
    .local v0, "gc":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 1587
    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1588
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    .line 1589
    .local v1, "v1":I
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1590
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    .line 1591
    .local v2, "v2":I
    sget-object v3, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    aget v3, v3, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    .line 1594
    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    .end local v1    # "v1":I
    .end local v2    # "v2":I
    :goto_37
    sget-object v0, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    aget v0, v0, p1

    return v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist test-api getMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .line 1545
    sget-object v0, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist test-api getTimeZone()Ljava/util/TimeZone;
    .registers 4

    .line 2029
    invoke-super {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 2031
    .local v0, "zone":Ljava/util/TimeZone;
    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 2032
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v1, :cond_14

    iget-object v2, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v1, v2, :cond_14

    .line 2033
    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 2035
    :cond_14
    return-object v0
.end method

.method public whitelist test-api getWeekYear()I
    .registers 12

    .line 2087
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 2088
    .local v1, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v2

    if-nez v2, :cond_d

    .line 2089
    rsub-int/lit8 v1, v1, 0x1

    .line 2094
    :cond_d
    iget v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    add-int/2addr v2, v0

    if-le v1, v2, :cond_2a

    .line 2095
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    .line 2096
    .local v2, "weekOfYear":I
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    if-nez v3, :cond_25

    .line 2097
    const/16 v0, 0x34

    if-lt v2, v0, :cond_29

    .line 2098
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 2101
    :cond_25
    if-ne v2, v0, :cond_29

    .line 2102
    add-int/lit8 v1, v1, 0x1

    .line 2105
    :cond_29
    :goto_29
    return v1

    .line 2109
    .end local v2    # "weekOfYear":I
    :cond_2a
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 2110
    .local v3, "dayOfYear":I
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v4

    .line 2111
    .local v4, "maxDayOfYear":I
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v5

    .line 2115
    .local v5, "minimalDays":I
    if-le v3, v5, :cond_3e

    add-int/lit8 v6, v4, -0x6

    if-ge v3, v6, :cond_3e

    .line 2116
    return v1

    .line 2120
    :cond_3e
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/GregorianCalendar;

    .line 2121
    .local v6, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v6, v0}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 2124
    const-string v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2126
    invoke-virtual {v6, v2, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2127
    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->complete()V

    .line 2130
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v7

    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    sub-int/2addr v7, v9

    .line 2131
    .local v7, "delta":I
    if-eqz v7, :cond_69

    .line 2132
    if-gez v7, :cond_66

    .line 2133
    add-int/lit8 v7, v7, 0x7

    .line 2135
    :cond_66
    invoke-virtual {v6, v2, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 2137
    :cond_69
    invoke-virtual {v6, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    .line 2138
    .local v9, "minDayOfYear":I
    if-ge v3, v9, :cond_74

    .line 2139
    if-gt v9, v5, :cond_a7

    .line 2140
    add-int/lit8 v1, v1, -0x1

    goto :goto_a7

    .line 2143
    :cond_74
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v0, v10}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2144
    invoke-virtual {v6, v2, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2145
    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->complete()V

    .line 2146
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v10

    invoke-virtual {v6, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    sub-int/2addr v10, v8

    .line 2147
    .local v10, "del":I
    if-eqz v10, :cond_91

    .line 2148
    if-gez v10, :cond_8e

    .line 2149
    add-int/lit8 v10, v10, 0x7

    .line 2151
    :cond_8e
    invoke-virtual {v6, v2, v10}, Ljava/util/GregorianCalendar;->add(II)V

    .line 2153
    :cond_91
    invoke-virtual {v6, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v0

    .line 2154
    .end local v9    # "minDayOfYear":I
    .local v2, "minDayOfYear":I
    if-nez v2, :cond_9b

    .line 2155
    const/4 v2, 0x7

    move v9, v2

    goto :goto_9c

    .line 2154
    :cond_9b
    move v9, v2

    .line 2157
    .end local v2    # "minDayOfYear":I
    .restart local v9    # "minDayOfYear":I
    :goto_9c
    if-lt v9, v5, :cond_a7

    .line 2158
    sub-int v2, v4, v3

    add-int/2addr v2, v0

    .line 2159
    .local v2, "days":I
    rsub-int/lit8 v0, v9, 0x7

    if-gt v2, v0, :cond_a7

    .line 2160
    add-int/lit8 v1, v1, 0x1

    .line 2164
    .end local v2    # "days":I
    .end local v10    # "del":I
    :cond_a7
    :goto_a7
    return v1
.end method

.method public whitelist test-api getWeeksInWeekYear()I
    .registers 6

    .line 2271
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 2272
    .local v0, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v1

    .line 2273
    .local v1, "weekYear":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v1, v2, :cond_15

    .line 2274
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    return v2

    .line 2278
    :cond_15
    if-ne v0, p0, :cond_1e

    .line 2279
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 2281
    :cond_1e
    const/4 v2, 0x2

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/GregorianCalendar;->setWeekDate(III)V

    .line 2282
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 887
    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isLeapYear(I)Z
    .registers 7
    .param p1, "year"    # I

    .line 828
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 829
    return v1

    .line 832
    :cond_6
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    const/4 v2, 0x1

    if-le p1, v0, :cond_15

    .line 833
    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_13

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_14

    :cond_13
    move v1, v2

    :cond_14
    return v1

    .line 835
    :cond_15
    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ge p1, v3, :cond_1a

    .line 836
    return v2

    .line 841
    :cond_1a
    if-ne v0, v3, :cond_2e

    .line 842
    iget-wide v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v3, v4}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 843
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2b

    move v3, v2

    goto :goto_2c

    :cond_2b
    move v3, v1

    :goto_2c
    move v0, v3

    .line 844
    .local v0, "gregorian":Z
    goto :goto_33

    .line 845
    .end local v0    # "gregorian":Z
    :cond_2e
    if-ne p1, v0, :cond_32

    move v0, v2

    goto :goto_33

    :cond_32
    move v0, v1

    .line 847
    .restart local v0    # "gregorian":Z
    :goto_33
    if-eqz v0, :cond_3d

    rem-int/lit8 v3, p1, 0x64

    if-nez v3, :cond_3d

    rem-int/lit16 v3, p1, 0x190

    if-nez v3, :cond_3e

    :cond_3d
    move v1, v2

    :cond_3e
    return v1
.end method

.method public final whitelist test-api isWeekDateSupported()Z
    .registers 2

    .line 2060
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api roll(II)V
    .registers 25
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 1171
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v2, :cond_9

    .line 1172
    return-void

    .line 1175
    :cond_9
    if-ltz v1, :cond_3e4

    const/16 v3, 0xf

    if-ge v1, v3, :cond_3e4

    .line 1180
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 1182
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v4

    .line 1183
    .local v4, "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v5

    .line 1185
    .local v5, "max":I
    const/4 v6, 0x0

    const-wide/16 v7, 0x7

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x5

    const/4 v15, 0x7

    const/4 v9, 0x1

    packed-switch v1, :pswitch_data_3ea

    move v8, v4

    .end local v4    # "min":I
    .local v8, "min":I
    goto/16 :goto_3d7

    .line 1201
    .end local v8    # "min":I
    .restart local v4    # "min":I
    :pswitch_28
    add-int/lit8 v6, v5, 0x1

    .line 1202
    .local v6, "unit":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v7

    .line 1203
    .local v7, "h":I
    add-int v8, v7, v2

    rem-int/2addr v8, v6

    .line 1204
    .local v8, "nh":I
    if-gez v8, :cond_34

    .line 1205
    add-int/2addr v8, v6

    .line 1207
    :cond_34
    move/from16 v18, v4

    .end local v4    # "min":I
    .local v18, "min":I
    iget-wide v3, v0, Ljava/util/GregorianCalendar;->time:J

    const v12, 0x36ee80

    sub-int v15, v8, v7

    mul-int/2addr v15, v12

    int-to-long v10, v15

    add-long/2addr v3, v10

    iput-wide v3, v0, Ljava/util/GregorianCalendar;->time:J

    .line 1213
    iget-object v3, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-wide v10, v0, Ljava/util/GregorianCalendar;->time:J

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v10, v11, v4}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    .line 1214
    .local v3, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v10

    const/16 v11, 0xa

    if-eq v4, v10, :cond_7a

    .line 1215
    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    .line 1216
    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v10

    add-int/2addr v10, v9

    .line 1217
    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v9

    .line 1215
    invoke-virtual {v3, v4, v10, v9}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1218
    if-ne v1, v11, :cond_72

    .line 1219
    nop

    .line 1220
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lsun/util/calendar/CalendarDate;->addHours(I)Lsun/util/calendar/CalendarDate;

    .line 1222
    :cond_72
    iget-object v4, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v4, v3}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v9

    iput-wide v9, v0, Ljava/util/GregorianCalendar;->time:J

    .line 1224
    :cond_7a
    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v4

    .line 1225
    .local v4, "hourOfDay":I
    rem-int v9, v4, v6

    invoke-virtual {v0, v1, v9}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1226
    if-ne v1, v11, :cond_8b

    .line 1227
    const/16 v9, 0xb

    invoke-virtual {v0, v9, v4}, Ljava/util/GregorianCalendar;->internalSet(II)V

    goto :goto_97

    .line 1229
    :cond_8b
    const/16 v9, 0x9

    div-int/lit8 v10, v4, 0xc

    invoke-virtual {v0, v9, v10}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1230
    rem-int/lit8 v9, v4, 0xc

    invoke-virtual {v0, v11, v9}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1234
    :goto_97
    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v9

    .line 1235
    .local v9, "zoneOffset":I
    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getDaylightSaving()I

    move-result v10

    .line 1236
    .local v10, "saving":I
    sub-int v11, v9, v10

    const/16 v12, 0xf

    invoke-virtual {v0, v12, v11}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1237
    const/16 v11, 0x10

    invoke-virtual {v0, v11, v10}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1238
    return-void

    .line 1487
    .end local v3    # "d":Lsun/util/calendar/CalendarDate;
    .end local v6    # "unit":I
    .end local v7    # "h":I
    .end local v8    # "nh":I
    .end local v9    # "zoneOffset":I
    .end local v10    # "saving":I
    .end local v18    # "min":I
    .local v4, "min":I
    :pswitch_ac
    move/from16 v18, v4

    .end local v4    # "min":I
    .restart local v18    # "min":I
    const/4 v4, 0x1

    .line 1488
    .end local v18    # "min":I
    .restart local v4    # "min":I
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v3

    if-nez v3, :cond_db

    .line 1489
    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 1490
    .local v3, "dom":I
    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v7, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v6, v7}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v6

    .line 1491
    .local v6, "monthLength":I
    rem-int/lit8 v7, v6, 0x7

    .line 1492
    .local v7, "lastDays":I
    div-int/lit8 v5, v6, 0x7

    .line 1493
    add-int/lit8 v8, v3, -0x1

    rem-int/2addr v8, v15

    .line 1494
    .local v8, "x":I
    if-ge v8, v7, :cond_d2

    .line 1495
    add-int/lit8 v5, v5, 0x1

    .line 1497
    :cond_d2
    invoke-virtual {v0, v15}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v9

    invoke-virtual {v0, v15, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1498
    goto/16 :goto_3d8

    .line 1502
    .end local v3    # "dom":I
    .end local v6    # "monthLength":I
    .end local v7    # "lastDays":I
    .end local v8    # "x":I
    :cond_db
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v6

    .line 1503
    .local v6, "fd":J
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {v0, v3, v6, v7}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v10

    .line 1504
    .local v10, "month1":J
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v3

    .line 1505
    .local v3, "monthLength":I
    rem-int/lit8 v8, v3, 0x7

    .line 1506
    .local v8, "lastDays":I
    div-int/lit8 v5, v3, 0x7

    .line 1507
    sub-long v12, v6, v10

    long-to-int v12, v12

    rem-int/2addr v12, v15

    .line 1508
    .local v12, "x":I
    if-ge v12, v8, :cond_f5

    .line 1509
    add-int/lit8 v5, v5, 0x1

    .line 1511
    :cond_f5
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v13

    invoke-static {v13, v2, v4, v5}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v13

    sub-int/2addr v13, v9

    .line 1512
    .local v13, "value":I
    mul-int/lit8 v9, v13, 0x7

    int-to-long v14, v9

    add-long/2addr v14, v10

    move/from16 v17, v3

    move/from16 v16, v4

    .end local v3    # "monthLength":I
    .end local v4    # "min":I
    .local v16, "min":I
    .local v17, "monthLength":I
    int-to-long v3, v12

    add-long/2addr v14, v3

    .line 1513
    .end local v6    # "fd":J
    .local v14, "fd":J
    iget-wide v3, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v3, v14, v3

    if-ltz v3, :cond_111

    sget-object v3, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_115

    :cond_111
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v3

    .line 1514
    .local v3, "cal":Lsun/util/calendar/BaseCalendar;
    :goto_115
    sget-object v4, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v4

    check-cast v4, Lsun/util/calendar/BaseCalendar$Date;

    .line 1515
    .local v4, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v3, v4, v14, v15}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 1516
    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v0, v7, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1517
    return-void

    .line 1452
    .end local v3    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v8    # "lastDays":I
    .end local v10    # "month1":J
    .end local v12    # "x":I
    .end local v13    # "value":I
    .end local v14    # "fd":J
    .end local v16    # "min":I
    .end local v17    # "monthLength":I
    .local v4, "min":I
    :pswitch_129
    move/from16 v18, v4

    .end local v4    # "min":I
    .restart local v18    # "min":I
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v3

    if-nez v3, :cond_149

    .line 1455
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 1456
    .local v3, "weekOfYear":I
    if-le v3, v9, :cond_149

    const/16 v4, 0x34

    if-ge v3, v4, :cond_149

    .line 1457
    invoke-virtual {v0, v12, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1458
    const/4 v5, 0x7

    .line 1459
    move/from16 v4, v18

    goto/16 :goto_3d8

    .line 1467
    .end local v3    # "weekOfYear":I
    :cond_149
    rem-int/2addr v2, v15

    .line 1468
    .end local p2    # "amount":I
    .local v2, "amount":I
    if-nez v2, :cond_14d

    .line 1469
    return-void

    .line 1471
    :cond_14d
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v3

    .line 1472
    .local v3, "fd":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v10

    invoke-static {v3, v4, v10}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    .line 1473
    .local v10, "dowFirst":J
    int-to-long v12, v2

    add-long/2addr v3, v12

    .line 1474
    cmp-long v12, v3, v10

    if-gez v12, :cond_161

    .line 1475
    add-long/2addr v3, v7

    goto :goto_168

    .line 1476
    :cond_161
    add-long v12, v10, v7

    cmp-long v12, v3, v12

    if-ltz v12, :cond_168

    .line 1477
    sub-long/2addr v3, v7

    .line 1479
    :cond_168
    :goto_168
    invoke-direct {v0, v3, v4}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v7

    .line 1480
    .local v7, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v7}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v8

    if-gtz v8, :cond_174

    move v8, v6

    goto :goto_175

    :cond_174
    move v8, v9

    :goto_175
    invoke-virtual {v0, v6, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1481
    invoke-virtual {v7}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v6

    invoke-virtual {v7}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v7}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v9

    invoke-virtual {v0, v6, v8, v9}, Ljava/util/GregorianCalendar;->set(III)V

    .line 1482
    return-void

    .line 1435
    .end local v2    # "amount":I
    .end local v3    # "fd":J
    .end local v7    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v10    # "dowFirst":J
    .end local v18    # "min":I
    .restart local v4    # "min":I
    .restart local p2    # "amount":I
    :pswitch_189
    move/from16 v18, v4

    .end local v4    # "min":I
    .restart local v18    # "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v5

    .line 1436
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v3

    if-nez v3, :cond_19f

    .line 1437
    move/from16 v4, v18

    goto/16 :goto_3d8

    .line 1441
    :cond_19f
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v3

    .line 1442
    .restart local v3    # "fd":J
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v3, v6

    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    .line 1443
    .local v6, "jan1":J
    sub-long v14, v3, v6

    long-to-int v8, v14

    add-int/2addr v8, v9

    move/from16 v14, v18

    .end local v18    # "min":I
    .local v14, "min":I
    invoke-static {v8, v2, v14, v5}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v8

    .line 1444
    .local v8, "value":I
    nop

    .end local v14    # "min":I
    .restart local v18    # "min":I
    int-to-long v13, v8

    add-long/2addr v13, v6

    sub-long/2addr v13, v10

    invoke-direct {v0, v13, v14}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v10

    .line 1445
    .local v10, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v11

    sub-int/2addr v11, v9

    const/4 v9, 0x2

    invoke-virtual {v0, v9, v11}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1446
    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v9

    const/4 v11, 0x5

    invoke-virtual {v0, v11, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1447
    return-void

    .line 1415
    .end local v3    # "fd":J
    .end local v6    # "jan1":J
    .end local v8    # "value":I
    .end local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v18    # "min":I
    .restart local v4    # "min":I
    :pswitch_1d2
    move/from16 v18, v4

    .end local v4    # "min":I
    .restart local v18    # "min":I
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 1416
    iget-object v3, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v4, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3, v4}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v5

    .line 1417
    move/from16 v4, v18

    goto/16 :goto_3d8

    .line 1421
    :cond_1ec
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v3

    .line 1422
    .restart local v3    # "fd":J
    iget-object v7, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {v0, v7, v3, v4}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v7

    .line 1426
    .local v7, "month1":J
    sub-long v10, v3, v7

    long-to-int v10, v10

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-static {v10, v2, v6, v11}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v6

    .line 1427
    .local v6, "value":I
    int-to-long v9, v6

    add-long/2addr v9, v7

    invoke-direct {v0, v9, v10}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v9

    .line 1428
    .local v9, "d":Lsun/util/calendar/BaseCalendar$Date;
    nop

    .line 1429
    invoke-virtual {v9}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v10

    const/4 v11, 0x5

    invoke-virtual {v0, v11, v10}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1430
    return-void

    .line 1359
    .end local v3    # "fd":J
    .end local v6    # "value":I
    .end local v7    # "month1":J
    .end local v9    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v18    # "min":I
    .restart local v4    # "min":I
    :pswitch_212
    move/from16 v18, v4

    .end local v4    # "min":I
    .restart local v18    # "min":I
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v3

    .line 1361
    .local v3, "isCutoverYear":Z
    invoke-virtual {v0, v15}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v6

    sub-int/2addr v4, v6

    .line 1362
    .local v4, "dow":I
    if-gez v4, :cond_22b

    .line 1363
    add-int/lit8 v4, v4, 0x7

    .line 1366
    :cond_22b
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v10

    .line 1369
    .local v10, "fd":J
    if-eqz v3, :cond_23c

    .line 1370
    iget-object v6, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {v0, v6, v10, v11}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v12

    .line 1371
    .local v12, "month1":J
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v6

    .local v6, "monthLength":I
    goto :goto_24f

    .line 1373
    .end local v6    # "monthLength":I
    .end local v12    # "month1":J
    :cond_23c
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v12

    int-to-long v12, v12

    sub-long v12, v10, v12

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    .line 1374
    .restart local v12    # "month1":J
    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v14, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v6, v14}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v6

    .line 1378
    .restart local v6    # "monthLength":I
    :goto_24f
    const-wide/16 v14, 0x6

    add-long/2addr v14, v12

    .line 1379
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v9

    .line 1378
    invoke-static {v14, v15, v9}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v14

    .line 1382
    .local v14, "monthDay1st":J
    sub-long v7, v14, v12

    long-to-int v7, v7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v8

    if-lt v7, v8, :cond_266

    .line 1383
    const-wide/16 v7, 0x7

    sub-long/2addr v14, v7

    .line 1385
    :cond_266
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v5

    .line 1388
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v7, v2, v8, v5}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v7

    sub-int/2addr v7, v8

    .line 1391
    .local v7, "value":I
    mul-int/lit8 v8, v7, 0x7

    int-to-long v8, v8

    add-long/2addr v8, v14

    move-wide/from16 v19, v10

    .end local v10    # "fd":J
    .local v19, "fd":J
    int-to-long v10, v4

    add-long/2addr v8, v10

    .line 1395
    .local v8, "nfd":J
    cmp-long v10, v8, v12

    if-gez v10, :cond_282

    .line 1396
    move-wide v8, v12

    goto :goto_28e

    .line 1397
    :cond_282
    int-to-long v10, v6

    add-long/2addr v10, v12

    cmp-long v10, v8, v10

    if-ltz v10, :cond_28e

    .line 1398
    int-to-long v10, v6

    add-long/2addr v10, v12

    const-wide/16 v16, 0x1

    sub-long v8, v10, v16

    .line 1401
    :cond_28e
    :goto_28e
    if-eqz v3, :cond_299

    .line 1404
    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v10

    .line 1405
    .local v10, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v10

    .line 1406
    .local v10, "dayOfMonth":I
    goto :goto_29e

    .line 1407
    .end local v10    # "dayOfMonth":I
    :cond_299
    sub-long v10, v8, v12

    long-to-int v10, v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    .line 1409
    .restart local v10    # "dayOfMonth":I
    :goto_29e
    const/4 v11, 0x5

    invoke-virtual {v0, v11, v10}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1410
    return-void

    .line 1280
    .end local v3    # "isCutoverYear":Z
    .end local v6    # "monthLength":I
    .end local v7    # "value":I
    .end local v8    # "nfd":J
    .end local v10    # "dayOfMonth":I
    .end local v12    # "month1":J
    .end local v14    # "monthDay1st":J
    .end local v18    # "min":I
    .end local v19    # "fd":J
    .local v4, "min":I
    :pswitch_2a3
    move/from16 v18, v4

    .end local v4    # "min":I
    .restart local v18    # "min":I
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    .line 1281
    .local v3, "y":I
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v4

    .line 1282
    .end local v5    # "max":I
    .local v4, "max":I
    invoke-virtual {v0, v15}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v5

    invoke-virtual {v0, v15, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1283
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v5

    .line 1284
    .local v5, "woy":I
    add-int v6, v5, v2

    .line 1285
    .local v6, "value":I
    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v7

    if-nez v7, :cond_323

    .line 1286
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v7

    .line 1287
    .local v7, "weekYear":I
    if-ne v7, v3, :cond_300

    .line 1290
    move/from16 v8, v18

    .end local v18    # "min":I
    .local v8, "min":I
    if-le v6, v8, :cond_2d2

    if-ge v6, v4, :cond_2d2

    .line 1291
    invoke-virtual {v0, v12, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1292
    return-void

    .line 1294
    :cond_2d2
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v9

    .line 1297
    .local v9, "fd":J
    sub-int v11, v5, v8

    mul-int/2addr v11, v15

    int-to-long v13, v11

    sub-long v13, v9, v13

    .line 1298
    .local v13, "day1":J
    iget-object v11, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v11, v13, v14}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v11

    if-eq v11, v3, :cond_2e6

    .line 1299
    add-int/lit8 v8, v8, 0x1

    .line 1303
    :cond_2e6
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    sub-int v11, v4, v11

    mul-int/2addr v11, v15

    int-to-long v11, v11

    add-long/2addr v9, v11

    .line 1304
    iget-object v11, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v11, v9, v10}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v11

    if-eq v11, v3, :cond_2f9

    .line 1305
    add-int/lit8 v4, v4, -0x1

    .line 1307
    .end local v9    # "fd":J
    .end local v13    # "day1":J
    :cond_2f9
    move/from16 v21, v5

    move v5, v4

    move v4, v8

    move/from16 v8, v21

    goto :goto_31b

    .line 1310
    .end local v8    # "min":I
    .restart local v18    # "min":I
    :cond_300
    move/from16 v8, v18

    .end local v18    # "min":I
    .restart local v8    # "min":I
    if-le v7, v3, :cond_30f

    .line 1311
    if-gez v2, :cond_308

    .line 1312
    add-int/lit8 v2, v2, 0x1

    .line 1314
    .end local p2    # "amount":I
    .restart local v2    # "amount":I
    :cond_308
    move v5, v4

    move/from16 v21, v5

    move v4, v8

    move/from16 v8, v21

    goto :goto_31b

    .line 1316
    .end local v2    # "amount":I
    .restart local p2    # "amount":I
    :cond_30f
    if-lez v2, :cond_314

    .line 1317
    sub-int v9, v5, v4

    sub-int/2addr v2, v9

    .line 1319
    .end local p2    # "amount":I
    .restart local v2    # "amount":I
    :cond_314
    move v5, v8

    move/from16 v21, v5

    move v5, v4

    move v4, v8

    move/from16 v8, v21

    .line 1322
    .local v4, "min":I
    .local v5, "max":I
    .local v8, "woy":I
    :goto_31b
    invoke-static {v8, v2, v4, v5}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1323
    return-void

    .line 1327
    .end local v2    # "amount":I
    .end local v7    # "weekYear":I
    .end local v8    # "woy":I
    .local v4, "max":I
    .local v5, "woy":I
    .restart local v18    # "min":I
    .restart local p2    # "amount":I
    :cond_323
    move/from16 v8, v18

    .end local v18    # "min":I
    .local v8, "min":I
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v9

    .line 1329
    .restart local v9    # "fd":J
    iget v7, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v11, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v7, v11, :cond_334

    .line 1330
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v7

    .local v7, "cal":Lsun/util/calendar/BaseCalendar;
    goto :goto_33d

    .line 1331
    .end local v7    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_334
    if-ne v3, v7, :cond_339

    .line 1332
    sget-object v7, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .restart local v7    # "cal":Lsun/util/calendar/BaseCalendar;
    goto :goto_33d

    .line 1334
    .end local v7    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_339
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v7

    .line 1336
    .restart local v7    # "cal":Lsun/util/calendar/BaseCalendar;
    :goto_33d
    sub-int v11, v5, v8

    mul-int/2addr v11, v15

    int-to-long v11, v11

    sub-long v11, v9, v11

    .line 1338
    .local v11, "day1":J
    invoke-virtual {v7, v11, v12}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v13

    if-eq v13, v3, :cond_34b

    .line 1339
    add-int/lit8 v8, v8, 0x1

    .line 1343
    :cond_34b
    sub-int v13, v4, v5

    mul-int/2addr v13, v15

    int-to-long v13, v13

    add-long/2addr v9, v13

    .line 1344
    iget-wide v13, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v13, v9, v13

    if-ltz v13, :cond_359

    sget-object v13, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_35d

    :cond_359
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v13

    :goto_35d
    move-object v7, v13

    .line 1345
    invoke-virtual {v7, v9, v10}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v13

    if-eq v13, v3, :cond_366

    .line 1346
    add-int/lit8 v4, v4, -0x1

    .line 1350
    :cond_366
    invoke-static {v5, v2, v8, v4}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .line 1351
    .end local v6    # "value":I
    .local v13, "value":I
    mul-int/lit8 v6, v13, 0x7

    int-to-long v14, v6

    add-long/2addr v14, v11

    invoke-direct {v0, v14, v15}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v6

    .line 1352
    .local v6, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v6}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    const/4 v15, 0x2

    invoke-virtual {v0, v15, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1353
    invoke-virtual {v6}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v14

    const/4 v15, 0x5

    invoke-virtual {v0, v15, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1354
    return-void

    .line 1247
    .end local v3    # "y":I
    .end local v6    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v7    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v8    # "min":I
    .end local v9    # "fd":J
    .end local v11    # "day1":J
    .end local v13    # "value":I
    .local v4, "min":I
    .local v5, "max":I
    :pswitch_387
    move v8, v4

    .end local v4    # "min":I
    .restart local v8    # "min":I
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v3

    if-nez v3, :cond_3b4

    .line 1248
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    add-int/2addr v4, v2

    const/16 v3, 0xc

    rem-int/2addr v4, v3

    .line 1249
    .local v4, "mon":I
    if-gez v4, :cond_3a1

    .line 1250
    add-int/lit8 v4, v4, 0xc

    .line 1252
    :cond_3a1
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1257
    invoke-direct {v0, v4}, Ljava/util/GregorianCalendar;->monthLength(I)I

    move-result v3

    .line 1258
    .local v3, "monthLen":I
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v7

    if-le v7, v3, :cond_3b3

    .line 1259
    invoke-virtual {v0, v6, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1261
    .end local v3    # "monthLen":I
    .end local v4    # "mon":I
    :cond_3b3
    goto :goto_3d5

    .line 1264
    :cond_3b4
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    .line 1265
    .local v4, "yearLength":I
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v6

    add-int/2addr v6, v2

    rem-int/2addr v6, v4

    .line 1266
    .local v6, "mon":I
    if-gez v6, :cond_3c4

    .line 1267
    add-int/2addr v6, v4

    .line 1269
    :cond_3c4
    invoke-virtual {v0, v3, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1270
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v7

    .line 1271
    .local v7, "monthLen":I
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v9

    if-le v9, v7, :cond_3d5

    .line 1272
    invoke-virtual {v0, v3, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1275
    .end local v4    # "yearLength":I
    .end local v6    # "mon":I
    .end local v7    # "monthLen":I
    :cond_3d5
    :goto_3d5
    return-void

    .line 1196
    .end local v8    # "min":I
    .local v4, "min":I
    :pswitch_3d6
    move v8, v4

    .line 1521
    .end local v4    # "min":I
    .restart local v8    # "min":I
    :goto_3d7
    move v4, v8

    .end local v8    # "min":I
    .restart local v4    # "min":I
    :goto_3d8
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    invoke-static {v3, v2, v4, v5}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1522
    return-void

    .line 1176
    .end local v4    # "min":I
    .end local v5    # "max":I
    :cond_3e4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :pswitch_data_3ea
    .packed-switch 0x0
        :pswitch_3d6
        :pswitch_3d6
        :pswitch_387
        :pswitch_2a3
        :pswitch_212
        :pswitch_1d2
        :pswitch_189
        :pswitch_129
        :pswitch_ac
        :pswitch_3d6
        :pswitch_28
        :pswitch_28
        :pswitch_3d6
        :pswitch_3d6
        :pswitch_3d6
    .end packed-switch
.end method

.method public whitelist test-api roll(IZ)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "up"    # Z

    .line 1120
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    invoke-virtual {p0, p1, v0}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 1121
    return-void
.end method

.method public whitelist test-api setGregorianChange(Ljava/util/Date;)V
    .registers 6
    .param p1, "date"    # Ljava/util/Date;

    .line 765
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 766
    .local v0, "cutoverTime":J
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 767
    return-void

    .line 771
    :cond_b
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 772
    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(J)V

    .line 773
    return-void
.end method

.method public whitelist test-api setTimeZone(Ljava/util/TimeZone;)V
    .registers 4
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 2040
    invoke-super {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2042
    iget-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 2043
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v0, :cond_13

    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v0, v1, :cond_13

    .line 2044
    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 2046
    :cond_13
    return-void
.end method

.method public whitelist test-api setWeekDate(III)V
    .registers 12
    .param p1, "weekYear"    # I
    .param p2, "weekOfYear"    # I
    .param p3, "dayOfWeek"    # I

    .line 2208
    const/4 v0, 0x1

    if-lt p3, v0, :cond_8d

    const/4 v1, 0x7

    if-gt p3, v1, :cond_8d

    .line 2214
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    .line 2215
    .local v2, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 2216
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 2217
    .local v4, "era":I
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clear()V

    .line 2218
    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2219
    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2220
    invoke-virtual {v2, v0, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2221
    const/4 v5, 0x3

    invoke-virtual {v2, v5, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2222
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v6

    invoke-virtual {v2, v1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2223
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v6

    sub-int v6, p3, v6

    .line 2224
    .local v6, "days":I
    if-gez v6, :cond_3b

    .line 2225
    add-int/lit8 v6, v6, 0x7

    .line 2227
    :cond_3b
    add-int/lit8 v7, p2, -0x1

    mul-int/2addr v7, v1

    add-int/2addr v6, v7

    .line 2228
    if-eqz v6, :cond_46

    .line 2229
    const/4 v7, 0x6

    invoke-virtual {v2, v7, v6}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_49

    .line 2231
    :cond_46
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->complete()V

    .line 2234
    :goto_49
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v7

    if-nez v7, :cond_68

    .line 2235
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v7

    if-ne v7, p1, :cond_62

    .line 2236
    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v7

    if-ne v7, p2, :cond_62

    .line 2237
    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    if-ne v1, p3, :cond_62

    goto :goto_68

    .line 2238
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2241
    :cond_68
    :goto_68
    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2242
    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2243
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2244
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2248
    invoke-virtual {p0, v5, p2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2249
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 2250
    return-void

    .line 2209
    .end local v2    # "gc":Ljava/util/GregorianCalendar;
    .end local v4    # "era":I
    .end local v6    # "days":I
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid dayOfWeek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toZonedDateTime()Ljava/time/ZonedDateTime;
    .registers 3

    .line 3427
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 3428
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v1

    .line 3427
    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method
