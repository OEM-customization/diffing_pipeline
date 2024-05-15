.class public Ljava/util/GregorianCalendar;
.super Ljava/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final AD:I = 0x1

.field public static final BC:I = 0x0

.field static final BCE:I = 0x0

.field static final CE:I = 0x1

.field static final DEFAULT_GREGORIAN_CUTOVER:J = -0xb1d069b5400L

.field private static final EPOCH_OFFSET:I = 0xaf93b

.field private static final EPOCH_YEAR:I = 0x7b2

.field static final LEAP_MONTH_LENGTH:[I

.field static final LEAST_MAX_VALUES:[I

.field static final MAX_VALUES:[I

.field static final MIN_VALUES:[I

.field static final MONTH_LENGTH:[I

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:I = 0x36ee80

.field private static final ONE_MINUTE:I = 0xea60

.field private static final ONE_SECOND:I = 0x3e8

.field private static final ONE_WEEK:J = 0x240c8400L

.field private static final gcal:Lsun/util/calendar/Gregorian;

.field private static jcal:Lsun/util/calendar/JulianCalendar; = null

.field private static jeras:[Lsun/util/calendar/Era; = null

.field static final serialVersionUID:J = -0x70c228291a4f2f3fL


# instance fields
.field private transient cachedFixedDate:J

.field private transient calsys:Lsun/util/calendar/BaseCalendar;

.field private transient cdate:Lsun/util/calendar/BaseCalendar$Date;

.field private transient gdate:Lsun/util/calendar/BaseCalendar$Date;

.field private gregorianCutover:J

.field private transient gregorianCutoverDate:J

.field private transient gregorianCutoverYear:I

.field private transient gregorianCutoverYearJulian:I

.field private transient originalFields:[I

.field private transient zoneOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0x11

    const-class v0, Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    .line 402
    new-array v0, v2, [I

    fill-array-data v0, :array_38

    .line 401
    sput-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    .line 404
    new-array v0, v2, [I

    fill-array-data v0, :array_54

    .line 403
    sput-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    .line 440
    new-array v0, v1, [I

    fill-array-data v0, :array_70

    sput-object v0, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    .line 459
    new-array v0, v1, [I

    fill-array-data v0, :array_96

    sput-object v0, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    .line 478
    new-array v0, v1, [I

    fill-array-data v0, :array_bc

    sput-object v0, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    .line 504
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    .line 503
    sput-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 331
    return-void

    .line 402
    :array_38
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

    .line 404
    :array_54
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

    .line 440
    :array_70
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

    .line 459
    :array_96
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

    .line 478
    :array_bc
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

.method public constructor <init>()V
    .registers 3

    .prologue
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

.method public constructor <init>(III)V
    .registers 12
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    .line 641
    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    .line 642
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 14
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    .line 659
    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    .line 660
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 15
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .prologue
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

.method constructor <init>(IIIIIII)V
    .registers 14
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "millis"    # I

    .prologue
    const/16 v5, 0x62e

    const/16 v4, 0xc

    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 700
    invoke-direct {p0}, Ljava/util/Calendar;-><init>()V

    .line 528
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 534
    const-wide/32 v0, 0x8d0c8

    .line 533
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 540
    iput v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 546
    iput v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

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
    invoke-virtual {p0, v2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 703
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 704
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 708
    if-lt p4, v4, :cond_5d

    const/16 v0, 0x17

    if-gt p4, v0, :cond_5d

    .line 712
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 713
    add-int/lit8 v0, p4, -0xc

    invoke-virtual {p0, v3, v0}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 720
    :goto_45
    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    .line 722
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 723
    invoke-virtual {p0, v4, p5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 724
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 727
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p7}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 728
    return-void

    .line 717
    :cond_5d
    invoke-virtual {p0, v3, p4}, Ljava/util/GregorianCalendar;->internalSet(II)V

    goto :goto_45
.end method

.method constructor <init>(J)V
    .registers 4
    .param p1, "milliseconds"    # J

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 745
    invoke-virtual {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 746
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "aLocale"    # Ljava/util/Locale;

    .prologue
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

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 604
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 605
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 6
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .prologue
    const/16 v2, 0x62e

    .line 626
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 528
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 534
    const-wide/32 v0, 0x8d0c8

    .line 533
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 540
    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 546
    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

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

.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V
    .registers 7
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "flag"    # Z

    .prologue
    const/16 v2, 0x62e

    .line 738
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 528
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 534
    const-wide/32 v0, 0x8d0c8

    .line 533
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 540
    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 546
    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

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

.method private actualMonthLength()I
    .registers 11

    .prologue
    .line 3306
    iget-object v8, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    .line 3307
    .local v1, "year":I
    iget v8, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v1, v8, :cond_17

    iget v8, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v1, v8, :cond_17

    .line 3308
    iget-object v8, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v9, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v8, v9}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v8

    return v8

    .line 3310
    :cond_17
    iget-object v8, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 3311
    .local v0, "date":Lsun/util/calendar/BaseCalendar$Date;
    iget-object v8, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v8, v0}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v2

    .line 3312
    .local v2, "fd":J
    invoke-direct {p0, v0, v2, v3}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v4

    .line 3313
    .local v4, "month1":J
    iget-object v8, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v8, v0}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v8

    int-to-long v8, v8

    add-long v6, v4, v8

    .line 3314
    .local v6, "next1":J
    iget-wide v8, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_3c

    .line 3315
    sub-long v8, v6, v4

    long-to-int v8, v8

    return v8

    .line 3317
    :cond_3c
    iget-object v8, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v9, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v8, v9, :cond_4a

    .line 3318
    sget-object v8, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v9, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v8, v9}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    .line 3320
    :cond_4a
    sget-object v8, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v8, v0, v6, v7}, Lsun/util/calendar/Gregorian;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 3321
    invoke-direct {p0, v0, v6, v7}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v6

    .line 3322
    sub-long v8, v6, v4

    long-to-int v8, v8

    return v8
.end method

.method private adjustDstOffsetForInvalidWallClock(JLjava/util/TimeZone;I)I
    .registers 10
    .param p1, "standardTimeInZone"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;
    .param p4, "dstOffset"    # I

    .prologue
    .line 2992
    if-eqz p4, :cond_11

    .line 2995
    new-instance v0, Ljava/util/Date;

    int-to-long v2, p4

    sub-long v2, p1, v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2996
    const/4 p4, 0x0

    .line 2999
    :cond_11
    return p4
.end method

.method private adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J
    .registers 19
    .param p1, "tzMask"    # I
    .param p2, "utcTimeInMillis"    # J
    .param p4, "zone"    # Ljava/util/TimeZone;

    .prologue
    const/16 v12, 0x10

    const/4 v11, 0x0

    const/16 v10, 0xf

    .line 2890
    const/4 v7, 0x0

    .line 2891
    .local v7, "zoneOffset":I
    const/4 v2, 0x0

    .line 2895
    .local v2, "dstOffset":I
    const v8, 0x18000

    if-eq p1, v8, :cond_40

    .line 2896
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    if-nez v8, :cond_15

    .line 2897
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    .line 2899
    :cond_15
    invoke-static {p1, v10}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 2900
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 2908
    .local v3, "gmtOffset":I
    :goto_1f
    int-to-long v8, v3

    sub-long v4, p2, v8

    .line 2911
    .local v4, "standardTimeInZone":J
    move-object/from16 v0, p4

    instance-of v8, v0, Llibcore/util/ZoneInfo;

    if-eqz v8, :cond_62

    move-object/from16 v6, p4

    .line 2913
    check-cast v6, Llibcore/util/ZoneInfo;

    .line 2914
    .local v6, "zoneInfo":Llibcore/util/ZoneInfo;
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {v6, v4, v5, v8}, Llibcore/util/ZoneInfo;->getOffsetsByUtcTime(J[I)I

    .line 2918
    .end local v6    # "zoneInfo":Llibcore/util/ZoneInfo;
    :goto_31
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    aget v7, v8, v11

    .line 2919
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    const/4 v9, 0x1

    aget v2, v8, v9

    .line 2922
    move-object/from16 v0, p4

    invoke-direct {p0, v4, v5, v0, v2}, Ljava/util/GregorianCalendar;->adjustDstOffsetForInvalidWallClock(JLjava/util/TimeZone;I)I

    move-result v2

    .line 2927
    .end local v3    # "gmtOffset":I
    .end local v4    # "standardTimeInZone":J
    :cond_40
    if-eqz p1, :cond_56

    .line 2928
    invoke-static {p1, v10}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 2929
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v7

    .line 2931
    :cond_4c
    invoke-static {p1, v12}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 2932
    invoke-virtual {p0, v12}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    .line 2937
    :cond_56
    int-to-long v8, v7

    sub-long v4, p2, v8

    .line 2938
    .restart local v4    # "standardTimeInZone":J
    int-to-long v8, v2

    sub-long v8, v4, v8

    return-wide v8

    .line 2900
    .end local v4    # "standardTimeInZone":J
    :cond_5d
    invoke-virtual/range {p4 .. p4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    .restart local v3    # "gmtOffset":I
    goto :goto_1f

    .line 2916
    .restart local v4    # "standardTimeInZone":J
    :cond_62
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5, v8}, Ljava/util/TimeZone;->getOffsets(J[I)I

    goto :goto_31
.end method

.method private computeFields(II)I
    .registers 53
    .param p1, "fieldMask"    # I
    .param p2, "tzMask"    # I

    .prologue
    .line 2342
    const/16 v42, 0x0

    .line 2343
    .local v42, "zoneOffset":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v38

    .line 2344
    .local v38, "tz":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    if-nez v43, :cond_1c

    .line 2345
    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    .line 2347
    :cond_1c
    const v43, 0x18000

    move/from16 v0, p2

    move/from16 v1, v43

    if-eq v0, v1, :cond_47

    .line 2348
    move-object/from16 v0, v38

    instance-of v0, v0, Llibcore/util/ZoneInfo;

    move/from16 v43, v0

    if-eqz v43, :cond_121

    move-object/from16 v41, v38

    .line 2352
    check-cast v41, Llibcore/util/ZoneInfo;

    .line 2353
    .local v41, "zoneInfo":Llibcore/util/ZoneInfo;
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    move-object/from16 v0, v41

    move-wide/from16 v1, v44

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Llibcore/util/ZoneInfo;->getOffsetsByUtcTime(J[I)I

    move-result v42

    .line 2361
    .end local v41    # "zoneInfo":Llibcore/util/ZoneInfo;
    :cond_47
    :goto_47
    if-eqz p2, :cond_9f

    .line 2362
    const/16 v43, 0xf

    move/from16 v0, p2

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v43

    if-eqz v43, :cond_69

    .line 2363
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    const/16 v44, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    const/16 v45, 0x0

    aput v44, v43, v45

    .line 2365
    :cond_69
    const/16 v43, 0x10

    move/from16 v0, p2

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v43

    if-eqz v43, :cond_89

    .line 2366
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    const/16 v44, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    const/16 v45, 0x1

    aput v44, v43, v45

    .line 2368
    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget v43, v43, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v44, v0

    const/16 v45, 0x1

    aget v44, v44, v45

    add-int v42, v43, v44

    .line 2374
    :cond_9f
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    div-long v14, v44, v46

    .line 2375
    .local v14, "fixedDate":J
    const v43, 0x5265c00

    rem-int v37, v42, v43

    .line 2376
    .local v37, "timeOfDay":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    div-long v44, v44, v46

    add-long v14, v14, v44

    .line 2377
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    rem-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    add-int v37, v37, v43

    .line 2378
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    cmp-long v43, v44, v46

    if-ltz v43, :cond_155

    .line 2379
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    sub-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v37, v0

    .line 2380
    const-wide/16 v44, 0x1

    add-long v14, v14, v44

    .line 2387
    :cond_ec
    const-wide/32 v44, 0xaf93b

    add-long v14, v14, v44

    .line 2389
    const/4 v12, 0x1

    .line 2391
    .local v12, "era":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v44, v0

    cmp-long v43, v14, v44

    if-ltz v43, :cond_2a5

    .line 2393
    sget-boolean v43, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v43, :cond_16e

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    move-wide/from16 v44, v0

    const-wide/high16 v46, -0x8000000000000000L

    cmp-long v43, v44, v46

    if-eqz v43, :cond_16b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v43

    :goto_116
    if-nez v43, :cond_16e

    new-instance v43, Ljava/lang/AssertionError;

    .line 2394
    const-string/jumbo v44, "cache control: not normalized"

    .line 2393
    invoke-direct/range {v43 .. v44}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v43

    .line 2356
    .end local v12    # "era":I
    .end local v14    # "fixedDate":J
    .end local v37    # "timeOfDay":I
    :cond_121
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v44, v0

    move-object/from16 v0, v38

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v42

    .line 2357
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v44

    const/16 v45, 0x0

    aput v44, v43, v45

    .line 2358
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget v44, v44, v45

    sub-int v44, v42, v44

    const/16 v45, 0x1

    aput v44, v43, v45

    goto/16 :goto_47

    .line 2382
    .restart local v14    # "fixedDate":J
    .restart local v37    # "timeOfDay":I
    :cond_155
    :goto_155
    if-gez v37, :cond_ec

    .line 2383
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    add-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v37, v0

    .line 2384
    const-wide/16 v44, 0x1

    sub-long v14, v14, v44

    goto :goto_155

    .line 2393
    .restart local v12    # "era":I
    :cond_16b
    const/16 v43, 0x1

    goto :goto_116

    .line 2395
    :cond_16e
    sget-boolean v43, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v43, :cond_220

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    move-wide/from16 v44, v0

    const-wide/high16 v46, -0x8000000000000000L

    cmp-long v43, v44, v46

    if-eqz v43, :cond_220

    .line 2396
    sget-object v43, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v44

    .line 2397
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v45

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v47, v0

    .line 2396
    invoke-virtual/range {v43 .. v47}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v44

    .line 2399
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    move-wide/from16 v46, v0

    .line 2396
    cmp-long v43, v44, v46

    if-eqz v43, :cond_220

    .line 2395
    new-instance v43, Ljava/lang/AssertionError;

    .line 2400
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "cache control: inconsictency, cachedFixedDate="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2401
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    move-wide/from16 v46, v0

    .line 2400
    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2402
    const-string/jumbo v45, ", computed="

    .line 2400
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2403
    sget-object v45, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v46

    .line 2404
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v47

    .line 2405
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v48

    .line 2406
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v49, v0

    .line 2403
    invoke-virtual/range {v45 .. v49}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v46

    .line 2400
    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2407
    const-string/jumbo v45, ", date="

    .line 2400
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v45, v0

    .line 2400
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 2395
    invoke-direct/range {v43 .. v44}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v43

    .line 2410
    :cond_220
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    move-wide/from16 v44, v0

    cmp-long v43, v14, v44

    if-eqz v43, :cond_23d

    .line 2411
    sget-object v43, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v14, v15}, Lsun/util/calendar/Gregorian;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 2412
    move-object/from16 v0, p0

    iput-wide v14, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 2415
    :cond_23d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v40

    .line 2416
    .local v40, "year":I
    if-gtz v40, :cond_24c

    .line 2417
    rsub-int/lit8 v40, v40, 0x1

    .line 2418
    const/4 v12, 0x0

    .line 2420
    :cond_24c
    sget-object v43, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2421
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 2422
    sget-boolean v43, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v43, :cond_2ed

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v43

    if-gtz v43, :cond_2ed

    new-instance v43, Ljava/lang/AssertionError;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "dow="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ", date="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v43

    .line 2425
    .end local v40    # "year":I
    :cond_2a5
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2426
    sget-object v43, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lsun/util/calendar/JulianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 2427
    sget-object v43, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v14, v15}, Lsun/util/calendar/JulianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 2428
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v11

    .line 2429
    .local v11, "e":Lsun/util/calendar/Era;
    sget-object v43, Ljava/util/GregorianCalendar;->jeras:[Lsun/util/calendar/Era;

    const/16 v44, 0x0

    aget-object v43, v43, v44

    move-object/from16 v0, v43

    if-ne v11, v0, :cond_2e3

    .line 2430
    const/4 v12, 0x0

    .line 2432
    :cond_2e3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v40

    .line 2436
    .end local v11    # "e":Lsun/util/calendar/Era;
    .restart local v40    # "year":I
    :cond_2ed
    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v12}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2437
    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2438
    or-int/lit8 v22, p1, 0x3

    .line 2440
    .local v22, "mask":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v43

    add-int/lit8 v23, v43, -0x1

    .line 2441
    .local v23, "month":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v9

    .line 2444
    .local v9, "dayOfMonth":I
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0xa4

    move/from16 v43, v0

    if-eqz v43, :cond_350

    .line 2446
    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2447
    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v9}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2448
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v43

    const/16 v44, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2449
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0xa4

    move/from16 v22, v0

    .line 2452
    :cond_350
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x7e00

    move/from16 v43, v0

    if-eqz v43, :cond_3c4

    .line 2454
    if-eqz v37, :cond_50e

    .line 2455
    const v43, 0x36ee80

    div-int v13, v37, v43

    .line 2456
    .local v13, "hours":I
    const/16 v43, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v13}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2457
    div-int/lit8 v43, v13, 0xc

    const/16 v44, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2458
    rem-int/lit8 v43, v13, 0xc

    const/16 v44, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2459
    const v43, 0x36ee80

    rem-int v34, v37, v43

    .line 2460
    .local v34, "r":I
    const v43, 0xea60

    div-int v43, v34, v43

    const/16 v44, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2461
    const v43, 0xea60

    rem-int v34, v34, v43

    .line 2462
    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v43, v0

    const/16 v44, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2463
    move/from16 v0, v34

    rem-int/lit16 v0, v0, 0x3e8

    move/from16 v43, v0

    const/16 v44, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2472
    .end local v13    # "hours":I
    .end local v34    # "r":I
    :goto_3be
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x7e00

    move/from16 v22, v0

    .line 2476
    :cond_3c4
    const v43, 0x18000

    and-int v43, v43, p1

    if-eqz v43, :cond_3fa

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget v43, v43, v44

    const/16 v44, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2478
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    const/16 v44, 0x1

    aget v43, v43, v44

    const/16 v44, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2479
    const v43, 0x18000

    or-int v22, v22, v43

    .line 2482
    :cond_3fa
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x158

    move/from16 v43, v0

    if-eqz v43, :cond_50d

    .line 2483
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v30

    .line 2484
    .local v30, "normalizedYear":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    const/16 v46, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v30

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v16

    .line 2485
    .local v16, "fixedDateJan1":J
    sub-long v44, v14, v16

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    add-int/lit8 v10, v43, 0x1

    .line 2486
    .local v10, "dayOfYear":I
    int-to-long v0, v9

    move-wide/from16 v44, v0

    sub-long v44, v14, v44

    const-wide/16 v46, 0x1

    add-long v18, v44, v46

    .line 2487
    .local v18, "fixedDateMonth1":J
    const/4 v7, 0x0

    .line 2488
    .local v7, "cutoverGap":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    sget-object v44, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_55e

    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 2489
    .local v8, "cutoverYear":I
    :goto_44f
    add-int/lit8 v36, v9, -0x1

    .line 2492
    .local v36, "relativeDayOfMonth":I
    move/from16 v0, v30

    if-ne v0, v8, :cond_4a1

    .line 2494
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v44, v0

    move/from16 v0, v43

    move/from16 v1, v44

    if-gt v0, v1, :cond_48d

    .line 2498
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateJan1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v16

    .line 2499
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v44, v0

    cmp-long v43, v14, v44

    if-ltz v43, :cond_48d

    .line 2500
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v18

    .line 2503
    :cond_48d
    sub-long v44, v14, v16

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    add-int/lit8 v35, v43, 0x1

    .line 2504
    .local v35, "realDayOfYear":I
    sub-int v7, v10, v35

    .line 2505
    move/from16 v10, v35

    .line 2506
    sub-long v44, v14, v18

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v36, v0

    .line 2508
    .end local v35    # "realDayOfYear":I
    :cond_4a1
    const/16 v43, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v10}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2509
    div-int/lit8 v43, v36, 0x7

    add-int/lit8 v43, v43, 0x1

    const/16 v44, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2511
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v14, v15}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v39

    .line 2515
    .local v39, "weekOfYear":I
    if-nez v39, :cond_5e6

    .line 2523
    const-wide/16 v44, 0x1

    sub-long v20, v16, v44

    .line 2524
    .local v20, "fixedDec31":J
    const-wide/16 v44, 0x16d

    sub-long v32, v16, v44

    .line 2525
    .local v32, "prevJan1":J
    add-int/lit8 v43, v8, 0x1

    move/from16 v0, v30

    move/from16 v1, v43

    if-le v0, v1, :cond_564

    .line 2526
    add-int/lit8 v43, v30, -0x1

    invoke-static/range {v43 .. v43}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v43

    if-eqz v43, :cond_4df

    .line 2527
    const-wide/16 v44, 0x1

    sub-long v32, v32, v44

    .line 2556
    :cond_4df
    :goto_4df
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v39

    .line 2608
    .end local v20    # "fixedDec31":J
    .end local v32    # "prevJan1":J
    :cond_4e9
    :goto_4e9
    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2609
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2, v14, v15}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v43

    const/16 v44, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2610
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x158

    move/from16 v22, v0

    .line 2612
    .end local v7    # "cutoverGap":I
    .end local v8    # "cutoverYear":I
    .end local v10    # "dayOfYear":I
    .end local v16    # "fixedDateJan1":J
    .end local v18    # "fixedDateMonth1":J
    .end local v30    # "normalizedYear":I
    .end local v36    # "relativeDayOfMonth":I
    .end local v39    # "weekOfYear":I
    :cond_50d
    return v22

    .line 2465
    :cond_50e
    const/16 v43, 0xb

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2466
    const/16 v43, 0x9

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2467
    const/16 v43, 0xa

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2468
    const/16 v43, 0xc

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2469
    const/16 v43, 0xd

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2470
    const/16 v43, 0xe

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    goto/16 :goto_3be

    .line 2488
    .restart local v7    # "cutoverGap":I
    .restart local v10    # "dayOfYear":I
    .restart local v16    # "fixedDateJan1":J
    .restart local v18    # "fixedDateMonth1":J
    .restart local v30    # "normalizedYear":I
    :cond_55e
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .restart local v8    # "cutoverYear":I
    goto/16 :goto_44f

    .line 2529
    .restart local v20    # "fixedDec31":J
    .restart local v32    # "prevJan1":J
    .restart local v36    # "relativeDayOfMonth":I
    .restart local v39    # "weekOfYear":I
    :cond_564
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move/from16 v0, v30

    move/from16 v1, v43

    if-gt v0, v1, :cond_57e

    .line 2530
    add-int/lit8 v43, v30, -0x1

    invoke-static/range {v43 .. v43}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v43

    if-eqz v43, :cond_4df

    .line 2531
    const-wide/16 v44, 0x1

    sub-long v32, v32, v44

    goto/16 :goto_4df

    .line 2534
    :cond_57e
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2536
    .local v6, "calForJan1":Lsun/util/calendar/BaseCalendar;
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v31

    .line 2537
    .local v31, "prevYear":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-ne v0, v1, :cond_5c2

    .line 2538
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v6

    .line 2539
    sget-object v43, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    move-object/from16 v0, v43

    if-ne v6, v0, :cond_5b8

    .line 2541
    const/16 v43, 0x1

    .line 2542
    const/16 v44, 0x1

    .line 2543
    const/16 v45, 0x0

    .line 2540
    move/from16 v0, v31

    move/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v32

    goto/16 :goto_4df

    .line 2545
    :cond_5b8
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v32, v0

    .line 2546
    sget-object v6, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto/16 :goto_4df

    .line 2548
    :cond_5c2
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-gt v0, v1, :cond_4df

    .line 2549
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v6

    .line 2551
    const/16 v43, 0x1

    .line 2552
    const/16 v44, 0x1

    .line 2553
    const/16 v45, 0x0

    .line 2550
    move/from16 v0, v31

    move/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v32

    goto/16 :goto_4df

    .line 2558
    .end local v6    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .end local v20    # "fixedDec31":J
    .end local v31    # "prevYear":I
    .end local v32    # "prevJan1":J
    :cond_5e6
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v30

    move/from16 v1, v43

    if-gt v0, v1, :cond_600

    .line 2559
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    move/from16 v0, v30

    move/from16 v1, v43

    if-ge v0, v1, :cond_649

    .line 2561
    :cond_600
    const/16 v43, 0x34

    move/from16 v0, v39

    move/from16 v1, v43

    if-lt v0, v1, :cond_4e9

    .line 2562
    const-wide/16 v44, 0x16d

    add-long v26, v16, v44

    .line 2563
    .local v26, "nextJan1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->isLeapYear()Z

    move-result v43

    if-eqz v43, :cond_61c

    .line 2564
    const-wide/16 v44, 0x1

    add-long v26, v26, v44

    .line 2566
    :cond_61c
    const-wide/16 v44, 0x6

    add-long v44, v44, v26

    .line 2567
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v43

    .line 2566
    move-wide/from16 v0, v44

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    .line 2568
    .local v28, "nextJan1st":J
    sub-long v44, v28, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v24, v0

    .line 2569
    .local v24, "ndays":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v43

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_4e9

    const-wide/16 v44, 0x7

    sub-long v44, v28, v44

    cmp-long v43, v14, v44

    if-ltz v43, :cond_4e9

    .line 2571
    const/16 v39, 0x1

    goto/16 :goto_4e9

    .line 2575
    .end local v24    # "ndays":I
    .end local v26    # "nextJan1":J
    .end local v28    # "nextJan1st":J
    :cond_649
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2576
    .restart local v6    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    add-int/lit8 v25, v30, 0x1

    .line 2577
    .local v25, "nextYear":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v25

    move/from16 v1, v43

    if-ne v0, v1, :cond_66f

    .line 2578
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-ge v0, v1, :cond_66f

    .line 2580
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v25, v0

    .line 2582
    :cond_66f
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-ne v0, v1, :cond_67f

    .line 2583
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v6

    .line 2587
    :cond_67f
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-gt v0, v1, :cond_69d

    .line 2588
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v44, v0

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_6dc

    .line 2591
    :cond_69d
    const/16 v43, 0x1

    .line 2592
    const/16 v44, 0x1

    .line 2593
    const/16 v45, 0x0

    .line 2590
    move/from16 v0, v25

    move/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v26

    .line 2599
    .restart local v26    # "nextJan1":J
    :goto_6af
    const-wide/16 v44, 0x6

    add-long v44, v44, v26

    .line 2600
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v43

    .line 2599
    move-wide/from16 v0, v44

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    .line 2601
    .restart local v28    # "nextJan1st":J
    sub-long v44, v28, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v24, v0

    .line 2602
    .restart local v24    # "ndays":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v43

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_4e9

    const-wide/16 v44, 0x7

    sub-long v44, v28, v44

    cmp-long v43, v14, v44

    if-ltz v43, :cond_4e9

    .line 2604
    const/16 v39, 0x1

    goto/16 :goto_4e9

    .line 2589
    .end local v24    # "ndays":I
    .end local v26    # "nextJan1":J
    .end local v28    # "nextJan1st":J
    :cond_6dc
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-eq v0, v1, :cond_69d

    .line 2595
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    .line 2596
    .restart local v26    # "nextJan1":J
    sget-object v6, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_6af
.end method

.method public static from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;
    .registers 7
    .param p0, "zdt"    # Ljava/time/ZonedDateTime;

    .prologue
    .line 3456
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 3457
    .local v0, "cal":Ljava/util/GregorianCalendar;
    new-instance v2, Ljava/util/Date;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 3458
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 3459
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    .line 3461
    :try_start_1f
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    .line 3462
    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljava/time/ZonedDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    int-to-long v4, v4

    .line 3461
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V
    :try_end_37
    .catch Ljava/lang/ArithmeticException; {:try_start_1f .. :try_end_37} :catch_38

    .line 3466
    return-object v0

    .line 3463
    :catch_38
    move-exception v1

    .line 3464
    .local v1, "ex":Ljava/lang/ArithmeticException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;
    .registers 8
    .param p1, "fd"    # J

    .prologue
    .line 3259
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_14

    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 3260
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    :goto_8
    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    .line 3261
    .local v1, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 3262
    return-object v1

    .line 3259
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v1    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_14
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .restart local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    goto :goto_8
.end method

.method private getCurrentFixedDate()J
    .registers 3

    .prologue
    .line 3371
    iget-object v0, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    sget-object v1, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-ne v0, v1, :cond_9

    iget-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    :goto_8
    return-wide v0

    :cond_9
    iget-object v0, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    goto :goto_8
.end method

.method private getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;
    .registers 3

    .prologue
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

.method private getFixedDate(Lsun/util/calendar/BaseCalendar;II)J
    .registers 20
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "year"    # I
    .param p3, "fieldMask"    # I

    .prologue
    .line 3015
    const/4 v9, 0x0

    .line 3016
    .local v9, "month":I
    const/4 v11, 0x2

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 3019
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v9

    .line 3022
    const/16 v11, 0xb

    if-le v9, v11, :cond_58

    .line 3023
    div-int/lit8 v11, v9, 0xc

    add-int p2, p2, v11

    .line 3024
    rem-int/lit8 v9, v9, 0xc

    .line 3034
    :cond_1b
    :goto_1b
    add-int/lit8 v12, v9, 0x1

    .line 3035
    sget-object v11, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_69

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 3034
    :goto_27
    const/4 v13, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v6

    .line 3036
    .local v6, "fixedDate":J
    const/4 v11, 0x2

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_104

    .line 3038
    const/4 v11, 0x5

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 3045
    const/4 v11, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v11

    if-eqz v11, :cond_57

    .line 3048
    const/4 v11, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    int-to-long v12, v11

    add-long/2addr v6, v12

    .line 3049
    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    .line 3130
    :cond_57
    :goto_57
    return-wide v6

    .line 3025
    .end local v6    # "fixedDate":J
    :cond_58
    if-gez v9, :cond_1b

    .line 3026
    const/4 v11, 0x1

    new-array v10, v11, [I

    .line 3027
    .local v10, "rem":[I
    const/16 v11, 0xc

    invoke-static {v9, v11, v10}, Lsun/util/calendar/CalendarUtils;->floorDivide(II[I)I

    move-result v11

    add-int p2, p2, v11

    .line 3028
    const/4 v11, 0x0

    aget v9, v10, v11

    goto :goto_1b

    .line 3035
    .end local v10    # "rem":[I
    :cond_69
    const/4 v11, 0x0

    goto :goto_27

    .line 3052
    .restart local v6    # "fixedDate":J
    :cond_6b
    const/4 v11, 0x4

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_b3

    .line 3053
    const-wide/16 v12, 0x6

    add-long/2addr v12, v6

    .line 3054
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v11

    .line 3053
    invoke-static {v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    .line 3057
    .local v4, "firstDayOfWeek":J
    sub-long v12, v4, v6

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v11

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-ltz v11, :cond_8d

    .line 3058
    const-wide/16 v12, 0x7

    sub-long/2addr v4, v12

    .line 3060
    :cond_8d
    const/4 v11, 0x7

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_a4

    .line 3061
    const-wide/16 v12, 0x6

    add-long/2addr v12, v4

    .line 3062
    const/4 v11, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    .line 3061
    invoke-static {v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    .line 3067
    :cond_a4
    const/4 v11, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v11, v11, 0x7

    int-to-long v12, v11

    add-long v6, v4, v12

    goto :goto_57

    .line 3070
    .end local v4    # "firstDayOfWeek":J
    :cond_b3
    const/4 v11, 0x7

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_e4

    .line 3071
    const/4 v11, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    .line 3079
    .local v2, "dayOfWeek":I
    :goto_c3
    const/16 v11, 0x8

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_e9

    .line 3080
    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 3084
    .local v3, "dowim":I
    :goto_d5
    if-ltz v3, :cond_eb

    .line 3085
    mul-int/lit8 v11, v3, 0x7

    int-to-long v12, v11

    add-long/2addr v12, v6

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    invoke-static {v12, v13, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v6

    goto/16 :goto_57

    .line 3073
    .end local v2    # "dayOfWeek":I
    .end local v3    # "dowim":I
    :cond_e4
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v2

    .restart local v2    # "dayOfWeek":I
    goto :goto_c3

    .line 3082
    :cond_e9
    const/4 v3, 0x1

    .restart local v3    # "dowim":I
    goto :goto_d5

    .line 3090
    :cond_eb
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v1}, Ljava/util/GregorianCalendar;->monthLength(II)I

    move-result v11

    add-int/lit8 v12, v3, 0x1

    mul-int/lit8 v12, v12, 0x7

    add-int v8, v11, v12

    .line 3092
    .local v8, "lastDate":I
    int-to-long v12, v8

    add-long/2addr v12, v6

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    invoke-static {v12, v13, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v6

    goto/16 :goto_57

    .line 3098
    .end local v2    # "dayOfWeek":I
    .end local v3    # "dowim":I
    .end local v8    # "lastDate":I
    :cond_104
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v0, p2

    if-ne v0, v11, :cond_128

    sget-object v11, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_128

    .line 3099
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v11, v6, v12

    if-gez v11, :cond_128

    .line 3100
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move-object/from16 v0, p0

    iget v12, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v11, v12, :cond_128

    .line 3104
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 3107
    :cond_128
    const/4 v11, 0x6

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_13f

    .line 3109
    const/4 v11, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    int-to-long v12, v11

    add-long/2addr v6, v12

    .line 3110
    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    goto/16 :goto_57

    .line 3112
    :cond_13f
    const-wide/16 v12, 0x6

    add-long/2addr v12, v6

    .line 3113
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v11

    .line 3112
    invoke-static {v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    .line 3116
    .restart local v4    # "firstDayOfWeek":J
    sub-long v12, v4, v6

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v11

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-ltz v11, :cond_158

    .line 3117
    const-wide/16 v12, 0x7

    sub-long/2addr v4, v12

    .line 3119
    :cond_158
    const/4 v11, 0x7

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_175

    .line 3120
    const/4 v11, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    .line 3121
    .restart local v2    # "dayOfWeek":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v11

    if-eq v2, v11, :cond_175

    .line 3122
    const-wide/16 v12, 0x6

    add-long/2addr v12, v4

    invoke-static {v12, v13, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    .line 3126
    .end local v2    # "dayOfWeek":I
    :cond_175
    const/4 v11, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    int-to-long v12, v11

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x7

    mul-long/2addr v12, v14

    add-long v6, v4, v12

    goto/16 :goto_57
.end method

.method private getFixedDateJan1(Lsun/util/calendar/BaseCalendar$Date;J)J
    .registers 10
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p2, "fixedDate"    # J

    .prologue
    const/4 v4, 0x1

    .line 3194
    sget-boolean v1, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v1, :cond_1b

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    iget v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v1, v2, :cond_1b

    .line 3195
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    iget v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v1, v2, :cond_1b

    .line 3194
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3196
    :cond_1b
    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v1, v2, :cond_2a

    .line 3197
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v1, p2, v2

    if-ltz v1, :cond_2a

    .line 3202
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    return-wide v2

    .line 3206
    :cond_2a
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 3207
    .local v0, "juliancal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v4, v2}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v2

    return-wide v2
.end method

.method private getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J
    .registers 14
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p2, "fixedDate"    # J

    .prologue
    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    .line 3220
    sget-boolean v4, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v4, :cond_1d

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v4

    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v4, v5, :cond_1d

    .line 3221
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v4

    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v4, v5, :cond_1d

    .line 3220
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3222
    :cond_1d
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v2

    .line 3223
    .local v2, "gCutover":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v4

    if-ne v4, v8, :cond_36

    .line 3224
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    if-ne v4, v8, :cond_36

    .line 3226
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    int-to-long v4, v4

    sub-long v4, p2, v4

    add-long/2addr v4, v6

    return-wide v4

    .line 3231
    :cond_36
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v4

    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v5

    if-ne v4, v5, :cond_67

    .line 3233
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getLastJulianDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v3

    .line 3234
    .local v3, "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v4, v5, :cond_64

    .line 3235
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v4

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v5

    if-ne v4, v5, :cond_64

    .line 3237
    sget-object v4, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v5

    .line 3238
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v6

    .line 3240
    const/4 v7, 0x0

    .line 3237
    invoke-virtual {v4, v5, v6, v8, v7}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v0

    .line 3250
    .end local v3    # "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    .local v0, "fixedDateMonth1":J
    :goto_63
    return-wide v0

    .line 3243
    .end local v0    # "fixedDateMonth1":J
    .restart local v3    # "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    :cond_64
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .restart local v0    # "fixedDateMonth1":J
    goto :goto_63

    .line 3247
    .end local v0    # "fixedDateMonth1":J
    .end local v3    # "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    :cond_67
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    int-to-long v4, v4

    sub-long v4, p2, v4

    add-long v0, v4, v6

    .restart local v0    # "fixedDateMonth1":J
    goto :goto_63
.end method

.method private getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;
    .registers 3

    .prologue
    .line 3270
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;
    .registers 2

    .prologue
    const-class v1, Ljava/util/GregorianCalendar;

    monitor-enter v1

    .line 3156
    :try_start_3
    sget-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    if-nez v0, :cond_1a

    .line 3157
    const-string/jumbo v0, "julian"

    invoke-static {v0}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/JulianCalendar;

    sput-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    .line 3158
    sget-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual {v0}, Lsun/util/calendar/JulianCalendar;->getEras()[Lsun/util/calendar/Era;

    move-result-object v0

    sput-object v0, Ljava/util/GregorianCalendar;->jeras:[Lsun/util/calendar/Era;

    .line 3160
    :cond_1a
    sget-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v1

    return-object v0

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLastJulianDate()Lsun/util/calendar/BaseCalendar$Date;
    .registers 5

    .prologue
    .line 3278
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method private getNormalizedCalendar()Ljava/util/GregorianCalendar;
    .registers 3

    .prologue
    .line 3140
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isFullyNormalized()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3141
    move-object v0, p0

    .line 3148
    .local v0, "gc":Ljava/util/GregorianCalendar;
    :goto_7
    return-object v0

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

    goto :goto_7
.end method

.method private static getRolledValue(IIII)I
    .registers 7
    .param p0, "value"    # I
    .param p1, "amount"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 3378
    sget-boolean v2, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v2, :cond_e

    if-lt p0, p2, :cond_8

    if-le p0, p3, :cond_e

    :cond_8
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3379
    :cond_e
    sub-int v2, p3, p2

    add-int/lit8 v1, v2, 0x1

    .line 3380
    .local v1, "range":I
    rem-int/2addr p1, v1

    .line 3381
    add-int v0, p0, p1

    .line 3382
    .local v0, "n":I
    if-le v0, p3, :cond_26

    .line 3383
    sub-int/2addr v0, v1

    .line 3387
    :cond_18
    :goto_18
    sget-boolean v2, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v2, :cond_2a

    if-lt v0, p2, :cond_20

    if-le v0, p3, :cond_2a

    :cond_20
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3384
    :cond_26
    if-ge v0, p2, :cond_18

    .line 3385
    add-int/2addr v0, v1

    goto :goto_18

    .line 3388
    :cond_2a
    return v0
.end method

.method private getWeekNumber(JJ)I
    .registers 14
    .param p1, "fixedDay1"    # J
    .param p3, "fixedDate"    # J

    .prologue
    const/4 v7, 0x7

    .line 2627
    const-wide/16 v4, 0x6

    add-long/2addr v4, p1

    .line 2628
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v6

    .line 2627
    invoke-static {v4, v5, v6}, Lsun/util/calendar/Gregorian;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    .line 2629
    .local v0, "fixedDay1st":J
    sub-long v4, v0, p1

    long-to-int v2, v4

    .line 2630
    .local v2, "ndays":I
    sget-boolean v4, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v4, :cond_1b

    if-le v2, v7, :cond_1b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2631
    :cond_1b
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v4

    if-lt v2, v4, :cond_24

    .line 2632
    const-wide/16 v4, 0x7

    sub-long/2addr v0, v4

    .line 2634
    :cond_24
    sub-long v4, p3, v0

    long-to-int v3, v4

    .line 2635
    .local v3, "normalizedDayOfPeriod":I
    if-ltz v3, :cond_2e

    .line 2636
    div-int/lit8 v4, v3, 0x7

    add-int/lit8 v4, v4, 0x1

    return v4

    .line 2638
    :cond_2e
    invoke-static {v3, v7}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private getYearOffsetInMillis()J
    .registers 7

    .prologue
    const-wide/16 v4, 0x3c

    .line 1998
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x18

    int-to-long v0, v2

    .line 1999
    .local v0, "t":J
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 2000
    mul-long/2addr v0, v4

    .line 2001
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 2002
    mul-long/2addr v0, v4

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

    .line 2005
    sub-long/2addr v2, v4

    return-wide v2
.end method

.method private internalGetEra()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3396
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private isCutoverYear(I)Z
    .registers 5
    .param p1, "normalizedYear"    # I

    .prologue
    .line 3180
    iget-object v1, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    sget-object v2, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-ne v1, v2, :cond_c

    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 3181
    .local v0, "cutoverYear":I
    :goto_8
    if-ne p1, v0, :cond_f

    const/4 v1, 0x1

    :goto_b
    return v1

    .line 3180
    .end local v0    # "cutoverYear":I
    :cond_c
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .restart local v0    # "cutoverYear":I
    goto :goto_8

    .line 3181
    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private monthLength(I)I
    .registers 4
    .param p1, "month"    # I

    .prologue
    .line 3298
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

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

.method private monthLength(II)I
    .registers 4
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    .line 3288
    invoke-virtual {p0, p2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    aget v0, v0, p1

    :goto_a
    return v0

    :cond_b
    sget-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    aget v0, v0, p1

    goto :goto_a
.end method

.method private pinDayOfMonth()V
    .registers 7

    .prologue
    const/4 v5, 0x5

    .line 3352
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 3354
    .local v3, "year":I
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-gt v3, v4, :cond_e

    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ge v3, v4, :cond_21

    .line 3355
    :cond_e
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    invoke-direct {p0, v4}, Ljava/util/GregorianCalendar;->monthLength(I)I

    move-result v2

    .line 3360
    .local v2, "monthLen":I
    :goto_17
    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    .line 3361
    .local v0, "dom":I
    if-le v0, v2, :cond_20

    .line 3362
    invoke-virtual {p0, v5, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 3364
    :cond_20
    return-void

    .line 3357
    .end local v0    # "dom":I
    .end local v2    # "monthLen":I
    :cond_21
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 3358
    .local v1, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    .restart local v2    # "monthLen":I
    goto :goto_17
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
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

.method private setGregorianChange(J)V
    .registers 12
    .param p1, "cutoverTime"    # J

    .prologue
    const-wide/16 v6, 0x1

    .line 776
    iput-wide p1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 777
    const-wide/32 v2, 0x5265c00

    invoke-static {p1, p2, v2, v3}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v2

    .line 778
    const-wide/32 v4, 0xaf93b

    .line 777
    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 785
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_1f

    .line 786
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 789
    :cond_1f
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 792
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v2

    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 794
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v1

    .line 795
    .local v1, "julianCal":Lsun/util/calendar/BaseCalendar;
    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 796
    .restart local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    sub-long/2addr v2, v6

    invoke-virtual {v1, v0, v2, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 797
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 799
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->time:J

    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4c

    .line 802
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->setUnnormalized()V

    .line 804
    :cond_4c
    return-void
.end method

.method private yearLength()I
    .registers 3

    .prologue
    .line 3338
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

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

.method private yearLength(I)I
    .registers 3
    .param p1, "year"    # I

    .prologue
    .line 3330
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x16d

    goto :goto_8
.end method


# virtual methods
.method public add(II)V
    .registers 27
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .prologue
    .line 922
    if-nez p2, :cond_3

    .line 923
    return-void

    .line 926
    :cond_3
    if-ltz p1, :cond_d

    const/16 v19, 0xf

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_13

    .line 927
    :cond_d
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 931
    :cond_13
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 933
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_8d

    .line 934
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v18

    .line 935
    .local v18, "year":I
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_62

    .line 936
    add-int v18, v18, p2

    .line 937
    if-lez v18, :cond_47

    .line 938
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 955
    :goto_43
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->pinDayOfMonth()V

    .line 1098
    .end local v18    # "year":I
    :goto_46
    return-void

    .line 940
    .restart local v18    # "year":I
    :cond_47
    rsub-int/lit8 v19, v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 942
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_43

    .line 946
    :cond_62
    sub-int v18, v18, p2

    .line 947
    if-lez v18, :cond_72

    .line 948
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_43

    .line 950
    :cond_72
    rsub-int/lit8 v19, v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 952
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_43

    .line 956
    .end local v18    # "year":I
    :cond_8d
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_141

    .line 957
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    add-int v7, v19, p2

    .line 958
    .local v7, "month":I
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v18

    .line 961
    .restart local v18    # "year":I
    if-ltz v7, :cond_e0

    .line 962
    div-int/lit8 v15, v7, 0xc

    .line 966
    .local v15, "y_amount":I
    :goto_af
    if-eqz v15, :cond_cc

    .line 967
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_102

    .line 968
    add-int v18, v18, v15

    .line 969
    if-lez v18, :cond_e7

    .line 970
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 989
    :cond_cc
    :goto_cc
    if-ltz v7, :cond_12d

    .line 990
    rem-int/lit8 v19, v7, 0xc

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 999
    :goto_db
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->pinDayOfMonth()V

    goto/16 :goto_46

    .line 964
    .end local v15    # "y_amount":I
    :cond_e0
    add-int/lit8 v19, v7, 0x1

    div-int/lit8 v19, v19, 0xc

    add-int/lit8 v15, v19, -0x1

    .restart local v15    # "y_amount":I
    goto :goto_af

    .line 972
    :cond_e7
    rsub-int/lit8 v19, v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 974
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_cc

    .line 978
    :cond_102
    sub-int v18, v18, v15

    .line 979
    if-lez v18, :cond_112

    .line 980
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_cc

    .line 982
    :cond_112
    rsub-int/lit8 v19, v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 984
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_cc

    .line 993
    :cond_12d
    rem-int/lit8 v7, v7, 0xc

    .line 994
    if-gez v7, :cond_133

    .line 995
    add-int/lit8 v7, v7, 0xc

    .line 997
    :cond_133
    add-int/lit8 v19, v7, 0x0

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_db

    .line 1000
    .end local v7    # "month":I
    .end local v15    # "y_amount":I
    .end local v18    # "year":I
    :cond_141
    if-nez p1, :cond_164

    .line 1001
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    add-int v6, v19, p2

    .line 1002
    .local v6, "era":I
    if-gez v6, :cond_152

    .line 1003
    const/4 v6, 0x0

    .line 1005
    :cond_152
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v6, v0, :cond_159

    .line 1006
    const/4 v6, 0x1

    .line 1008
    :cond_159
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_46

    .line 1010
    .end local v6    # "era":I
    :cond_164
    move/from16 v0, p2

    int-to-long v4, v0

    .line 1011
    .local v4, "delta":J
    const-wide/16 v12, 0x0

    .line 1012
    .local v12, "timeOfDay":J
    packed-switch p1, :pswitch_data_23e

    .line 1055
    :goto_16c
    :pswitch_16c
    const/16 v19, 0xa

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_1a7

    .line 1056
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v20, v0

    add-long v20, v20, v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1057
    return-void

    .line 1017
    :pswitch_184
    const-wide/32 v20, 0x36ee80

    mul-long v4, v4, v20

    .line 1018
    goto :goto_16c

    .line 1021
    :pswitch_18a
    const-wide/32 v20, 0xea60

    mul-long v4, v4, v20

    .line 1022
    goto :goto_16c

    .line 1025
    :pswitch_190
    const-wide/16 v20, 0x3e8

    mul-long v4, v4, v20

    .line 1026
    goto :goto_16c

    .line 1037
    :pswitch_195
    const-wide/16 v20, 0x7

    mul-long v4, v4, v20

    .line 1038
    goto :goto_16c

    .line 1048
    :pswitch_19a
    div-int/lit8 v19, p2, 0x2

    move/from16 v0, v19

    int-to-long v4, v0

    .line 1049
    rem-int/lit8 v19, p2, 0x2

    mul-int/lit8 v19, v19, 0xc

    move/from16 v0, v19

    int-to-long v12, v0

    .line 1050
    goto :goto_16c

    .line 1066
    :cond_1a7
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v8

    .line 1067
    .local v8, "fd":J
    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v12, v20

    .line 1068
    const-wide/16 v20, 0x3c

    mul-long v12, v12, v20

    .line 1069
    const/16 v19, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v12, v20

    .line 1070
    const-wide/16 v20, 0x3c

    mul-long v12, v12, v20

    .line 1071
    const/16 v19, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v12, v20

    .line 1072
    const-wide/16 v20, 0x3e8

    mul-long v12, v12, v20

    .line 1073
    const/16 v19, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v12, v20

    .line 1074
    const-wide/32 v20, 0x5265c00

    cmp-long v19, v12, v20

    if-ltz v19, :cond_22e

    .line 1075
    const-wide/16 v20, 0x1

    add-long v8, v8, v20

    .line 1076
    const-wide/32 v20, 0x5265c00

    sub-long v12, v12, v20

    .line 1082
    :cond_20b
    :goto_20b
    add-long/2addr v8, v4

    .line 1085
    const-wide/32 v20, 0xaf93b

    sub-long v20, v8, v20

    const-wide/32 v22, 0x5265c00

    mul-long v20, v20, v22

    add-long v16, v20, v12

    .line 1089
    .local v16, "utcTime":J
    const/4 v14, 0x0

    .line 1092
    .local v14, "tzMask":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object/from16 v3, v19

    invoke-direct {v0, v14, v1, v2, v3}, Ljava/util/GregorianCalendar;->adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J

    move-result-wide v10

    .line 1095
    .local v10, "millis":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto/16 :goto_46

    .line 1077
    .end local v10    # "millis":J
    .end local v14    # "tzMask":I
    .end local v16    # "utcTime":J
    :cond_22e
    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-gez v19, :cond_20b

    .line 1078
    const-wide/16 v20, 0x1

    sub-long v8, v8, v20

    .line 1079
    const-wide/32 v20, 0x5265c00

    add-long v12, v12, v20

    goto :goto_20b

    .line 1012
    :pswitch_data_23e
    .packed-switch 0x3
        :pswitch_195
        :pswitch_195
        :pswitch_16c
        :pswitch_16c
        :pswitch_16c
        :pswitch_195
        :pswitch_19a
        :pswitch_184
        :pswitch_184
        :pswitch_18a
        :pswitch_190
        :pswitch_16c
    .end packed-switch
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v3, 0x0

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
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v1, :cond_25

    .line 2016
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v2, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v1, v2, :cond_2a

    .line 2017
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 2022
    :cond_25
    :goto_25
    iput-object v3, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    .line 2023
    iput-object v3, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    .line 2024
    return-object v0

    .line 2019
    :cond_2a
    iget-object v1, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    goto :goto_25
.end method

.method protected computeFields()V
    .registers 6

    .prologue
    const v4, 0x1ffff

    const/4 v3, 0x0

    .line 2308
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isPartiallyNormalized()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2310
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getSetStateFields()I

    move-result v1

    .line 2311
    .local v1, "mask":I
    not-int v2, v1

    and-int v0, v2, v4

    .line 2314
    .local v0, "fieldMask":I
    if-nez v0, :cond_17

    iget-object v2, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    if-nez v2, :cond_32

    .line 2316
    :cond_17
    const v2, 0x18000

    and-int/2addr v2, v1

    .line 2315
    invoke-direct {p0, v0, v2}, Ljava/util/GregorianCalendar;->computeFields(II)I

    move-result v2

    or-int/2addr v1, v2

    .line 2317
    sget-boolean v2, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v2, :cond_32

    if-eq v1, v4, :cond_32

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2320
    .end local v0    # "fieldMask":I
    .end local v1    # "mask":I
    :cond_2c
    const v1, 0x1ffff

    .line 2321
    .restart local v1    # "mask":I
    invoke-direct {p0, v1, v3}, Ljava/util/GregorianCalendar;->computeFields(II)I

    .line 2324
    :cond_32
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    .line 2325
    return-void
.end method

.method protected computeTime()V
    .registers 31

    .prologue
    .line 2653
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v25

    if-nez v25, :cond_5e

    .line 2654
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    move-object/from16 v25, v0

    if-nez v25, :cond_1c

    .line 2655
    const/16 v25, 0x11

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->originalFields:[I

    .line 2657
    :cond_1c
    const/4 v7, 0x0

    .local v7, "field":I
    :goto_1d
    const/16 v25, 0x11

    move/from16 v0, v25

    if-ge v7, v0, :cond_5e

    .line 2658
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v22

    .line 2659
    .local v22, "value":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->isExternallySet(I)Z

    move-result v25

    if-eqz v25, :cond_53

    .line 2661
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v25

    if-lt v0, v1, :cond_49

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_53

    .line 2662
    :cond_49
    new-instance v25, Ljava/lang/IllegalArgumentException;

    invoke-static {v7}, Ljava/util/GregorianCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 2665
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    move-object/from16 v25, v0

    aput v22, v25, v7

    .line 2657
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 2671
    .end local v7    # "field":I
    .end local v22    # "value":I
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->selectFields()I

    move-result v8

    .line 2676
    .local v8, "fieldMask":I
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v25

    if-eqz v25, :cond_113

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v23

    .line 2678
    .local v23, "year":I
    :goto_78
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v6

    .line 2679
    .local v6, "era":I
    if-nez v6, :cond_117

    .line 2680
    rsub-int/lit8 v23, v23, 0x1

    .line 2690
    :cond_80
    if-gtz v23, :cond_9b

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_9b

    .line 2691
    or-int/lit8 v8, v8, 0x1

    .line 2692
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    .line 2697
    :cond_9b
    const-wide/16 v20, 0x0

    .line 2698
    .local v20, "timeOfDay":J
    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-static {v8, v0}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v25

    if-eqz v25, :cond_126

    .line 2699
    const/16 v25, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 2697
    const-wide/16 v28, 0x0

    .line 2699
    add-long v20, v28, v26

    .line 2707
    :cond_ba
    :goto_ba
    const-wide/16 v26, 0x3c

    mul-long v20, v20, v26

    .line 2708
    const/16 v25, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    .line 2709
    const-wide/16 v26, 0x3c

    mul-long v20, v20, v26

    .line 2710
    const/16 v25, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    .line 2711
    const-wide/16 v26, 0x3e8

    mul-long v20, v20, v26

    .line 2712
    const/16 v25, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    .line 2716
    const-wide/32 v26, 0x5265c00

    div-long v10, v20, v26

    .line 2717
    .local v10, "fixedDate":J
    const-wide/32 v26, 0x5265c00

    rem-long v20, v20, v26

    .line 2718
    :goto_103
    const-wide/16 v26, 0x0

    cmp-long v25, v20, v26

    if-gez v25, :cond_158

    .line 2719
    const-wide/32 v26, 0x5265c00

    add-long v20, v20, v26

    .line 2720
    const-wide/16 v26, 0x1

    sub-long v10, v10, v26

    goto :goto_103

    .line 2676
    .end local v6    # "era":I
    .end local v10    # "fixedDate":J
    .end local v20    # "timeOfDay":J
    .end local v23    # "year":I
    :cond_113
    const/16 v23, 0x7b2

    .restart local v23    # "year":I
    goto/16 :goto_78

    .line 2681
    .restart local v6    # "era":I
    :cond_117
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_80

    .line 2686
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v26, "Invalid era"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 2701
    .restart local v20    # "timeOfDay":J
    :cond_126
    const/16 v25, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 2697
    const-wide/16 v28, 0x0

    .line 2701
    add-long v20, v28, v26

    .line 2703
    const/16 v25, 0x9

    move/from16 v0, v25

    invoke-static {v8, v0}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v25

    if-eqz v25, :cond_ba

    .line 2704
    const/16 v25, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    mul-int/lit8 v25, v25, 0xc

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    goto/16 :goto_ba

    .line 2726
    .restart local v10    # "fixedDate":J
    :cond_158
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-le v0, v1, :cond_211

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-le v0, v1, :cond_211

    .line 2727
    sget-object v25, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v12, v10, v26

    .line 2728
    .local v12, "gfd":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v12, v26

    if-ltz v25, :cond_1d8

    .line 2729
    move-wide v10, v12

    .line 2788
    .end local v12    # "gfd":J
    :goto_189
    const-wide/32 v26, 0xaf93b

    sub-long v26, v10, v26

    const-wide/32 v28, 0x5265c00

    mul-long v26, v26, v28

    add-long v16, v26, v20

    .line 2803
    .local v16, "millis":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v24

    .line 2805
    .local v24, "zone":Ljava/util/TimeZone;
    const v25, 0x18000

    and-int v19, v8, v25

    .line 2807
    .local v19, "tzMask":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v16

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/GregorianCalendar;->adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J

    move-result-wide v16

    .line 2811
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/GregorianCalendar;->time:J

    .line 2813
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getSetStateFields()I

    move-result v25

    or-int v25, v25, v8

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->computeFields(II)I

    move-result v9

    .line 2815
    .local v9, "mask":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v25

    if-nez v25, :cond_350

    .line 2816
    const/4 v7, 0x0

    .restart local v7    # "field":I
    :goto_1c7
    const/16 v25, 0x11

    move/from16 v0, v25

    if-ge v7, v0, :cond_350

    .line 2817
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->isExternallySet(I)Z

    move-result v25

    if-nez v25, :cond_2c8

    .line 2816
    :cond_1d5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c7

    .line 2732
    .end local v7    # "field":I
    .end local v9    # "mask":I
    .end local v16    # "millis":J
    .end local v19    # "tzMask":I
    .end local v24    # "zone":Ljava/util/TimeZone;
    .restart local v12    # "gfd":J
    :cond_1d8
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v14, v10, v26

    .line 2749
    .local v14, "jfd":J
    :goto_1e8
    const/16 v25, 0x6

    move/from16 v0, v25

    invoke-static {v8, v0}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v25

    if-nez v25, :cond_1fc

    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-static {v8, v0}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v25

    if-eqz v25, :cond_276

    .line 2750
    :cond_1fc
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_267

    .line 2751
    move-wide v10, v14

    .line 2752
    goto/16 :goto_189

    .line 2733
    .end local v12    # "gfd":J
    .end local v14    # "jfd":J
    :cond_211
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_248

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_248

    .line 2734
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v14, v10, v26

    .line 2735
    .restart local v14    # "jfd":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v14, v26

    if-gez v25, :cond_246

    .line 2736
    move-wide v10, v14

    .line 2737
    goto/16 :goto_189

    .line 2739
    :cond_246
    move-wide v12, v14

    .line 2733
    .restart local v12    # "gfd":J
    goto :goto_1e8

    .line 2741
    .end local v12    # "gfd":J
    .end local v14    # "jfd":J
    :cond_248
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v14, v10, v26

    .line 2742
    .restart local v14    # "jfd":J
    sget-object v25, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v12, v10, v26

    .restart local v12    # "gfd":J
    goto :goto_1e8

    .line 2753
    :cond_267
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_276

    .line 2754
    move-wide v10, v12

    .line 2755
    goto/16 :goto_189

    .line 2759
    :cond_276
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v12, v26

    if-ltz v25, :cond_2a9

    .line 2760
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v14, v26

    if-ltz v25, :cond_28d

    .line 2761
    move-wide v10, v12

    goto/16 :goto_189

    .line 2766
    :cond_28d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v25, v0

    sget-object v26, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_2a3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v25, v0

    if-nez v25, :cond_2a6

    .line 2767
    :cond_2a3
    move-wide v10, v12

    .line 2766
    goto/16 :goto_189

    .line 2769
    :cond_2a6
    move-wide v10, v14

    goto/16 :goto_189

    .line 2773
    :cond_2a9
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v14, v26

    if-gez v25, :cond_2b6

    .line 2774
    move-wide v10, v14

    goto/16 :goto_189

    .line 2777
    :cond_2b6
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v25

    if-nez v25, :cond_2c5

    .line 2778
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v26, "the specified date doesn\'t exist"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 2782
    :cond_2c5
    move-wide v10, v14

    goto/16 :goto_189

    .line 2820
    .end local v12    # "gfd":J
    .end local v14    # "jfd":J
    .restart local v7    # "field":I
    .restart local v9    # "mask":I
    .restart local v16    # "millis":J
    .restart local v19    # "tzMask":I
    .restart local v24    # "zone":Ljava/util/TimeZone;
    :cond_2c8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    move-object/from16 v25, v0

    aget v25, v25, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1d5

    .line 2821
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    move-object/from16 v26, v0

    aget v26, v26, v7

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " -> "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2823
    .local v18, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move-object/from16 v2, v26

    move/from16 v3, v29

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 2824
    new-instance v25, Ljava/lang/IllegalArgumentException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/util/GregorianCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ": "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 2828
    .end local v7    # "field":I
    .end local v18    # "s":Ljava/lang/String;
    :cond_350
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->setFieldsNormalized(I)V

    .line 2829
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 877
    instance-of v1, p1, Ljava/util/GregorianCalendar;

    if-eqz v1, :cond_16

    .line 878
    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 877
    if-eqz v1, :cond_16

    .line 879
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    check-cast p1, Ljava/util/GregorianCalendar;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v4, p1, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_16

    const/4 v0, 0x1

    .line 877
    :cond_16
    return v0
.end method

.method public getActualMaximum(I)I
    .registers 46
    .param p1, "field"    # I

    .prologue
    .line 1742
    const v18, 0x1fe81

    .line 1745
    .local v18, "fieldsForFixedMax":I
    const/16 v39, 0x1

    shl-int v39, v39, p1

    const v40, 0x1fe81

    and-int v39, v39, v40

    if-eqz v39, :cond_13

    .line 1746
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v39

    return v39

    .line 1749
    :cond_13
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v19

    .line 1750
    .local v19, "gc":Ljava/util/GregorianCalendar;
    move-object/from16 v0, v19

    iget-object v12, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1751
    .local v12, "date":Lsun/util/calendar/BaseCalendar$Date;
    move-object/from16 v0, v19

    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 1752
    .local v6, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v33

    .line 1754
    .local v33, "normalizedYear":I
    const/16 v36, -0x1

    .line 1755
    .local v36, "value":I
    packed-switch p1, :pswitch_data_436

    .line 1988
    :pswitch_28
    new-instance v39, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v39

    .line 1758
    :pswitch_32
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_3f

    .line 1759
    const/16 v36, 0xb

    .line 1990
    :cond_3e
    :goto_3e
    return v36

    .line 1766
    :cond_3f
    sget-object v39, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    add-int/lit8 v33, v33, 0x1

    const/16 v40, 0x1

    const/16 v41, 0x1

    const/16 v42, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v33

    move/from16 v2, v40

    move/from16 v3, v41

    move-object/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v34

    .line 1767
    .local v34, "nextJan1":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v40, v0

    cmp-long v39, v34, v40

    if-ltz v39, :cond_3f

    .line 1768
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/util/calendar/BaseCalendar$Date;

    .line 1769
    .local v10, "d":Lsun/util/calendar/BaseCalendar$Date;
    const-wide/16 v40, 0x1

    sub-long v40, v34, v40

    move-wide/from16 v0, v40

    invoke-virtual {v6, v10, v0, v1}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 1770
    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v39

    add-int/lit8 v36, v39, -0x1

    .line 1772
    goto :goto_3e

    .line 1776
    .end local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v34    # "nextJan1":J
    :pswitch_77
    invoke-virtual {v6, v12}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v36

    .line 1777
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-eqz v39, :cond_3e

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v36

    if-eq v0, v1, :cond_3e

    .line 1782
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v16

    .line 1783
    .local v16, "fd":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v40, v0

    cmp-long v39, v16, v40

    if-gez v39, :cond_3e

    .line 1786
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v30

    .line 1787
    .local v30, "monthLength":I
    move-object/from16 v0, v19

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v39, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v40

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v40, v40, v42

    const-wide/16 v42, 0x1

    sub-long v28, v40, v42

    .line 1789
    .local v28, "monthEnd":J
    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v10

    .line 1790
    .restart local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v36

    goto/16 :goto_3e

    .line 1796
    .end local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v16    # "fd":J
    .end local v28    # "monthEnd":J
    .end local v30    # "monthLength":I
    :pswitch_ca
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_da

    .line 1797
    invoke-virtual {v6, v12}, Lsun/util/calendar/BaseCalendar;->getYearLength(Lsun/util/calendar/CalendarDate;)I

    move-result v36

    goto/16 :goto_3e

    .line 1803
    :cond_da
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_14e

    .line 1804
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v7

    .line 1805
    .local v7, "cocal":Lsun/util/calendar/BaseCalendar;
    const/16 v39, 0x1

    const/16 v40, 0x1

    const/16 v41, 0x0

    move/from16 v0, v33

    move/from16 v1, v39

    move/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v7, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v20

    .line 1812
    .end local v7    # "cocal":Lsun/util/calendar/BaseCalendar;
    .local v20, "jan1":J
    :goto_102
    sget-object v39, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    add-int/lit8 v33, v33, 0x1

    const/16 v40, 0x1

    const/16 v41, 0x1

    const/16 v42, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v33

    move/from16 v2, v40

    move/from16 v3, v41

    move-object/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v34

    .line 1813
    .restart local v34    # "nextJan1":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v40, v0

    cmp-long v39, v34, v40

    if-gez v39, :cond_12a

    .line 1814
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v34, v0

    .line 1816
    :cond_12a
    sget-boolean v39, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v39, :cond_174

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v39

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v40

    .line 1817
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v41

    .line 1816
    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v6, v0, v1, v2, v12}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v40

    cmp-long v39, v20, v40

    if-lez v39, :cond_174

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39

    .line 1806
    .end local v20    # "jan1":J
    .end local v34    # "nextJan1":J
    :cond_14e
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v39, v0

    move/from16 v0, v33

    move/from16 v1, v39

    if-ne v0, v1, :cond_16d

    .line 1807
    const/16 v39, 0x1

    const/16 v40, 0x1

    const/16 v41, 0x0

    move/from16 v0, v33

    move/from16 v1, v39

    move/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v20

    .restart local v20    # "jan1":J
    goto :goto_102

    .line 1809
    .end local v20    # "jan1":J
    :cond_16d
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v20, v0

    .restart local v20    # "jan1":J
    goto :goto_102

    .line 1818
    .restart local v34    # "nextJan1":J
    :cond_174
    sget-boolean v39, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v39, :cond_198

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v39

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v40

    .line 1819
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v41

    .line 1818
    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v6, v0, v1, v2, v12}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v40

    cmp-long v39, v34, v40

    if-gez v39, :cond_198

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39

    .line 1820
    :cond_198
    sub-long v40, v34, v20

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v36, v0

    .line 1822
    goto/16 :goto_3e

    .line 1826
    .end local v20    # "jan1":J
    .end local v34    # "nextJan1":J
    :pswitch_1a1
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_1fe

    .line 1828
    sget-object v39, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v11

    .line 1829
    .local v11, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v39

    const/16 v40, 0x1

    const/16 v41, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v11, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1830
    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v13

    .line 1832
    .local v13, "dayOfWeek":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v39

    sub-int v13, v13, v39

    .line 1833
    if-gez v13, :cond_1d2

    .line 1834
    add-int/lit8 v13, v13, 0x7

    .line 1836
    :cond_1d2
    const/16 v36, 0x34

    .line 1837
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v39

    add-int v39, v39, v13

    add-int/lit8 v23, v39, -0x1

    .line 1838
    .local v23, "magic":I
    const/16 v39, 0x6

    move/from16 v0, v23

    move/from16 v1, v39

    if-eq v0, v1, :cond_1fa

    .line 1839
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->isLeapYear()Z

    move-result v39

    if-eqz v39, :cond_3e

    const/16 v39, 0x5

    move/from16 v0, v23

    move/from16 v1, v39

    if-eq v0, v1, :cond_1fa

    const/16 v39, 0xc

    move/from16 v0, v23

    move/from16 v1, v39

    if-ne v0, v1, :cond_3e

    .line 1840
    :cond_1fa
    const/16 v36, 0x35

    goto/16 :goto_3e

    .line 1845
    .end local v11    # "d":Lsun/util/calendar/CalendarDate;
    .end local v13    # "dayOfWeek":I
    .end local v23    # "magic":I
    :cond_1fe
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_20a

    .line 1846
    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "gc":Ljava/util/GregorianCalendar;
    check-cast v19, Ljava/util/GregorianCalendar;

    .line 1848
    .restart local v19    # "gc":Ljava/util/GregorianCalendar;
    :cond_20a
    const/16 v39, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v24

    .line 1849
    .local v24, "maxDayOfYear":I
    const/16 v39, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v39

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1850
    const/16 v39, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v36

    .line 1851
    const/16 v39, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v39

    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_3e

    .line 1852
    add-int/lit8 v39, v24, -0x7

    const/16 v40, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1853
    const/16 v39, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v36

    goto/16 :goto_3e

    .line 1860
    .end local v24    # "maxDayOfYear":I
    :pswitch_256
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_2b1

    .line 1861
    const/16 v39, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v11

    .line 1862
    .restart local v11    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v39

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v11, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1863
    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v13

    .line 1864
    .restart local v13    # "dayOfWeek":I
    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v30

    .line 1865
    .restart local v30    # "monthLength":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v39

    sub-int v13, v13, v39

    .line 1866
    if-gez v13, :cond_28d

    .line 1867
    add-int/lit8 v13, v13, 0x7

    .line 1869
    :cond_28d
    rsub-int/lit8 v31, v13, 0x7

    .line 1870
    .local v31, "nDaysFirstWeek":I
    const/16 v36, 0x3

    .line 1871
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v39

    move/from16 v0, v31

    move/from16 v1, v39

    if-lt v0, v1, :cond_29d

    .line 1872
    const/16 v36, 0x4

    .line 1874
    :cond_29d
    add-int/lit8 v39, v31, 0x15

    sub-int v30, v30, v39

    .line 1875
    if-lez v30, :cond_3e

    .line 1876
    add-int/lit8 v36, v36, 0x1

    .line 1877
    const/16 v39, 0x7

    move/from16 v0, v30

    move/from16 v1, v39

    if-le v0, v1, :cond_3e

    .line 1878
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_3e

    .line 1885
    .end local v11    # "d":Lsun/util/calendar/CalendarDate;
    .end local v13    # "dayOfWeek":I
    .end local v30    # "monthLength":I
    .end local v31    # "nDaysFirstWeek":I
    :cond_2b1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_2bd

    .line 1886
    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "gc":Ljava/util/GregorianCalendar;
    check-cast v19, Ljava/util/GregorianCalendar;

    .line 1888
    .restart local v19    # "gc":Ljava/util/GregorianCalendar;
    :cond_2bd
    const/16 v39, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v38

    .line 1889
    .local v38, "y":I
    const/16 v39, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v22

    .line 1891
    .local v22, "m":I
    :goto_2d1
    const/16 v39, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v36

    .line 1892
    const/16 v39, 0x4

    const/16 v40, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 1893
    const/16 v39, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_3e

    const/16 v39, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v22

    if-ne v0, v1, :cond_3e

    goto :goto_2d1

    .line 1901
    .end local v22    # "m":I
    .end local v38    # "y":I
    :pswitch_309
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v14

    .line 1902
    .local v14, "dow":I
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_33d

    .line 1903
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/util/calendar/BaseCalendar$Date;

    .line 1904
    .restart local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v6, v10}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v32

    .line 1905
    .local v32, "ndays":I
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-virtual {v10, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1906
    invoke-virtual {v6, v10}, Lsun/util/calendar/BaseCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1907
    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v15

    .line 1917
    .end local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .local v15, "dow1":I
    :goto_32f
    sub-int v37, v14, v15

    .line 1918
    .local v37, "x":I
    if-gez v37, :cond_335

    .line 1919
    add-int/lit8 v37, v37, 0x7

    .line 1921
    :cond_335
    sub-int v32, v32, v37

    .line 1922
    add-int/lit8 v39, v32, 0x6

    div-int/lit8 v36, v39, 0x7

    goto/16 :goto_3e

    .line 1910
    .end local v15    # "dow1":I
    .end local v32    # "ndays":I
    .end local v37    # "x":I
    :cond_33d
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_349

    .line 1911
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "gc":Ljava/util/GregorianCalendar;
    check-cast v19, Ljava/util/GregorianCalendar;

    .line 1913
    .restart local v19    # "gc":Ljava/util/GregorianCalendar;
    :cond_349
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v32

    .line 1914
    .restart local v32    # "ndays":I
    const/16 v39, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMinimum(I)I

    move-result v39

    const/16 v40, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1915
    const/16 v39, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v15

    .restart local v15    # "dow1":I
    goto :goto_32f

    .line 1947
    .end local v14    # "dow":I
    .end local v15    # "dow1":I
    .end local v32    # "ndays":I
    :pswitch_36d
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_379

    .line 1948
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "gc":Ljava/util/GregorianCalendar;
    check-cast v19, Ljava/util/GregorianCalendar;

    .line 1955
    .restart local v19    # "gc":Ljava/util/GregorianCalendar;
    :cond_379
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getYearOffsetInMillis()J

    move-result-wide v8

    .line 1957
    .local v8, "current":J
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3ab

    .line 1958
    const-wide v40, 0x7fffffffffffffffL

    move-object/from16 v0, v19

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1959
    const/16 v39, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v36

    .line 1960
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getYearOffsetInMillis()J

    move-result-wide v26

    .line 1961
    .local v26, "maxEnd":J
    cmp-long v39, v8, v26

    if-lez v39, :cond_3e

    .line 1962
    add-int/lit8 v36, v36, -0x1

    goto/16 :goto_3e

    .line 1965
    .end local v26    # "maxEnd":J
    :cond_3ab
    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v42, v0

    cmp-long v39, v40, v42

    if-ltz v39, :cond_427

    .line 1966
    sget-object v25, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 1967
    .local v25, "mincal":Lsun/util/calendar/CalendarSystem;
    :goto_3bb
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v39

    const-wide/high16 v40, -0x8000000000000000L

    move-object/from16 v0, v25

    move-wide/from16 v1, v40

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/CalendarSystem;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v11

    .line 1968
    .restart local v11    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfYear(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v40

    const-wide/16 v42, 0x1

    sub-long v40, v40, v42

    const-wide/16 v42, 0x18

    mul-long v40, v40, v42

    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v26, v40, v42

    .line 1969
    .restart local v26    # "maxEnd":J
    const-wide/16 v40, 0x3c

    mul-long v26, v26, v40

    .line 1970
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v26, v26, v40

    .line 1971
    const-wide/16 v40, 0x3c

    mul-long v26, v26, v40

    .line 1972
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v26, v26, v40

    .line 1973
    const-wide/16 v40, 0x3e8

    mul-long v26, v26, v40

    .line 1974
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getMillis()I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v26, v26, v40

    .line 1975
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v36

    .line 1976
    if-gtz v36, :cond_42e

    .line 1977
    sget-boolean v39, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v39, :cond_42c

    sget-object v39, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_42c

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39

    .line 1966
    .end local v11    # "d":Lsun/util/calendar/CalendarDate;
    .end local v25    # "mincal":Lsun/util/calendar/CalendarSystem;
    .end local v26    # "maxEnd":J
    :cond_427
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v25

    .restart local v25    # "mincal":Lsun/util/calendar/CalendarSystem;
    goto :goto_3bb

    .line 1978
    .restart local v11    # "d":Lsun/util/calendar/CalendarDate;
    .restart local v26    # "maxEnd":J
    :cond_42c
    rsub-int/lit8 v36, v36, 0x1

    .line 1980
    :cond_42e
    cmp-long v39, v8, v26

    if-gez v39, :cond_3e

    .line 1981
    add-int/lit8 v36, v36, -0x1

    goto/16 :goto_3e

    .line 1755
    :pswitch_data_436
    .packed-switch 0x1
        :pswitch_36d
        :pswitch_32
        :pswitch_1a1
        :pswitch_256
        :pswitch_77
        :pswitch_ca
        :pswitch_28
        :pswitch_309
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .registers 10
    .param p1, "field"    # I

    .prologue
    .line 1698
    const/4 v5, 0x5

    if-ne p1, v5, :cond_2c

    .line 1699
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 1700
    .local v1, "gc":Ljava/util/GregorianCalendar;
    iget-object v5, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v4

    .line 1701
    .local v4, "year":I
    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v4, v5, :cond_15

    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v4, v5, :cond_2c

    .line 1702
    :cond_15
    iget-object v5, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v6, v1, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v7, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v6, v7}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v2

    .line 1703
    .local v2, "month1":J
    invoke-direct {p0, v2, v3}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 1704
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v5

    return v5

    .line 1707
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v1    # "gc":Ljava/util/GregorianCalendar;
    .end local v2    # "month1":J
    .end local v4    # "year":I
    :cond_2c
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v5

    return v5
.end method

.method public getCalendarType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 858
    const-string/jumbo v0, "gregory"

    return-object v0
.end method

.method public getGreatestMinimum(I)I
    .registers 8
    .param p1, "field"    # I

    .prologue
    .line 1618
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1e

    .line 1619
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 1620
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v0, v4, v5}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v2

    .line 1621
    .local v2, "mon1":J
    invoke-direct {p0, v2, v3}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 1622
    sget-object v1, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v1, v1, p1

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 1624
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v2    # "mon1":J
    :cond_1e
    sget-object v1, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v1, v1, p1

    return v1
.end method

.method public final getGregorianChange()Ljava/util/Date;
    .registers 5

    .prologue
    .line 815
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLeastMaximum(I)I
    .registers 10
    .param p1, "field"    # I

    .prologue
    .line 1648
    packed-switch p1, :pswitch_data_34

    .line 1666
    :pswitch_3
    sget-object v3, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    aget v3, v3, p1

    return v3

    .line 1657
    :pswitch_8
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 1658
    .local v0, "gc":Ljava/util/GregorianCalendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 1659
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1660
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    .line 1661
    .local v1, "v1":I
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

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

    .line 1648
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

.method public getMaximum(I)I
    .registers 10
    .param p1, "field"    # I

    .prologue
    .line 1569
    packed-switch p1, :pswitch_data_3a

    .line 1594
    :cond_3
    :pswitch_3
    sget-object v3, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    aget v3, v3, p1

    return v3

    .line 1581
    :pswitch_8
    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    const/16 v4, 0xc8

    if-gt v3, v4, :cond_3

    .line 1585
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 1586
    .local v0, "gc":Ljava/util/GregorianCalendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 1587
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1588
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    .line 1589
    .local v1, "v1":I
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

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

    .line 1569
    :pswitch_data_3a
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

.method public getMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .prologue
    .line 1545
    sget-object v0, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 4

    .prologue
    .line 2029
    invoke-super {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 2031
    .local v0, "zone":Ljava/util/TimeZone;
    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 2032
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v1, :cond_18

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v2, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v1, v2, :cond_18

    .line 2033
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 2035
    :cond_18
    return-object v0
.end method

.method public getWeekYear()I
    .registers 16

    .prologue
    const/4 v14, 0x7

    const/4 v13, 0x1

    const/4 v12, 0x6

    .line 2087
    invoke-virtual {p0, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    .line 2088
    .local v9, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v10

    if-nez v10, :cond_f

    .line 2089
    rsub-int/lit8 v9, v9, 0x1

    .line 2094
    :cond_f
    iget v10, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    add-int/lit8 v10, v10, 0x1

    if-le v9, v10, :cond_2d

    .line 2095
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v8

    .line 2096
    .local v8, "weekOfYear":I
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v10

    if-nez v10, :cond_28

    .line 2097
    const/16 v10, 0x34

    if-lt v8, v10, :cond_27

    .line 2098
    add-int/lit8 v9, v9, -0x1

    .line 2105
    :cond_27
    :goto_27
    return v9

    .line 2101
    :cond_28
    if-ne v8, v13, :cond_27

    .line 2102
    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    .line 2109
    .end local v8    # "weekOfYear":I
    :cond_2d
    invoke-virtual {p0, v12}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    .line 2110
    .local v1, "dayOfYear":I
    invoke-virtual {p0, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v5

    .line 2111
    .local v5, "maxDayOfYear":I
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v7

    .line 2115
    .local v7, "minimalDays":I
    if-le v1, v7, :cond_40

    add-int/lit8 v10, v5, -0x6

    if-ge v1, v10, :cond_40

    .line 2116
    return v9

    .line 2120
    :cond_40
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 2121
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 2124
    const-string/jumbo v10, "GMT"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2126
    invoke-virtual {v0, v12, v13}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2127
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->complete()V

    .line 2130
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v10

    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    sub-int v4, v10, v11

    .line 2131
    .local v4, "delta":I
    if-eqz v4, :cond_6c

    .line 2132
    if-gez v4, :cond_69

    .line 2133
    add-int/lit8 v4, v4, 0x7

    .line 2135
    :cond_69
    invoke-virtual {v0, v12, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 2137
    :cond_6c
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 2138
    .local v6, "minDayOfYear":I
    if-ge v1, v6, :cond_77

    .line 2139
    if-gt v6, v7, :cond_76

    .line 2140
    add-int/lit8 v9, v9, -0x1

    .line 2164
    :cond_76
    :goto_76
    return v9

    .line 2143
    :cond_77
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v0, v13, v10}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2144
    invoke-virtual {v0, v12, v13}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2145
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->complete()V

    .line 2146
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v10

    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    sub-int v3, v10, v11

    .line 2147
    .local v3, "del":I
    if-eqz v3, :cond_95

    .line 2148
    if-gez v3, :cond_92

    .line 2149
    add-int/lit8 v3, v3, 0x7

    .line 2151
    :cond_92
    invoke-virtual {v0, v12, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 2153
    :cond_95
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    .line 2154
    if-nez v6, :cond_9e

    .line 2155
    const/4 v6, 0x7

    .line 2157
    :cond_9e
    if-lt v6, v7, :cond_76

    .line 2158
    sub-int v10, v5, v1

    add-int/lit8 v2, v10, 0x1

    .line 2159
    .local v2, "days":I
    rsub-int/lit8 v10, v6, 0x7

    if-gt v2, v10, :cond_76

    .line 2160
    add-int/lit8 v9, v9, 0x1

    goto :goto_76
.end method

.method public getWeeksInWeekYear()I
    .registers 6

    .prologue
    const/4 v4, 0x3

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

    if-ne v1, v2, :cond_15

    .line 2274
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    return v2

    .line 2278
    :cond_15
    if-ne v0, p0, :cond_1d

    .line 2279
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    check-cast v0, Ljava/util/GregorianCalendar;

    .line 2281
    .restart local v0    # "gc":Ljava/util/GregorianCalendar;
    :cond_1d
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/GregorianCalendar;->setWeekDate(III)V

    .line 2282
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    return v2
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 887
    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear(I)Z
    .registers 8
    .param p1, "year"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 828
    and-int/lit8 v4, p1, 0x3

    if-eqz v4, :cond_7

    .line 829
    return v3

    .line 832
    :cond_7
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-le p1, v4, :cond_16

    .line 833
    rem-int/lit8 v4, p1, 0x64

    if-nez v4, :cond_13

    rem-int/lit16 v4, p1, 0x190

    if-nez v4, :cond_14

    :cond_13
    :goto_13
    return v2

    :cond_14
    move v2, v3

    goto :goto_13

    .line 835
    :cond_16
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ge p1, v4, :cond_1b

    .line 836
    return v2

    .line 841
    :cond_1b
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v4, v5, :cond_3c

    .line 842
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v4, v5}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 843
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_3a

    const/4 v1, 0x1

    .line 847
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .local v1, "gregorian":Z
    :goto_2f
    if-eqz v1, :cond_39

    rem-int/lit8 v4, p1, 0x64

    if-nez v4, :cond_39

    rem-int/lit16 v4, p1, 0x190

    if-nez v4, :cond_44

    :cond_39
    :goto_39
    return v2

    .line 843
    .end local v1    # "gregorian":Z
    .restart local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_3a
    const/4 v1, 0x0

    .restart local v1    # "gregorian":Z
    goto :goto_2f

    .line 845
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v1    # "gregorian":Z
    :cond_3c
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ne p1, v4, :cond_42

    const/4 v1, 0x1

    .restart local v1    # "gregorian":Z
    goto :goto_2f

    .end local v1    # "gregorian":Z
    :cond_42
    const/4 v1, 0x0

    .restart local v1    # "gregorian":Z
    goto :goto_2f

    :cond_44
    move v2, v3

    .line 847
    goto :goto_39
.end method

.method public final isWeekDateSupported()Z
    .registers 2

    .prologue
    .line 2060
    const/4 v0, 0x1

    return v0
.end method

.method public roll(II)V
    .registers 51
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .prologue
    .line 1171
    if-nez p2, :cond_3

    .line 1172
    return-void

    .line 1175
    :cond_3
    if-ltz p1, :cond_d

    const/16 v44, 0xf

    move/from16 v0, p1

    move/from16 v1, v44

    if-lt v0, v1, :cond_13

    .line 1176
    :cond_d
    new-instance v44, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v44 .. v44}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v44

    .line 1180
    :cond_13
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 1182
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v23

    .line 1183
    .local v23, "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v22

    .line 1185
    .local v22, "max":I
    packed-switch p1, :pswitch_data_6ec

    .line 1521
    :cond_21
    :goto_21
    :pswitch_21
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1522
    return-void

    .line 1201
    :pswitch_3b
    add-int/lit8 v35, v22, 0x1

    .line 1202
    .local v35, "unit":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v16

    .line 1203
    .local v16, "h":I
    add-int v44, v16, p2

    rem-int v31, v44, v35

    .line 1204
    .local v31, "nh":I
    if-gez v31, :cond_49

    .line 1205
    add-int v31, v31, v35

    .line 1207
    :cond_49
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v44, v0

    sub-int v46, v31, v16

    const v47, 0x36ee80

    mul-int v46, v46, v47

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v44, v44, v46

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/GregorianCalendar;->time:J

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v46, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v6

    .line 1214
    .local v6, "d":Lsun/util/calendar/CalendarDate;
    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_f7

    .line 1215
    const/16 v44, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    .line 1216
    const/16 v45, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v45

    add-int/lit8 v45, v45, 0x1

    .line 1217
    const/16 v46, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v46

    .line 1215
    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v6, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1218
    const/16 v44, 0xa

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_e5

    .line 1219
    sget-boolean v44, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v44, :cond_de

    const/16 v44, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_de

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    .line 1220
    :cond_de
    const/16 v44, 0xc

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Lsun/util/calendar/CalendarDate;->addHours(I)Lsun/util/calendar/CalendarDate;

    .line 1222
    :cond_e5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/GregorianCalendar;->time:J

    .line 1224
    :cond_f7
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v17

    .line 1225
    .local v17, "hourOfDay":I
    rem-int v44, v17, v35

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1226
    const/16 v44, 0xa

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_13a

    .line 1227
    const/16 v44, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1234
    :goto_119
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v43

    .line 1235
    .local v43, "zoneOffset":I
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDaylightSaving()I

    move-result v34

    .line 1236
    .local v34, "saving":I
    sub-int v44, v43, v34

    const/16 v45, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1237
    const/16 v44, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1238
    return-void

    .line 1229
    .end local v34    # "saving":I
    .end local v43    # "zoneOffset":I
    :cond_13a
    div-int/lit8 v44, v17, 0xc

    const/16 v45, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1230
    rem-int/lit8 v44, v17, 0xc

    const/16 v45, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    goto :goto_119

    .line 1247
    .end local v6    # "d":Lsun/util/calendar/CalendarDate;
    .end local v16    # "h":I
    .end local v17    # "hourOfDay":I
    .end local v31    # "nh":I
    .end local v35    # "unit":I
    :pswitch_155
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v44

    if-nez v44, :cond_1aa

    .line 1248
    const/16 v44, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    add-int v44, v44, p2

    rem-int/lit8 v24, v44, 0xc

    .line 1249
    .local v24, "mon":I
    if-gez v24, :cond_17b

    .line 1250
    add-int/lit8 v24, v24, 0xc

    .line 1252
    :cond_17b
    const/16 v44, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1257
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->monthLength(I)I

    move-result v25

    .line 1258
    .local v25, "monthLen":I
    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v25

    if-le v0, v1, :cond_1a9

    .line 1259
    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1275
    :cond_1a9
    :goto_1a9
    return-void

    .line 1264
    .end local v24    # "mon":I
    .end local v25    # "monthLen":I
    :cond_1aa
    const/16 v44, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v44

    add-int/lit8 v42, v44, 0x1

    .line 1265
    .local v42, "yearLength":I
    const/16 v44, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    add-int v44, v44, p2

    rem-int v24, v44, v42

    .line 1266
    .restart local v24    # "mon":I
    if-gez v24, :cond_1c8

    .line 1267
    add-int v24, v24, v42

    .line 1269
    :cond_1c8
    const/16 v44, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1270
    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v25

    .line 1271
    .restart local v25    # "monthLen":I
    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v25

    if-le v0, v1, :cond_1a9

    .line 1272
    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1a9

    .line 1280
    .end local v24    # "mon":I
    .end local v25    # "monthLen":I
    .end local v42    # "yearLength":I
    :pswitch_1f9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v41

    .line 1281
    .local v41, "y":I
    const/16 v44, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v22

    .line 1282
    const/16 v44, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    const/16 v45, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1283
    const/16 v44, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v39

    .line 1284
    .local v39, "woy":I
    add-int v36, v39, p2

    .line 1285
    .local v36, "value":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v44

    if-nez v44, :cond_2d2

    .line 1286
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v38

    .line 1287
    .local v38, "weekYear":I
    move/from16 v0, v38

    move/from16 v1, v41

    if-ne v0, v1, :cond_2bc

    .line 1290
    move/from16 v0, v36

    move/from16 v1, v23

    if-le v0, v1, :cond_25a

    move/from16 v0, v36

    move/from16 v1, v22

    if-ge v0, v1, :cond_25a

    .line 1291
    const/16 v44, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1292
    return-void

    .line 1294
    :cond_25a
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    .line 1297
    .local v14, "fd":J
    sub-int v44, v39, v23

    mul-int/lit8 v44, v44, 0x7

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    sub-long v8, v14, v44

    .line 1298
    .local v8, "day1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v8, v9}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v41

    if-eq v0, v1, :cond_27d

    .line 1299
    add-int/lit8 v23, v23, 0x1

    .line 1303
    :cond_27d
    const/16 v44, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    sub-int v44, v22, v44

    mul-int/lit8 v44, v44, 0x7

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v14, v14, v44

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v14, v15}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v41

    if-eq v0, v1, :cond_2a6

    .line 1305
    add-int/lit8 v22, v22, -0x1

    .line 1322
    .end local v8    # "day1":J
    .end local v14    # "fd":J
    :cond_2a6
    :goto_2a6
    move/from16 v0, v39

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1323
    return-void

    .line 1310
    :cond_2bc
    move/from16 v0, v38

    move/from16 v1, v41

    if-le v0, v1, :cond_2c9

    .line 1311
    if-gez p2, :cond_2c6

    .line 1312
    add-int/lit8 p2, p2, 0x1

    .line 1314
    :cond_2c6
    move/from16 v39, v22

    goto :goto_2a6

    .line 1316
    :cond_2c9
    if-lez p2, :cond_2cf

    .line 1317
    sub-int v44, v39, v22

    sub-int p2, p2, v44

    .line 1319
    :cond_2cf
    move/from16 v39, v23

    goto :goto_2a6

    .line 1327
    .end local v38    # "weekYear":I
    :cond_2d2
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    .line 1329
    .restart local v14    # "fd":J
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_366

    .line 1330
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    .line 1336
    .local v4, "cal":Lsun/util/calendar/BaseCalendar;
    :goto_2ec
    sub-int v44, v39, v23

    mul-int/lit8 v44, v44, 0x7

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    sub-long v8, v14, v44

    .line 1338
    .restart local v8    # "day1":J
    invoke-virtual {v4, v8, v9}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v41

    if-eq v0, v1, :cond_303

    .line 1339
    add-int/lit8 v23, v23, 0x1

    .line 1343
    :cond_303
    sub-int v44, v22, v39

    mul-int/lit8 v44, v44, 0x7

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v14, v14, v44

    .line 1344
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v44, v0

    cmp-long v44, v14, v44

    if-ltz v44, :cond_37c

    sget-object v4, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 1345
    :goto_31a
    invoke-virtual {v4, v14, v15}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v41

    if-eq v0, v1, :cond_326

    .line 1346
    add-int/lit8 v22, v22, -0x1

    .line 1350
    :cond_326
    move/from16 v0, v39

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v44

    add-int/lit8 v36, v44, -0x1

    .line 1351
    mul-int/lit8 v44, v36, 0x7

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v8

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    .line 1352
    .local v5, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v44

    add-int/lit8 v44, v44, -0x1

    const/16 v45, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1353
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v44

    const/16 v45, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1354
    return-void

    .line 1331
    .end local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v8    # "day1":J
    :cond_366
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v44, v0

    move/from16 v0, v41

    move/from16 v1, v44

    if-ne v0, v1, :cond_376

    .line 1332
    sget-object v4, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .restart local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    goto/16 :goto_2ec

    .line 1334
    .end local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_376
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    .restart local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    goto/16 :goto_2ec

    .line 1344
    .restart local v8    # "day1":J
    :cond_37c
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    goto :goto_31a

    .line 1359
    .end local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v8    # "day1":J
    .end local v14    # "fd":J
    .end local v36    # "value":I
    .end local v39    # "woy":I
    .end local v41    # "y":I
    :pswitch_381
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v18

    .line 1361
    .local v18, "isCutoverYear":Z
    const/16 v44, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v45

    sub-int v11, v44, v45

    .line 1362
    .local v11, "dow":I
    if-gez v11, :cond_3a7

    .line 1363
    add-int/lit8 v11, v11, 0x7

    .line 1366
    :cond_3a7
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    .line 1369
    .restart local v14    # "fd":J
    if-eqz v18, :cond_424

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v26

    .line 1371
    .local v26, "month1":J
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v30

    .line 1378
    .local v30, "monthLength":I
    :goto_3bf
    const-wide/16 v44, 0x6

    add-long v44, v44, v26

    .line 1379
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v46

    .line 1378
    invoke-static/range {v44 .. v46}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    .line 1382
    .local v28, "monthDay1st":J
    sub-long v44, v28, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_3e0

    .line 1383
    const-wide/16 v44, 0x7

    sub-long v28, v28, v44

    .line 1385
    :cond_3e0
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v22

    .line 1388
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, p2

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v44

    add-int/lit8 v36, v44, -0x1

    .line 1391
    .restart local v36    # "value":I
    mul-int/lit8 v44, v36, 0x7

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v28

    int-to-long v0, v11

    move-wide/from16 v46, v0

    add-long v32, v44, v46

    .line 1395
    .local v32, "nfd":J
    cmp-long v44, v32, v26

    if-gez v44, :cond_44b

    .line 1396
    move-wide/from16 v32, v26

    .line 1401
    :cond_40c
    :goto_40c
    if-eqz v18, :cond_462

    .line 1404
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    .line 1405
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v7

    .line 1409
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .local v7, "dayOfMonth":I
    :goto_41a
    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1410
    return-void

    .line 1373
    .end local v7    # "dayOfMonth":I
    .end local v26    # "month1":J
    .end local v28    # "monthDay1st":J
    .end local v30    # "monthLength":I
    .end local v32    # "nfd":J
    .end local v36    # "value":I
    :cond_424
    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    sub-long v44, v14, v44

    const-wide/16 v46, 0x1

    add-long v26, v44, v46

    .line 1374
    .restart local v26    # "month1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v30

    .restart local v30    # "monthLength":I
    goto/16 :goto_3bf

    .line 1397
    .restart local v28    # "monthDay1st":J
    .restart local v32    # "nfd":J
    .restart local v36    # "value":I
    :cond_44b
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v26

    cmp-long v44, v32, v44

    if-ltz v44, :cond_40c

    .line 1398
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v26

    const-wide/16 v46, 0x1

    sub-long v32, v44, v46

    goto :goto_40c

    .line 1407
    :cond_462
    sub-long v44, v32, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    add-int/lit8 v7, v44, 0x1

    .restart local v7    # "dayOfMonth":I
    goto :goto_41a

    .line 1415
    .end local v7    # "dayOfMonth":I
    .end local v11    # "dow":I
    .end local v14    # "fd":J
    .end local v18    # "isCutoverYear":Z
    .end local v26    # "month1":J
    .end local v28    # "monthDay1st":J
    .end local v30    # "monthLength":I
    .end local v32    # "nfd":J
    .end local v36    # "value":I
    :pswitch_46c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v44

    if-nez v44, :cond_492

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v22

    goto/16 :goto_21

    .line 1421
    :cond_492
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    .line 1422
    .restart local v14    # "fd":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v26

    .line 1426
    .restart local v26    # "month1":J
    sub-long v44, v14, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v45

    add-int/lit8 v45, v45, -0x1

    const/16 v46, 0x0

    move/from16 v0, v44

    move/from16 v1, p2

    move/from16 v2, v46

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v36

    .line 1427
    .restart local v36    # "value":I
    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    .line 1428
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    sget-boolean v44, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v44, :cond_4ee

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v44

    add-int/lit8 v44, v44, -0x1

    const/16 v45, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_4ee

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    .line 1429
    :cond_4ee
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v44

    const/16 v45, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1430
    return-void

    .line 1435
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v14    # "fd":J
    .end local v26    # "month1":J
    .end local v36    # "value":I
    :pswitch_4fe
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v22

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v44

    if-eqz v44, :cond_21

    .line 1441
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    .line 1442
    .restart local v14    # "fd":J
    const/16 v44, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    sub-long v44, v14, v44

    const-wide/16 v46, 0x1

    add-long v20, v44, v46

    .line 1443
    .local v20, "jan1":J
    sub-long v44, v14, v20

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v36

    .line 1444
    .restart local v36    # "value":I
    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v20

    const-wide/16 v46, 0x1

    sub-long v44, v44, v46

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    .line 1445
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v44

    add-int/lit8 v44, v44, -0x1

    const/16 v45, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1446
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v44

    const/16 v45, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1447
    return-void

    .line 1452
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v14    # "fd":J
    .end local v20    # "jan1":J
    .end local v36    # "value":I
    :pswitch_578
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v44

    if-nez v44, :cond_5b5

    .line 1455
    const/16 v44, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v37

    .line 1456
    .local v37, "weekOfYear":I
    const/16 v44, 0x1

    move/from16 v0, v37

    move/from16 v1, v44

    if-le v0, v1, :cond_5b5

    const/16 v44, 0x34

    move/from16 v0, v37

    move/from16 v1, v44

    if-ge v0, v1, :cond_5b5

    .line 1457
    const/16 v44, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1458
    const/16 v22, 0x7

    .line 1459
    goto/16 :goto_21

    .line 1467
    .end local v37    # "weekOfYear":I
    :cond_5b5
    rem-int/lit8 p2, p2, 0x7

    .line 1468
    if-nez p2, :cond_5ba

    .line 1469
    return-void

    .line 1471
    :cond_5ba
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    .line 1472
    .restart local v14    # "fd":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v44

    move/from16 v0, v44

    invoke-static {v14, v15, v0}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v12

    .line 1473
    .local v12, "dowFirst":J
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v14, v14, v44

    .line 1474
    cmp-long v44, v14, v12

    if-gez v44, :cond_60a

    .line 1475
    const-wide/16 v44, 0x7

    add-long v14, v14, v44

    .line 1479
    :cond_5d7
    :goto_5d7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    .line 1480
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v44

    if-gtz v44, :cond_617

    const/16 v44, 0x0

    :goto_5e5
    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1481
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v44

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v45

    add-int/lit8 v45, v45, -0x1

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 1482
    return-void

    .line 1476
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_60a
    const-wide/16 v44, 0x7

    add-long v44, v44, v12

    cmp-long v44, v14, v44

    if-ltz v44, :cond_5d7

    .line 1477
    const-wide/16 v44, 0x7

    sub-long v14, v14, v44

    goto :goto_5d7

    .line 1480
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_617
    const/16 v44, 0x1

    goto :goto_5e5

    .line 1487
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v12    # "dowFirst":J
    .end local v14    # "fd":J
    :pswitch_61a
    const/16 v23, 0x1

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v44

    if-nez v44, :cond_671

    .line 1489
    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v10

    .line 1490
    .local v10, "dom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v30

    .line 1491
    .restart local v30    # "monthLength":I
    rem-int/lit8 v19, v30, 0x7

    .line 1492
    .local v19, "lastDays":I
    div-int/lit8 v22, v30, 0x7

    .line 1493
    add-int/lit8 v44, v10, -0x1

    rem-int/lit8 v40, v44, 0x7

    .line 1494
    .local v40, "x":I
    move/from16 v0, v40

    move/from16 v1, v19

    if-ge v0, v1, :cond_65a

    .line 1495
    add-int/lit8 v22, v22, 0x1

    .line 1497
    :cond_65a
    const/16 v44, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    const/16 v45, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_21

    .line 1502
    .end local v10    # "dom":I
    .end local v19    # "lastDays":I
    .end local v30    # "monthLength":I
    .end local v40    # "x":I
    :cond_671
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    .line 1503
    .restart local v14    # "fd":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v26

    .line 1504
    .restart local v26    # "month1":J
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v30

    .line 1505
    .restart local v30    # "monthLength":I
    rem-int/lit8 v19, v30, 0x7

    .line 1506
    .restart local v19    # "lastDays":I
    div-int/lit8 v22, v30, 0x7

    .line 1507
    sub-long v44, v14, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    rem-int/lit8 v40, v44, 0x7

    .line 1508
    .restart local v40    # "x":I
    move/from16 v0, v40

    move/from16 v1, v19

    if-ge v0, v1, :cond_69c

    .line 1509
    add-int/lit8 v22, v22, 0x1

    .line 1511
    :cond_69c
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v44

    add-int/lit8 v36, v44, -0x1

    .line 1512
    .restart local v36    # "value":I
    mul-int/lit8 v44, v36, 0x7

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v26

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v14, v44, v46

    .line 1513
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v44, v0

    cmp-long v44, v14, v44

    if-ltz v44, :cond_6e7

    sget-object v4, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 1514
    .restart local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    :goto_6ca
    sget-object v44, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v5

    check-cast v5, Lsun/util/calendar/BaseCalendar$Date;

    .line 1515
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v4, v5, v14, v15}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 1516
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v44

    const/16 v45, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1517
    return-void

    .line 1513
    .end local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_6e7
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    .restart local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    goto :goto_6ca

    .line 1185
    :pswitch_data_6ec
    .packed-switch 0x0
        :pswitch_21
        :pswitch_21
        :pswitch_155
        :pswitch_1f9
        :pswitch_381
        :pswitch_46c
        :pswitch_4fe
        :pswitch_578
        :pswitch_61a
        :pswitch_21
        :pswitch_3b
        :pswitch_3b
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method public roll(IZ)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "up"    # Z

    .prologue
    .line 1120
    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, v0}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 1121
    return-void

    .line 1120
    :cond_7
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public setGregorianChange(Ljava/util/Date;)V
    .registers 6
    .param p1, "date"    # Ljava/util/Date;

    .prologue
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

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 4
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 2040
    invoke-super {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2042
    iget-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 2043
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v0, :cond_17

    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v0, v1, :cond_17

    .line 2044
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 2046
    :cond_17
    return-void
.end method

.method public setWeekDate(III)V
    .registers 13
    .param p1, "weekYear"    # I
    .param p2, "weekOfYear"    # I
    .param p3, "dayOfWeek"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2208
    if-lt p3, v5, :cond_9

    if-le p3, v6, :cond_23

    .line 2209
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid dayOfWeek: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2214
    :cond_23
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    .line 2215
    .local v2, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 2216
    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 2217
    .local v1, "era":I
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clear()V

    .line 2218
    const-string/jumbo v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2219
    invoke-virtual {v2, v4, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2220
    invoke-virtual {v2, v5, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2221
    invoke-virtual {v2, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2222
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2223
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v3

    sub-int v0, p3, v3

    .line 2224
    .local v0, "days":I
    if-gez v0, :cond_57

    .line 2225
    add-int/lit8 v0, v0, 0x7

    .line 2227
    :cond_57
    add-int/lit8 v3, p2, -0x1

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v0, v3

    .line 2228
    if-eqz v0, :cond_7a

    .line 2229
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Ljava/util/GregorianCalendar;->add(II)V

    .line 2234
    :goto_62
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v3

    if-nez v3, :cond_84

    .line 2235
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v3

    if-ne v3, p1, :cond_74

    .line 2236
    invoke-virtual {v2, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    if-eq v3, p2, :cond_7e

    .line 2238
    :cond_74
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 2231
    :cond_7a
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_62

    .line 2237
    :cond_7e
    invoke-virtual {v2, v6}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    if-ne v3, p3, :cond_74

    .line 2241
    :cond_84
    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2242
    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    invoke-virtual {p0, v5, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2243
    invoke-virtual {v2, v8}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    invoke-virtual {p0, v8, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2244
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2248
    invoke-virtual {p0, v7, p2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2249
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 2250
    return-void
.end method

.method public toZonedDateTime()Ljava/time/ZonedDateTime;
    .registers 3

    .prologue
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
