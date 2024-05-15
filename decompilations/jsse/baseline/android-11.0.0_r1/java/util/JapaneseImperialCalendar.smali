.class Ljava/util/JapaneseImperialCalendar;
.super Ljava/util/Calendar;
.source "JapaneseImperialCalendar.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist BEFORE_MEIJI:I = 0x0

.field private static final blacklist BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

.field private static final blacklist EPOCH_OFFSET:I = 0xaf93b

.field private static final blacklist EPOCH_YEAR:I = 0x7b2

.field public static final blacklist HEISEI:I = 0x4

.field static final blacklist LEAST_MAX_VALUES:[I

.field static final blacklist MAX_VALUES:[I

.field public static final blacklist MEIJI:I = 0x1

.field static final blacklist MIN_VALUES:[I

.field private static final blacklist ONE_DAY:J = 0x5265c00L

.field private static final blacklist ONE_HOUR:I = 0x36ee80

.field private static final blacklist ONE_MINUTE:I = 0xea60

.field private static final blacklist ONE_SECOND:I = 0x3e8

.field private static final blacklist ONE_WEEK:J = 0x240c8400L

.field public static final blacklist REIWA:I = 0x5

.field public static final blacklist SHOWA:I = 0x3

.field public static final blacklist TAISHO:I = 0x2

.field private static final blacklist currentEra:I

.field private static final blacklist eras:[Lsun/util/calendar/Era;

.field private static final blacklist gcal:Lsun/util/calendar/Gregorian;

.field private static final blacklist jcal:Lsun/util/calendar/LocalGregorianCalendar;

.field private static final whitelist serialVersionUID:J = -0x2eb15d25e1c59a19L

.field private static final blacklist sinceFixedDates:[J


# instance fields
.field private transient blacklist cachedFixedDate:J

.field private transient blacklist jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

.field private transient blacklist originalFields:[I

.field private transient blacklist zoneOffsets:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 69
    nop

    .line 123
    nop

    .line 124
    const-string v0, "japanese"

    invoke-static {v0}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar;

    sput-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    .line 128
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    sput-object v0, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 131
    new-instance v0, Lsun/util/calendar/Era;

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v6, 0x0

    const-string v2, "BeforeMeiji"

    const-string v3, "BM"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    sput-object v0, Ljava/util/JapaneseImperialCalendar;->BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

    .line 170
    const/16 v0, 0x11

    new-array v1, v0, [I

    fill-array-data v1, :array_10c

    sput-object v1, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    .line 189
    new-array v1, v0, [I

    fill-array-data v1, :array_132

    sput-object v1, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    .line 208
    new-array v0, v0, [I

    fill-array-data v0, :array_158

    sput-object v0, Ljava/util/JapaneseImperialCalendar;->MAX_VALUES:[I

    .line 232
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar;->getEras()[Lsun/util/calendar/Era;

    move-result-object v0

    .line 233
    .local v0, "es":[Lsun/util/calendar/Era;
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 234
    .local v1, "length":I
    new-array v3, v1, [Lsun/util/calendar/Era;

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    .line 235
    new-array v3, v1, [J

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    .line 239
    const/4 v4, 0x0

    .line 242
    .local v4, "index":I
    sget-object v5, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v6, Ljava/util/JapaneseImperialCalendar;->BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

    invoke-virtual {v6}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 243
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

    aput-object v6, v3, v4

    .line 244
    array-length v3, v0

    const/4 v4, 0x0

    move v6, v4

    :goto_63
    if-ge v6, v3, :cond_7f

    aget-object v7, v0, v6

    .line 252
    .local v7, "e":Lsun/util/calendar/Era;
    invoke-virtual {v7}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v8

    .line 253
    .local v8, "d":Lsun/util/calendar/CalendarDate;
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    sget-object v10, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v10, v8}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    aput-wide v10, v9, v5

    .line 254
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "index":I
    .local v10, "index":I
    aput-object v7, v9, v5

    .line 244
    .end local v7    # "e":Lsun/util/calendar/Era;
    .end local v8    # "d":Lsun/util/calendar/CalendarDate;
    add-int/lit8 v6, v6, 0x1

    move v5, v10

    goto :goto_63

    .line 258
    .end local v10    # "index":I
    .restart local v5    # "index":I
    :cond_7f
    const/4 v3, 0x5

    sput v3, Ljava/util/JapaneseImperialCalendar;->currentEra:I

    .line 260
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    sget-object v6, Ljava/util/JapaneseImperialCalendar;->MAX_VALUES:[I

    sget-object v7, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v7, v7

    sub-int/2addr v7, v2

    aput v7, v6, v4

    aput v7, v3, v4

    .line 265
    const v3, 0x7fffffff

    .line 266
    .local v3, "year":I
    const v4, 0x7fffffff

    .line 267
    .local v4, "dayOfYear":I
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v7, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v6, v7}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v6

    .line 268
    .local v6, "date":Lsun/util/calendar/CalendarDate;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_9d
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v9, v8

    if-ge v7, v9, :cond_103

    .line 269
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v9, v9, v7

    .line 270
    .local v9, "fd":J
    aget-object v8, v8, v7

    invoke-virtual {v8}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v8

    .line 271
    .local v8, "transitionDate":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v11

    invoke-virtual {v6, v11, v2, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 272
    sget-object v11, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v11, v6}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v11

    .line 273
    .local v11, "fdd":J
    cmp-long v13, v9, v11

    if-eqz v13, :cond_c5

    .line 274
    sub-long v13, v9, v11

    long-to-int v13, v13

    add-int/2addr v13, v2

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 276
    :cond_c5
    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v13

    const/16 v14, 0xc

    const/16 v15, 0x1f

    invoke-virtual {v6, v13, v14, v15}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 277
    sget-object v13, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v13, v6}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v11

    .line 278
    cmp-long v13, v9, v11

    if-eqz v13, :cond_e2

    .line 279
    sub-long v13, v11, v9

    long-to-int v13, v13

    add-int/2addr v13, v2

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 281
    :cond_e2
    const-wide/16 v13, 0x1

    sub-long v13, v9, v13

    invoke-static {v13, v14}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v13

    .line 282
    .local v13, "lgd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v14

    .line 287
    .local v14, "y":I
    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v15

    if-ne v15, v2, :cond_fa

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v15

    if-eq v15, v2, :cond_fc

    .line 288
    :cond_fa
    add-int/lit8 v14, v14, -0x1

    .line 290
    :cond_fc
    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 268
    .end local v8    # "transitionDate":Lsun/util/calendar/CalendarDate;
    .end local v9    # "fd":J
    .end local v11    # "fdd":J
    .end local v13    # "lgd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v14    # "y":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_9d

    .line 292
    .end local v7    # "i":I
    :cond_103
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    aput v3, v7, v2

    .line 293
    const/4 v2, 0x6

    aput v4, v7, v2

    .line 294
    .end local v0    # "es":[Lsun/util/calendar/Era;
    .end local v1    # "length":I
    .end local v3    # "year":I
    .end local v4    # "dayOfYear":I
    .end local v5    # "index":I
    .end local v6    # "date":Lsun/util/calendar/CalendarDate;
    return-void

    nop

    :array_10c
    .array-data 4
        0x0
        -0x116bc36f
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

    :array_132
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x4
        0x1c
        0x0
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

    :array_158
    .array-data 4
        0x0
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

.method constructor blacklist <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 323
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 1547
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 324
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    .line 326
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V
    .registers 6
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;
    .param p3, "flag"    # Z

    .line 336
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 1547
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 337
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 338
    return-void
.end method

.method private blacklist actualMonthLength()I
    .registers 8

    .line 2217
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v0

    .line 2218
    .local v0, "length":I
    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-static {v1}, Ljava/util/JapaneseImperialCalendar;->getTransitionEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v1

    .line 2219
    .local v1, "eraIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_31

    .line 2220
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v2, v2, v1

    .line 2221
    .local v2, "transitionFixedDate":J
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v4

    .line 2222
    .local v4, "d":Lsun/util/calendar/CalendarDate;
    iget-wide v5, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    cmp-long v5, v2, v5

    if-gtz v5, :cond_2b

    .line 2223
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v0, v5

    goto :goto_31

    .line 2225
    :cond_2b
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 2228
    .end local v2    # "transitionFixedDate":J
    .end local v4    # "d":Lsun/util/calendar/CalendarDate;
    :cond_31
    :goto_31
    return v0
.end method

.method private blacklist computeFields(II)I
    .registers 35
    .param p1, "fieldMask"    # I
    .param p2, "tzMask"    # I

    .line 1593
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 1594
    .local v3, "zoneOffset":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v4

    .line 1595
    .local v4, "tz":Ljava/util/TimeZone;
    iget-object v5, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    const/4 v6, 0x2

    if-nez v5, :cond_14

    .line 1596
    new-array v5, v6, [I

    iput-object v5, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    .line 1598
    :cond_14
    const v5, 0x18000

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v5, :cond_41

    .line 1602
    instance-of v9, v4, Llibcore/util/ZoneInfo;

    if-eqz v9, :cond_2b

    .line 1603
    move-object v9, v4

    check-cast v9, Llibcore/util/ZoneInfo;

    iget-wide v10, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    iget-object v12, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    invoke-virtual {v9, v10, v11, v12}, Llibcore/util/ZoneInfo;->getOffsetsByUtcTime(J[I)I

    move-result v3

    goto :goto_41

    .line 1606
    :cond_2b
    iget-wide v9, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    invoke-virtual {v4, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 1607
    iget-object v9, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    aput v10, v9, v7

    .line 1608
    iget-object v9, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    aget v10, v9, v7

    sub-int v10, v3, v10

    aput v10, v9, v8

    .line 1611
    :cond_41
    :goto_41
    const/16 v9, 0x10

    const/16 v10, 0xf

    if-eqz v2, :cond_6b

    .line 1612
    invoke-static {v2, v10}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_55

    .line 1613
    iget-object v11, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    invoke-virtual {v0, v10}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v12

    aput v12, v11, v7

    .line 1615
    :cond_55
    invoke-static {v2, v9}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_63

    .line 1616
    iget-object v11, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v12

    aput v12, v11, v8

    .line 1618
    :cond_63
    iget-object v11, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    aget v12, v11, v7

    aget v11, v11, v8

    add-int v3, v12, v11

    .line 1624
    :cond_6b
    int-to-long v11, v3

    const-wide/32 v13, 0x5265c00

    div-long/2addr v11, v13

    .line 1625
    .local v11, "fixedDate":J
    const v15, 0x5265c00

    rem-int v15, v3, v15

    .line 1626
    .local v15, "timeOfDay":I
    iget-wide v9, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    div-long/2addr v9, v13

    add-long/2addr v11, v9

    .line 1627
    iget-wide v9, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    rem-long/2addr v9, v13

    long-to-int v9, v9

    add-int/2addr v15, v9

    .line 1628
    int-to-long v9, v15

    cmp-long v9, v9, v13

    const-wide/16 v18, 0x1

    if-ltz v9, :cond_8b

    .line 1629
    int-to-long v9, v15

    sub-long/2addr v9, v13

    long-to-int v9, v9

    .line 1630
    .end local v15    # "timeOfDay":I
    .local v9, "timeOfDay":I
    add-long v11, v11, v18

    goto :goto_94

    .line 1632
    .end local v9    # "timeOfDay":I
    .restart local v15    # "timeOfDay":I
    :cond_8b
    :goto_8b
    if-gez v15, :cond_93

    .line 1633
    int-to-long v9, v15

    add-long/2addr v9, v13

    long-to-int v15, v9

    .line 1634
    sub-long v11, v11, v18

    goto :goto_8b

    .line 1632
    :cond_93
    move v9, v15

    .line 1637
    .end local v15    # "timeOfDay":I
    .restart local v9    # "timeOfDay":I
    :goto_94
    const-wide/32 v13, 0xaf93b

    add-long/2addr v11, v13

    .line 1640
    iget-wide v13, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    cmp-long v10, v11, v13

    if-nez v10, :cond_a4

    const-wide/16 v13, 0x0

    cmp-long v10, v11, v13

    if-gez v10, :cond_ad

    .line 1641
    :cond_a4
    sget-object v10, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-object v13, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v10, v13, v11, v12}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 1642
    iput-wide v11, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 1644
    :cond_ad
    iget-object v10, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-static {v10}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v10

    .line 1645
    .local v10, "era":I
    iget-object v13, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v13

    .line 1648
    .local v13, "year":I
    invoke-virtual {v0, v7, v10}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1649
    invoke-virtual {v0, v8, v13}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1650
    or-int/lit8 v14, v1, 0x3

    .line 1652
    .local v14, "mask":I
    iget-object v15, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v15}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v15

    sub-int/2addr v15, v8

    .line 1653
    .local v15, "month":I
    iget-object v8, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v8

    .line 1656
    .local v8, "dayOfMonth":I
    and-int/lit16 v5, v1, 0xa4

    const/4 v7, 0x5

    if-eqz v5, :cond_e5

    .line 1658
    invoke-virtual {v0, v6, v15}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1659
    invoke-virtual {v0, v7, v8}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1660
    iget-object v5, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfWeek()I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v0, v6, v5}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1661
    or-int/lit16 v14, v14, 0xa4

    .line 1664
    :cond_e5
    and-int/lit16 v5, v1, 0x7e00

    if-eqz v5, :cond_13f

    .line 1666
    const/16 v5, 0x9

    const/16 v6, 0xb

    if-eqz v9, :cond_122

    .line 1667
    const v28, 0x36ee80

    div-int v7, v9, v28

    .line 1668
    .local v7, "hours":I
    invoke-virtual {v0, v6, v7}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1669
    div-int/lit8 v6, v7, 0xc

    invoke-virtual {v0, v5, v6}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1670
    rem-int/lit8 v5, v7, 0xc

    const/16 v6, 0xa

    invoke-virtual {v0, v6, v5}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1671
    rem-int v5, v9, v28

    .line 1672
    .local v5, "r":I
    const v6, 0xea60

    div-int v6, v5, v6

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v6}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1673
    const v2, 0xea60

    rem-int/2addr v5, v2

    .line 1674
    div-int/lit16 v2, v5, 0x3e8

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1675
    rem-int/lit16 v2, v5, 0x3e8

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1676
    .end local v5    # "r":I
    .end local v7    # "hours":I
    goto :goto_13d

    .line 1677
    :cond_122
    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1678
    invoke-virtual {v0, v5, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1679
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1680
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1681
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1682
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1684
    :goto_13d
    or-int/lit16 v14, v14, 0x7e00

    .line 1688
    :cond_13f
    const v2, 0x18000

    and-int v5, v1, v2

    if-eqz v5, :cond_15b

    .line 1689
    iget-object v5, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-virtual {v0, v6, v5}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1690
    iget-object v5, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/16 v6, 0x10

    invoke-virtual {v0, v6, v5}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1691
    or-int/2addr v14, v2

    .line 1694
    :cond_15b
    and-int/lit16 v2, v1, 0x158

    if-eqz v2, :cond_37c

    .line 1696
    iget-object v2, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v2

    .line 1699
    .local v2, "normalizedYear":I
    iget-object v5, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v5

    .line 1702
    .local v5, "transitionYear":Z
    if-eqz v5, :cond_181

    .line 1703
    iget-object v6, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0, v6, v11, v12}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v6

    .line 1704
    .local v6, "fixedDateJan1":J
    move/from16 v17, v3

    move-object/from16 v16, v4

    .end local v3    # "zoneOffset":I
    .end local v4    # "tz":Ljava/util/TimeZone;
    .local v16, "tz":Ljava/util/TimeZone;
    .local v17, "zoneOffset":I
    sub-long v3, v11, v6

    long-to-int v3, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .local v3, "dayOfYear":I
    goto :goto_1b4

    .line 1705
    .end local v6    # "fixedDateJan1":J
    .end local v16    # "tz":Ljava/util/TimeZone;
    .end local v17    # "zoneOffset":I
    .local v3, "zoneOffset":I
    .restart local v4    # "tz":Ljava/util/TimeZone;
    :cond_181
    move/from16 v17, v3

    move-object/from16 v16, v4

    const/4 v4, 0x1

    .end local v3    # "zoneOffset":I
    .end local v4    # "tz":Ljava/util/TimeZone;
    .restart local v16    # "tz":Ljava/util/TimeZone;
    .restart local v17    # "zoneOffset":I
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    aget v3, v3, v4

    if-ne v2, v3, :cond_1a6

    .line 1706
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    const-wide/high16 v6, -0x8000000000000000L

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v6, v7, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 1707
    .local v3, "dx":Lsun/util/calendar/CalendarDate;
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v4, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v6

    .line 1708
    .restart local v6    # "fixedDateJan1":J
    move-object/from16 v21, v3

    .end local v3    # "dx":Lsun/util/calendar/CalendarDate;
    .local v21, "dx":Lsun/util/calendar/CalendarDate;
    sub-long v3, v11, v6

    long-to-int v3, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 1709
    .end local v21    # "dx":Lsun/util/calendar/CalendarDate;
    .local v3, "dayOfYear":I
    goto :goto_1b4

    .line 1710
    .end local v3    # "dayOfYear":I
    .end local v6    # "fixedDateJan1":J
    :cond_1a6
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-object v4, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfYear(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1711
    .restart local v3    # "dayOfYear":I
    int-to-long v6, v3

    sub-long v6, v11, v6

    add-long v6, v6, v18

    .line 1713
    .restart local v6    # "fixedDateJan1":J
    :goto_1b4
    if-eqz v5, :cond_1c4

    .line 1714
    iget-object v4, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0, v4, v11, v12}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v21

    move v4, v13

    move-wide/from16 v30, v21

    move/from16 v21, v14

    move-wide/from16 v13, v30

    goto :goto_1cc

    :cond_1c4
    move v4, v13

    move/from16 v21, v14

    .end local v13    # "year":I
    .end local v14    # "mask":I
    .local v4, "year":I
    .local v21, "mask":I
    int-to-long v13, v8

    sub-long v13, v11, v13

    add-long v13, v13, v18

    .line 1716
    .local v13, "fixedDateMonth1":J
    :goto_1cc
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1717
    const/16 v1, 0x8

    add-int/lit8 v22, v8, -0x1

    const/16 v23, 0x7

    div-int/lit8 v22, v22, 0x7

    move/from16 v23, v3

    const/16 v20, 0x1

    .end local v3    # "dayOfYear":I
    .local v23, "dayOfYear":I
    add-int/lit8 v3, v22, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1719
    invoke-direct {v0, v6, v7, v11, v12}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v1

    .line 1723
    .local v1, "weekOfYear":I
    const-wide/16 v25, 0x16d

    if-nez v1, :cond_2ba

    .line 1731
    move/from16 v22, v4

    .end local v4    # "year":I
    .local v22, "year":I
    sub-long v3, v6, v18

    .line 1733
    .local v3, "fixedDec31":J
    move/from16 v27, v8

    .end local v8    # "dayOfMonth":I
    .local v27, "dayOfMonth":I
    invoke-static {v3, v4}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v8

    .line 1734
    .local v8, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    if-nez v5, :cond_221

    move/from16 v28, v9

    .end local v9    # "timeOfDay":I
    .local v28, "timeOfDay":I
    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v9

    invoke-direct {v0, v9}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v9

    if-nez v9, :cond_223

    .line 1735
    sub-long v24, v6, v25

    .line 1736
    .local v24, "prevJan1":J
    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v9

    if-eqz v9, :cond_216

    .line 1737
    sub-long v24, v24, v18

    move/from16 v29, v15

    move-wide/from16 v30, v24

    move/from16 v24, v2

    move-object v2, v8

    move-wide/from16 v8, v30

    goto/16 :goto_2b4

    .line 1736
    :cond_216
    move/from16 v29, v15

    move-wide/from16 v30, v24

    move/from16 v24, v2

    move-object v2, v8

    move-wide/from16 v8, v30

    goto/16 :goto_2b4

    .line 1734
    .end local v24    # "prevJan1":J
    .end local v28    # "timeOfDay":I
    .restart local v9    # "timeOfDay":I
    :cond_221
    move/from16 v28, v9

    .line 1739
    .end local v9    # "timeOfDay":I
    .restart local v28    # "timeOfDay":I
    :cond_223
    if-eqz v5, :cond_285

    .line 1740
    iget-object v9, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v9

    move/from16 v29, v15

    const/4 v15, 0x1

    .end local v15    # "month":I
    .local v29, "month":I
    if-ne v9, v15, :cond_271

    .line 1746
    const/4 v9, 0x5

    if-le v10, v9, :cond_258

    .line 1747
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v15, v10, -0x1

    aget-object v9, v9, v15

    invoke-virtual {v9}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v9

    .line 1748
    .local v9, "pd":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v15

    if-ne v2, v15, :cond_255

    .line 1749
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v15

    invoke-virtual {v8, v15}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v15

    move/from16 v24, v2

    .end local v2    # "normalizedYear":I
    .local v24, "normalizedYear":I
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v15, v2}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_257

    .line 1748
    .end local v24    # "normalizedYear":I
    .restart local v2    # "normalizedYear":I
    :cond_255
    move/from16 v24, v2

    .line 1751
    .end local v2    # "normalizedYear":I
    .end local v9    # "pd":Lsun/util/calendar/CalendarDate;
    .restart local v24    # "normalizedYear":I
    :goto_257
    goto :goto_262

    .line 1752
    .end local v24    # "normalizedYear":I
    .restart local v2    # "normalizedYear":I
    :cond_258
    move/from16 v24, v2

    .end local v2    # "normalizedYear":I
    .restart local v24    # "normalizedYear":I
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v9

    invoke-virtual {v9, v2}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1754
    :goto_262
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, v8}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1755
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v18

    move-object v2, v8

    move-wide/from16 v8, v18

    .local v18, "prevJan1":J
    goto :goto_2b4

    .line 1757
    .end local v18    # "prevJan1":J
    .end local v24    # "normalizedYear":I
    .restart local v2    # "normalizedYear":I
    :cond_271
    move/from16 v24, v2

    .end local v2    # "normalizedYear":I
    .restart local v24    # "normalizedYear":I
    sub-long v25, v6, v25

    .line 1758
    .local v25, "prevJan1":J
    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v2

    if-eqz v2, :cond_281

    .line 1759
    sub-long v18, v25, v18

    move-object v2, v8

    move-wide/from16 v8, v18

    .end local v25    # "prevJan1":J
    .restart local v18    # "prevJan1":J
    goto :goto_2b4

    .line 1758
    .end local v18    # "prevJan1":J
    .restart local v25    # "prevJan1":J
    :cond_281
    move-object v2, v8

    move-wide/from16 v8, v25

    goto :goto_2b4

    .line 1763
    .end local v24    # "normalizedYear":I
    .end local v25    # "prevJan1":J
    .end local v29    # "month":I
    .restart local v2    # "normalizedYear":I
    .restart local v15    # "month":I
    :cond_285
    move/from16 v24, v2

    move/from16 v29, v15

    .end local v2    # "normalizedYear":I
    .end local v15    # "month":I
    .restart local v24    # "normalizedYear":I
    .restart local v29    # "month":I
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    iget-object v9, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-static {v9}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v9

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    .line 1764
    .local v2, "cd":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v9

    invoke-virtual {v8, v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v9

    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v15

    invoke-virtual {v9, v15}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1765
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v9, v8}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1766
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v9, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v18

    move-object v2, v8

    move-wide/from16 v8, v18

    .line 1768
    .local v2, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .local v8, "prevJan1":J
    :goto_2b4
    invoke-direct {v0, v8, v9, v3, v4}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v1

    .line 1769
    .end local v2    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v3    # "fixedDec31":J
    .end local v8    # "prevJan1":J
    goto/16 :goto_36a

    .line 1770
    .end local v22    # "year":I
    .end local v24    # "normalizedYear":I
    .end local v27    # "dayOfMonth":I
    .end local v28    # "timeOfDay":I
    .end local v29    # "month":I
    .local v2, "normalizedYear":I
    .restart local v4    # "year":I
    .local v8, "dayOfMonth":I
    .local v9, "timeOfDay":I
    .restart local v15    # "month":I
    :cond_2ba
    move/from16 v24, v2

    move/from16 v22, v4

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v15

    .end local v2    # "normalizedYear":I
    .end local v4    # "year":I
    .end local v8    # "dayOfMonth":I
    .end local v9    # "timeOfDay":I
    .end local v15    # "month":I
    .restart local v22    # "year":I
    .restart local v24    # "normalizedYear":I
    .restart local v27    # "dayOfMonth":I
    .restart local v28    # "timeOfDay":I
    .restart local v29    # "month":I
    if-nez v5, :cond_2f9

    .line 1772
    const/16 v2, 0x34

    if-lt v1, v2, :cond_2f6

    .line 1773
    add-long v25, v6, v25

    .line 1774
    .local v25, "nextJan1":J
    iget-object v2, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v2

    if-eqz v2, :cond_2d6

    .line 1775
    add-long v25, v25, v18

    .line 1777
    :cond_2d6
    const-wide/16 v2, 0x6

    add-long v2, v25, v2

    .line 1778
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v4

    .line 1777
    invoke-static {v2, v3, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v2

    .line 1779
    .local v2, "nextJan1st":J
    sub-long v8, v2, v25

    long-to-int v4, v8

    .line 1780
    .local v4, "ndays":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v8

    if-lt v4, v8, :cond_2f4

    const-wide/16 v8, 0x7

    sub-long v8, v2, v8

    cmp-long v8, v11, v8

    if-ltz v8, :cond_2f4

    .line 1782
    const/4 v1, 0x1

    .line 1784
    .end local v2    # "nextJan1st":J
    .end local v4    # "ndays":I
    .end local v25    # "nextJan1":J
    :cond_2f4
    goto/16 :goto_36a

    .line 1772
    :cond_2f6
    move v15, v1

    goto/16 :goto_369

    .line 1786
    :cond_2f9
    iget-object v2, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1788
    .local v2, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_31b

    .line 1789
    invoke-virtual {v2, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1790
    invoke-virtual {v2, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    invoke-virtual {v3, v4}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1791
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v3

    .local v3, "nextJan1":J
    goto :goto_347

    .line 1793
    .end local v3    # "nextJan1":J
    :cond_31b
    invoke-static {v2}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v3

    add-int/2addr v3, v4

    .line 1794
    .local v3, "nextEraIndex":I
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v4

    .line 1795
    .local v4, "cd":Lsun/util/calendar/CalendarDate;
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v8, v8, v3

    invoke-virtual {v2, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1796
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v8

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    const/4 v15, 0x1

    invoke-virtual {v2, v15, v8, v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1797
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v8, v2}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1798
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v8, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    move-wide v3, v8

    .line 1800
    .end local v4    # "cd":Lsun/util/calendar/CalendarDate;
    .local v3, "nextJan1":J
    :goto_347
    const-wide/16 v8, 0x6

    add-long/2addr v8, v3

    .line 1801
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v15

    .line 1800
    invoke-static {v8, v9, v15}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v8

    .line 1802
    .local v8, "nextJan1st":J
    move v15, v1

    move-object/from16 v18, v2

    .end local v1    # "weekOfYear":I
    .end local v2    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .local v15, "weekOfYear":I
    .local v18, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sub-long v1, v8, v3

    long-to-int v1, v1

    .line 1803
    .local v1, "ndays":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v2

    if-lt v1, v2, :cond_369

    const-wide/16 v19, 0x7

    sub-long v19, v8, v19

    cmp-long v2, v11, v19

    if-ltz v2, :cond_369

    .line 1805
    const/4 v2, 0x1

    move v1, v2

    .end local v15    # "weekOfYear":I
    .local v2, "weekOfYear":I
    goto :goto_36a

    .line 1809
    .end local v2    # "weekOfYear":I
    .end local v3    # "nextJan1":J
    .end local v8    # "nextJan1st":J
    .end local v18    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .local v1, "weekOfYear":I
    :cond_369
    :goto_369
    move v1, v15

    :goto_36a
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1810
    const/4 v2, 0x4

    invoke-direct {v0, v13, v14, v11, v12}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1811
    move/from16 v2, v21

    .end local v21    # "mask":I
    .local v2, "mask":I
    or-int/lit16 v2, v2, 0x158

    move v14, v2

    goto :goto_389

    .line 1694
    .end local v1    # "weekOfYear":I
    .end local v2    # "mask":I
    .end local v5    # "transitionYear":Z
    .end local v6    # "fixedDateJan1":J
    .end local v16    # "tz":Ljava/util/TimeZone;
    .end local v17    # "zoneOffset":I
    .end local v22    # "year":I
    .end local v23    # "dayOfYear":I
    .end local v24    # "normalizedYear":I
    .end local v27    # "dayOfMonth":I
    .end local v28    # "timeOfDay":I
    .end local v29    # "month":I
    .local v3, "zoneOffset":I
    .local v4, "tz":Ljava/util/TimeZone;
    .local v8, "dayOfMonth":I
    .restart local v9    # "timeOfDay":I
    .local v13, "year":I
    .restart local v14    # "mask":I
    .local v15, "month":I
    :cond_37c
    move/from16 v17, v3

    move-object/from16 v16, v4

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v22, v13

    move v2, v14

    move/from16 v29, v15

    .line 1813
    .end local v3    # "zoneOffset":I
    .end local v4    # "tz":Ljava/util/TimeZone;
    .end local v8    # "dayOfMonth":I
    .end local v9    # "timeOfDay":I
    .end local v13    # "year":I
    .end local v15    # "month":I
    .restart local v16    # "tz":Ljava/util/TimeZone;
    .restart local v17    # "zoneOffset":I
    .restart local v22    # "year":I
    .restart local v27    # "dayOfMonth":I
    .restart local v28    # "timeOfDay":I
    .restart local v29    # "month":I
    :goto_389
    return v14
.end method

.method private static blacklist getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 4
    .param p0, "fd"    # J

    .line 2188
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    sget-object v1, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    .line 2189
    .local v0, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v0, p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 2190
    return-object v0
.end method

.method private static blacklist getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I
    .registers 4
    .param p0, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2270
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    .line 2271
    .local v0, "era":Lsun/util/calendar/Era;
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-lez v1, :cond_15

    .line 2272
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v2, v2, v1

    if-ne v2, v0, :cond_12

    .line 2273
    return v1

    .line 2271
    :cond_12
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2276
    .end local v1    # "i":I
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist getFixedDate(III)J
    .registers 26
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "fieldMask"    # I

    .line 1996
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 1997
    .local v3, "month":I
    const/4 v4, 0x1

    .line 1998
    .local v4, "firstDayOfMonth":I
    const/4 v5, 0x2

    invoke-static {v2, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2d

    .line 2001
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    .line 2004
    const/16 v6, 0xb

    if-le v3, v6, :cond_1e

    .line 2005
    div-int/lit8 v6, v3, 0xc

    add-int/2addr v1, v6

    .line 2006
    .end local p2    # "year":I
    .local v1, "year":I
    rem-int/lit8 v3, v3, 0xc

    goto :goto_43

    .line 2007
    .end local v1    # "year":I
    .restart local p2    # "year":I
    :cond_1e
    if-gez v3, :cond_43

    .line 2008
    new-array v6, v7, [I

    .line 2009
    .local v6, "rem":[I
    const/16 v8, 0xc

    invoke-static {v3, v8, v6}, Lsun/util/calendar/CalendarUtils;->floorDivide(II[I)I

    move-result v8

    add-int/2addr v1, v8

    .line 2010
    .end local p2    # "year":I
    .restart local v1    # "year":I
    const/4 v8, 0x0

    aget v3, v6, v8

    .line 2011
    .end local v6    # "rem":[I
    goto :goto_43

    .line 2013
    .end local v1    # "year":I
    .restart local p2    # "year":I
    :cond_2d
    if-ne v1, v7, :cond_43

    if-eqz p1, :cond_43

    .line 2014
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v6

    .line 2015
    .local v6, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 2016
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v4

    .line 2021
    .end local v6    # "d":Lsun/util/calendar/CalendarDate;
    .end local p2    # "year":I
    .restart local v1    # "year":I
    :cond_43
    :goto_43
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    aget v6, v6, v7

    if-ne v1, v6, :cond_63

    .line 2022
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    const-wide/high16 v8, -0x8000000000000000L

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v6

    .line 2023
    .local v6, "dx":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v8

    sub-int/2addr v8, v7

    .line 2024
    .local v8, "m":I
    if-ge v3, v8, :cond_5d

    .line 2025
    move v3, v8

    .line 2027
    :cond_5d
    if-ne v3, v8, :cond_63

    .line 2028
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v4

    .line 2032
    .end local v6    # "dx":Lsun/util/calendar/CalendarDate;
    .end local v8    # "m":I
    :cond_63
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    sget-object v8, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v6, v8}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v6

    .line 2033
    .local v6, "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    if-lez p1, :cond_72

    sget-object v8, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v8, v8, p1

    goto :goto_73

    :cond_72
    const/4 v8, 0x0

    :goto_73
    invoke-virtual {v6, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2034
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v6, v1, v8, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 2035
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v8, v6}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 2039
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v8, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    .line 2041
    .local v8, "fixedDate":J
    invoke-static {v2, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v5

    const-wide/16 v10, 0x7

    const-wide/16 v14, 0x6

    const/4 v12, 0x7

    if-eqz v5, :cond_12e

    .line 2043
    const/4 v5, 0x5

    invoke-static {v2, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v13

    if-eqz v13, :cond_a8

    .line 2050
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_19a

    .line 2053
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    .line 2054
    int-to-long v10, v4

    sub-long/2addr v8, v10

    goto/16 :goto_19a

    .line 2057
    :cond_a8
    const/4 v5, 0x4

    invoke-static {v2, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v13

    if-eqz v13, :cond_e7

    .line 2058
    move-object/from16 p2, v6

    .end local v6    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .local p2, "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    add-long v5, v8, v14

    .line 2059
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v13

    .line 2058
    invoke-static {v5, v6, v13}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v5

    .line 2062
    .local v5, "firstDayOfWeek":J
    sub-long v17, v5, v8

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v13

    move-wide/from16 v20, v8

    .end local v8    # "fixedDate":J
    .local v20, "fixedDate":J
    int-to-long v7, v13

    cmp-long v7, v17, v7

    if-ltz v7, :cond_c9

    .line 2063
    sub-long/2addr v5, v10

    .line 2065
    :cond_c9
    invoke-static {v2, v12}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v7

    if-eqz v7, :cond_d8

    .line 2066
    add-long/2addr v14, v5

    .line 2067
    invoke-virtual {v0, v12}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v7

    .line 2066
    invoke-static {v14, v15, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v5

    .line 2072
    :cond_d8
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    mul-int/2addr v7, v12

    int-to-long v7, v7

    add-long v8, v5, v7

    .line 2073
    .end local v5    # "firstDayOfWeek":J
    .end local v20    # "fixedDate":J
    .restart local v8    # "fixedDate":J
    move-object/from16 v6, p2

    goto/16 :goto_19a

    .line 2075
    .end local p2    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .restart local v6    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_e7
    move-object/from16 p2, v6

    move-wide/from16 v20, v8

    .end local v6    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v8    # "fixedDate":J
    .restart local v20    # "fixedDate":J
    .restart local p2    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-static {v2, v12}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 2076
    invoke-virtual {v0, v12}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    .local v5, "dayOfWeek":I
    goto :goto_fa

    .line 2078
    .end local v5    # "dayOfWeek":I
    :cond_f6
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v5

    .line 2084
    .restart local v5    # "dayOfWeek":I
    :goto_fa
    const/16 v6, 0x8

    invoke-static {v2, v6}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v7

    if-eqz v7, :cond_107

    .line 2085
    invoke-virtual {v0, v6}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    .local v6, "dowim":I
    goto :goto_108

    .line 2087
    .end local v6    # "dowim":I
    :cond_107
    const/4 v6, 0x1

    .line 2089
    .restart local v6    # "dowim":I
    :goto_108
    if-ltz v6, :cond_118

    .line 2090
    mul-int/lit8 v7, v6, 0x7

    int-to-long v7, v7

    add-long v8, v20, v7

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    invoke-static {v8, v9, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v7

    move-wide v8, v7

    .end local v20    # "fixedDate":J
    .local v7, "fixedDate":J
    goto :goto_12a

    .line 2095
    .end local v7    # "fixedDate":J
    .restart local v20    # "fixedDate":J
    :cond_118
    invoke-direct {v0, v3, v1}, Ljava/util/JapaneseImperialCalendar;->monthLength(II)I

    move-result v7

    add-int/lit8 v8, v6, 0x1

    mul-int/2addr v8, v12

    add-int/2addr v7, v8

    .line 2097
    .local v7, "lastDate":I
    int-to-long v8, v7

    add-long v8, v20, v8

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    invoke-static {v8, v9, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v8

    .line 2100
    .end local v5    # "dayOfWeek":I
    .end local v6    # "dowim":I
    .end local v7    # "lastDate":I
    .end local v20    # "fixedDate":J
    .restart local v8    # "fixedDate":J
    :goto_12a
    move-object/from16 v6, p2

    goto/16 :goto_19a

    .line 2104
    .end local p2    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .local v6, "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_12e
    move-object/from16 p2, v6

    move-wide/from16 v20, v8

    .end local v6    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v8    # "fixedDate":J
    .restart local v20    # "fixedDate":J
    .restart local p2    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    const/4 v5, 0x6

    invoke-static {v2, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v6

    if-eqz v6, :cond_15b

    .line 2105
    invoke-virtual/range {p2 .. p2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v6

    if-eqz v6, :cond_14c

    .line 2106
    move-object/from16 v6, p2

    move-wide/from16 v7, v20

    .end local v20    # "fixedDate":J
    .end local p2    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .restart local v6    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .local v7, "fixedDate":J
    invoke-direct {v0, v6, v7, v8}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v8

    .end local v7    # "fixedDate":J
    .restart local v8    # "fixedDate":J
    goto :goto_151

    .line 2105
    .end local v6    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v8    # "fixedDate":J
    .restart local v20    # "fixedDate":J
    .restart local p2    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_14c
    move-object/from16 v6, p2

    move-wide/from16 v7, v20

    .end local v20    # "fixedDate":J
    .end local p2    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .restart local v6    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .restart local v7    # "fixedDate":J
    move-wide v8, v7

    .line 2109
    .end local v7    # "fixedDate":J
    .restart local v8    # "fixedDate":J
    :goto_151
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    .line 2110
    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    goto :goto_19a

    .line 2112
    .end local v6    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v8    # "fixedDate":J
    .restart local v20    # "fixedDate":J
    .restart local p2    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_15b
    move-object/from16 v6, p2

    move-wide/from16 v7, v20

    .end local v20    # "fixedDate":J
    .end local p2    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .restart local v6    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .restart local v7    # "fixedDate":J
    add-long v12, v7, v14

    .line 2113
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v5

    .line 2112
    invoke-static {v12, v13, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v12

    .line 2116
    .local v12, "firstDayOfWeek":J
    sub-long v18, v12, v7

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v5

    int-to-long v14, v5

    cmp-long v5, v18, v14

    if-ltz v5, :cond_175

    .line 2117
    sub-long/2addr v12, v10

    .line 2119
    :cond_175
    const/4 v5, 0x7

    invoke-static {v2, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v9

    if-eqz v9, :cond_18d

    .line 2120
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    .line 2121
    .restart local v5    # "dayOfWeek":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v9

    if-eq v5, v9, :cond_18d

    .line 2122
    const-wide/16 v14, 0x6

    add-long/2addr v14, v12

    invoke-static {v14, v15, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v12

    .line 2126
    .end local v5    # "dayOfWeek":I
    :cond_18d
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    int-to-long v14, v5

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    mul-long/2addr v14, v10

    add-long v8, v12, v14

    .line 2129
    .end local v7    # "fixedDate":J
    .end local v12    # "firstDayOfWeek":J
    .restart local v8    # "fixedDate":J
    :cond_19a
    :goto_19a
    return-wide v8
.end method

.method private blacklist getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J
    .registers 11
    .param p1, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;
    .param p2, "fixedDate"    # J

    .line 2141
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    .line 2142
    .local v0, "era":Lsun/util/calendar/Era;
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v1

    if-ne v1, v2, :cond_2e

    .line 2143
    invoke-static {p1}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v1

    .local v1, "eraIndex":I
    :goto_15
    if-lez v1, :cond_2e

    .line 2144
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v3

    .line 2145
    .local v3, "d":Lsun/util/calendar/CalendarDate;
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v4, v3}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    .line 2147
    .local v4, "fd":J
    cmp-long v6, v4, p2

    if-lez v6, :cond_2d

    .line 2148
    nop

    .line 2143
    .end local v3    # "d":Lsun/util/calendar/CalendarDate;
    .end local v4    # "fd":J
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 2150
    .restart local v3    # "d":Lsun/util/calendar/CalendarDate;
    .restart local v4    # "fd":J
    :cond_2d
    return-wide v4

    .line 2153
    .end local v1    # "eraIndex":I
    .end local v3    # "d":Lsun/util/calendar/CalendarDate;
    .end local v4    # "fd":J
    :cond_2e
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v3, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v3}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v1

    .line 2154
    .local v1, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-virtual {v1, v3, v2, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 2155
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v2, v1}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v2

    return-wide v2
.end method

.method private blacklist getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J
    .registers 9
    .param p1, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;
    .param p2, "fixedDate"    # J

    .line 2168
    invoke-static {p1}, Ljava/util/JapaneseImperialCalendar;->getTransitionEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v0

    .line 2169
    .local v0, "eraIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 2170
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v1, v1, v0

    .line 2173
    .local v1, "transition":J
    cmp-long v3, v1, p2

    if-gtz v3, :cond_10

    .line 2174
    return-wide v1

    .line 2179
    .end local v1    # "transition":J
    :cond_10
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p2, v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method private blacklist getNormalizedCalendar()Ljava/util/JapaneseImperialCalendar;
    .registers 3

    .line 2286
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->isFullyNormalized()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2287
    move-object v0, p0

    .local v0, "jc":Ljava/util/JapaneseImperialCalendar;
    goto :goto_15

    .line 2290
    .end local v0    # "jc":Ljava/util/JapaneseImperialCalendar;
    :cond_8
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/JapaneseImperialCalendar;

    .line 2291
    .restart local v0    # "jc":Ljava/util/JapaneseImperialCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->setLenient(Z)V

    .line 2292
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->complete()V

    .line 2294
    :goto_15
    return-object v0
.end method

.method private static blacklist getRolledValue(IIII)I
    .registers 6
    .param p0, "value"    # I
    .param p1, "amount"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 2348
    nop

    .line 2349
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    .line 2350
    .local v0, "range":I
    rem-int/2addr p1, v0

    .line 2351
    add-int v1, p0, p1

    .line 2352
    .local v1, "n":I
    if-le v1, p3, :cond_c

    .line 2353
    sub-int/2addr v1, v0

    goto :goto_f

    .line 2354
    :cond_c
    if-ge v1, p2, :cond_f

    .line 2355
    add-int/2addr v1, v0

    .line 2357
    :cond_f
    :goto_f
    nop

    .line 2358
    return v1
.end method

.method private static blacklist getTransitionEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I
    .registers 5
    .param p0, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2240
    invoke-static {p0}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v0

    .line 2241
    .local v0, "eraIndex":I
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    .line 2242
    .local v1, "transitionDate":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 2243
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 2244
    return v0

    .line 2246
    :cond_21
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_45

    .line 2247
    add-int/lit8 v0, v0, 0x1

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    .line 2248
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    if-ne v2, v3, :cond_45

    .line 2249
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_45

    .line 2250
    return v0

    .line 2253
    :cond_45
    const/4 v2, -0x1

    return v2
.end method

.method private blacklist getWeekNumber(JJ)I
    .registers 10
    .param p1, "fixedDay1"    # J
    .param p3, "fixedDate"    # J

    .line 1828
    const-wide/16 v0, 0x6

    add-long/2addr v0, p1

    .line 1829
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v2

    .line 1828
    invoke-static {v0, v1, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    .line 1830
    .local v0, "fixedDay1st":J
    sub-long v2, v0, p1

    long-to-int v2, v2

    .line 1831
    .local v2, "ndays":I
    nop

    .line 1832
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-lt v2, v3, :cond_18

    .line 1833
    const-wide/16 v3, 0x7

    sub-long/2addr v0, v3

    .line 1835
    :cond_18
    sub-long v3, p3, v0

    long-to-int v3, v3

    .line 1836
    .local v3, "normalizedDayOfPeriod":I
    if-ltz v3, :cond_22

    .line 1837
    div-int/lit8 v4, v3, 0x7

    add-int/lit8 v4, v4, 0x1

    return v4

    .line 1839
    :cond_22
    const/4 v4, 0x7

    invoke-static {v3, v4}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private blacklist getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J
    .registers 8
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 1517
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfYear(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 1518
    .local v0, "t":J
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method private blacklist internalGetEra()I
    .registers 3

    .line 2366
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v0

    goto :goto_e

    :cond_c
    sget v0, Ljava/util/JapaneseImperialCalendar;->currentEra:I

    :goto_e
    return v0
.end method

.method private blacklist isTransitionYear(I)Z
    .registers 5
    .param p1, "normalizedYear"    # I

    .line 2257
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_5
    if-lez v0, :cond_1c

    .line 2258
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    .line 2259
    .local v2, "transitionYear":I
    if-ne p1, v2, :cond_16

    .line 2260
    return v1

    .line 2262
    :cond_16
    if-le p1, v2, :cond_19

    .line 2263
    goto :goto_1c

    .line 2257
    .end local v2    # "transitionYear":I
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 2266
    .end local v0    # "i":I
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist monthLength(I)I
    .registers 3
    .param p1, "month"    # I

    .line 2211
    nop

    .line 2212
    iget-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2213
    sget-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    aget v0, v0, p1

    goto :goto_12

    :cond_e
    sget-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    aget v0, v0, p1

    .line 2212
    :goto_12
    return v0
.end method

.method private blacklist monthLength(II)I
    .registers 4
    .param p1, "month"    # I
    .param p2, "gregorianYear"    # I

    .line 2200
    invoke-static {p2}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2201
    sget-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    aget v0, v0, p1

    goto :goto_f

    :cond_b
    sget-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    aget v0, v0, p1

    .line 2200
    :goto_f
    return v0
.end method

.method private blacklist pinDayOfMonth(Lsun/util/calendar/LocalGregorianCalendar$Date;)V
    .registers 11
    .param p1, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2304
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v0

    .line 2305
    .local v0, "year":I
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v1

    .line 2306
    .local v1, "dom":I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v3

    if-eq v0, v3, :cond_2c

    .line 2307
    invoke-virtual {p1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2308
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 2309
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, p1}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v2

    .line 2310
    .local v2, "monthLength":I
    if-le v1, v2, :cond_23

    .line 2311
    invoke-virtual {p1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_26

    .line 2313
    :cond_23
    invoke-virtual {p1, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2315
    :goto_26
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 2316
    .end local v2    # "monthLength":I
    goto :goto_9f

    .line 2317
    :cond_2c
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 2318
    .local v3, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-wide v5, p0, Ljava/util/JapaneseImperialCalendar;->time:J

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 2319
    .local v4, "realDate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v5

    .line 2321
    .local v5, "tod":J
    const/16 v7, 0x190

    invoke-virtual {v4, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2322
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v7

    invoke-virtual {v4, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2323
    invoke-virtual {v4, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2324
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 2325
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v2

    .line 2326
    .restart local v2    # "monthLength":I
    if-le v1, v2, :cond_68

    .line 2327
    invoke-virtual {v4, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_79

    .line 2329
    :cond_68
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v7

    if-ge v1, v7, :cond_76

    .line 2330
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v4, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_79

    .line 2332
    :cond_76
    invoke-virtual {v4, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2335
    :goto_79
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v8

    if-ne v7, v8, :cond_94

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-gez v7, :cond_94

    .line 2336
    add-int/lit8 v7, v1, 0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v4, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2339
    :cond_94
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v7

    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v8

    invoke-virtual {p1, v0, v7, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 2342
    .end local v2    # "monthLength":I
    .end local v3    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v4    # "realDate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v5    # "tod":J
    :goto_9f
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

    .line 2374
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2375
    iget-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    if-nez v0, :cond_17

    .line 2376
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2377
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 2379
    :cond_17
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api add(II)V
    .registers 21
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 408
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v2, :cond_9

    .line 409
    return-void

    .line 412
    :cond_9
    if-ltz v1, :cond_13a

    const/16 v3, 0xf

    if-ge v1, v3, :cond_13a

    .line 417
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->complete()V

    .line 419
    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v1, v7, :cond_45

    .line 420
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 421
    .local v3, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 422
    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->pinDayOfMonth(Lsun/util/calendar/LocalGregorianCalendar$Date;)V

    .line 423
    invoke-static {v3}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v8

    invoke-virtual {v0, v5, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 424
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v5

    invoke-virtual {v0, v7, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 425
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v0, v6, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 426
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 427
    .end local v3    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    goto/16 :goto_139

    :cond_45
    if-ne v1, v6, :cond_74

    .line 428
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 429
    .restart local v3    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addMonth(I)Lsun/util/calendar/CalendarDate;

    .line 430
    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->pinDayOfMonth(Lsun/util/calendar/LocalGregorianCalendar$Date;)V

    .line 431
    invoke-static {v3}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v8

    invoke-virtual {v0, v5, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 432
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v5

    invoke-virtual {v0, v7, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 433
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v0, v6, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 434
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 435
    .end local v3    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    goto/16 :goto_139

    :cond_74
    if-nez v1, :cond_8d

    .line 436
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 437
    .local v3, "era":I
    if-gez v3, :cond_7f

    .line 438
    const/4 v3, 0x0

    goto :goto_88

    .line 439
    :cond_7f
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v6, v4

    sub-int/2addr v6, v7

    if-le v3, v6, :cond_88

    .line 440
    array-length v4, v4

    add-int/lit8 v3, v4, -0x1

    .line 442
    :cond_88
    :goto_88
    invoke-virtual {v0, v5, v3}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 443
    .end local v3    # "era":I
    goto/16 :goto_139

    .line 444
    :cond_8d
    int-to-long v4, v2

    .line 445
    .local v4, "delta":J
    const-wide/16 v6, 0x0

    .line 446
    .local v6, "timeOfDay":J
    const/4 v8, 0x3

    const-wide/16 v9, 0x3e8

    const/16 v11, 0xc

    if-eq v1, v8, :cond_b2

    const/4 v8, 0x4

    if-eq v1, v8, :cond_b2

    packed-switch v1, :pswitch_data_140

    goto :goto_b6

    .line 459
    :pswitch_9e
    mul-long/2addr v4, v9

    .line 460
    goto :goto_b6

    .line 455
    :pswitch_a0
    const-wide/32 v12, 0xea60

    mul-long/2addr v4, v12

    .line 456
    goto :goto_b6

    .line 451
    :pswitch_a5
    const-wide/32 v12, 0x36ee80

    mul-long/2addr v4, v12

    .line 452
    goto :goto_b6

    .line 482
    :pswitch_aa
    div-int/lit8 v8, v2, 0x2

    int-to-long v4, v8

    .line 483
    rem-int/lit8 v8, v2, 0x2

    mul-int/2addr v8, v11

    int-to-long v6, v8

    goto :goto_b6

    .line 471
    :cond_b2
    :pswitch_b2
    const-wide/16 v12, 0x7

    mul-long/2addr v4, v12

    .line 472
    nop

    .line 489
    :goto_b6
    const/16 v8, 0xa

    if-lt v1, v8, :cond_c1

    .line 490
    iget-wide v8, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    add-long/2addr v8, v4

    invoke-virtual {v0, v8, v9}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    .line 491
    return-void

    .line 500
    :cond_c1
    iget-wide v12, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 501
    .local v12, "fd":J
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v8

    int-to-long v14, v8

    add-long/2addr v6, v14

    .line 502
    const-wide/16 v14, 0x3c

    mul-long/2addr v6, v14

    .line 503
    invoke-virtual {v0, v11}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v8

    move-wide/from16 v16, v4

    .end local v4    # "delta":J
    .local v16, "delta":J
    int-to-long v3, v8

    add-long/2addr v6, v3

    .line 504
    mul-long/2addr v6, v14

    .line 505
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v6, v3

    .line 506
    mul-long/2addr v6, v9

    .line 507
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v6, v3

    .line 508
    const-wide/32 v3, 0x5265c00

    cmp-long v8, v6, v3

    const-wide/16 v9, 0x1

    if-ltz v8, :cond_f4

    .line 509
    add-long/2addr v12, v9

    .line 510
    sub-long/2addr v6, v3

    goto :goto_fc

    .line 511
    :cond_f4
    const-wide/16 v14, 0x0

    cmp-long v8, v6, v14

    if-gez v8, :cond_fc

    .line 512
    sub-long/2addr v12, v9

    .line 513
    add-long/2addr v6, v3

    .line 516
    :cond_fc
    :goto_fc
    add-long v12, v12, v16

    .line 517
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v8

    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v10

    add-int/2addr v8, v10

    .line 518
    .local v8, "zoneOffset":I
    const-wide/32 v10, 0xaf93b

    sub-long v10, v12, v10

    mul-long/2addr v10, v3

    add-long/2addr v10, v6

    int-to-long v3, v8

    sub-long/2addr v10, v3

    invoke-virtual {v0, v10, v11}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    .line 519
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v8, v3

    .line 521
    if-eqz v8, :cond_139

    .line 522
    iget-wide v3, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    int-to-long v9, v8

    add-long/2addr v3, v9

    invoke-virtual {v0, v3, v4}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    .line 523
    iget-wide v3, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 526
    .local v3, "fd2":J
    cmp-long v5, v3, v12

    if-eqz v5, :cond_139

    .line 527
    iget-wide v9, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    int-to-long v14, v8

    sub-long/2addr v9, v14

    invoke-virtual {v0, v9, v10}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    .line 531
    .end local v3    # "fd2":J
    .end local v6    # "timeOfDay":J
    .end local v8    # "zoneOffset":I
    .end local v12    # "fd":J
    .end local v16    # "delta":J
    :cond_139
    :goto_139
    return-void

    .line 413
    :cond_13a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :pswitch_data_140
    .packed-switch 0x8
        :pswitch_b2
        :pswitch_aa
        :pswitch_a5
        :pswitch_a5
        :pswitch_a0
        :pswitch_9e
    .end packed-switch
.end method

.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 3

    .line 1522
    invoke-super {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/JapaneseImperialCalendar;

    .line 1524
    .local v0, "other":Ljava/util/JapaneseImperialCalendar;
    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    iput-object v1, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1525
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    .line 1526
    iput-object v1, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    .line 1527
    return-object v0
.end method

.method protected whitelist core-platform-api test-api computeFields()V
    .registers 7

    .line 1559
    const/4 v0, 0x0

    .line 1560
    .local v0, "mask":I
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->isPartiallyNormalized()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1562
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getSetStateFields()I

    move-result v0

    .line 1563
    not-int v1, v0

    const v2, 0x1ffff

    and-int/2addr v1, v2

    .line 1564
    .local v1, "fieldMask":I
    if-nez v1, :cond_1a

    iget-wide v2, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_24

    .line 1565
    :cond_1a
    const v2, 0x18000

    and-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->computeFields(II)I

    move-result v2

    or-int/2addr v0, v2

    .line 1567
    nop

    .line 1569
    .end local v1    # "fieldMask":I
    :cond_24
    goto :goto_2c

    .line 1571
    :cond_25
    const v0, 0x1ffff

    .line 1572
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/JapaneseImperialCalendar;->computeFields(II)I

    .line 1575
    :goto_2c
    invoke-virtual {p0, v0}, Ljava/util/JapaneseImperialCalendar;->setFieldsComputed(I)V

    .line 1576
    return-void
.end method

.method protected whitelist core-platform-api test-api computeTime()V
    .registers 20

    .line 1853
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->isLenient()Z

    move-result v1

    const/16 v2, 0x11

    if-nez v1, :cond_3d

    .line 1854
    iget-object v1, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    if-nez v1, :cond_12

    .line 1855
    new-array v1, v2, [I

    iput-object v1, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    .line 1857
    :cond_12
    const/4 v1, 0x0

    .local v1, "field":I
    :goto_13
    if-ge v1, v2, :cond_3d

    .line 1858
    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    .line 1859
    .local v3, "value":I
    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isExternallySet(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1861
    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v4

    if-lt v3, v4, :cond_2c

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v4

    if-gt v3, v4, :cond_2c

    goto :goto_36

    .line 1862
    :cond_2c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/JapaneseImperialCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1865
    :cond_36
    :goto_36
    iget-object v4, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    aput v3, v4, v1

    .line 1857
    .end local v3    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1871
    .end local v1    # "field":I
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->selectFields()I

    move-result v1

    .line 1876
    .local v1, "fieldMask":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5a

    .line 1877
    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v4

    .line 1878
    .local v4, "era":I
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    goto :goto_59

    :cond_58
    move v6, v5

    .local v6, "year":I
    :goto_59
    goto :goto_6a

    .line 1880
    .end local v4    # "era":I
    .end local v6    # "year":I
    :cond_5a
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1881
    sget v4, Ljava/util/JapaneseImperialCalendar;->currentEra:I

    .line 1882
    .restart local v4    # "era":I
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    .restart local v6    # "year":I
    goto :goto_6a

    .line 1885
    .end local v4    # "era":I
    .end local v6    # "year":I
    :cond_67
    const/4 v4, 0x3

    .line 1886
    .restart local v4    # "era":I
    const/16 v6, 0x2d

    .line 1892
    .restart local v6    # "year":I
    :goto_6a
    const-wide/16 v7, 0x0

    .line 1893
    .local v7, "timeOfDay":J
    const/16 v9, 0xb

    invoke-static {v1, v9}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v10

    const/16 v11, 0xc

    if-eqz v10, :cond_7d

    .line 1894
    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    goto :goto_94

    .line 1896
    :cond_7d
    const/16 v9, 0xa

    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 1898
    const/16 v9, 0x9

    invoke-static {v1, v9}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v10

    if-eqz v10, :cond_94

    .line 1899
    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    mul-int/2addr v9, v11

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 1902
    :cond_94
    :goto_94
    const-wide/16 v9, 0x3c

    mul-long/2addr v7, v9

    .line 1903
    invoke-virtual {v0, v11}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v7, v11

    .line 1904
    mul-long/2addr v7, v9

    .line 1905
    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 1906
    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    .line 1907
    const/16 v9, 0xe

    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 1911
    const-wide/32 v9, 0x5265c00

    div-long v11, v7, v9

    .line 1912
    .local v11, "fixedDate":J
    rem-long/2addr v7, v9

    .line 1913
    :goto_b7
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-gez v13, :cond_c2

    .line 1914
    add-long/2addr v7, v9

    .line 1915
    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    goto :goto_b7

    .line 1919
    :cond_c2
    invoke-direct {v0, v4, v6, v1}, Ljava/util/JapaneseImperialCalendar;->getFixedDate(III)J

    move-result-wide v13

    add-long/2addr v11, v13

    .line 1922
    const-wide/32 v13, 0xaf93b

    sub-long v13, v11, v13

    mul-long/2addr v13, v9

    add-long/2addr v13, v7

    .line 1937
    .local v13, "millis":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v9

    .line 1938
    .local v9, "zone":Ljava/util/TimeZone;
    iget-object v10, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    if-nez v10, :cond_db

    .line 1939
    const/4 v10, 0x2

    new-array v10, v10, [I

    iput-object v10, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    .line 1941
    :cond_db
    const v10, 0x18000

    and-int v15, v1, v10

    .line 1942
    .local v15, "tzMask":I
    if-eq v15, v10, :cond_f1

    .line 1947
    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    move/from16 v16, v6

    .end local v6    # "year":I
    .local v16, "year":I
    int-to-long v5, v10

    sub-long v5, v13, v5

    iget-object v10, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    invoke-virtual {v9, v5, v6, v10}, Ljava/util/TimeZone;->getOffsets(J[I)I

    goto :goto_f3

    .line 1942
    .end local v16    # "year":I
    .restart local v6    # "year":I
    :cond_f1
    move/from16 v16, v6

    .line 1950
    .end local v6    # "year":I
    .restart local v16    # "year":I
    :goto_f3
    if-eqz v15, :cond_119

    .line 1951
    const/16 v5, 0xf

    invoke-static {v15, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v6

    if-eqz v6, :cond_105

    .line 1952
    iget-object v6, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    aput v5, v6, v3

    .line 1954
    :cond_105
    const/16 v5, 0x10

    invoke-static {v15, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v6

    if-eqz v6, :cond_117

    .line 1955
    iget-object v6, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    const/4 v10, 0x1

    aput v5, v6, v10

    goto :goto_11a

    .line 1954
    :cond_117
    const/4 v10, 0x1

    goto :goto_11a

    .line 1950
    :cond_119
    const/4 v10, 0x1

    .line 1960
    :goto_11a
    iget-object v5, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    aget v6, v5, v3

    aget v5, v5, v10

    add-int/2addr v6, v5

    int-to-long v5, v6

    sub-long/2addr v13, v5

    .line 1963
    iput-wide v13, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    .line 1965
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getSetStateFields()I

    move-result v5

    or-int/2addr v5, v1

    invoke-direct {v0, v5, v15}, Ljava/util/JapaneseImperialCalendar;->computeFields(II)I

    move-result v5

    .line 1967
    .local v5, "mask":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->isLenient()Z

    move-result v6

    if-nez v6, :cond_18f

    .line 1968
    const/4 v6, 0x0

    .local v6, "field":I
    :goto_135
    if-ge v6, v2, :cond_18a

    .line 1969
    invoke-virtual {v0, v6}, Ljava/util/JapaneseImperialCalendar;->isExternallySet(I)Z

    move-result v10

    if-nez v10, :cond_13e

    .line 1970
    goto :goto_148

    .line 1972
    :cond_13e
    iget-object v10, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    aget v10, v10, v6

    invoke-virtual {v0, v6}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v2

    if-ne v10, v2, :cond_14d

    .line 1968
    :goto_148
    add-int/lit8 v6, v6, 0x1

    const/16 v2, 0x11

    goto :goto_135

    .line 1973
    :cond_14d
    invoke-virtual {v0, v6}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v2

    .line 1975
    .local v2, "wrongValue":I
    iget-object v10, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->fields:[I

    move/from16 v17, v1

    .end local v1    # "fieldMask":I
    .local v17, "fieldMask":I
    iget-object v1, v0, Ljava/util/JapaneseImperialCalendar;->fields:[I

    array-length v1, v1

    move/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "era":I
    .local v18, "era":I
    invoke-static {v10, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1976
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/util/JapaneseImperialCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1968
    .end local v2    # "wrongValue":I
    .end local v17    # "fieldMask":I
    .end local v18    # "era":I
    .restart local v1    # "fieldMask":I
    .restart local v4    # "era":I
    :cond_18a
    move/from16 v17, v1

    move/from16 v18, v4

    .end local v1    # "fieldMask":I
    .end local v4    # "era":I
    .restart local v17    # "fieldMask":I
    .restart local v18    # "era":I
    goto :goto_193

    .line 1967
    .end local v6    # "field":I
    .end local v17    # "fieldMask":I
    .end local v18    # "era":I
    .restart local v1    # "fieldMask":I
    .restart local v4    # "era":I
    :cond_18f
    move/from16 v17, v1

    move/from16 v18, v4

    .line 1981
    .end local v1    # "fieldMask":I
    .end local v4    # "era":I
    .restart local v17    # "fieldMask":I
    .restart local v18    # "era":I
    :goto_193
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->setFieldsNormalized(I)V

    .line 1982
    return-void
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 365
    instance-of v0, p1, Ljava/util/JapaneseImperialCalendar;

    if-eqz v0, :cond_c

    .line 366
    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 365
    :goto_d
    return v0
.end method

.method public whitelist core-platform-api test-api getActualMaximum(I)I
    .registers 21
    .param p1, "field"    # I

    .line 1279
    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, 0x1fe81

    .line 1282
    .local v2, "fieldsForFixedMax":I
    const/4 v3, 0x1

    shl-int v4, v3, v1

    const v5, 0x1fe81

    and-int/2addr v4, v5

    if-eqz v4, :cond_15

    .line 1283
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v3

    return v3

    .line 1286
    :cond_15
    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getNormalizedCalendar()Ljava/util/JapaneseImperialCalendar;

    move-result-object v4

    .line 1287
    .local v4, "jc":Ljava/util/JapaneseImperialCalendar;
    iget-object v5, v4, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1288
    .local v5, "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v6

    .line 1290
    .local v6, "normalizedYear":I
    const/4 v7, -0x1

    .line 1291
    .local v7, "value":I
    const-wide/high16 v8, -0x8000000000000000L

    const/16 v10, 0x190

    const-wide/16 v11, 0x1

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, 0x7

    packed-switch v1, :pswitch_data_366

    .line 1505
    :pswitch_2f
    move/from16 v16, v2

    .end local v2    # "fieldsForFixedMax":I
    .local v16, "fieldsForFixedMax":I
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 1461
    .end local v16    # "fieldsForFixedMax":I
    .restart local v2    # "fieldsForFixedMax":I
    :pswitch_37
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfWeek()I

    move-result v8

    .line 1462
    .local v8, "dow":I
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/util/calendar/BaseCalendar$Date;

    .line 1463
    .local v9, "d":Lsun/util/calendar/BaseCalendar$Date;
    sget-object v10, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v10, v9}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v10

    .line 1464
    .local v10, "ndays":I
    invoke-virtual {v9, v3}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1465
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v9}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1466
    invoke-virtual {v9}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v3

    .line 1467
    .local v3, "dow1":I
    sub-int v11, v8, v3

    .line 1468
    .local v11, "x":I
    if-gez v11, :cond_59

    .line 1469
    add-int/lit8 v11, v11, 0x7

    .line 1471
    :cond_59
    sub-int/2addr v10, v11

    .line 1472
    add-int/lit8 v12, v10, 0x6

    div-int/2addr v12, v15

    .line 1474
    .end local v3    # "dow1":I
    .end local v7    # "value":I
    .end local v8    # "dow":I
    .end local v9    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v10    # "ndays":I
    .end local v11    # "x":I
    .local v12, "value":I
    move/from16 v16, v2

    goto/16 :goto_364

    .line 1326
    .end local v12    # "value":I
    .restart local v7    # "value":I
    :pswitch_61
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v10

    invoke-direct {v0, v10}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 1329
    invoke-static {v5}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v8

    .line 1330
    .local v8, "eraIndex":I
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v9

    if-eq v9, v3, :cond_77

    .line 1331
    add-int/lit8 v8, v8, 0x1

    .line 1334
    :cond_77
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v9, v9, v8

    .line 1335
    .local v9, "transition":J
    iget-wide v11, v4, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 1336
    .local v11, "fd":J
    sget-object v13, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v14, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v13, v14}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v13

    .line 1337
    .local v13, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v14

    invoke-virtual {v13, v14, v3, v3}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1338
    cmp-long v14, v11, v9

    if-gez v14, :cond_9b

    .line 1339
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v3, v13}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v14

    sub-long v14, v9, v14

    long-to-int v3, v14

    move v12, v3

    .end local v7    # "value":I
    .local v3, "value":I
    goto :goto_a7

    .line 1341
    .end local v3    # "value":I
    .restart local v7    # "value":I
    :cond_9b
    invoke-virtual {v13, v3}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 1342
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v3, v13}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v14

    sub-long/2addr v14, v9

    long-to-int v3, v14

    move v12, v3

    .line 1344
    .end local v7    # "value":I
    .end local v8    # "eraIndex":I
    .end local v9    # "transition":J
    .end local v11    # "fd":J
    .end local v13    # "d":Lsun/util/calendar/CalendarDate;
    .restart local v12    # "value":I
    :goto_a7
    move/from16 v16, v2

    goto/16 :goto_364

    .line 1345
    .end local v12    # "value":I
    .restart local v7    # "value":I
    :cond_ab
    sget-object v10, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    .line 1346
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v11

    .line 1345
    invoke-virtual {v10, v13, v14, v11}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v10

    .line 1347
    .local v10, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v11

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v12

    if-ne v11, v12, :cond_db

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v11

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v12

    if-ne v11, v12, :cond_db

    .line 1348
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v8, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    .line 1349
    .local v8, "fd":J
    invoke-direct {v0, v10, v8, v9}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v11

    .line 1350
    .local v11, "jan1":J
    sub-long v13, v8, v11

    long-to-int v13, v13

    add-int/2addr v13, v3

    .line 1351
    .end local v7    # "value":I
    .end local v8    # "fd":J
    .end local v11    # "jan1":J
    .local v13, "value":I
    move/from16 v16, v2

    move v12, v13

    goto :goto_11a

    .end local v13    # "value":I
    .restart local v7    # "value":I
    :cond_db
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v11

    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v12

    if-ne v11, v12, :cond_111

    .line 1352
    sget-object v11, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v11, v8, v9, v12}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v8

    .line 1353
    .local v8, "d1":Lsun/util/calendar/CalendarDate;
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v9, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v11

    .line 1354
    .local v11, "fd1":J
    invoke-virtual {v8, v3}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 1355
    invoke-virtual {v8, v3}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v9

    invoke-virtual {v9, v3}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1356
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v8}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1357
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v13

    .line 1358
    .local v13, "fd2":J
    move/from16 v16, v2

    .end local v2    # "fieldsForFixedMax":I
    .restart local v16    # "fieldsForFixedMax":I
    sub-long v2, v13, v11

    long-to-int v2, v2

    .line 1359
    .end local v7    # "value":I
    .end local v8    # "d1":Lsun/util/calendar/CalendarDate;
    .end local v11    # "fd1":J
    .end local v13    # "fd2":J
    .local v2, "value":I
    move v12, v2

    goto :goto_11a

    .line 1360
    .end local v16    # "fieldsForFixedMax":I
    .local v2, "fieldsForFixedMax":I
    .restart local v7    # "value":I
    :cond_111
    move/from16 v16, v2

    .end local v2    # "fieldsForFixedMax":I
    .restart local v16    # "fieldsForFixedMax":I
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getYearLength(Lsun/util/calendar/CalendarDate;)I

    move-result v2

    move v12, v2

    .line 1364
    .end local v7    # "value":I
    .end local v10    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .restart local v12    # "value":I
    :goto_11a
    goto/16 :goto_364

    .line 1321
    .end local v12    # "value":I
    .end local v16    # "fieldsForFixedMax":I
    .restart local v2    # "fieldsForFixedMax":I
    .restart local v7    # "value":I
    :pswitch_11c
    move/from16 v16, v2

    .end local v2    # "fieldsForFixedMax":I
    .restart local v16    # "fieldsForFixedMax":I
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v12

    .line 1322
    .end local v7    # "value":I
    .restart local v12    # "value":I
    goto/16 :goto_364

    .line 1427
    .end local v12    # "value":I
    .end local v16    # "fieldsForFixedMax":I
    .restart local v2    # "fieldsForFixedMax":I
    .restart local v7    # "value":I
    :pswitch_126
    move/from16 v16, v2

    .end local v2    # "fieldsForFixedMax":I
    .restart local v16    # "fieldsForFixedMax":I
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    .line 1428
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v8

    .line 1427
    invoke-virtual {v2, v13, v14, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v2

    .line 1429
    .local v2, "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v8

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v9

    if-ne v8, v9, :cond_15b

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v8

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v9

    if-eq v8, v9, :cond_147

    goto :goto_15b

    .line 1451
    :cond_147
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    .line 1452
    .local v8, "fd":J
    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v3

    int-to-long v13, v3

    sub-long v13, v8, v13

    add-long/2addr v13, v11

    .line 1453
    .local v13, "month1":J
    invoke-direct {v0, v13, v14, v8, v9}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v3

    move v12, v3

    .end local v7    # "value":I
    .restart local v3    # "value":I
    goto :goto_19a

    .line 1430
    .end local v3    # "value":I
    .end local v8    # "fd":J
    .end local v13    # "month1":J
    .restart local v7    # "value":I
    :cond_15b
    :goto_15b
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v9, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v8, v9}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v8

    .line 1431
    .local v8, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v9

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v10

    invoke-virtual {v8, v9, v10, v3}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1432
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v3, v8}, Lsun/util/calendar/Gregorian;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v3

    .line 1433
    .local v3, "dayOfWeek":I
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v9, v8}, Lsun/util/calendar/Gregorian;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v9

    .line 1434
    .local v9, "monthLength":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v10

    sub-int/2addr v3, v10

    .line 1435
    if-gez v3, :cond_183

    .line 1436
    add-int/lit8 v3, v3, 0x7

    .line 1438
    :cond_183
    rsub-int/lit8 v10, v3, 0x7

    .line 1439
    .local v10, "nDaysFirstWeek":I
    const/4 v7, 0x3

    .line 1440
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v11

    if-lt v10, v11, :cond_18e

    .line 1441
    add-int/lit8 v7, v7, 0x1

    .line 1443
    :cond_18e
    add-int/lit8 v11, v10, 0x15

    sub-int/2addr v9, v11

    .line 1444
    if-lez v9, :cond_199

    .line 1445
    add-int/lit8 v7, v7, 0x1

    .line 1446
    if-le v9, v15, :cond_199

    .line 1447
    add-int/lit8 v7, v7, 0x1

    .line 1450
    .end local v3    # "dayOfWeek":I
    .end local v8    # "d":Lsun/util/calendar/CalendarDate;
    .end local v9    # "monthLength":I
    .end local v10    # "nDaysFirstWeek":I
    :cond_199
    move v12, v7

    .line 1456
    .end local v2    # "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v7    # "value":I
    .restart local v12    # "value":I
    :goto_19a
    goto/16 :goto_364

    .line 1368
    .end local v12    # "value":I
    .end local v16    # "fieldsForFixedMax":I
    .local v2, "fieldsForFixedMax":I
    .restart local v7    # "value":I
    :pswitch_19c
    move/from16 v16, v2

    .end local v2    # "fieldsForFixedMax":I
    .restart local v16    # "fieldsForFixedMax":I
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v2

    const/4 v11, 0x6

    if-nez v2, :cond_276

    .line 1369
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    .line 1370
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v12

    .line 1369
    invoke-virtual {v2, v13, v14, v12}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v2

    .line 1371
    .local v2, "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v12

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v13

    if-ne v12, v13, :cond_1d7

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v12

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v13

    if-ne v12, v13, :cond_1d7

    .line 1372
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    .line 1373
    .local v8, "fd":J
    invoke-direct {v0, v2, v8, v9}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v10

    .line 1374
    .local v10, "jan1":J
    invoke-direct {v0, v10, v11, v8, v9}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v12

    .line 1375
    .end local v7    # "value":I
    .end local v8    # "fd":J
    .end local v10    # "jan1":J
    .restart local v12    # "value":I
    goto/16 :goto_364

    .end local v12    # "value":I
    .restart local v7    # "value":I
    :cond_1d7
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v12

    if-nez v12, :cond_238

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v12

    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v13

    if-ne v12, v13, :cond_238

    .line 1376
    sget-object v11, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v11, v8, v9, v12}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v8

    .line 1378
    .local v8, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v8, v10}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 1379
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v9, v8}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1380
    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v9

    invoke-virtual {v2, v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1381
    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v2, v9, v3, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1382
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1383
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v9

    .line 1384
    .local v9, "jan1":J
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v11

    .line 1385
    .local v11, "nextJan1":J
    const-wide/16 v13, 0x6

    add-long/2addr v13, v11

    .line 1386
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v3

    .line 1385
    invoke-static {v13, v14, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v13

    .line 1387
    .local v13, "nextJan1st":J
    move-object v15, v2

    .end local v2    # "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .local v15, "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sub-long v2, v13, v11

    long-to-int v2, v2

    .line 1388
    .local v2, "ndays":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-lt v2, v3, :cond_232

    .line 1389
    const-wide/16 v17, 0x7

    sub-long v13, v13, v17

    .line 1391
    :cond_232
    invoke-direct {v0, v9, v10, v13, v14}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v12

    .line 1392
    .end local v2    # "ndays":I
    .end local v7    # "value":I
    .end local v8    # "d":Lsun/util/calendar/CalendarDate;
    .end local v9    # "jan1":J
    .end local v11    # "nextJan1":J
    .end local v13    # "nextJan1st":J
    .restart local v12    # "value":I
    goto/16 :goto_364

    .line 1375
    .end local v12    # "value":I
    .end local v15    # "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .local v2, "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .restart local v7    # "value":I
    :cond_238
    move-object v15, v2

    .line 1394
    .end local v2    # "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .restart local v15    # "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v8, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v2, v8}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v2

    .line 1395
    .local v2, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v8

    invoke-virtual {v2, v8, v3, v3}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1396
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v8, v2}, Lsun/util/calendar/Gregorian;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v8

    .line 1398
    .local v8, "dayOfWeek":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v9

    sub-int/2addr v8, v9

    .line 1399
    if-gez v8, :cond_257

    .line 1400
    add-int/lit8 v8, v8, 0x7

    .line 1402
    :cond_257
    const/16 v7, 0x34

    .line 1403
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v9

    add-int/2addr v9, v8

    sub-int/2addr v9, v3

    .line 1404
    .local v9, "magic":I
    if-eq v9, v11, :cond_271

    .line 1405
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v3

    if-eqz v3, :cond_26f

    const/4 v3, 0x5

    if-eq v9, v3, :cond_26e

    const/16 v3, 0xc

    if-ne v9, v3, :cond_26f

    :cond_26e
    goto :goto_271

    .line 1409
    .end local v2    # "d":Lsun/util/calendar/CalendarDate;
    .end local v8    # "dayOfWeek":I
    .end local v9    # "magic":I
    :cond_26f
    move v12, v7

    goto :goto_274

    .line 1406
    .restart local v2    # "d":Lsun/util/calendar/CalendarDate;
    .restart local v8    # "dayOfWeek":I
    .restart local v9    # "magic":I
    :cond_271
    :goto_271
    add-int/lit8 v7, v7, 0x1

    move v12, v7

    .line 1409
    .end local v2    # "d":Lsun/util/calendar/CalendarDate;
    .end local v7    # "value":I
    .end local v8    # "dayOfWeek":I
    .end local v9    # "magic":I
    .restart local v12    # "value":I
    :goto_274
    goto/16 :goto_364

    .line 1412
    .end local v12    # "value":I
    .end local v15    # "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .restart local v7    # "value":I
    :cond_276
    if-ne v4, v0, :cond_27f

    .line 1413
    invoke-virtual {v4}, Ljava/util/JapaneseImperialCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/JapaneseImperialCalendar;

    .line 1415
    :cond_27f
    invoke-virtual {v0, v11}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v2

    .line 1416
    .local v2, "max":I
    invoke-virtual {v4, v11, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 1417
    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v7

    .line 1418
    if-ne v7, v3, :cond_299

    if-le v2, v15, :cond_299

    .line 1419
    const/4 v3, -0x1

    invoke-virtual {v4, v8, v3}, Ljava/util/JapaneseImperialCalendar;->add(II)V

    .line 1420
    invoke-virtual {v4, v8}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v3

    move v12, v3

    .end local v7    # "value":I
    .local v3, "value":I
    goto :goto_29a

    .line 1423
    .end local v2    # "max":I
    .end local v3    # "value":I
    .restart local v7    # "value":I
    :cond_299
    move v12, v7

    .end local v7    # "value":I
    .restart local v12    # "value":I
    :goto_29a
    goto/16 :goto_364

    .line 1294
    .end local v12    # "value":I
    .end local v16    # "fieldsForFixedMax":I
    .local v2, "fieldsForFixedMax":I
    .restart local v7    # "value":I
    :pswitch_29c
    move/from16 v16, v2

    .end local v2    # "fieldsForFixedMax":I
    .restart local v16    # "fieldsForFixedMax":I
    const/16 v2, 0xb

    .line 1295
    .end local v7    # "value":I
    .local v2, "value":I
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v7

    if-eqz v7, :cond_2d8

    .line 1297
    invoke-static {v5}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v7

    .line 1298
    .local v7, "eraIndex":I
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v8

    if-eq v8, v3, :cond_2b6

    .line 1299
    add-int/lit8 v7, v7, 0x1

    .line 1302
    :cond_2b6
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v8, v8, v7

    .line 1303
    .local v8, "transition":J
    iget-wide v13, v4, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 1304
    .local v13, "fd":J
    cmp-long v10, v13, v8

    if-gez v10, :cond_2d5

    .line 1305
    nop

    .line 1306
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1307
    .local v10, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-object v15, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    sub-long v11, v8, v11

    invoke-virtual {v15, v10, v11, v12}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 1308
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v11

    sub-int/2addr v11, v3

    move v12, v11

    .end local v2    # "value":I
    .local v11, "value":I
    goto :goto_2d6

    .line 1304
    .end local v10    # "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v11    # "value":I
    .restart local v2    # "value":I
    :cond_2d5
    move v12, v2

    .line 1310
    .end local v2    # "value":I
    .end local v7    # "eraIndex":I
    .end local v8    # "transition":J
    .end local v13    # "fd":J
    .restart local v12    # "value":I
    :goto_2d6
    goto/16 :goto_364

    .line 1311
    .end local v12    # "value":I
    .restart local v2    # "value":I
    :cond_2d8
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    .line 1312
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v8

    .line 1311
    invoke-virtual {v7, v13, v14, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    .line 1313
    .local v7, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v8

    invoke-virtual {v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v9

    if-ne v8, v9, :cond_2fd

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v8

    invoke-virtual {v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v9

    if-ne v8, v9, :cond_2fd

    .line 1314
    invoke-virtual {v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v8

    sub-int/2addr v8, v3

    move v12, v8

    .end local v2    # "value":I
    .local v8, "value":I
    goto :goto_2fe

    .line 1318
    .end local v7    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v8    # "value":I
    .restart local v2    # "value":I
    :cond_2fd
    move v12, v2

    .end local v2    # "value":I
    .restart local v12    # "value":I
    :goto_2fe
    goto :goto_364

    .line 1478
    .end local v12    # "value":I
    .end local v16    # "fieldsForFixedMax":I
    .local v2, "fieldsForFixedMax":I
    .local v7, "value":I
    :pswitch_2ff
    move/from16 v16, v2

    .end local v2    # "fieldsForFixedMax":I
    .restart local v16    # "fieldsForFixedMax":I
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v4}, Ljava/util/JapaneseImperialCalendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v15

    invoke-virtual {v2, v8, v9, v15}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v2

    .line 1480
    .local v2, "jd":Lsun/util/calendar/CalendarDate;
    invoke-static {v5}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v8

    .line 1481
    .local v8, "eraIndex":I
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v15, v9

    sub-int/2addr v15, v3

    if-ne v8, v15, :cond_32f

    .line 1482
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v3, v13, v14, v9}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 1483
    .local v3, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v7

    .line 1486
    if-le v7, v10, :cond_34d

    .line 1487
    add-int/lit16 v9, v7, -0x190

    invoke-virtual {v2, v9}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    goto :goto_34d

    .line 1490
    .end local v3    # "d":Lsun/util/calendar/CalendarDate;
    :cond_32f
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    add-int/lit8 v10, v8, 0x1

    aget-object v9, v9, v10

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v9

    sub-long/2addr v9, v11

    .line 1491
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v11

    .line 1490
    invoke-virtual {v3, v9, v10, v11}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 1492
    .restart local v3    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v7

    .line 1495
    invoke-virtual {v2, v7}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 1497
    :cond_34d
    :goto_34d
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v9, v2}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1498
    invoke-direct {v0, v2}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v9

    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_362

    .line 1499
    add-int/lit8 v7, v7, -0x1

    move v12, v7

    goto :goto_363

    .line 1498
    :cond_362
    move v12, v7

    .line 1502
    .end local v2    # "jd":Lsun/util/calendar/CalendarDate;
    .end local v3    # "d":Lsun/util/calendar/CalendarDate;
    .end local v7    # "value":I
    .end local v8    # "eraIndex":I
    .restart local v12    # "value":I
    :goto_363
    nop

    .line 1507
    :goto_364
    return v12

    nop

    :pswitch_data_366
    .packed-switch 0x1
        :pswitch_2ff
        :pswitch_29c
        :pswitch_19c
        :pswitch_126
        :pswitch_11c
        :pswitch_61
        :pswitch_2f
        :pswitch_37
    .end packed-switch
.end method

.method public whitelist core-platform-api test-api getActualMinimum(I)I
    .registers 20
    .param p1, "field"    # I

    .line 1170
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0xe

    invoke-static {v2, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1171
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v2

    return v2

    .line 1174
    :cond_11
    const/4 v2, 0x0

    .line 1175
    .local v2, "value":I
    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getNormalizedCalendar()Ljava/util/JapaneseImperialCalendar;

    move-result-object v3

    .line 1178
    .local v3, "jc":Ljava/util/JapaneseImperialCalendar;
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3}, Ljava/util/JapaneseImperialCalendar;->getTimeInMillis()J

    move-result-wide v5

    .line 1179
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v7

    .line 1178
    invoke-virtual {v4, v5, v6, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 1180
    .local v4, "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-static {v4}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v5

    .line 1181
    .local v5, "eraIndex":I
    const/16 v6, 0x190

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v9, 0x1

    if-eq v1, v9, :cond_bf

    const/4 v10, 0x2

    if-eq v1, v10, :cond_8c

    const/4 v9, 0x3

    if-eq v1, v9, :cond_37

    goto/16 :goto_121

    .line 1232
    :cond_37
    const/4 v2, 0x1

    .line 1233
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v7, v8, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    .line 1235
    .local v7, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v7, v6}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 1236
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v6, v7}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1237
    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v6

    invoke-virtual {v4, v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1238
    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v6

    invoke-virtual {v4, v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1239
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v6, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1241
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v6, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    .line 1242
    .local v8, "jan1":J
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v6, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    .line 1243
    .local v10, "fd":J
    invoke-direct {v0, v8, v9, v10, v11}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v6

    .line 1244
    .local v6, "woy":I
    add-int/lit8 v12, v6, -0x1

    mul-int/lit8 v12, v12, 0x7

    int-to-long v12, v12

    sub-long v12, v10, v12

    .line 1245
    .local v12, "day1":J
    cmp-long v14, v12, v8

    if-ltz v14, :cond_88

    cmp-long v14, v12, v8

    if-nez v14, :cond_121

    .line 1247
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v14

    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gez v14, :cond_121

    .line 1248
    :cond_88
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_121

    .line 1219
    .end local v6    # "woy":I
    .end local v7    # "d":Lsun/util/calendar/CalendarDate;
    .end local v8    # "jan1":J
    .end local v10    # "fd":J
    .end local v12    # "day1":J
    :cond_8c
    if-le v5, v9, :cond_121

    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v6

    if-ne v6, v9, :cond_121

    .line 1220
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v6, v6, v5

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v6

    .line 1221
    .local v6, "since":J
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v8, v6, v7, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v8

    .line 1222
    .local v8, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v10

    sub-int/2addr v10, v9

    .line 1223
    .end local v2    # "value":I
    .local v10, "value":I
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    if-ge v2, v9, :cond_bd

    .line 1224
    add-int/lit8 v10, v10, 0x1

    move v2, v10

    goto :goto_be

    .line 1223
    :cond_bd
    move v2, v10

    .line 1226
    .end local v6    # "since":J
    .end local v8    # "d":Lsun/util/calendar/CalendarDate;
    .end local v10    # "value":I
    .restart local v2    # "value":I
    :goto_be
    goto :goto_121

    .line 1184
    :cond_bf
    if-lez v5, :cond_f4

    .line 1185
    const/4 v2, 0x1

    .line 1186
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v6, v6, v5

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v6

    .line 1187
    .restart local v6    # "since":J
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v8, v6, v7, v9}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v8

    .line 1191
    .restart local v8    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v9

    invoke-virtual {v4, v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1192
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v9, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1193
    nop

    .line 1194
    invoke-direct {v0, v4}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v9

    invoke-direct {v0, v8}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_f3

    .line 1195
    add-int/lit8 v2, v2, 0x1

    .line 1197
    .end local v6    # "since":J
    .end local v8    # "d":Lsun/util/calendar/CalendarDate;
    :cond_f3
    goto :goto_121

    .line 1198
    :cond_f4
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v2

    .line 1199
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v7, v8, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    .line 1203
    .restart local v7    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v8

    .line 1204
    .local v8, "y":I
    if-le v8, v6, :cond_10a

    .line 1205
    add-int/lit16 v8, v8, -0x190

    .line 1207
    :cond_10a
    invoke-virtual {v4, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1208
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v6, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1209
    invoke-direct {v0, v4}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v9

    invoke-direct {v0, v7}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-gez v6, :cond_120

    .line 1210
    add-int/lit8 v2, v2, 0x1

    .line 1214
    .end local v7    # "d":Lsun/util/calendar/CalendarDate;
    .end local v8    # "y":I
    :cond_120
    nop

    .line 1253
    :cond_121
    :goto_121
    return v2
.end method

.method public whitelist core-platform-api test-api getCalendarType()Ljava/lang/String;
    .registers 2

    .line 348
    const-string v0, "japanese"

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .registers 11
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 987
    const/4 v3, 0x1

    const/4 v4, 0x4

    const/16 v6, 0x287

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Ljava/util/JapaneseImperialCalendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 989
    return-object v1

    .line 992
    :cond_10
    invoke-virtual {p0, p1}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v0

    .line 995
    .local v0, "fieldValue":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_28

    .line 996
    invoke-virtual {p0, p2}, Ljava/util/JapaneseImperialCalendar;->getBaseStyle(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    if-ne v0, v2, :cond_27

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v3

    if-nez v3, :cond_28

    .line 997
    :cond_27
    return-object v1

    .line 1000
    :cond_28
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getCalendarType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1004
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_47

    if-nez p1, :cond_47

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v4, v3

    if-ge v0, v4, :cond_47

    .line 1005
    aget-object v3, v3, v0

    .line 1006
    .local v3, "era":Lsun/util/calendar/Era;
    if-ne p2, v2, :cond_42

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    :cond_42
    invoke-virtual {v3}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_46
    move-object v1, v2

    .line 1008
    .end local v3    # "era":Lsun/util/calendar/Era;
    :cond_47
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

    .line 1013
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v6, 0x287

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Ljava/util/JapaneseImperialCalendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1015
    const/4 v0, 0x0

    return-object v0

    .line 1018
    :cond_10
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getCalendarType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 1020
    .local v0, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_80

    .line 1021
    if-nez p1, :cond_80

    .line 1022
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 1023
    .local v1, "size":I
    if-nez p2, :cond_49

    .line 1024
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1026
    .local v2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1027
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1028
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_2f

    .line 1029
    :cond_45
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 1031
    .end local v2    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_49
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v2, v2

    if-ge v1, v2, :cond_80

    .line 1032
    invoke-virtual {p0, p2}, Ljava/util/JapaneseImperialCalendar;->getBaseStyle(I)I

    move-result v2

    .line 1033
    .local v2, "baseStyle":I
    move v3, v1

    .local v3, "i":I
    :goto_53
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v5, v4

    if-ge v3, v5, :cond_80

    .line 1034
    aget-object v4, v4, v3

    .line 1035
    .local v4, "era":Lsun/util/calendar/Era;
    if-eqz v2, :cond_62

    const/4 v5, 0x1

    if-eq v2, v5, :cond_62

    const/4 v5, 0x4

    if-ne v2, v5, :cond_6d

    .line 1037
    :cond_62
    invoke-virtual {v4}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    :cond_6d
    if-eqz v2, :cond_72

    const/4 v5, 0x2

    if-ne v2, v5, :cond_7d

    .line 1040
    :cond_72
    invoke-virtual {v4}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    .end local v4    # "era":Lsun/util/calendar/Era;
    :cond_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 1046
    .end local v1    # "size":I
    .end local v2    # "baseStyle":I
    .end local v3    # "i":I
    :cond_80
    return-object v0
.end method

.method public whitelist core-platform-api test-api getGreatestMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .line 1121
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_8

    :cond_4
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    :goto_8
    return v0
.end method

.method public whitelist core-platform-api test-api getLeastMaximum(I)I
    .registers 4
    .param p1, "field"    # I

    .line 1143
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 1149
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    aget v0, v0, p1

    return v0

    .line 1146
    :cond_8
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    aget v1, v1, v0

    invoke-virtual {p0, v0}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getMaximum(I)I
    .registers 7
    .param p1, "field"    # I

    .line 1090
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 1099
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->MAX_VALUES:[I

    aget v0, v0, p1

    return v0

    .line 1094
    :cond_8
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    const-wide v2, 0x7fffffffffffffffL

    .line 1095
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v4

    .line 1094
    invoke-virtual {v1, v2, v3, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    .line 1096
    .local v1, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    aget v0, v2, v0

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .line 1068
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist core-platform-api test-api getTimeZone()Ljava/util/TimeZone;
    .registers 3

    .line 1531
    invoke-super {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1533
    .local v0, "zone":Ljava/util/TimeZone;
    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1534
    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 374
    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api roll(II)V
    .registers 27
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 560
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v2, :cond_9

    .line 561
    return-void

    .line 564
    :cond_9
    if-ltz v1, :cond_5c8

    const/16 v3, 0xf

    if-ge v1, v3, :cond_5c8

    .line 569
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->complete()V

    .line 571
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v4

    .line 572
    .local v4, "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v5

    .line 574
    .local v5, "max":I
    const/4 v8, 0x0

    const-wide/16 v9, 0x7

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x7

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_5ce

    :pswitch_24
    move v7, v4

    move v8, v5

    .end local v4    # "min":I
    .end local v5    # "max":I
    .local v7, "min":I
    .local v8, "max":I
    goto/16 :goto_5ba

    .line 589
    .end local v7    # "min":I
    .end local v8    # "max":I
    .restart local v4    # "min":I
    .restart local v5    # "max":I
    :pswitch_28
    add-int/lit8 v7, v5, 0x1

    .line 590
    .local v7, "unit":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v8

    .line 591
    .local v8, "h":I
    add-int v9, v8, v2

    rem-int/2addr v9, v7

    .line 592
    .local v9, "nh":I
    if-gez v9, :cond_34

    .line 593
    add-int/2addr v9, v7

    .line 595
    :cond_34
    move/from16 v19, v4

    .end local v4    # "min":I
    .local v19, "min":I
    iget-wide v3, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    const v10, 0x36ee80

    sub-int v13, v9, v8

    mul-int/2addr v13, v10

    int-to-long v11, v13

    add-long/2addr v3, v11

    iput-wide v3, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    .line 601
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-wide v10, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v10, v11, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 602
    .local v3, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v0, v14}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v4

    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v10

    const/16 v11, 0xa

    if-eq v4, v10, :cond_84

    .line 603
    iget-object v4, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/calendar/CalendarDate;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    .line 604
    invoke-virtual {v0, v6}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v4

    .line 605
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v10

    add-int/2addr v10, v6

    .line 606
    invoke-virtual {v0, v14}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    .line 604
    invoke-virtual {v3, v4, v10, v6}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 607
    if-ne v1, v11, :cond_7c

    .line 608
    nop

    .line 609
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lsun/util/calendar/CalendarDate;->addHours(I)Lsun/util/calendar/CalendarDate;

    .line 611
    :cond_7c
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v4, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v12

    iput-wide v12, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    .line 613
    :cond_84
    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v4

    .line 614
    .local v4, "hourOfDay":I
    rem-int v6, v4, v7

    invoke-virtual {v0, v1, v6}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 615
    if-ne v1, v11, :cond_95

    .line 616
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v4}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    goto :goto_a1

    .line 618
    :cond_95
    const/16 v6, 0x9

    div-int/lit8 v10, v4, 0xc

    invoke-virtual {v0, v6, v10}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 619
    rem-int/lit8 v6, v4, 0xc

    invoke-virtual {v0, v11, v6}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 623
    :goto_a1
    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v6

    .line 624
    .local v6, "zoneOffset":I
    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getDaylightSaving()I

    move-result v10

    .line 625
    .local v10, "saving":I
    sub-int v11, v6, v10

    const/16 v12, 0xf

    invoke-virtual {v0, v12, v11}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 626
    const/16 v11, 0x10

    invoke-virtual {v0, v11, v10}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 627
    return-void

    .line 950
    .end local v3    # "d":Lsun/util/calendar/CalendarDate;
    .end local v6    # "zoneOffset":I
    .end local v7    # "unit":I
    .end local v8    # "h":I
    .end local v9    # "nh":I
    .end local v10    # "saving":I
    .end local v19    # "min":I
    .local v4, "min":I
    :pswitch_b6
    move/from16 v19, v4

    .end local v4    # "min":I
    .restart local v19    # "min":I
    const/4 v4, 0x1

    .line 951
    .end local v19    # "min":I
    .restart local v4    # "min":I
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v3

    if-nez v3, :cond_e5

    .line 952
    invoke-virtual {v0, v14}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    .line 953
    .local v3, "dom":I
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-object v7, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v6, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v6

    .line 954
    .local v6, "monthLength":I
    rem-int/lit8 v7, v6, 0x7

    .line 955
    .local v7, "lastDays":I
    div-int/lit8 v5, v6, 0x7

    .line 956
    add-int/lit8 v8, v3, -0x1

    rem-int/2addr v8, v15

    .line 957
    .local v8, "x":I
    if-ge v8, v7, :cond_dc

    .line 958
    add-int/lit8 v5, v5, 0x1

    .line 960
    :cond_dc
    invoke-virtual {v0, v15}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    invoke-virtual {v0, v15, v9}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 961
    goto/16 :goto_5bc

    .line 965
    .end local v3    # "dom":I
    .end local v6    # "monthLength":I
    .end local v7    # "lastDays":I
    .end local v8    # "x":I
    :cond_e5
    iget-wide v7, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 966
    .local v7, "fd":J
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0, v3, v7, v8}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v9

    .line 967
    .local v9, "month1":J
    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->actualMonthLength()I

    move-result v3

    .line 968
    .local v3, "monthLength":I
    rem-int/lit8 v11, v3, 0x7

    .line 969
    .local v11, "lastDays":I
    div-int/lit8 v5, v3, 0x7

    .line 970
    sub-long v12, v7, v9

    long-to-int v12, v12

    rem-int/2addr v12, v15

    .line 971
    .local v12, "x":I
    if-ge v12, v11, :cond_fd

    .line 972
    add-int/lit8 v5, v5, 0x1

    .line 974
    :cond_fd
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    invoke-static {v13, v2, v4, v5}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v13

    sub-int/2addr v13, v6

    .line 975
    .local v13, "value":I
    mul-int/lit8 v6, v13, 0x7

    int-to-long v14, v6

    add-long/2addr v14, v9

    move/from16 v17, v3

    move/from16 v16, v4

    .end local v3    # "monthLength":I
    .end local v4    # "min":I
    .local v16, "min":I
    .local v17, "monthLength":I
    int-to-long v3, v12

    add-long/2addr v14, v3

    .line 976
    .end local v7    # "fd":J
    .local v14, "fd":J
    invoke-static {v14, v15}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 977
    .local v3, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v4

    const/4 v6, 0x5

    invoke-virtual {v0, v6, v4}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 978
    return-void

    .line 914
    .end local v3    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v9    # "month1":J
    .end local v11    # "lastDays":I
    .end local v12    # "x":I
    .end local v13    # "value":I
    .end local v14    # "fd":J
    .end local v16    # "min":I
    .end local v17    # "monthLength":I
    .restart local v4    # "min":I
    :pswitch_11d
    move/from16 v19, v4

    .end local v4    # "min":I
    .restart local v19    # "min":I
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    .line 915
    .local v3, "normalizedYear":I
    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v4

    if-nez v4, :cond_149

    add-int/lit8 v4, v3, -0x1

    invoke-direct {v0, v4}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v4

    if-nez v4, :cond_149

    .line 918
    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v4

    .line 919
    .local v4, "weekOfYear":I
    if-le v4, v6, :cond_149

    const/16 v7, 0x34

    if-ge v4, v7, :cond_149

    .line 920
    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    invoke-virtual {v0, v13, v6}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 921
    const/4 v5, 0x7

    .line 922
    move/from16 v4, v19

    goto/16 :goto_5bc

    .line 930
    .end local v4    # "weekOfYear":I
    :cond_149
    rem-int/2addr v2, v15

    .line 931
    .end local p2    # "amount":I
    .local v2, "amount":I
    if-nez v2, :cond_14d

    .line 932
    return-void

    .line 934
    :cond_14d
    iget-wide v11, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 935
    .local v11, "fd":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v4

    invoke-static {v11, v12, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v13

    .line 936
    .local v13, "dowFirst":J
    int-to-long v6, v2

    add-long/2addr v11, v6

    .line 937
    cmp-long v6, v11, v13

    if-gez v6, :cond_15f

    .line 938
    add-long/2addr v11, v9

    goto :goto_166

    .line 939
    :cond_15f
    add-long v6, v13, v9

    cmp-long v6, v11, v6

    if-ltz v6, :cond_166

    .line 940
    sub-long/2addr v11, v9

    .line 942
    :cond_166
    :goto_166
    invoke-static {v11, v12}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v6

    .line 943
    .local v6, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-static {v6}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v7

    invoke-virtual {v0, v8, v7}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 944
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v7

    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v8

    const/4 v4, 0x1

    sub-int/2addr v8, v4

    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v4

    invoke-virtual {v0, v7, v8, v4}, Ljava/util/JapaneseImperialCalendar;->set(III)V

    .line 945
    return-void

    .line 896
    .end local v2    # "amount":I
    .end local v3    # "normalizedYear":I
    .end local v6    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v11    # "fd":J
    .end local v13    # "dowFirst":J
    .end local v19    # "min":I
    .local v4, "min":I
    .restart local p2    # "amount":I
    :pswitch_183
    move/from16 v19, v4

    .end local v4    # "min":I
    .restart local v19    # "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v5

    .line 897
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v3

    if-nez v3, :cond_199

    .line 898
    move/from16 v4, v19

    goto/16 :goto_5bc

    .line 903
    :cond_199
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    move/from16 v7, v19

    .end local v19    # "min":I
    .local v7, "min":I
    invoke-static {v6, v2, v7, v5}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v6

    .line 904
    .local v6, "value":I
    iget-wide v8, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    int-to-long v10, v3

    sub-long/2addr v8, v10

    .line 905
    .local v8, "jan0":J
    int-to-long v10, v6

    add-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 906
    .local v3, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    nop

    .line 907
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v10

    const/4 v4, 0x1

    sub-int/2addr v10, v4

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v10}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 908
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v4

    const/4 v10, 0x5

    invoke-virtual {v0, v10, v4}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 909
    return-void

    .line 871
    .end local v3    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v6    # "value":I
    .end local v7    # "min":I
    .end local v8    # "jan0":J
    .restart local v4    # "min":I
    :pswitch_1c6
    move v7, v4

    .end local v4    # "min":I
    .restart local v7    # "min":I
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v3

    if-nez v3, :cond_1de

    .line 872
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-object v4, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v5

    .line 873
    move v4, v7

    goto/16 :goto_5bc

    .line 880
    :cond_1de
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    iget-wide v9, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    invoke-direct {v0, v3, v9, v10}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v9

    .line 885
    .restart local v9    # "month1":J
    iget-wide v11, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    sub-long/2addr v11, v9

    long-to-int v3, v11

    .line 886
    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->actualMonthLength()I

    move-result v6

    const/4 v4, 0x1

    sub-int/2addr v6, v4

    .line 885
    invoke-static {v3, v2, v8, v6}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v3

    .line 887
    .local v3, "value":I
    int-to-long v11, v3

    add-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 888
    .local v4, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    nop

    .line 890
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v6

    const/4 v8, 0x5

    invoke-virtual {v0, v8, v6}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 891
    return-void

    .line 824
    .end local v3    # "value":I
    .end local v7    # "min":I
    .end local v9    # "month1":J
    .local v4, "min":I
    :pswitch_204
    move v7, v4

    .end local v4    # "min":I
    .restart local v7    # "min":I
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v3

    .line 826
    .local v3, "isTransitionYear":Z
    invoke-virtual {v0, v15}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v8

    sub-int/2addr v6, v8

    .line 827
    .local v6, "dow":I
    if-gez v6, :cond_21c

    .line 828
    add-int/lit8 v6, v6, 0x7

    .line 831
    :cond_21c
    iget-wide v11, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 834
    .restart local v11    # "fd":J
    const-wide/16 v13, 0x1

    if-eqz v3, :cond_230

    .line 835
    iget-object v8, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0, v8, v11, v12}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v15

    .line 836
    .local v15, "month1":J
    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->actualMonthLength()I

    move-result v8

    move v13, v8

    move-wide v14, v15

    move v8, v5

    .local v8, "monthLength":I
    goto :goto_243

    .line 838
    .end local v8    # "monthLength":I
    .end local v15    # "month1":J
    :cond_230
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v15

    move v8, v5

    .end local v5    # "max":I
    .local v8, "max":I
    int-to-long v4, v15

    sub-long v4, v11, v4

    add-long/2addr v4, v13

    .line 839
    .local v4, "month1":J
    sget-object v15, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-object v13, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v15, v13}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v13

    move-wide v14, v4

    .line 843
    .end local v4    # "month1":J
    .local v13, "monthLength":I
    .local v14, "month1":J
    :goto_243
    const-wide/16 v4, 0x6

    add-long/2addr v4, v14

    .line 844
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v9

    .line 843
    invoke-static {v4, v5, v9}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    .line 847
    .local v4, "monthDay1st":J
    sub-long v9, v4, v14

    long-to-int v9, v9

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v10

    if-lt v9, v10, :cond_25c

    .line 848
    const-wide/16 v9, 0x7

    sub-long/2addr v4, v9

    move-wide v9, v4

    goto :goto_25d

    .line 847
    :cond_25c
    move-wide v9, v4

    .line 850
    .end local v4    # "monthDay1st":J
    .local v9, "monthDay1st":J
    :goto_25d
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v5

    .line 853
    .end local v8    # "max":I
    .restart local v5    # "max":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v4

    const/4 v8, 0x1

    invoke-static {v4, v2, v8, v5}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v4

    add-int/lit8 v16, v4, -0x1

    .line 856
    .local v16, "value":I
    mul-int/lit8 v8, v16, 0x7

    move/from16 v17, v5

    .end local v5    # "max":I
    .local v17, "max":I
    int-to-long v4, v8

    add-long/2addr v4, v9

    move-wide/from16 v21, v9

    .end local v9    # "monthDay1st":J
    .local v21, "monthDay1st":J
    int-to-long v8, v6

    add-long/2addr v4, v8

    .line 860
    .local v4, "nfd":J
    cmp-long v8, v4, v14

    if-gez v8, :cond_27c

    .line 861
    move-wide v4, v14

    goto :goto_288

    .line 862
    :cond_27c
    int-to-long v8, v13

    add-long/2addr v8, v14

    cmp-long v8, v4, v8

    if-ltz v8, :cond_288

    .line 863
    int-to-long v8, v13

    add-long/2addr v8, v14

    const-wide/16 v19, 0x1

    sub-long v4, v8, v19

    .line 865
    :cond_288
    :goto_288
    sub-long v8, v4, v14

    long-to-int v8, v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    const/4 v9, 0x5

    invoke-virtual {v0, v9, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 866
    return-void

    .line 752
    .end local v3    # "isTransitionYear":Z
    .end local v6    # "dow":I
    .end local v7    # "min":I
    .end local v11    # "fd":J
    .end local v13    # "monthLength":I
    .end local v14    # "month1":J
    .end local v16    # "value":I
    .end local v17    # "max":I
    .end local v21    # "monthDay1st":J
    .local v4, "min":I
    .restart local v5    # "max":I
    :pswitch_292
    move v7, v4

    move v8, v5

    .end local v4    # "min":I
    .end local v5    # "max":I
    .restart local v7    # "min":I
    .restart local v8    # "max":I
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    .line 753
    .local v3, "y":I
    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v5

    .line 754
    .end local v8    # "max":I
    .restart local v5    # "max":I
    invoke-virtual {v0, v15}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    invoke-virtual {v0, v15, v6}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 755
    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    .line 756
    .local v6, "woy":I
    add-int v8, v6, v2

    .line 757
    .local v8, "value":I
    iget-object v9, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v9

    invoke-direct {v0, v9}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v9

    if-nez v9, :cond_33f

    .line 758
    iget-object v9, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v9

    .line 759
    .local v9, "year":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v10

    if-ne v9, v10, :cond_2c9

    .line 760
    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v5

    goto :goto_2df

    .line 761
    :cond_2c9
    invoke-virtual {v0, v4}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v10

    if-ne v9, v10, :cond_2df

    .line 762
    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->getActualMinimum(I)I

    move-result v7

    .line 763
    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v5

    .line 764
    if-le v8, v7, :cond_2df

    if-ge v8, v5, :cond_2df

    .line 765
    invoke-virtual {v0, v13, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 766
    return-void

    .line 772
    :cond_2df
    :goto_2df
    if-le v8, v7, :cond_2e7

    if-ge v8, v5, :cond_2e7

    .line 773
    invoke-virtual {v0, v13, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 774
    return-void

    .line 776
    :cond_2e7
    iget-wide v10, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 778
    .local v10, "fd":J
    sub-int v12, v6, v7

    mul-int/2addr v12, v15

    move v14, v5

    .end local v5    # "max":I
    .local v14, "max":I
    int-to-long v4, v12

    sub-long v4, v10, v4

    .line 779
    .local v4, "day1":J
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v12

    if-eq v9, v12, :cond_307

    .line 780
    sget-object v12, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v12, v4, v5}, Lsun/util/calendar/Gregorian;->getYearFromFixedDate(J)I

    move-result v12

    if-eq v12, v3, :cond_304

    .line 781
    add-int/lit8 v7, v7, 0x1

    move/from16 v18, v14

    goto :goto_321

    .line 780
    :cond_304
    move/from16 v18, v14

    goto :goto_321

    .line 784
    :cond_307
    sget-object v12, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v15

    move/from16 v18, v14

    const-wide/high16 v13, -0x8000000000000000L

    .end local v14    # "max":I
    .local v18, "max":I
    invoke-virtual {v12, v13, v14, v15}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v12

    .line 785
    .local v12, "d":Lsun/util/calendar/CalendarDate;
    sget-object v13, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v13, v12}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v13

    cmp-long v13, v4, v13

    if-gez v13, :cond_321

    .line 786
    add-int/lit8 v7, v7, 0x1

    .line 791
    .end local v12    # "d":Lsun/util/calendar/CalendarDate;
    :cond_321
    :goto_321
    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v12

    sub-int v12, v18, v12

    const/4 v13, 0x7

    mul-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v10, v12

    .line 792
    sget-object v12, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v12, v10, v11}, Lsun/util/calendar/Gregorian;->getYearFromFixedDate(J)I

    move-result v12

    if-eq v12, v3, :cond_33a

    .line 793
    add-int/lit8 v12, v18, -0x1

    move v4, v7

    move v5, v12

    .end local v18    # "max":I
    .local v12, "max":I
    goto/16 :goto_5bc

    .line 792
    .end local v12    # "max":I
    .restart local v18    # "max":I
    :cond_33a
    move v4, v7

    move/from16 v5, v18

    goto/16 :goto_5bc

    .line 799
    .end local v4    # "day1":J
    .end local v9    # "year":I
    .end local v10    # "fd":J
    .end local v18    # "max":I
    .restart local v5    # "max":I
    :cond_33f
    iget-wide v9, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 800
    .local v9, "fd":J
    sub-int v11, v6, v7

    const/4 v12, 0x7

    mul-int/2addr v11, v12

    int-to-long v11, v11

    sub-long v11, v9, v11

    .line 802
    .local v11, "day1":J
    invoke-static {v11, v12}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v13

    .line 803
    .local v13, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v14

    iget-object v15, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v15}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v15

    if-ne v14, v15, :cond_364

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v14

    iget-object v15, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v15}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v15

    if-eq v14, v15, :cond_366

    .line 804
    :cond_364
    add-int/lit8 v7, v7, 0x1

    .line 808
    :cond_366
    sub-int v14, v5, v6

    const/4 v15, 0x7

    mul-int/2addr v14, v15

    int-to-long v14, v14

    add-long/2addr v9, v14

    .line 809
    sget-object v14, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v14, v13, v9, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 810
    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v14

    iget-object v15, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v15}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v15

    if-ne v14, v15, :cond_389

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v14

    iget-object v15, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v15}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v15

    if-eq v14, v15, :cond_38b

    .line 811
    :cond_389
    add-int/lit8 v5, v5, -0x1

    .line 815
    :cond_38b
    invoke-static {v6, v2, v7, v5}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v14

    const/4 v4, 0x1

    sub-int/2addr v14, v4

    .line 816
    .end local v8    # "value":I
    .local v14, "value":I
    mul-int/lit8 v8, v14, 0x7

    move v15, v5

    .end local v5    # "max":I
    .local v15, "max":I
    int-to-long v4, v8

    add-long/2addr v4, v11

    invoke-static {v4, v5}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 817
    .end local v13    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .local v4, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 818
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v5

    const/4 v8, 0x5

    invoke-virtual {v0, v8, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 819
    return-void

    .line 641
    .end local v3    # "y":I
    .end local v6    # "woy":I
    .end local v7    # "min":I
    .end local v9    # "fd":J
    .end local v11    # "day1":J
    .end local v14    # "value":I
    .end local v15    # "max":I
    .local v4, "min":I
    .restart local v5    # "max":I
    :pswitch_3ad
    move v7, v4

    move v8, v5

    .end local v4    # "min":I
    .end local v5    # "max":I
    .restart local v7    # "min":I
    .local v8, "max":I
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v3

    if-nez v3, :cond_504

    .line 642
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    .line 643
    .local v3, "year":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v5

    if-ne v3, v5, :cond_453

    .line 644
    sget-object v5, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-wide v9, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v9, v10, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    .line 645
    .local v5, "jd":Lsun/util/calendar/CalendarDate;
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    const-wide v9, 0x7fffffffffffffffL

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v6, v9, v10, v11}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v6

    .line 646
    .local v6, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v9

    const/4 v4, 0x1

    add-int/lit8 v8, v9, -0x1

    .line 647
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    invoke-static {v9, v2, v7, v8}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v9

    .line 648
    .local v9, "n":I
    if-ne v9, v8, :cond_44b

    .line 650
    const/16 v10, -0x190

    invoke-virtual {v5, v10}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 651
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v5, v10}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 652
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v10

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v11

    if-le v10, v11, :cond_414

    .line 653
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v10

    invoke-virtual {v5, v10}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 654
    sget-object v10, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v10, v5}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 656
    :cond_414
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v10

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v11

    if-ne v10, v11, :cond_443

    .line 657
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v10

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_443

    .line 658
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v5, v10}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 659
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v10

    const/4 v4, 0x1

    sub-int/2addr v10, v4

    invoke-virtual {v5, v10}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 660
    sget-object v10, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v10, v5}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 662
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v10

    sub-int/2addr v10, v4

    move v9, v10

    .line 664
    :cond_443
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v4

    const/4 v10, 0x5

    invoke-virtual {v0, v10, v4}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 666
    :cond_44b
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v9}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 667
    .end local v5    # "jd":Lsun/util/calendar/CalendarDate;
    .end local v6    # "d":Lsun/util/calendar/CalendarDate;
    .end local v9    # "n":I
    move v4, v7

    move v5, v8

    goto/16 :goto_502

    :cond_453
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v5

    if-ne v3, v5, :cond_4e1

    .line 668
    sget-object v5, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-wide v9, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v9, v10, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    .line 669
    .restart local v5    # "jd":Lsun/util/calendar/CalendarDate;
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v9

    const-wide/high16 v10, -0x8000000000000000L

    invoke-virtual {v6, v10, v11, v9}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v6

    .line 670
    .restart local v6    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v9

    const/4 v4, 0x1

    add-int/lit8 v7, v9, -0x1

    .line 671
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    invoke-static {v9, v2, v7, v8}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v9

    .line 672
    .restart local v9    # "n":I
    if-ne v9, v7, :cond_4da

    .line 674
    const/16 v10, 0x190

    invoke-virtual {v5, v10}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 675
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v5, v10}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 676
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v10

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v11

    if-ge v10, v11, :cond_4a3

    .line 677
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v10

    invoke-virtual {v5, v10}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 678
    sget-object v10, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v10, v5}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 680
    :cond_4a3
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v10

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v11

    if-ne v10, v11, :cond_4d2

    .line 681
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v10

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_4d2

    .line 682
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v5, v10}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 683
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v10

    const/4 v4, 0x1

    add-int/2addr v10, v4

    invoke-virtual {v5, v10}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 684
    sget-object v10, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v10, v5}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 686
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v10

    sub-int/2addr v10, v4

    move v9, v10

    .line 688
    :cond_4d2
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v4

    const/4 v10, 0x5

    invoke-virtual {v0, v10, v4}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 690
    :cond_4da
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v9}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 691
    .end local v5    # "jd":Lsun/util/calendar/CalendarDate;
    .end local v6    # "d":Lsun/util/calendar/CalendarDate;
    .end local v9    # "n":I
    move v4, v7

    move v5, v8

    goto :goto_502

    .line 692
    :cond_4e1
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    add-int/2addr v5, v2

    const/16 v4, 0xc

    rem-int/2addr v5, v4

    .line 693
    .local v5, "mon":I
    if-gez v5, :cond_4ee

    .line 694
    add-int/lit8 v5, v5, 0xc

    .line 696
    :cond_4ee
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 702
    invoke-direct {v0, v5}, Ljava/util/JapaneseImperialCalendar;->monthLength(I)I

    move-result v4

    .line 703
    .local v4, "monthLen":I
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    if-le v9, v4, :cond_500

    .line 704
    invoke-virtual {v0, v6, v4}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 707
    .end local v3    # "year":I
    .end local v4    # "monthLen":I
    .end local v5    # "mon":I
    :cond_500
    move v4, v7

    move v5, v8

    .end local v7    # "min":I
    .end local v8    # "max":I
    .local v4, "min":I
    .local v5, "max":I
    :goto_502
    goto/16 :goto_5ae

    .line 708
    .end local v4    # "min":I
    .end local v5    # "max":I
    .restart local v7    # "min":I
    .restart local v8    # "max":I
    :cond_504
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-static {v3}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v3

    .line 709
    .local v3, "eraIndex":I
    const/4 v5, 0x0

    .line 710
    .local v5, "transition":Lsun/util/calendar/CalendarDate;
    iget-object v6, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v6

    const/4 v4, 0x1

    if-ne v6, v4, :cond_525

    .line 711
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v5

    .line 712
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v6

    sub-int/2addr v6, v4

    move v7, v6

    move-object v6, v5

    move v5, v8

    .end local v7    # "min":I
    .local v6, "min":I
    goto :goto_55e

    .line 714
    .end local v6    # "min":I
    .restart local v7    # "min":I
    :cond_525
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v9, v6

    sub-int/2addr v9, v4

    if-ge v3, v9, :cond_55c

    .line 715
    add-int/lit8 v9, v3, 0x1

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v5

    .line 716
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v6

    iget-object v9, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v9

    if-ne v6, v9, :cond_559

    .line 717
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v6

    const/4 v4, 0x1

    sub-int/2addr v6, v4

    .line 718
    .end local v8    # "max":I
    .local v6, "max":I
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v8

    if-ne v8, v4, :cond_553

    .line 719
    add-int/lit8 v6, v6, -0x1

    move/from16 v23, v6

    move-object v6, v5

    move/from16 v5, v23

    goto :goto_55e

    .line 718
    :cond_553
    move/from16 v23, v6

    move-object v6, v5

    move/from16 v5, v23

    goto :goto_55e

    .line 716
    .end local v6    # "max":I
    .restart local v8    # "max":I
    :cond_559
    move-object v6, v5

    move v5, v8

    goto :goto_55e

    .line 714
    :cond_55c
    move-object v6, v5

    move v5, v8

    .line 725
    .end local v8    # "max":I
    .local v5, "max":I
    .local v6, "transition":Lsun/util/calendar/CalendarDate;
    :goto_55e
    if-ne v7, v5, :cond_561

    .line 729
    return-void

    .line 731
    :cond_561
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v8

    invoke-static {v8, v2, v7, v5}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v8

    .line 732
    .local v8, "n":I
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 733
    if-ne v8, v7, :cond_591

    .line 734
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v9

    const/4 v4, 0x1

    if-ne v9, v4, :cond_57c

    .line 735
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    if-eq v9, v4, :cond_5ad

    .line 736
    :cond_57c
    iget-object v4, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v4

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    if-ge v4, v9, :cond_5ad

    .line 737
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v4

    const/4 v9, 0x5

    invoke-virtual {v0, v9, v4}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto :goto_5ad

    .line 740
    :cond_591
    if-ne v8, v5, :cond_5ad

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v9

    const/4 v4, 0x1

    sub-int/2addr v9, v4

    if-ne v9, v8, :cond_5ad

    .line 741
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v4

    .line 742
    .local v4, "dom":I
    iget-object v9, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v9

    if-lt v9, v4, :cond_5ad

    .line 743
    add-int/lit8 v9, v4, -0x1

    const/4 v10, 0x5

    invoke-virtual {v0, v10, v9}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 747
    .end local v3    # "eraIndex":I
    .end local v4    # "dom":I
    .end local v6    # "transition":Lsun/util/calendar/CalendarDate;
    .end local v8    # "n":I
    :cond_5ad
    :goto_5ad
    move v4, v7

    .end local v7    # "min":I
    .local v4, "min":I
    :goto_5ae
    return-void

    .line 631
    :pswitch_5af
    move v7, v4

    move v8, v5

    .end local v4    # "min":I
    .end local v5    # "max":I
    .restart local v7    # "min":I
    .local v8, "max":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMinimum(I)I

    move-result v4

    .line 632
    .end local v7    # "min":I
    .restart local v4    # "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v5

    .line 633
    .end local v8    # "max":I
    .restart local v5    # "max":I
    goto :goto_5bc

    .line 982
    .end local v4    # "min":I
    .end local v5    # "max":I
    .restart local v7    # "min":I
    .restart local v8    # "max":I
    :goto_5ba
    move v4, v7

    move v5, v8

    .end local v7    # "min":I
    .end local v8    # "max":I
    .restart local v4    # "min":I
    .restart local v5    # "max":I
    :goto_5bc
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    invoke-static {v3, v2, v4, v5}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 983
    return-void

    .line 565
    .end local v4    # "min":I
    .end local v5    # "max":I
    :cond_5c8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :pswitch_data_5ce
    .packed-switch 0x1
        :pswitch_5af
        :pswitch_3ad
        :pswitch_292
        :pswitch_204
        :pswitch_1c6
        :pswitch_183
        :pswitch_11d
        :pswitch_b6
        :pswitch_24
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public whitelist core-platform-api test-api roll(IZ)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "up"    # Z

    .line 534
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    invoke-virtual {p0, p1, v0}, Ljava/util/JapaneseImperialCalendar;->roll(II)V

    .line 535
    return-void
.end method

.method public whitelist core-platform-api test-api setTimeZone(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 1538
    invoke-super {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1540
    iget-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1541
    return-void
.end method
