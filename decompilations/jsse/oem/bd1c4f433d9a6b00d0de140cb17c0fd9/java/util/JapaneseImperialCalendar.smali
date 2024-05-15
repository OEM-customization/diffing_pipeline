.class Ljava/util/JapaneseImperialCalendar;
.super Ljava/util/Calendar;
.source "JapaneseImperialCalendar.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final BEFORE_MEIJI:I = 0x0

.field private static final BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

.field private static final EPOCH_OFFSET:I = 0xaf93b

.field private static final EPOCH_YEAR:I = 0x7b2

.field public static final HEISEI:I = 0x4

.field static final LEAST_MAX_VALUES:[I

.field static final MAX_VALUES:[I

.field public static final MEIJI:I = 0x1

.field static final MIN_VALUES:[I

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:I = 0x36ee80

.field private static final ONE_MINUTE:I = 0xea60

.field private static final ONE_SECOND:I = 0x3e8

.field private static final ONE_WEEK:J = 0x240c8400L

.field public static final SHOWA:I = 0x3

.field public static final TAISHO:I = 0x2

.field private static final eras:[Lsun/util/calendar/Era;

.field private static final gcal:Lsun/util/calendar/Gregorian;

.field private static final jcal:Lsun/util/calendar/LocalGregorianCalendar;

.field private static final serialVersionUID:J = -0x2eb15d25e1c59a19L

.field private static final sinceFixedDates:[J


# instance fields
.field private transient cachedFixedDate:J

.field private transient jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

.field private transient originalFields:[I

.field private transient zoneOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .prologue
    const-class v3, Ljava/util/JapaneseImperialCalendar;

    invoke-virtual {v3}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    sput-boolean v3, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    .line 117
    const-string/jumbo v3, "japanese"

    invoke-static {v3}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/LocalGregorianCalendar;

    .line 116
    sput-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    .line 121
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v3

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 124
    new-instance v3, Lsun/util/calendar/Era;

    const-string/jumbo v4, "BeforeMeiji"

    const-string/jumbo v5, "BM"

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

    .line 160
    const/16 v3, 0x11

    new-array v3, v3, [I

    fill-array-data v3, :array_12e

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    .line 179
    const/16 v3, 0x11

    new-array v3, v3, [I

    fill-array-data v3, :array_154

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    .line 198
    const/16 v3, 0x11

    new-array v3, v3, [I

    fill-array-data v3, :array_17a

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->MAX_VALUES:[I

    .line 222
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar;->getEras()[Lsun/util/calendar/Era;

    move-result-object v12

    .line 223
    .local v12, "es":[Lsun/util/calendar/Era;
    array-length v3, v12

    add-int/lit8 v20, v3, 0x1

    .line 224
    .local v20, "length":I
    move/from16 v0, v20

    new-array v3, v0, [Lsun/util/calendar/Era;

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    .line 225
    move/from16 v0, v20

    new-array v3, v0, [J

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    .line 229
    const/16 v18, 0x0

    .line 230
    .local v18, "index":I
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    sget-object v4, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v5, Ljava/util/JapaneseImperialCalendar;->BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

    invoke-virtual {v5}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    aput-wide v4, v3, v18

    .line 231
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    .line 229
    const/4 v4, 0x0

    .line 231
    const/16 v18, 0x1

    sget-object v5, Ljava/util/JapaneseImperialCalendar;->BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

    aput-object v5, v3, v4

    .line 232
    const/4 v3, 0x0

    array-length v4, v12

    move/from16 v19, v18

    .end local v18    # "index":I
    .local v19, "index":I
    :goto_7a
    if-ge v3, v4, :cond_97

    aget-object v11, v12, v3

    .line 233
    .local v11, "e":Lsun/util/calendar/Era;
    invoke-virtual {v11}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    .line 234
    .local v2, "d":Lsun/util/calendar/CalendarDate;
    sget-object v5, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    sget-object v6, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v6, v2}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v6

    aput-wide v6, v5, v19

    .line 235
    sget-object v5, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "index":I
    .restart local v18    # "index":I
    aput-object v11, v5, v19

    .line 232
    add-int/lit8 v3, v3, 0x1

    move/from16 v19, v18

    .end local v18    # "index":I
    .restart local v19    # "index":I
    goto :goto_7a

    .line 238
    .end local v2    # "d":Lsun/util/calendar/CalendarDate;
    .end local v11    # "e":Lsun/util/calendar/Era;
    :cond_97
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    sget-object v4, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Ljava/util/JapaneseImperialCalendar;->MAX_VALUES:[I

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 243
    const v24, 0x7fffffff

    .line 244
    .local v24, "year":I
    const v10, 0x7fffffff

    .line 245
    .local v10, "dayOfYear":I
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v4, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v9

    .line 246
    .local v9, "date":Lsun/util/calendar/CalendarDate;
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_b5
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v3, v3

    if-ge v13, v3, :cond_123

    .line 247
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v14, v3, v13

    .line 248
    .local v14, "fd":J
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v22

    .line 249
    .local v22, "transitionDate":Lsun/util/calendar/CalendarDate;
    invoke-virtual/range {v22 .. v22}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v9, v3, v4, v5}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 250
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v3, v9}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v16

    .line 251
    .local v16, "fdd":J
    cmp-long v3, v14, v16

    if-eqz v3, :cond_e2

    .line 252
    sub-long v4, v14, v16

    long-to-int v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 254
    :cond_e2
    invoke-virtual/range {v22 .. v22}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    const/16 v4, 0xc

    const/16 v5, 0x1f

    invoke-virtual {v9, v3, v4, v5}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 255
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v3, v9}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v16

    .line 256
    cmp-long v3, v14, v16

    if-eqz v3, :cond_100

    .line 257
    sub-long v4, v16, v14

    long-to-int v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 259
    :cond_100
    const-wide/16 v4, 0x1

    sub-long v4, v14, v4

    invoke-static {v4, v5}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v21

    .line 260
    .local v21, "lgd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual/range {v21 .. v21}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v23

    .line 265
    .local v23, "y":I
    invoke-virtual/range {v21 .. v21}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11a

    invoke-virtual/range {v21 .. v21}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_11c

    .line 266
    :cond_11a
    add-int/lit8 v23, v23, -0x1

    .line 268
    :cond_11c
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 246
    add-int/lit8 v13, v13, 0x1

    goto :goto_b5

    .line 270
    .end local v14    # "fd":J
    .end local v16    # "fdd":J
    .end local v21    # "lgd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v22    # "transitionDate":Lsun/util/calendar/CalendarDate;
    .end local v23    # "y":I
    :cond_123
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    const/4 v4, 0x1

    aput v24, v3, v4

    .line 271
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    const/4 v4, 0x6

    aput v10, v3, v4

    .line 68
    return-void

    .line 160
    :array_12e
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

    .line 179
    :array_154
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

    .line 198
    :array_17a
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

.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .prologue
    .line 301
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 1525
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 302
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    .line 304
    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V
    .registers 6
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;
    .param p3, "flag"    # Z

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 1525
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 315
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 316
    return-void
.end method

.method private actualMonthLength()I
    .registers 9

    .prologue
    .line 2192
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-object v6, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v2

    .line 2193
    .local v2, "length":I
    iget-object v3, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-static {v3}, Ljava/util/JapaneseImperialCalendar;->getTransitionEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v1

    .line 2194
    .local v1, "eraIndex":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2a

    .line 2195
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v4, v3, v1

    .line 2196
    .local v4, "transitionFixedDate":J
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    .line 2197
    .local v0, "d":Lsun/util/calendar/CalendarDate;
    iget-wide v6, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2b

    .line 2198
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    .line 2203
    .end local v0    # "d":Lsun/util/calendar/CalendarDate;
    .end local v4    # "transitionFixedDate":J
    :cond_2a
    :goto_2a
    return v2

    .line 2200
    .restart local v0    # "d":Lsun/util/calendar/CalendarDate;
    .restart local v4    # "transitionFixedDate":J
    :cond_2b
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_2a
.end method

.method private computeFields(II)I
    .registers 47
    .param p1, "fieldMask"    # I
    .param p2, "tzMask"    # I

    .prologue
    .line 1571
    const/16 v39, 0x0

    .line 1572
    .local v39, "zoneOffset":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v36

    .line 1573
    .local v36, "tz":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    if-nez v40, :cond_1c

    .line 1574
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    .line 1576
    :cond_1c
    const v40, 0x18000

    move/from16 v0, p2

    move/from16 v1, v40

    if-eq v0, v1, :cond_57

    .line 1581
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    move-wide/from16 v40, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v39

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v41

    const/16 v42, 0x0

    aput v41, v40, v42

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v41, v41, v42

    sub-int v41, v39, v41

    const/16 v42, 0x1

    aput v41, v40, v42

    .line 1586
    :cond_57
    if-eqz p2, :cond_af

    .line 1587
    const/16 v40, 0xf

    move/from16 v0, p2

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v40

    if-eqz v40, :cond_79

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    const/16 v41, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v41

    const/16 v42, 0x0

    aput v41, v40, v42

    .line 1590
    :cond_79
    const/16 v40, 0x10

    move/from16 v0, p2

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v40

    if-eqz v40, :cond_99

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    const/16 v41, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v41

    const/16 v42, 0x1

    aput v41, v40, v42

    .line 1593
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget v40, v40, v41

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v41, v0

    const/16 v42, 0x1

    aget v41, v41, v42

    add-int v39, v40, v41

    .line 1599
    :cond_af
    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x5265c00

    div-long v12, v40, v42

    .line 1600
    .local v12, "fixedDate":J
    const v40, 0x5265c00

    rem-int v34, v39, v40

    .line 1601
    .local v34, "timeOfDay":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x5265c00

    div-long v40, v40, v42

    add-long v12, v12, v40

    .line 1602
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x5265c00

    rem-long v40, v40, v42

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v40, v0

    add-int v34, v34, v40

    .line 1603
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x5265c00

    cmp-long v40, v40, v42

    if-ltz v40, :cond_30b

    .line 1604
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x5265c00

    sub-long v40, v40, v42

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v34, v0

    .line 1605
    const-wide/16 v40, 0x1

    add-long v12, v12, v40

    .line 1612
    :cond_fc
    const-wide/32 v40, 0xaf93b

    add-long v12, v12, v40

    .line 1615
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    move-wide/from16 v40, v0

    cmp-long v40, v12, v40

    if-nez v40, :cond_111

    const-wide/16 v40, 0x0

    cmp-long v40, v12, v40

    if-gez v40, :cond_124

    .line 1616
    :cond_111
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v12, v13}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 1617
    move-object/from16 v0, p0

    iput-wide v12, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 1619
    :cond_124
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v11

    .line 1620
    .local v11, "era":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v38

    .line 1623
    .local v38, "year":I
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1, v11}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1624
    const/16 v40, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1625
    or-int/lit8 v21, p1, 0x3

    .line 1627
    .local v21, "mask":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v40

    add-int/lit8 v22, v40, -0x1

    .line 1628
    .local v22, "month":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v8

    .line 1631
    .local v8, "dayOfMonth":I
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0xa4

    move/from16 v40, v0

    if-eqz v40, :cond_19b

    .line 1633
    const/16 v40, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1634
    const/16 v40, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1, v8}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfWeek()I

    move-result v40

    const/16 v41, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1636
    move/from16 v0, v21

    or-int/lit16 v0, v0, 0xa4

    move/from16 v21, v0

    .line 1639
    :cond_19b
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x7e00

    move/from16 v40, v0

    if-eqz v40, :cond_211

    .line 1641
    if-eqz v34, :cond_321

    .line 1642
    const v40, 0x36ee80

    div-int v20, v34, v40

    .line 1643
    .local v20, "hours":I
    const/16 v40, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1644
    div-int/lit8 v40, v20, 0xc

    const/16 v41, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1645
    rem-int/lit8 v40, v20, 0xc

    const/16 v41, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1646
    const v40, 0x36ee80

    rem-int v31, v34, v40

    .line 1647
    .local v31, "r":I
    const v40, 0xea60

    div-int v40, v31, v40

    const/16 v41, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1648
    const v40, 0xea60

    rem-int v31, v31, v40

    .line 1649
    move/from16 v0, v31

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v40, v0

    const/16 v41, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1650
    move/from16 v0, v31

    rem-int/lit16 v0, v0, 0x3e8

    move/from16 v40, v0

    const/16 v41, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1659
    .end local v20    # "hours":I
    .end local v31    # "r":I
    :goto_20b
    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x7e00

    move/from16 v21, v0

    .line 1663
    :cond_211
    const v40, 0x18000

    and-int v40, v40, p1

    if-eqz v40, :cond_247

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget v40, v40, v41

    const/16 v41, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    const/16 v41, 0x1

    aget v40, v40, v41

    const/16 v41, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1666
    const v40, 0x18000

    or-int v21, v21, v40

    .line 1669
    :cond_247
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x158

    move/from16 v40, v0

    if-eqz v40, :cond_30a

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v25

    .line 1674
    .local v25, "normalizedYear":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v35

    .line 1677
    .local v35, "transitionYear":Z
    if-eqz v35, :cond_371

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v12, v13}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v14

    .line 1679
    .local v14, "fixedDateJan1":J
    sub-long v40, v12, v14

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v40, v0

    add-int/lit8 v9, v40, 0x1

    .line 1688
    .local v9, "dayOfYear":I
    :goto_284
    if-eqz v35, :cond_3bc

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v12, v13}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v16

    .line 1691
    .local v16, "fixedDateMonth1":J
    :goto_294
    const/16 v40, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1, v9}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1692
    add-int/lit8 v40, v8, -0x1

    div-int/lit8 v40, v40, 0x7

    add-int/lit8 v40, v40, 0x1

    const/16 v41, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1694
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v12, v13}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v37

    .line 1698
    .local v37, "weekOfYear":I
    if-nez v37, :cond_46d

    .line 1706
    const-wide/16 v40, 0x1

    sub-long v18, v14, v40

    .line 1708
    .local v18, "fixedDec31":J
    invoke-static/range {v18 .. v19}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    .line 1709
    .local v7, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    if-nez v35, :cond_3c7

    invoke-virtual {v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v40

    :goto_2cc
    if-nez v40, :cond_3cb

    .line 1710
    const-wide/16 v40, 0x16d

    sub-long v32, v14, v40

    .line 1711
    .local v32, "prevJan1":J
    invoke-virtual {v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v40

    if-eqz v40, :cond_2dc

    .line 1712
    const-wide/16 v40, 0x1

    sub-long v32, v32, v40

    .line 1743
    :cond_2dc
    :goto_2dc
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v37

    .line 1784
    .end local v7    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v18    # "fixedDec31":J
    .end local v32    # "prevJan1":J
    :cond_2e6
    :goto_2e6
    const/16 v40, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1785
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v12, v13}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v40

    const/16 v41, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1786
    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x158

    move/from16 v21, v0

    .line 1788
    .end local v9    # "dayOfYear":I
    .end local v14    # "fixedDateJan1":J
    .end local v16    # "fixedDateMonth1":J
    .end local v25    # "normalizedYear":I
    .end local v35    # "transitionYear":Z
    .end local v37    # "weekOfYear":I
    :cond_30a
    return v21

    .line 1607
    .end local v8    # "dayOfMonth":I
    .end local v11    # "era":I
    .end local v21    # "mask":I
    .end local v22    # "month":I
    .end local v38    # "year":I
    :cond_30b
    :goto_30b
    if-gez v34, :cond_fc

    .line 1608
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x5265c00

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v34, v0

    .line 1609
    const-wide/16 v40, 0x1

    sub-long v12, v12, v40

    goto :goto_30b

    .line 1652
    .restart local v8    # "dayOfMonth":I
    .restart local v11    # "era":I
    .restart local v21    # "mask":I
    .restart local v22    # "month":I
    .restart local v38    # "year":I
    :cond_321
    const/16 v40, 0xb

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1653
    const/16 v40, 0x9

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1654
    const/16 v40, 0xa

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1655
    const/16 v40, 0xc

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1656
    const/16 v40, 0xd

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1657
    const/16 v40, 0xe

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    goto/16 :goto_20b

    .line 1680
    .restart local v25    # "normalizedYear":I
    .restart local v35    # "transitionYear":Z
    :cond_371
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    const/16 v41, 0x1

    aget v40, v40, v41

    move/from16 v0, v25

    move/from16 v1, v40

    if-ne v0, v1, :cond_3a2

    .line 1681
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v41

    const-wide/high16 v42, -0x8000000000000000L

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v10

    .line 1682
    .local v10, "dx":Lsun/util/calendar/CalendarDate;
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v14

    .line 1683
    .restart local v14    # "fixedDateJan1":J
    sub-long v40, v12, v14

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v40, v0

    add-int/lit8 v9, v40, 0x1

    .restart local v9    # "dayOfYear":I
    goto/16 :goto_284

    .line 1685
    .end local v9    # "dayOfYear":I
    .end local v10    # "dx":Lsun/util/calendar/CalendarDate;
    .end local v14    # "fixedDateJan1":J
    :cond_3a2
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfYear(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v9, v0

    .line 1686
    .restart local v9    # "dayOfYear":I
    int-to-long v0, v9

    move-wide/from16 v40, v0

    sub-long v40, v12, v40

    const-wide/16 v42, 0x1

    add-long v14, v40, v42

    .restart local v14    # "fixedDateJan1":J
    goto/16 :goto_284

    .line 1689
    :cond_3bc
    int-to-long v0, v8

    move-wide/from16 v40, v0

    sub-long v40, v12, v40

    const-wide/16 v42, 0x1

    add-long v16, v40, v42

    .restart local v16    # "fixedDateMonth1":J
    goto/16 :goto_294

    .line 1709
    .restart local v7    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .restart local v18    # "fixedDec31":J
    .restart local v37    # "weekOfYear":I
    :cond_3c7
    const/16 v40, 0x1

    goto/16 :goto_2cc

    .line 1714
    :cond_3cb
    if-eqz v35, :cond_439

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_429

    .line 1721
    const/16 v40, 0x4

    move/from16 v0, v40

    if-le v11, v0, :cond_41b

    .line 1722
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v41, v11, -0x1

    aget-object v40, v40, v41

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v30

    .line 1723
    .local v30, "pd":Lsun/util/calendar/CalendarDate;
    invoke-virtual/range {v30 .. v30}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v40

    move/from16 v0, v25

    move/from16 v1, v40

    if-ne v0, v1, :cond_40a

    .line 1724
    invoke-virtual/range {v30 .. v30}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v40

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v40

    invoke-virtual/range {v30 .. v30}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1729
    .end local v30    # "pd":Lsun/util/calendar/CalendarDate;
    :cond_40a
    :goto_40a
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1730
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v32

    .restart local v32    # "prevJan1":J
    goto/16 :goto_2dc

    .line 1727
    .end local v32    # "prevJan1":J
    :cond_41b
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v40

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_40a

    .line 1732
    :cond_429
    const-wide/16 v40, 0x16d

    sub-long v32, v14, v40

    .line 1733
    .restart local v32    # "prevJan1":J
    invoke-virtual {v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v40

    if-eqz v40, :cond_2dc

    .line 1734
    const-wide/16 v40, 0x1

    sub-long v32, v32, v40

    goto/16 :goto_2dc

    .line 1738
    .end local v32    # "prevJan1":J
    :cond_439
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v41

    aget-object v40, v40, v41

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v6

    .line 1739
    .local v6, "cd":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v40

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v40

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1740
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1741
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v32

    .restart local v32    # "prevJan1":J
    goto/16 :goto_2dc

    .line 1745
    .end local v6    # "cd":Lsun/util/calendar/CalendarDate;
    .end local v7    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v18    # "fixedDec31":J
    .end local v32    # "prevJan1":J
    :cond_46d
    if-nez v35, :cond_4b4

    .line 1747
    const/16 v40, 0x34

    move/from16 v0, v37

    move/from16 v1, v40

    if-lt v0, v1, :cond_2e6

    .line 1748
    const-wide/16 v40, 0x16d

    add-long v26, v14, v40

    .line 1749
    .local v26, "nextJan1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v40

    if-eqz v40, :cond_48b

    .line 1750
    const-wide/16 v40, 0x1

    add-long v26, v26, v40

    .line 1752
    :cond_48b
    const-wide/16 v40, 0x6

    add-long v40, v40, v26

    .line 1753
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v42

    .line 1752
    invoke-static/range {v40 .. v42}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    .line 1754
    .local v28, "nextJan1st":J
    sub-long v40, v28, v26

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v23, v0

    .line 1755
    .local v23, "ndays":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v40

    move/from16 v0, v23

    move/from16 v1, v40

    if-lt v0, v1, :cond_2e6

    const-wide/16 v40, 0x7

    sub-long v40, v28, v40

    cmp-long v40, v12, v40

    if-ltz v40, :cond_2e6

    .line 1757
    const/16 v37, 0x1

    goto/16 :goto_2e6

    .line 1761
    .end local v23    # "ndays":I
    .end local v26    # "nextJan1":J
    .end local v28    # "nextJan1st":J
    :cond_4b4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1763
    .restart local v7    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_517

    .line 1764
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1765
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v40

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1766
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v26

    .line 1775
    .restart local v26    # "nextJan1":J
    :goto_4ee
    const-wide/16 v40, 0x6

    add-long v40, v40, v26

    .line 1776
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v42

    .line 1775
    invoke-static/range {v40 .. v42}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    .line 1777
    .restart local v28    # "nextJan1st":J
    sub-long v40, v28, v26

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v23, v0

    .line 1778
    .restart local v23    # "ndays":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v40

    move/from16 v0, v23

    move/from16 v1, v40

    if-lt v0, v1, :cond_2e6

    const-wide/16 v40, 0x7

    sub-long v40, v28, v40

    cmp-long v40, v12, v40

    if-ltz v40, :cond_2e6

    .line 1780
    const/16 v37, 0x1

    goto/16 :goto_2e6

    .line 1768
    .end local v23    # "ndays":I
    .end local v26    # "nextJan1":J
    .end local v28    # "nextJan1st":J
    :cond_517
    invoke-static {v7}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v40

    add-int/lit8 v24, v40, 0x1

    .line 1769
    .local v24, "nextEraIndex":I
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v40, v40, v24

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v6

    .line 1770
    .restart local v6    # "cd":Lsun/util/calendar/CalendarDate;
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v40, v40, v24

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1771
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v40

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v42

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v7, v0, v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1772
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1773
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v26

    .restart local v26    # "nextJan1":J
    goto :goto_4ee
.end method

.method private static getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 6
    .param p0, "fd"    # J

    .prologue
    .line 2163
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    .line 2164
    .local v0, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v0, p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 2165
    return-object v0
.end method

.method private static getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I
    .registers 5
    .param p0, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;

    .prologue
    const/4 v3, 0x0

    .line 2245
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    .line 2246
    .local v0, "era":Lsun/util/calendar/Era;
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_a
    if-lez v1, :cond_16

    .line 2247
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v2, v2, v1

    if-ne v2, v0, :cond_13

    .line 2248
    return v1

    .line 2246
    :cond_13
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 2251
    :cond_16
    return v3
.end method

.method private getFixedDate(III)J
    .registers 26
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "fieldMask"    # I

    .prologue
    .line 1971
    const/16 v16, 0x0

    .line 1972
    .local v16, "month":I
    const/4 v9, 0x1

    .line 1973
    .local v9, "firstDayOfMonth":I
    const/16 v18, 0x2

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_dd

    .line 1976
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v16

    .line 1979
    const/16 v18, 0xb

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_bf

    .line 1980
    div-int/lit8 v18, v16, 0xc

    add-int p2, p2, v18

    .line 1981
    rem-int/lit8 v16, v16, 0xc

    .line 1996
    :cond_27
    :goto_27
    sget-object v18, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_59

    .line 1997
    sget-object v18, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v19

    const-wide/high16 v20, -0x8000000000000000L

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v8

    .line 1998
    .local v8, "dx":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v18

    add-int/lit8 v15, v18, -0x1

    .line 1999
    .local v15, "m":I
    move/from16 v0, v16

    if-ge v0, v15, :cond_51

    .line 2000
    move/from16 v16, v15

    .line 2002
    :cond_51
    move/from16 v0, v16

    if-ne v0, v15, :cond_59

    .line 2003
    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    .line 2007
    .end local v8    # "dx":Lsun/util/calendar/CalendarDate;
    .end local v15    # "m":I
    :cond_59
    sget-object v18, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    sget-object v19, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual/range {v18 .. v19}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    .line 2008
    .local v5, "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    if-lez p1, :cond_fb

    sget-object v18, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v18, v18, p1

    :goto_67
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2009
    add-int/lit8 v18, v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1, v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 2010
    sget-object v18, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 2014
    sget-object v18, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v12

    .line 2016
    .local v12, "fixedDate":J
    const/16 v18, 0x2

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_1ca

    .line 2018
    const/16 v18, 0x5

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_ff

    .line 2025
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v18

    if-eqz v18, :cond_be

    .line 2028
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v12, v12, v18

    .line 2029
    int-to-long v0, v9

    move-wide/from16 v18, v0

    sub-long v12, v12, v18

    .line 2104
    :cond_be
    :goto_be
    return-wide v12

    .line 1982
    .end local v5    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v12    # "fixedDate":J
    :cond_bf
    if-gez v16, :cond_27

    .line 1983
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 1984
    .local v17, "rem":[I
    const/16 v18, 0xc

    move/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lsun/util/calendar/CalendarUtils;->floorDivide(II[I)I

    move-result v18

    add-int p2, p2, v18

    .line 1985
    const/16 v18, 0x0

    aget v16, v17, v18

    goto/16 :goto_27

    .line 1988
    .end local v17    # "rem":[I
    :cond_dd
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_27

    if-eqz p1, :cond_27

    .line 1989
    sget-object v18, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v18, v18, p1

    invoke-virtual/range {v18 .. v18}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v4

    .line 1990
    .local v4, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v18

    add-int/lit8 v16, v18, -0x1

    .line 1991
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    goto/16 :goto_27

    .line 2008
    .end local v4    # "d":Lsun/util/calendar/CalendarDate;
    .restart local v5    # "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_fb
    const/16 v18, 0x0

    goto/16 :goto_67

    .line 2032
    .restart local v12    # "fixedDate":J
    :cond_ff
    const/16 v18, 0x4

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_15f

    .line 2033
    const-wide/16 v18, 0x6

    add-long v18, v18, v12

    .line 2034
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v20

    .line 2033
    invoke-static/range {v18 .. v20}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    .line 2037
    .local v10, "firstDayOfWeek":J
    sub-long v18, v10, v12

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-ltz v18, :cond_12a

    .line 2038
    const-wide/16 v18, 0x7

    sub-long v10, v10, v18

    .line 2040
    :cond_12a
    const/16 v18, 0x7

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_148

    .line 2041
    const-wide/16 v18, 0x6

    add-long v18, v18, v10

    .line 2042
    const/16 v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v20

    .line 2041
    invoke-static/range {v18 .. v20}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    .line 2047
    :cond_148
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    mul-int/lit8 v18, v18, 0x7

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v12, v10, v18

    goto/16 :goto_be

    .line 2050
    .end local v10    # "firstDayOfWeek":J
    :cond_15f
    const/16 v18, 0x7

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_1a2

    .line 2051
    const/16 v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    .line 2059
    .local v6, "dayOfWeek":I
    :goto_175
    const/16 v18, 0x8

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_1a7

    .line 2060
    const/16 v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v7

    .line 2064
    .local v7, "dowim":I
    :goto_18b
    if-ltz v7, :cond_1a9

    .line 2065
    mul-int/lit8 v18, v7, 0x7

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v18, v18, v12

    const-wide/16 v20, 0x1

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v12

    goto/16 :goto_be

    .line 2053
    .end local v6    # "dayOfWeek":I
    .end local v7    # "dowim":I
    :cond_1a2
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v6

    .restart local v6    # "dayOfWeek":I
    goto :goto_175

    .line 2062
    :cond_1a7
    const/4 v7, 0x1

    .restart local v7    # "dowim":I
    goto :goto_18b

    .line 2070
    :cond_1a9
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->monthLength(II)I

    move-result v18

    add-int/lit8 v19, v7, 0x1

    mul-int/lit8 v19, v19, 0x7

    add-int v14, v18, v19

    .line 2072
    .local v14, "lastDate":I
    int-to-long v0, v14

    move-wide/from16 v18, v0

    add-long v18, v18, v12

    const-wide/16 v20, 0x1

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v12

    goto/16 :goto_be

    .line 2079
    .end local v6    # "dayOfWeek":I
    .end local v7    # "dowim":I
    .end local v14    # "lastDate":I
    :cond_1ca
    const/16 v18, 0x6

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_201

    .line 2080
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v18

    if-eqz v18, :cond_1ea

    .line 2081
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v12

    .line 2084
    :cond_1ea
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v12, v12, v18

    .line 2085
    const-wide/16 v18, 0x1

    sub-long v12, v12, v18

    goto/16 :goto_be

    .line 2087
    :cond_201
    const-wide/16 v18, 0x6

    add-long v18, v18, v12

    .line 2088
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v20

    .line 2087
    invoke-static/range {v18 .. v20}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    .line 2091
    .restart local v10    # "firstDayOfWeek":J
    sub-long v18, v10, v12

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-ltz v18, :cond_220

    .line 2092
    const-wide/16 v18, 0x7

    sub-long v10, v10, v18

    .line 2094
    :cond_220
    const/16 v18, 0x7

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_248

    .line 2095
    const/16 v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    .line 2096
    .restart local v6    # "dayOfWeek":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v18

    move/from16 v0, v18

    if-eq v6, v0, :cond_248

    .line 2097
    const-wide/16 v18, 0x6

    add-long v18, v18, v10

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    .line 2101
    .end local v6    # "dayOfWeek":I
    :cond_248
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    sub-long v18, v18, v20

    const-wide/16 v20, 0x7

    mul-long v18, v18, v20

    add-long v12, v10, v18

    goto/16 :goto_be
.end method

.method private getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J
    .registers 12
    .param p1, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;
    .param p2, "fixedDate"    # J

    .prologue
    const/4 v7, 0x1

    .line 2116
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    .line 2117
    .local v1, "era":Lsun/util/calendar/Era;
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    if-ne v3, v7, :cond_2d

    .line 2118
    invoke-static {p1}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v2

    .local v2, "eraIndex":I
    :goto_15
    if-lez v2, :cond_2d

    .line 2119
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    .line 2120
    .local v0, "d":Lsun/util/calendar/CalendarDate;
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v3, v0}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    .line 2122
    .local v4, "fd":J
    cmp-long v3, v4, p2

    if-lez v3, :cond_2c

    .line 2118
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 2125
    :cond_2c
    return-wide v4

    .line 2128
    .end local v0    # "d":Lsun/util/calendar/CalendarDate;
    .end local v2    # "eraIndex":I
    .end local v4    # "fd":J
    :cond_2d
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v6, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v6}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    .line 2129
    .restart local v0    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-virtual {v0, v3, v7, v7}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 2130
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v3, v0}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v6

    return-wide v6
.end method

.method private getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J
    .registers 12
    .param p1, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;
    .param p2, "fixedDate"    # J

    .prologue
    .line 2143
    invoke-static {p1}, Ljava/util/JapaneseImperialCalendar;->getTransitionEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v0

    .line 2144
    .local v0, "eraIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 2145
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v2, v1, v0

    .line 2148
    .local v2, "transition":J
    cmp-long v1, v2, p2

    if-gtz v1, :cond_10

    .line 2149
    return-wide v2

    .line 2154
    .end local v2    # "transition":J
    :cond_10
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v1

    int-to-long v4, v1

    sub-long v4, p2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private getNormalizedCalendar()Ljava/util/JapaneseImperialCalendar;
    .registers 3

    .prologue
    .line 2261
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->isFullyNormalized()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2262
    move-object v0, p0

    .line 2269
    .local v0, "jc":Ljava/util/JapaneseImperialCalendar;
    :goto_7
    return-object v0

    .line 2265
    .end local v0    # "jc":Ljava/util/JapaneseImperialCalendar;
    :cond_8
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/JapaneseImperialCalendar;

    .line 2266
    .restart local v0    # "jc":Ljava/util/JapaneseImperialCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->setLenient(Z)V

    .line 2267
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->complete()V

    goto :goto_7
.end method

.method private static getRolledValue(IIII)I
    .registers 7
    .param p0, "value"    # I
    .param p1, "amount"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 2323
    sget-boolean v2, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v2, :cond_e

    if-lt p0, p2, :cond_8

    if-le p0, p3, :cond_e

    :cond_8
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2324
    :cond_e
    sub-int v2, p3, p2

    add-int/lit8 v1, v2, 0x1

    .line 2325
    .local v1, "range":I
    rem-int/2addr p1, v1

    .line 2326
    add-int v0, p0, p1

    .line 2327
    .local v0, "n":I
    if-le v0, p3, :cond_26

    .line 2328
    sub-int/2addr v0, v1

    .line 2332
    :cond_18
    :goto_18
    sget-boolean v2, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v2, :cond_2a

    if-lt v0, p2, :cond_20

    if-le v0, p3, :cond_2a

    :cond_20
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2329
    :cond_26
    if-ge v0, p2, :cond_18

    .line 2330
    add-int/2addr v0, v1

    goto :goto_18

    .line 2333
    :cond_2a
    return v0
.end method

.method private static getTransitionEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I
    .registers 5
    .param p0, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;

    .prologue
    .line 2215
    invoke-static {p0}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v0

    .line 2216
    .local v0, "eraIndex":I
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    .line 2217
    .local v1, "transitionDate":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 2218
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 2219
    return v0

    .line 2221
    :cond_21
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_47

    .line 2222
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v0, v0, 0x1

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    .line 2223
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    if-ne v2, v3, :cond_47

    .line 2224
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_47

    .line 2225
    return v0

    .line 2228
    :cond_47
    const/4 v2, -0x1

    return v2
.end method

.method private getWeekNumber(JJ)I
    .registers 14
    .param p1, "fixedDay1"    # J
    .param p3, "fixedDate"    # J

    .prologue
    const/4 v7, 0x7

    .line 1803
    const-wide/16 v4, 0x6

    add-long/2addr v4, p1

    .line 1804
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v6

    .line 1803
    invoke-static {v4, v5, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    .line 1805
    .local v0, "fixedDay1st":J
    sub-long v4, v0, p1

    long-to-int v2, v4

    .line 1806
    .local v2, "ndays":I
    sget-boolean v4, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v4, :cond_1b

    if-le v2, v7, :cond_1b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1807
    :cond_1b
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v4

    if-lt v2, v4, :cond_24

    .line 1808
    const-wide/16 v4, 0x7

    sub-long/2addr v0, v4

    .line 1810
    :cond_24
    sub-long v4, p3, v0

    long-to-int v3, v4

    .line 1811
    .local v3, "normalizedDayOfPeriod":I
    if-ltz v3, :cond_2e

    .line 1812
    div-int/lit8 v4, v3, 0x7

    add-int/lit8 v4, v4, 0x1

    return v4

    .line 1814
    :cond_2e
    invoke-static {v3, v7}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J
    .registers 8
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 1495
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, p1}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfYear(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    mul-long v0, v2, v4

    .line 1496
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

.method private internalGetEra()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2341
    invoke-virtual {p0, v1}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v0

    :goto_b
    return v0

    :cond_c
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_b
.end method

.method private isTransitionYear(I)Z
    .registers 6
    .param p1, "normalizedYear"    # I

    .prologue
    const/4 v3, 0x0

    .line 2232
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_6
    if-lez v0, :cond_1a

    .line 2233
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v1

    .line 2234
    .local v1, "transitionYear":I
    if-ne p1, v1, :cond_18

    .line 2235
    const/4 v2, 0x1

    return v2

    .line 2237
    :cond_18
    if-le p1, v1, :cond_1b

    .line 2241
    .end local v1    # "transitionYear":I
    :cond_1a
    return v3

    .line 2232
    .restart local v1    # "transitionYear":I
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method private monthLength(I)I
    .registers 3
    .param p1, "month"    # I

    .prologue
    .line 2186
    sget-boolean v0, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2187
    :cond_12
    iget-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2188
    sget-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    aget v0, v0, p1

    .line 2187
    :goto_1e
    return v0

    .line 2188
    :cond_1f
    sget-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    aget v0, v0, p1

    goto :goto_1e
.end method

.method private monthLength(II)I
    .registers 4
    .param p1, "month"    # I
    .param p2, "gregorianYear"    # I

    .prologue
    .line 2175
    invoke-static {p2}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2176
    sget-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    aget v0, v0, p1

    .line 2175
    :goto_a
    return v0

    .line 2176
    :cond_b
    sget-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    aget v0, v0, p1

    goto :goto_a
.end method

.method private pinDayOfMonth(Lsun/util/calendar/LocalGregorianCalendar$Date;)V
    .registers 15
    .param p1, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;

    .prologue
    const/4 v12, 0x1

    .line 2279
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v6

    .line 2280
    .local v6, "year":I
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v1

    .line 2281
    .local v1, "dom":I
    invoke-virtual {p0, v12}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v7

    if-eq v6, v7, :cond_2c

    .line 2282
    invoke-virtual {p1, v12}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2283
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v7, p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 2284
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v7, p1}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v2

    .line 2285
    .local v2, "monthLength":I
    if-le v1, v2, :cond_28

    .line 2286
    invoke-virtual {p1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2290
    :goto_22
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v7, p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 2317
    :goto_27
    return-void

    .line 2288
    :cond_28
    invoke-virtual {p1, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_22

    .line 2292
    .end local v2    # "monthLength":I
    :cond_2c
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v8

    const-wide/high16 v10, -0x8000000000000000L

    invoke-virtual {v7, v10, v11, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    .line 2293
    .local v0, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-wide v8, p0, Ljava/util/JapaneseImperialCalendar;->time:J

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 2294
    .local v3, "realDate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v4

    .line 2296
    .local v4, "tod":J
    const/16 v7, 0x190

    invoke-virtual {v3, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2297
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v7

    invoke-virtual {v3, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2298
    invoke-virtual {v3, v12}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2299
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v7, v3}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 2300
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v7, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v2

    .line 2301
    .restart local v2    # "monthLength":I
    if-le v1, v2, :cond_8e

    .line 2302
    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2310
    :goto_67
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v8

    if-ne v7, v8, :cond_82

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-gez v7, :cond_82

    .line 2311
    add-int/lit8 v7, v1, 0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2314
    :cond_82
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v7

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v8

    invoke-virtual {p1, v6, v7, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    goto :goto_27

    .line 2304
    :cond_8e
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v7

    if-ge v1, v7, :cond_9c

    .line 2305
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v3, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_67

    .line 2307
    :cond_9c
    invoke-virtual {v3, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_67
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
    .line 2349
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2350
    iget-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    if-nez v0, :cond_17

    .line 2351
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2352
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 2354
    :cond_17
    return-void
.end method


# virtual methods
.method public add(II)V
    .registers 21
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .prologue
    .line 386
    if-nez p2, :cond_3

    .line 387
    return-void

    .line 390
    :cond_3
    if-ltz p1, :cond_b

    const/16 v13, 0xf

    move/from16 v0, p1

    if-lt v0, v13, :cond_11

    .line 391
    :cond_b
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v13

    .line 395
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->complete()V

    .line 397
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_58

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 399
    .local v2, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 400
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/JapaneseImperialCalendar;->pinDayOfMonth(Lsun/util/calendar/LocalGregorianCalendar$Date;)V

    .line 401
    invoke-static {v2}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 402
    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 403
    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 404
    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v13

    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 509
    .end local v2    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_57
    :goto_57
    return-void

    .line 405
    :cond_58
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_9c

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 407
    .restart local v2    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addMonth(I)Lsun/util/calendar/CalendarDate;

    .line 408
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/JapaneseImperialCalendar;->pinDayOfMonth(Lsun/util/calendar/LocalGregorianCalendar$Date;)V

    .line 409
    invoke-static {v2}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 410
    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 411
    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 412
    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v13

    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto :goto_57

    .line 413
    .end local v2    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_9c
    if-nez p1, :cond_be

    .line 414
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    add-int v3, v13, p2

    .line 415
    .local v3, "era":I
    if-gez v3, :cond_b1

    .line 416
    const/4 v3, 0x0

    .line 420
    :cond_aa
    :goto_aa
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto :goto_57

    .line 417
    :cond_b1
    sget-object v13, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    if-le v3, v13, :cond_aa

    .line 418
    sget-object v13, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v13, v13

    add-int/lit8 v3, v13, -0x1

    goto :goto_aa

    .line 422
    .end local v3    # "era":I
    :cond_be
    move/from16 v0, p2

    int-to-long v4, v0

    .line 423
    .local v4, "delta":J
    const-wide/16 v10, 0x0

    .line 424
    .local v10, "timeOfDay":J
    packed-switch p1, :pswitch_data_1a6

    .line 467
    :goto_c6
    :pswitch_c6
    const/16 v13, 0xa

    move/from16 v0, p1

    if-lt v0, v13, :cond_f2

    .line 468
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    add-long/2addr v14, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    .line 469
    return-void

    .line 429
    :pswitch_d7
    const-wide/32 v14, 0x36ee80

    mul-long/2addr v4, v14

    .line 430
    goto :goto_c6

    .line 433
    :pswitch_dc
    const-wide/32 v14, 0xea60

    mul-long/2addr v4, v14

    .line 434
    goto :goto_c6

    .line 437
    :pswitch_e1
    const-wide/16 v14, 0x3e8

    mul-long/2addr v4, v14

    .line 438
    goto :goto_c6

    .line 449
    :pswitch_e5
    const-wide/16 v14, 0x7

    mul-long/2addr v4, v14

    .line 450
    goto :goto_c6

    .line 460
    :pswitch_e9
    div-int/lit8 v13, p2, 0x2

    int-to-long v4, v13

    .line 461
    rem-int/lit8 v13, p2, 0x2

    mul-int/lit8 v13, v13, 0xc

    int-to-long v10, v13

    .line 462
    goto :goto_c6

    .line 478
    :cond_f2
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 479
    .local v6, "fd":J
    const/16 v13, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    int-to-long v14, v13

    add-long/2addr v10, v14

    .line 480
    const-wide/16 v14, 0x3c

    mul-long/2addr v10, v14

    .line 481
    const/16 v13, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    int-to-long v14, v13

    add-long/2addr v10, v14

    .line 482
    const-wide/16 v14, 0x3c

    mul-long/2addr v10, v14

    .line 483
    const/16 v13, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    int-to-long v14, v13

    add-long/2addr v10, v14

    .line 484
    const-wide/16 v14, 0x3e8

    mul-long/2addr v10, v14

    .line 485
    const/16 v13, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    int-to-long v14, v13

    add-long/2addr v10, v14

    .line 486
    const-wide/32 v14, 0x5265c00

    cmp-long v13, v10, v14

    if-ltz v13, :cond_197

    .line 487
    const-wide/16 v14, 0x1

    add-long/2addr v6, v14

    .line 488
    const-wide/32 v14, 0x5265c00

    sub-long/2addr v10, v14

    .line 494
    :cond_135
    :goto_135
    add-long/2addr v6, v4

    .line 495
    const/16 v13, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    const/16 v14, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v14

    add-int v12, v13, v14

    .line 496
    .local v12, "zoneOffset":I
    const-wide/32 v14, 0xaf93b

    sub-long v14, v6, v14

    const-wide/32 v16, 0x5265c00

    mul-long v14, v14, v16

    add-long/2addr v14, v10

    int-to-long v0, v12

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    .line 497
    const/16 v13, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    const/16 v14, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v14

    add-int/2addr v13, v14

    sub-int/2addr v12, v13

    .line 499
    if-eqz v12, :cond_57

    .line 500
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    int-to-long v0, v12

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    .line 501
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 504
    .local v8, "fd2":J
    cmp-long v13, v8, v6

    if-eqz v13, :cond_57

    .line 505
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    int-to-long v0, v12

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    goto/16 :goto_57

    .line 489
    .end local v8    # "fd2":J
    .end local v12    # "zoneOffset":I
    :cond_197
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-gez v13, :cond_135

    .line 490
    const-wide/16 v14, 0x1

    sub-long/2addr v6, v14

    .line 491
    const-wide/32 v14, 0x5265c00

    add-long/2addr v10, v14

    goto :goto_135

    .line 424
    nop

    :pswitch_data_1a6
    .packed-switch 0x3
        :pswitch_e5
        :pswitch_e5
        :pswitch_c6
        :pswitch_c6
        :pswitch_c6
        :pswitch_e5
        :pswitch_e9
        :pswitch_d7
        :pswitch_d7
        :pswitch_dc
        :pswitch_e1
        :pswitch_c6
    .end packed-switch
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1500
    invoke-super {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/JapaneseImperialCalendar;

    .line 1502
    .local v0, "other":Ljava/util/JapaneseImperialCalendar;
    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    iput-object v1, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1503
    iput-object v2, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    .line 1504
    iput-object v2, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    .line 1505
    return-object v0
.end method

.method protected computeFields()V
    .registers 8

    .prologue
    const v6, 0x1ffff

    const/4 v3, 0x0

    .line 1537
    const/4 v1, 0x0

    .line 1538
    .local v1, "mask":I
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->isPartiallyNormalized()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1540
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getSetStateFields()I

    move-result v1

    .line 1541
    not-int v2, v1

    and-int v0, v2, v6

    .line 1542
    .local v0, "fieldMask":I
    if-nez v0, :cond_1c

    iget-wide v2, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_37

    .line 1544
    :cond_1c
    const v2, 0x18000

    and-int/2addr v2, v1

    .line 1543
    invoke-direct {p0, v0, v2}, Ljava/util/JapaneseImperialCalendar;->computeFields(II)I

    move-result v2

    or-int/2addr v1, v2

    .line 1545
    sget-boolean v2, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v2, :cond_37

    if-eq v1, v6, :cond_37

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1549
    .end local v0    # "fieldMask":I
    :cond_31
    const v1, 0x1ffff

    .line 1550
    invoke-direct {p0, v1, v3}, Ljava/util/JapaneseImperialCalendar;->computeFields(II)I

    .line 1553
    :cond_37
    invoke-virtual {p0, v1}, Ljava/util/JapaneseImperialCalendar;->setFieldsComputed(I)V

    .line 1554
    return-void
.end method

.method protected computeTime()V
    .registers 27

    .prologue
    .line 1828
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->isLenient()Z

    move-result v21

    if-nez v21, :cond_5e

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    move-object/from16 v21, v0

    if-nez v21, :cond_1c

    .line 1830
    const/16 v21, 0x11

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    .line 1832
    :cond_1c
    const/4 v7, 0x0

    .local v7, "field":I
    :goto_1d
    const/16 v21, 0x11

    move/from16 v0, v21

    if-ge v7, v0, :cond_5e

    .line 1833
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v17

    .line 1834
    .local v17, "value":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->isExternallySet(I)Z

    move-result v21

    if-eqz v21, :cond_53

    .line 1836
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_49

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_53

    .line 1837
    :cond_49
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-static {v7}, Ljava/util/JapaneseImperialCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1840
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    move-object/from16 v21, v0

    aput v17, v21, v7

    .line 1832
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 1846
    .end local v7    # "field":I
    .end local v17    # "value":I
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->selectFields()I

    move-result v8

    .line 1851
    .local v8, "fieldMask":I
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v21

    if-eqz v21, :cond_109

    .line 1852
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    .line 1853
    .local v6, "era":I
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v21

    if-eqz v21, :cond_106

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v19

    .line 1867
    .local v19, "year":I
    :goto_8e
    const-wide/16 v14, 0x0

    .line 1868
    .local v14, "timeOfDay":J
    const/16 v21, 0xb

    move/from16 v0, v21

    invoke-static {v8, v0}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v21

    if-eqz v21, :cond_12f

    .line 1869
    const/16 v21, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 1867
    const-wide/16 v24, 0x0

    .line 1869
    add-long v14, v24, v22

    .line 1877
    :cond_ad
    :goto_ad
    const-wide/16 v22, 0x3c

    mul-long v14, v14, v22

    .line 1878
    const/16 v21, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v14, v14, v22

    .line 1879
    const-wide/16 v22, 0x3c

    mul-long v14, v14, v22

    .line 1880
    const/16 v21, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v14, v14, v22

    .line 1881
    const-wide/16 v22, 0x3e8

    mul-long v14, v14, v22

    .line 1882
    const/16 v21, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v14, v14, v22

    .line 1886
    const-wide/32 v22, 0x5265c00

    div-long v10, v14, v22

    .line 1887
    .local v10, "fixedDate":J
    const-wide/32 v22, 0x5265c00

    rem-long v14, v14, v22

    .line 1888
    :goto_f6
    const-wide/16 v22, 0x0

    cmp-long v21, v14, v22

    if-gez v21, :cond_161

    .line 1889
    const-wide/32 v22, 0x5265c00

    add-long v14, v14, v22

    .line 1890
    const-wide/16 v22, 0x1

    sub-long v10, v10, v22

    goto :goto_f6

    .line 1853
    .end local v10    # "fixedDate":J
    .end local v14    # "timeOfDay":J
    .end local v19    # "year":I
    :cond_106
    const/16 v19, 0x1

    .restart local v19    # "year":I
    goto :goto_8e

    .line 1855
    .end local v6    # "era":I
    .end local v19    # "year":I
    :cond_109
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v21

    if-eqz v21, :cond_12a

    .line 1856
    sget-object v21, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v6, v21, -0x1

    .line 1857
    .restart local v6    # "era":I
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v19

    .restart local v19    # "year":I
    goto/16 :goto_8e

    .line 1860
    .end local v6    # "era":I
    .end local v19    # "year":I
    :cond_12a
    const/4 v6, 0x3

    .line 1861
    .restart local v6    # "era":I
    const/16 v19, 0x2d

    .restart local v19    # "year":I
    goto/16 :goto_8e

    .line 1871
    .restart local v14    # "timeOfDay":J
    :cond_12f
    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 1867
    const-wide/16 v24, 0x0

    .line 1871
    add-long v14, v24, v22

    .line 1873
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-static {v8, v0}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v21

    if-eqz v21, :cond_ad

    .line 1874
    const/16 v21, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v21

    mul-int/lit8 v21, v21, 0xc

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v14, v14, v22

    goto/16 :goto_ad

    .line 1894
    .restart local v10    # "fixedDate":J
    :cond_161
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v6, v1, v8}, Ljava/util/JapaneseImperialCalendar;->getFixedDate(III)J

    move-result-wide v22

    add-long v10, v10, v22

    .line 1897
    const-wide/32 v22, 0xaf93b

    sub-long v22, v10, v22

    const-wide/32 v24, 0x5265c00

    mul-long v22, v22, v24

    add-long v12, v22, v14

    .line 1912
    .local v12, "millis":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v20

    .line 1913
    .local v20, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v21, v0

    if-nez v21, :cond_191

    .line 1914
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    .line 1916
    :cond_191
    const v21, 0x18000

    and-int v16, v8, v21

    .line 1917
    .local v16, "tzMask":I
    const v21, 0x18000

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_1b9

    .line 1922
    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/TimeZone;->getOffsets(J[I)I

    .line 1925
    :cond_1b9
    if-eqz v16, :cond_1fb

    .line 1926
    const/16 v21, 0xf

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v21

    if-eqz v21, :cond_1db

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v21, v0

    const/16 v22, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v22

    const/16 v23, 0x0

    aput v22, v21, v23

    .line 1929
    :cond_1db
    const/16 v21, 0x10

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v21

    if-eqz v21, :cond_1fb

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v21, v0

    const/16 v22, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v22

    const/16 v23, 0x1

    aput v22, v21, v23

    .line 1935
    :cond_1fb
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v12, v12, v22

    .line 1938
    move-object/from16 v0, p0

    iput-wide v12, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    .line 1940
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getSetStateFields()I

    move-result v21

    or-int v21, v21, v8

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->computeFields(II)I

    move-result v9

    .line 1942
    .local v9, "mask":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->isLenient()Z

    move-result v21

    if-nez v21, :cond_2bf

    .line 1943
    const/4 v7, 0x0

    .restart local v7    # "field":I
    :goto_233
    const/16 v21, 0x11

    move/from16 v0, v21

    if-ge v7, v0, :cond_2bf

    .line 1944
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->isExternallySet(I)Z

    move-result v21

    if-nez v21, :cond_244

    .line 1943
    :cond_241
    add-int/lit8 v7, v7, 0x1

    goto :goto_233

    .line 1947
    :cond_244
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    move-object/from16 v21, v0

    aget v21, v21, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_241

    .line 1948
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v18

    .line 1950
    .local v18, "wrongValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->fields:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->fields:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, v22

    move/from16 v3, v25

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1951
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/util/JapaneseImperialCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1952
    const-string/jumbo v23, ", expected "

    .line 1951
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1952
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    move-object/from16 v23, v0

    aget v23, v23, v7

    .line 1951
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1956
    .end local v7    # "field":I
    .end local v18    # "wrongValue":I
    :cond_2bf
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->setFieldsNormalized(I)V

    .line 1957
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 343
    instance-of v0, p1, Ljava/util/JapaneseImperialCalendar;

    if-eqz v0, :cond_9

    .line 344
    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 343
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getActualMaximum(I)I
    .registers 52
    .param p1, "field"    # I

    .prologue
    .line 1257
    const v15, 0x1fe81

    .line 1260
    .local v15, "fieldsForFixedMax":I
    const/16 v44, 0x1

    shl-int v44, v44, p1

    const v45, 0x1fe81

    and-int v44, v44, v45

    if-eqz v44, :cond_13

    .line 1261
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v44

    return v44

    .line 1264
    :cond_13
    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getNormalizedCalendar()Ljava/util/JapaneseImperialCalendar;

    move-result-object v24

    .line 1265
    .local v24, "jc":Ljava/util/JapaneseImperialCalendar;
    move-object/from16 v0, v24

    iget-object v10, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1266
    .local v10, "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v35

    .line 1268
    .local v35, "normalizedYear":I
    const/16 v42, -0x1

    .line 1269
    .local v42, "value":I
    packed-switch p1, :pswitch_data_532

    .line 1483
    :pswitch_24
    new-instance v44, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object/from16 v0, v44

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v44

    .line 1272
    :pswitch_2e
    const/16 v42, 0xb

    .line 1273
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v44

    if-eqz v44, :cond_8f

    .line 1275
    invoke-static {v10}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v14

    .line 1276
    .local v14, "eraIndex":I
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_65

    .line 1277
    add-int/lit8 v14, v14, 0x1

    .line 1278
    sget-boolean v44, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v44, :cond_65

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    if-lt v14, v0, :cond_65

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    .line 1280
    :cond_65
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v40, v44, v14

    .line 1281
    .local v40, "transition":J
    move-object/from16 v0, v24

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    move-wide/from16 v16, v0

    .line 1282
    .local v16, "fd":J
    cmp-long v44, v16, v40

    if-gez v44, :cond_8e

    .line 1284
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1285
    .local v27, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    const-wide/16 v46, 0x1

    sub-long v46, v40, v46

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 1286
    invoke-virtual/range {v27 .. v27}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v44

    add-int/lit8 v42, v44, -0x1

    .line 1485
    .end local v14    # "eraIndex":I
    .end local v16    # "fd":J
    .end local v27    # "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v40    # "transition":J
    :cond_8e
    :goto_8e
    return v42

    .line 1289
    :cond_8f
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    .line 1290
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    .line 1289
    const-wide v46, 0x7fffffffffffffffL

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v8

    .line 1291
    .local v8, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v44

    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_8e

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_8e

    .line 1292
    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v44

    add-int/lit8 v42, v44, -0x1

    goto :goto_8e

    .line 1299
    .end local v8    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :pswitch_c7
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v42

    goto :goto_8e

    .line 1304
    :pswitch_d0
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v44

    if-eqz v44, :cond_155

    .line 1307
    invoke-static {v10}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v14

    .line 1308
    .restart local v14    # "eraIndex":I
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_105

    .line 1309
    add-int/lit8 v14, v14, 0x1

    .line 1310
    sget-boolean v44, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v44, :cond_105

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    if-lt v14, v0, :cond_105

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    .line 1312
    :cond_105
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v40, v44, v14

    .line 1313
    .restart local v40    # "transition":J
    move-object/from16 v0, v24

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    move-wide/from16 v16, v0

    .line 1314
    .restart local v16    # "fd":J
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v45, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual/range {v44 .. v45}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v7

    .line 1315
    .local v7, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v44

    const/16 v45, 0x1

    const/16 v46, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v7, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1316
    cmp-long v44, v16, v40

    if-gez v44, :cond_13d

    .line 1317
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v44

    sub-long v44, v40, v44

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v42, v0

    goto/16 :goto_8e

    .line 1319
    :cond_13d
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 1320
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v44

    sub-long v44, v44, v40

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v42, v0

    goto/16 :goto_8e

    .line 1323
    .end local v7    # "d":Lsun/util/calendar/CalendarDate;
    .end local v14    # "eraIndex":I
    .end local v16    # "fd":J
    .end local v40    # "transition":J
    :cond_155
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    .line 1324
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    .line 1323
    const-wide v46, 0x7fffffffffffffffL

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v8

    .line 1325
    .restart local v8    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v44

    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_1a1

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1a1

    .line 1326
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v16

    .line 1327
    .restart local v16    # "fd":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v8, v1, v2}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v22

    .line 1328
    .local v22, "jan1":J
    sub-long v44, v16, v22

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    add-int/lit8 v42, v44, 0x1

    .line 1325
    goto/16 :goto_8e

    .line 1329
    .end local v16    # "fd":J
    .end local v22    # "jan1":J
    :cond_1a1
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    const/16 v45, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1fb

    .line 1330
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    const-wide/high16 v46, -0x8000000000000000L

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v9

    .line 1331
    .local v9, "d1":Lsun/util/calendar/CalendarDate;
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v18

    .line 1332
    .local v18, "fd1":J
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v9, v0}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 1333
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v9, v0}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v44

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1334
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1335
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v20

    .line 1336
    .local v20, "fd2":J
    sub-long v44, v20, v18

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v42, v0

    goto/16 :goto_8e

    .line 1338
    .end local v9    # "d1":Lsun/util/calendar/CalendarDate;
    .end local v18    # "fd1":J
    .end local v20    # "fd2":J
    :cond_1fb
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getYearLength(Lsun/util/calendar/CalendarDate;)I

    move-result v42

    goto/16 :goto_8e

    .line 1346
    .end local v8    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :pswitch_205
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v44

    if-nez v44, :cond_35d

    .line 1347
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    .line 1348
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    .line 1347
    const-wide v46, 0x7fffffffffffffffL

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v26

    .line 1349
    .local v26, "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v44

    invoke-virtual/range {v26 .. v26}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_264

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    invoke-virtual/range {v26 .. v26}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_264

    .line 1350
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v16

    .line 1351
    .restart local v16    # "fd":J
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v22

    .line 1352
    .restart local v22    # "jan1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v42

    goto/16 :goto_8e

    .line 1353
    .end local v16    # "fd":J
    .end local v22    # "jan1":J
    :cond_264
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v44

    if-nez v44, :cond_306

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    const/16 v45, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_306

    .line 1354
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    const-wide/high16 v46, -0x8000000000000000L

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    .line 1356
    .restart local v7    # "d":Lsun/util/calendar/CalendarDate;
    const/16 v44, 0x190

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 1357
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1358
    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1359
    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v44

    add-int/lit8 v44, v44, 0x1

    const/16 v45, 0x1

    const/16 v46, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1360
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1361
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v22

    .line 1362
    .restart local v22    # "jan1":J
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v36

    .line 1363
    .local v36, "nextJan1":J
    const-wide/16 v44, 0x6

    add-long v44, v44, v36

    .line 1364
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v46

    .line 1363
    invoke-static/range {v44 .. v46}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v38

    .line 1365
    .local v38, "nextJan1st":J
    sub-long v44, v38, v36

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v34, v0

    .line 1366
    .local v34, "ndays":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v44

    move/from16 v0, v34

    move/from16 v1, v44

    if-lt v0, v1, :cond_2fa

    .line 1367
    const-wide/16 v44, 0x7

    sub-long v38, v38, v44

    .line 1369
    :cond_2fa
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v38

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v42

    goto/16 :goto_8e

    .line 1372
    .end local v7    # "d":Lsun/util/calendar/CalendarDate;
    .end local v22    # "jan1":J
    .end local v34    # "ndays":I
    .end local v36    # "nextJan1":J
    .end local v38    # "nextJan1st":J
    :cond_306
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v45, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual/range {v44 .. v45}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v7

    .line 1373
    .restart local v7    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v44

    const/16 v45, 0x1

    const/16 v46, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v7, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1374
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lsun/util/calendar/Gregorian;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v11

    .line 1376
    .local v11, "dayOfWeek":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v44

    sub-int v11, v11, v44

    .line 1377
    if-gez v11, :cond_331

    .line 1378
    add-int/lit8 v11, v11, 0x7

    .line 1380
    :cond_331
    const/16 v42, 0x34

    .line 1381
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v44

    add-int v44, v44, v11

    add-int/lit8 v28, v44, -0x1

    .line 1382
    .local v28, "magic":I
    const/16 v44, 0x6

    move/from16 v0, v28

    move/from16 v1, v44

    if-eq v0, v1, :cond_359

    .line 1383
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v44

    if-eqz v44, :cond_8e

    const/16 v44, 0x5

    move/from16 v0, v28

    move/from16 v1, v44

    if-eq v0, v1, :cond_359

    const/16 v44, 0xc

    move/from16 v0, v28

    move/from16 v1, v44

    if-ne v0, v1, :cond_8e

    .line 1384
    :cond_359
    const/16 v42, 0x35

    goto/16 :goto_8e

    .line 1390
    .end local v7    # "d":Lsun/util/calendar/CalendarDate;
    .end local v11    # "dayOfWeek":I
    .end local v26    # "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v28    # "magic":I
    :cond_35d
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_369

    .line 1391
    invoke-virtual/range {v24 .. v24}, Ljava/util/JapaneseImperialCalendar;->clone()Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "jc":Ljava/util/JapaneseImperialCalendar;
    check-cast v24, Ljava/util/JapaneseImperialCalendar;

    .line 1393
    .restart local v24    # "jc":Ljava/util/JapaneseImperialCalendar;
    :cond_369
    const/16 v44, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v29

    .line 1394
    .local v29, "max":I
    const/16 v44, 0x6

    move-object/from16 v0, v24

    move/from16 v1, v44

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 1395
    const/16 v44, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v42

    .line 1396
    const/16 v44, 0x1

    move/from16 v0, v42

    move/from16 v1, v44

    if-ne v0, v1, :cond_8e

    const/16 v44, 0x7

    move/from16 v0, v29

    move/from16 v1, v44

    if-le v0, v1, :cond_8e

    .line 1397
    const/16 v44, 0x3

    const/16 v45, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->add(II)V

    .line 1398
    const/16 v44, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v42

    goto/16 :goto_8e

    .line 1405
    .end local v29    # "max":I
    :pswitch_3b1
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    .line 1406
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    .line 1405
    const-wide v46, 0x7fffffffffffffffL

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v26

    .line 1407
    .restart local v26    # "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v44

    invoke-virtual/range {v26 .. v26}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_3e2

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    invoke-virtual/range {v26 .. v26}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_43b

    .line 1408
    :cond_3e2
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v45, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual/range {v44 .. v45}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v7

    .line 1409
    .restart local v7    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v44

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v7, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1410
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lsun/util/calendar/Gregorian;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v11

    .line 1411
    .restart local v11    # "dayOfWeek":I
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lsun/util/calendar/Gregorian;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v32

    .line 1412
    .local v32, "monthLength":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v44

    sub-int v11, v11, v44

    .line 1413
    if-gez v11, :cond_417

    .line 1414
    add-int/lit8 v11, v11, 0x7

    .line 1416
    :cond_417
    rsub-int/lit8 v33, v11, 0x7

    .line 1417
    .local v33, "nDaysFirstWeek":I
    const/16 v42, 0x3

    .line 1418
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v44

    move/from16 v0, v33

    move/from16 v1, v44

    if-lt v0, v1, :cond_427

    .line 1419
    const/16 v42, 0x4

    .line 1421
    :cond_427
    add-int/lit8 v44, v33, 0x15

    sub-int v32, v32, v44

    .line 1422
    if-lez v32, :cond_8e

    .line 1423
    add-int/lit8 v42, v42, 0x1

    .line 1424
    const/16 v44, 0x7

    move/from16 v0, v32

    move/from16 v1, v44

    if-le v0, v1, :cond_8e

    .line 1425
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_8e

    .line 1429
    .end local v7    # "d":Lsun/util/calendar/CalendarDate;
    .end local v11    # "dayOfWeek":I
    .end local v32    # "monthLength":I
    .end local v33    # "nDaysFirstWeek":I
    :cond_43b
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v16

    .line 1430
    .restart local v16    # "fd":J
    invoke-virtual/range {v26 .. v26}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v44

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    sub-long v44, v16, v44

    const-wide/16 v46, 0x1

    add-long v30, v44, v46

    .line 1431
    .local v30, "month1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v42

    goto/16 :goto_8e

    .line 1439
    .end local v16    # "fd":J
    .end local v26    # "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v30    # "month1":J
    :pswitch_460
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfWeek()I

    move-result v12

    .line 1440
    .local v12, "dow":I
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/util/calendar/BaseCalendar$Date;

    .line 1441
    .local v6, "d":Lsun/util/calendar/BaseCalendar$Date;
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v34

    .line 1442
    .restart local v34    # "ndays":I
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1443
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1444
    invoke-virtual {v6}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v13

    .line 1445
    .local v13, "dow1":I
    sub-int v43, v12, v13

    .line 1446
    .local v43, "x":I
    if-gez v43, :cond_48a

    .line 1447
    add-int/lit8 v43, v43, 0x7

    .line 1449
    :cond_48a
    sub-int v34, v34, v43

    .line 1450
    add-int/lit8 v44, v34, 0x6

    div-int/lit8 v42, v44, 0x7

    goto/16 :goto_8e

    .line 1456
    .end local v6    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v12    # "dow":I
    .end local v13    # "dow1":I
    .end local v34    # "ndays":I
    .end local v43    # "x":I
    :pswitch_492
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {v24 .. v24}, Ljava/util/JapaneseImperialCalendar;->getTimeInMillis()J

    move-result-wide v46

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v25

    .line 1458
    .local v25, "jd":Lsun/util/calendar/CalendarDate;
    invoke-static {v10}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v14

    .line 1459
    .restart local v14    # "eraIndex":I
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move/from16 v0, v44

    if-ne v14, v0, :cond_504

    .line 1460
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    const-wide v46, 0x7fffffffffffffffL

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    .line 1461
    .restart local v7    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v42

    .line 1464
    const/16 v44, 0x190

    move/from16 v0, v42

    move/from16 v1, v44

    if-le v0, v1, :cond_4e5

    .line 1465
    move/from16 v0, v42

    add-int/lit16 v0, v0, -0x190

    move/from16 v44, v0

    move-object/from16 v0, v25

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 1475
    :cond_4e5
    :goto_4e5
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1476
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v44

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v46

    cmp-long v44, v44, v46

    if-lez v44, :cond_8e

    .line 1477
    add-int/lit8 v42, v42, -0x1

    goto/16 :goto_8e

    .line 1468
    .end local v7    # "d":Lsun/util/calendar/CalendarDate;
    :cond_504
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    sget-object v45, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v46, v14, 0x1

    aget-object v45, v45, v46

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v46

    const-wide/16 v48, 0x1

    sub-long v46, v46, v48

    .line 1469
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    .line 1468
    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    .line 1470
    .restart local v7    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v42

    .line 1473
    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    goto :goto_4e5

    .line 1269
    :pswitch_data_532
    .packed-switch 0x1
        :pswitch_492
        :pswitch_2e
        :pswitch_205
        :pswitch_3b1
        :pswitch_c7
        :pswitch_d0
        :pswitch_24
        :pswitch_460
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .registers 26
    .param p1, "field"    # I

    .prologue
    .line 1148
    const/16 v19, 0xe

    move/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v19

    if-nez v19, :cond_11

    .line 1149
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v19

    return v19

    .line 1152
    :cond_11
    const/16 v16, 0x0

    .line 1153
    .local v16, "value":I
    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getNormalizedCalendar()Ljava/util/JapaneseImperialCalendar;

    move-result-object v12

    .line 1156
    .local v12, "jc":Ljava/util/JapaneseImperialCalendar;
    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v12}, Ljava/util/JapaneseImperialCalendar;->getTimeInMillis()J

    move-result-wide v20

    .line 1157
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v22

    .line 1156
    invoke-virtual/range {v19 .. v22}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v13

    .line 1158
    .local v13, "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-static {v13}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v5

    .line 1159
    .local v5, "eraIndex":I
    packed-switch p1, :pswitch_data_186

    .line 1231
    :cond_2c
    :goto_2c
    return v16

    .line 1162
    :pswitch_2d
    if-lez v5, :cond_86

    .line 1163
    const/16 v16, 0x1

    .line 1164
    sget-object v19, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v19, v19, v5

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v14

    .line 1165
    .local v14, "since":J
    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v15, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 1169
    .local v4, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1170
    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1171
    sget-boolean v19, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v19, :cond_73

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v19

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->isLeapYear()Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_73

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 1172
    :cond_73
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v20

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_2c

    .line 1173
    const/16 v16, 0x2

    goto :goto_2c

    .line 1176
    .end local v4    # "d":Lsun/util/calendar/CalendarDate;
    .end local v14    # "since":J
    :cond_86
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v16

    .line 1177
    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v20

    const-wide/high16 v22, -0x8000000000000000L

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 1181
    .restart local v4    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v18

    .line 1182
    .local v18, "y":I
    const/16 v19, 0x190

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_ae

    .line 1183
    move/from16 v0, v18

    add-int/lit16 v0, v0, -0x190

    move/from16 v18, v0

    .line 1185
    :cond_ae
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1186
    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1187
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v20

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_2c

    .line 1188
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2c

    .line 1197
    .end local v4    # "d":Lsun/util/calendar/CalendarDate;
    .end local v18    # "y":I
    :pswitch_ce
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v5, v0, :cond_2c

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2c

    .line 1198
    sget-object v19, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v19, v19, v5

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v14

    .line 1199
    .restart local v14    # "since":J
    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v15, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 1200
    .restart local v4    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v19

    add-int/lit8 v16, v19, -0x1

    .line 1201
    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v19

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2c

    .line 1202
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2c

    .line 1210
    .end local v4    # "d":Lsun/util/calendar/CalendarDate;
    .end local v14    # "since":J
    :pswitch_112
    const/16 v16, 0x1

    .line 1211
    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v20

    const-wide/high16 v22, -0x8000000000000000L

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 1213
    .restart local v4    # "d":Lsun/util/calendar/CalendarDate;
    const/16 v19, 0x190

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 1214
    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1215
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1216
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1217
    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1219
    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    .line 1220
    .local v10, "jan1":J
    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    .line 1221
    .local v8, "fd":J
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v8, v9}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v17

    .line 1222
    .local v17, "woy":I
    add-int/lit8 v19, v17, -0x1

    mul-int/lit8 v19, v19, 0x7

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v6, v8, v20

    .line 1223
    .local v6, "day1":J
    cmp-long v19, v6, v10

    if-ltz v19, :cond_182

    .line 1224
    cmp-long v19, v6, v10

    if-nez v19, :cond_2c

    .line 1225
    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v20

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_2c

    .line 1226
    :cond_182
    const/16 v16, 0x2

    goto/16 :goto_2c

    .line 1159
    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_ce
        :pswitch_112
    .end packed-switch
.end method

.method public getCalendarType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 326
    const-string/jumbo v0, "japanese"

    return-object v0
.end method

.method public getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .registers 16
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x1

    .line 965
    const/4 v4, 0x4

    .line 966
    const/16 v6, 0x287

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 965
    invoke-virtual/range {v0 .. v6}, Ljava/util/JapaneseImperialCalendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 967
    return-object v11

    .line 970
    :cond_11
    invoke-virtual {p0, p1}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v8

    .line 973
    .local v8, "fieldValue":I
    if-ne p1, v3, :cond_27

    .line 974
    invoke-virtual {p0, p2}, Ljava/util/JapaneseImperialCalendar;->getBaseStyle(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    if-eq v8, v3, :cond_21

    .line 975
    :cond_20
    return-object v11

    .line 974
    :cond_21
    invoke-virtual {p0, v10}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v0

    if-eqz v0, :cond_20

    .line 978
    :cond_27
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getCalendarType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v8, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 982
    .local v9, "name":Ljava/lang/String;
    if-nez v9, :cond_42

    if-nez p1, :cond_42

    sget-object v0, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v0, v0

    if-ge v8, v0, :cond_42

    .line 983
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v7, v0, v8

    .line 984
    .local v7, "era":Lsun/util/calendar/Era;
    if-ne p2, v3, :cond_43

    invoke-virtual {v7}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v9

    .line 986
    .end local v7    # "era":Lsun/util/calendar/Era;
    :cond_42
    :goto_42
    return-object v9

    .line 984
    .restart local v7    # "era":Lsun/util/calendar/Era;
    :cond_43
    invoke-virtual {v7}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v9

    goto :goto_42
.end method

.method public getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;
    .registers 22
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
    .line 991
    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 992
    const/16 v9, 0x287

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 991
    invoke-virtual/range {v3 .. v9}, Ljava/util/JapaneseImperialCalendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 993
    const/4 v3, 0x0

    return-object v3

    .line 996
    :cond_14
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getCalendarType()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v3, v0, v1, v2}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v15

    .line 998
    .local v15, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v15, :cond_96

    .line 999
    if-nez p1, :cond_96

    .line 1000
    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v16

    .line 1001
    .local v16, "size":I
    if-nez p2, :cond_55

    .line 1002
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 1004
    .local v17, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "key$iterator":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1005
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1007
    .end local v13    # "key":Ljava/lang/String;
    :cond_51
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v16

    .line 1009
    .end local v14    # "key$iterator":Ljava/util/Iterator;
    .end local v17    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_55
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v3, v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_96

    .line 1010
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getBaseStyle(I)I

    move-result v10

    .line 1011
    .local v10, "baseStyle":I
    move/from16 v12, v16

    .local v12, "i":I
    :goto_66
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v3, v3

    if-ge v12, v3, :cond_96

    .line 1012
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v11, v3, v12

    .line 1013
    .local v11, "era":Lsun/util/calendar/Era;
    if-eqz v10, :cond_74

    const/4 v3, 0x1

    if-ne v10, v3, :cond_92

    .line 1015
    :cond_74
    :goto_74
    invoke-virtual {v11}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    :cond_7f
    if-eqz v10, :cond_84

    const/4 v3, 0x2

    if-ne v10, v3, :cond_8f

    .line 1018
    :cond_84
    invoke-virtual {v11}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    :cond_8f
    add-int/lit8 v12, v12, 0x1

    goto :goto_66

    .line 1014
    :cond_92
    const/4 v3, 0x4

    if-ne v10, v3, :cond_7f

    goto :goto_74

    .line 1024
    .end local v10    # "baseStyle":I
    .end local v11    # "era":Lsun/util/calendar/Era;
    .end local v12    # "i":I
    .end local v16    # "size":I
    :cond_96
    return-object v15
.end method

.method public getGreatestMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .prologue
    const/4 v0, 0x1

    .line 1099
    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    goto :goto_3
.end method

.method public getLeastMaximum(I)I
    .registers 4
    .param p1, "field"    # I

    .prologue
    const/4 v1, 0x1

    .line 1121
    packed-switch p1, :pswitch_data_16

    .line 1127
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    aget v0, v0, p1

    return v0

    .line 1124
    :pswitch_9
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    aget v0, v0, v1

    invoke-virtual {p0, v1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 1121
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public getMaximum(I)I
    .registers 8
    .param p1, "field"    # I

    .prologue
    .line 1068
    packed-switch p1, :pswitch_data_26

    .line 1077
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->MAX_VALUES:[I

    aget v1, v1, p1

    return v1

    .line 1072
    :pswitch_8
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    .line 1073
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 1072
    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v1, v4, v5, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    .line 1074
    .local v0, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 1068
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public getMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .prologue
    .line 1046
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 3

    .prologue
    .line 1509
    invoke-super {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1511
    .local v0, "zone":Ljava/util/TimeZone;
    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1512
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 352
    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public roll(II)V
    .registers 53
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .prologue
    .line 538
    if-nez p2, :cond_3

    .line 539
    return-void

    .line 542
    :cond_3
    if-ltz p1, :cond_d

    const/16 v46, 0xf

    move/from16 v0, p1

    move/from16 v1, v46

    if-lt v0, v1, :cond_13

    .line 543
    :cond_d
    new-instance v46, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v46 .. v46}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v46

    .line 547
    :cond_13
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->complete()V

    .line 549
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v23

    .line 550
    .local v23, "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v22

    .line 552
    .local v22, "max":I
    packed-switch p1, :pswitch_data_a12

    .line 960
    :cond_21
    :goto_21
    :pswitch_21
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 961
    return-void

    .line 567
    :pswitch_3b
    add-int/lit8 v38, v22, 0x1

    .line 568
    .local v38, "unit":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    .line 569
    .local v13, "h":I
    add-int v46, v13, p2

    rem-int v34, v46, v38

    .line 570
    .local v34, "nh":I
    if-gez v34, :cond_49

    .line 571
    add-int v34, v34, v38

    .line 573
    :cond_49
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    move-wide/from16 v46, v0

    sub-int v48, v34, v13

    const v49, 0x36ee80

    mul-int v48, v48, v49

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/JapaneseImperialCalendar;->time:J

    .line 579
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    move-wide/from16 v48, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v47

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 580
    .local v4, "d":Lsun/util/calendar/CalendarDate;
    const/16 v46, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_fe

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Lsun/util/calendar/CalendarDate;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    .line 582
    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    .line 583
    const/16 v47, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v47

    add-int/lit8 v47, v47, 0x1

    .line 584
    const/16 v48, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v48

    .line 582
    move/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v4, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 585
    const/16 v46, 0xa

    move/from16 v0, p1

    move/from16 v1, v46

    if-ne v0, v1, :cond_f0

    .line 586
    sget-boolean v46, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v46, :cond_e9

    const/16 v46, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_e9

    new-instance v46, Ljava/lang/AssertionError;

    invoke-direct/range {v46 .. v46}, Ljava/lang/AssertionError;-><init>()V

    throw v46

    .line 587
    :cond_e9
    const/16 v46, 0xc

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Lsun/util/calendar/CalendarDate;->addHours(I)Lsun/util/calendar/CalendarDate;

    .line 589
    :cond_f0
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v46

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/JapaneseImperialCalendar;->time:J

    .line 591
    :cond_fe
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v16

    .line 592
    .local v16, "hourOfDay":I
    rem-int v46, v16, v38

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 593
    const/16 v46, 0xa

    move/from16 v0, p1

    move/from16 v1, v46

    if-ne v0, v1, :cond_141

    .line 594
    const/16 v46, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 601
    :goto_120
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v45

    .line 602
    .local v45, "zoneOffset":I
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDaylightSaving()I

    move-result v36

    .line 603
    .local v36, "saving":I
    sub-int v46, v45, v36

    const/16 v47, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 604
    const/16 v46, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 605
    return-void

    .line 596
    .end local v36    # "saving":I
    .end local v45    # "zoneOffset":I
    :cond_141
    div-int/lit8 v46, v16, 0xc

    const/16 v47, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 597
    rem-int/lit8 v46, v16, 0xc

    const/16 v47, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    goto :goto_120

    .line 609
    .end local v4    # "d":Lsun/util/calendar/CalendarDate;
    .end local v13    # "h":I
    .end local v16    # "hourOfDay":I
    .end local v34    # "nh":I
    .end local v38    # "unit":I
    :pswitch_15c
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMinimum(I)I

    move-result v23

    .line 610
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v22

    goto/16 :goto_21

    .line 619
    :pswitch_166
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v46

    if-nez v46, :cond_38e

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    .line 621
    .local v44, "year":I
    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v46

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_269

    .line 622
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    move-wide/from16 v48, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v47

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v20

    .line 623
    .local v20, "jd":Lsun/util/calendar/CalendarDate;
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v47

    const-wide v48, 0x7fffffffffffffffL

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 624
    .restart local v4    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    add-int/lit8 v22, v46, -0x1

    .line 625
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v31

    .line 626
    .local v31, "n":I
    move/from16 v0, v31

    move/from16 v1, v22

    if-ne v0, v1, :cond_25d

    .line 628
    const/16 v46, -0x190

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 629
    add-int/lit8 v46, v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 630
    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_20f

    .line 631
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 632
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v46

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 634
    :cond_20f
    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_24e

    .line 635
    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v46

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v48

    cmp-long v46, v46, v48

    if-lez v46, :cond_24e

    .line 636
    add-int/lit8 v46, v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 637
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    add-int/lit8 v46, v46, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 638
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v46

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 640
    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    add-int/lit8 v31, v46, -0x1

    .line 642
    :cond_24e
    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 644
    :cond_25d
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 725
    .end local v4    # "d":Lsun/util/calendar/CalendarDate;
    .end local v20    # "jd":Lsun/util/calendar/CalendarDate;
    .end local v31    # "n":I
    .end local v44    # "year":I
    :cond_268
    :goto_268
    return-void

    .line 645
    .restart local v44    # "year":I
    :cond_269
    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v46

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_34c

    .line 646
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    move-wide/from16 v48, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v47

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v20

    .line 647
    .restart local v20    # "jd":Lsun/util/calendar/CalendarDate;
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v47

    const-wide/high16 v48, -0x8000000000000000L

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 648
    .restart local v4    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    add-int/lit8 v23, v46, -0x1

    .line 649
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v31

    .line 650
    .restart local v31    # "n":I
    move/from16 v0, v31

    move/from16 v1, v23

    if-ne v0, v1, :cond_33f

    .line 652
    const/16 v46, 0x190

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 653
    add-int/lit8 v46, v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 654
    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_2f1

    .line 655
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 656
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v46

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 658
    :cond_2f1
    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_330

    .line 659
    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v46

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v48

    cmp-long v46, v46, v48

    if-gez v46, :cond_330

    .line 660
    add-int/lit8 v46, v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 661
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    add-int/lit8 v46, v46, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 662
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v46

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 664
    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    add-int/lit8 v31, v46, -0x1

    .line 666
    :cond_330
    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 668
    :cond_33f
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto/16 :goto_268

    .line 670
    .end local v4    # "d":Lsun/util/calendar/CalendarDate;
    .end local v20    # "jd":Lsun/util/calendar/CalendarDate;
    .end local v31    # "n":I
    :cond_34c
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    add-int v46, v46, p2

    rem-int/lit8 v24, v46, 0xc

    .line 671
    .local v24, "mon":I
    if-gez v24, :cond_35e

    .line 672
    add-int/lit8 v24, v24, 0xc

    .line 674
    :cond_35e
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 680
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->monthLength(I)I

    move-result v25

    .line 681
    .local v25, "monthLen":I
    const/16 v46, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, v25

    if-le v0, v1, :cond_268

    .line 682
    const/16 v46, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto/16 :goto_268

    .line 686
    .end local v24    # "mon":I
    .end local v25    # "monthLen":I
    .end local v44    # "year":I
    :cond_38e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v12

    .line 687
    .local v12, "eraIndex":I
    const/16 v37, 0x0

    .line 688
    .local v37, "transition":Lsun/util/calendar/CalendarDate;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_3c1

    .line 689
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v46, v46, v12

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v37

    .line 690
    .local v37, "transition":Lsun/util/calendar/CalendarDate;
    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    add-int/lit8 v23, v46, -0x1

    .line 703
    .end local v37    # "transition":Lsun/util/calendar/CalendarDate;
    :cond_3ba
    :goto_3ba
    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_401

    .line 707
    return-void

    .line 692
    .local v37, "transition":Lsun/util/calendar/CalendarDate;
    :cond_3c1
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    add-int/lit8 v46, v46, -0x1

    move/from16 v0, v46

    if-ge v12, v0, :cond_3ba

    .line 693
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v47, v12, 0x1

    aget-object v46, v46, v47

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v37

    .line 694
    .local v37, "transition":Lsun/util/calendar/CalendarDate;
    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_3ba

    .line 695
    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    add-int/lit8 v22, v46, -0x1

    .line 696
    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_3ba

    .line 697
    add-int/lit8 v22, v22, -0x1

    goto :goto_3ba

    .line 709
    .end local v37    # "transition":Lsun/util/calendar/CalendarDate;
    :cond_401
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v31

    .line 710
    .restart local v31    # "n":I
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 711
    move/from16 v0, v31

    move/from16 v1, v23

    if-ne v0, v1, :cond_45f

    .line 712
    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_43a

    .line 713
    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_268

    .line 714
    :cond_43a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v46

    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_268

    .line 715
    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto/16 :goto_268

    .line 718
    :cond_45f
    move/from16 v0, v31

    move/from16 v1, v22

    if-ne v0, v1, :cond_268

    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    add-int/lit8 v46, v46, -0x1

    move/from16 v0, v46

    move/from16 v1, v31

    if-ne v0, v1, :cond_268

    .line 719
    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v8

    .line 720
    .local v8, "dom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v46

    move/from16 v0, v46

    if-lt v0, v8, :cond_268

    .line 721
    add-int/lit8 v46, v8, -0x1

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto/16 :goto_268

    .line 730
    .end local v8    # "dom":I
    .end local v12    # "eraIndex":I
    .end local v31    # "n":I
    :pswitch_492
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v43

    .line 731
    .local v43, "y":I
    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v22

    .line 732
    const/16 v46, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    const/16 v47, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 733
    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v41

    .line 734
    .local v41, "woy":I
    add-int v39, v41, p2

    .line 735
    .local v39, "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v46

    if-nez v46, :cond_5ca

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    .line 737
    .restart local v44    # "year":I
    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v46

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_517

    .line 738
    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v22

    .line 750
    :cond_4ff
    move/from16 v0, v39

    move/from16 v1, v23

    if-le v0, v1, :cond_553

    move/from16 v0, v39

    move/from16 v1, v22

    if-ge v0, v1, :cond_553

    .line 751
    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 752
    return-void

    .line 739
    :cond_517
    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v46

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_4ff

    .line 740
    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getActualMinimum(I)I

    move-result v23

    .line 741
    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v22

    .line 742
    move/from16 v0, v39

    move/from16 v1, v23

    if-le v0, v1, :cond_4ff

    move/from16 v0, v39

    move/from16 v1, v22

    if-ge v0, v1, :cond_4ff

    .line 743
    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 744
    return-void

    .line 754
    :cond_553
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 756
    .local v14, "fd":J
    sub-int v46, v41, v23

    mul-int/lit8 v46, v46, 0x7

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    sub-long v6, v14, v46

    .line 757
    .local v6, "day1":J
    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v46

    move/from16 v0, v44

    move/from16 v1, v46

    if-eq v0, v1, :cond_5a9

    .line 758
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v46

    invoke-virtual {v0, v6, v7}, Lsun/util/calendar/Gregorian;->getYearFromFixedDate(J)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, v43

    if-eq v0, v1, :cond_582

    .line 759
    add-int/lit8 v23, v23, 0x1

    .line 769
    :cond_582
    :goto_582
    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    sub-int v46, v22, v46

    mul-int/lit8 v46, v46, 0x7

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v14, v14, v46

    .line 770
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v46

    invoke-virtual {v0, v14, v15}, Lsun/util/calendar/Gregorian;->getYearFromFixedDate(J)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, v43

    if-eq v0, v1, :cond_21

    .line 771
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_21

    .line 762
    :cond_5a9
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v47

    const-wide/high16 v48, -0x8000000000000000L

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 763
    .restart local v4    # "d":Lsun/util/calendar/CalendarDate;
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v46

    cmp-long v46, v6, v46

    if-gez v46, :cond_582

    .line 764
    add-int/lit8 v23, v23, 0x1

    goto :goto_582

    .line 777
    .end local v4    # "d":Lsun/util/calendar/CalendarDate;
    .end local v6    # "day1":J
    .end local v14    # "fd":J
    .end local v44    # "year":I
    :cond_5ca
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 778
    .restart local v14    # "fd":J
    sub-int v46, v41, v23

    mul-int/lit8 v46, v46, 0x7

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    sub-long v6, v14, v46

    .line 780
    .restart local v6    # "day1":J
    invoke-static {v6, v7}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    .line 781
    .local v5, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_605

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_607

    .line 782
    :cond_605
    add-int/lit8 v23, v23, 0x1

    .line 786
    :cond_607
    sub-int v46, v22, v41

    mul-int/lit8 v46, v46, 0x7

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v14, v14, v46

    .line 787
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v46

    invoke-virtual {v0, v5, v14, v15}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 788
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_641

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_643

    .line 789
    :cond_641
    add-int/lit8 v22, v22, -0x1

    .line 793
    :cond_643
    move/from16 v0, v41

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v46

    add-int/lit8 v39, v46, -0x1

    .line 794
    mul-int/lit8 v46, v39, 0x7

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v6

    invoke-static/range {v46 .. v47}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    .line 795
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v46

    add-int/lit8 v46, v46, -0x1

    const/16 v47, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 796
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 797
    return-void

    .line 802
    .end local v5    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v6    # "day1":J
    .end local v14    # "fd":J
    .end local v39    # "value":I
    .end local v41    # "woy":I
    .end local v43    # "y":I
    :pswitch_67f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v17

    .line 804
    .local v17, "isTransitionYear":Z
    const/16 v46, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v47

    sub-int v9, v46, v47

    .line 805
    .local v9, "dow":I
    if-gez v9, :cond_6a5

    .line 806
    add-int/lit8 v9, v9, 0x7

    .line 809
    :cond_6a5
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 812
    .restart local v14    # "fd":J
    if-eqz v17, :cond_71f

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v14, v15}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v26

    .line 814
    .local v26, "month1":J
    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->actualMonthLength()I

    move-result v30

    .line 821
    .local v30, "monthLength":I
    :goto_6bd
    const-wide/16 v46, 0x6

    add-long v46, v46, v26

    .line 822
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v48

    .line 821
    invoke-static/range {v46 .. v48}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    .line 825
    .local v28, "monthDay1st":J
    sub-long v46, v28, v26

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_6de

    .line 826
    const-wide/16 v46, 0x7

    sub-long v28, v28, v46

    .line 828
    :cond_6de
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v22

    .line 831
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v47

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v46

    add-int/lit8 v39, v46, -0x1

    .line 834
    .restart local v39    # "value":I
    mul-int/lit8 v46, v39, 0x7

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v28

    int-to-long v0, v9

    move-wide/from16 v48, v0

    add-long v32, v46, v48

    .line 838
    .local v32, "nfd":J
    cmp-long v46, v32, v26

    if-gez v46, :cond_742

    .line 839
    move-wide/from16 v32, v26

    .line 843
    :cond_70a
    :goto_70a
    sub-long v46, v32, v26

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    add-int/lit8 v46, v46, 0x1

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 844
    return-void

    .line 816
    .end local v26    # "month1":J
    .end local v28    # "monthDay1st":J
    .end local v30    # "monthLength":I
    .end local v32    # "nfd":J
    .end local v39    # "value":I
    :cond_71f
    const/16 v46, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    sub-long v46, v14, v46

    const-wide/16 v48, 0x1

    add-long v26, v46, v48

    .line 817
    .restart local v26    # "month1":J
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v30

    .restart local v30    # "monthLength":I
    goto/16 :goto_6bd

    .line 840
    .restart local v28    # "monthDay1st":J
    .restart local v32    # "nfd":J
    .restart local v39    # "value":I
    :cond_742
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v26

    cmp-long v46, v32, v46

    if-ltz v46, :cond_70a

    .line 841
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v26

    const-wide/16 v48, 0x1

    sub-long v32, v46, v48

    goto :goto_70a

    .line 849
    .end local v9    # "dow":I
    .end local v14    # "fd":J
    .end local v17    # "isTransitionYear":Z
    .end local v26    # "month1":J
    .end local v28    # "monthDay1st":J
    .end local v30    # "monthLength":I
    .end local v32    # "nfd":J
    .end local v39    # "value":I
    :pswitch_759
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v46

    if-nez v46, :cond_77b

    .line 850
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v22

    goto/16 :goto_21

    .line 858
    :cond_77b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-wide/from16 v2, v48

    invoke-direct {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v26

    .line 863
    .restart local v26    # "month1":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    move-wide/from16 v46, v0

    sub-long v46, v46, v26

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    .line 864
    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->actualMonthLength()I

    move-result v47

    add-int/lit8 v47, v47, -0x1

    const/16 v48, 0x0

    .line 863
    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v48

    move/from16 v3, v47

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v39

    .line 865
    .restart local v39    # "value":I
    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v26

    invoke-static/range {v46 .. v47}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    .line 866
    .restart local v5    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-boolean v46, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v46, :cond_7ff

    invoke-static {v5}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v46

    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->internalGetEra()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_7e3

    .line 867
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v46

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_7e9

    .line 866
    :cond_7e3
    new-instance v46, Ljava/lang/AssertionError;

    invoke-direct/range {v46 .. v46}, Ljava/lang/AssertionError;-><init>()V

    throw v46

    .line 867
    :cond_7e9
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v46

    add-int/lit8 v46, v46, -0x1

    const/16 v47, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_7e3

    .line 868
    :cond_7ff
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 869
    return-void

    .line 874
    .end local v5    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v26    # "month1":J
    .end local v39    # "value":I
    :pswitch_80f
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v22

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v46

    if-eqz v46, :cond_21

    .line 881
    const/16 v46, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v39

    .line 882
    .restart local v39    # "value":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    move-wide/from16 v46, v0

    const/16 v48, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v48

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    sub-long v18, v46, v48

    .line 883
    .local v18, "jan0":J
    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v18

    invoke-static/range {v46 .. v47}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    .line 884
    .restart local v5    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-boolean v46, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v46, :cond_88b

    invoke-static {v5}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v46

    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->internalGetEra()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_885

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v46

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_88b

    :cond_885
    new-instance v46, Ljava/lang/AssertionError;

    invoke-direct/range {v46 .. v46}, Ljava/lang/AssertionError;-><init>()V

    throw v46

    .line 885
    :cond_88b
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v46

    add-int/lit8 v46, v46, -0x1

    const/16 v47, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 886
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 887
    return-void

    .line 892
    .end local v5    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v18    # "jan0":J
    .end local v39    # "value":I
    :pswitch_8ac
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v35

    .line 893
    .local v35, "normalizedYear":I
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v46

    if-nez v46, :cond_901

    add-int/lit8 v46, v35, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v46

    xor-int/lit8 v46, v46, 0x1

    if-eqz v46, :cond_901

    .line 896
    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v40

    .line 897
    .local v40, "weekOfYear":I
    const/16 v46, 0x1

    move/from16 v0, v40

    move/from16 v1, v46

    if-le v0, v1, :cond_901

    const/16 v46, 0x34

    move/from16 v0, v40

    move/from16 v1, v46

    if-ge v0, v1, :cond_901

    .line 898
    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    const/16 v47, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 899
    const/16 v22, 0x7

    .line 900
    goto/16 :goto_21

    .line 908
    .end local v40    # "weekOfYear":I
    :cond_901
    rem-int/lit8 p2, p2, 0x7

    .line 909
    if-nez p2, :cond_906

    .line 910
    return-void

    .line 912
    :cond_906
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 913
    .restart local v14    # "fd":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v46

    move/from16 v0, v46

    invoke-static {v14, v15, v0}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    .line 914
    .local v10, "dowFirst":J
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v14, v14, v46

    .line 915
    cmp-long v46, v14, v10

    if-gez v46, :cond_950

    .line 916
    const-wide/16 v46, 0x7

    add-long v14, v14, v46

    .line 920
    :cond_923
    :goto_923
    invoke-static {v14, v15}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    .line 921
    .restart local v5    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-static {v5}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v46

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 922
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v46

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v47

    add-int/lit8 v47, v47, -0x1

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->set(III)V

    .line 923
    return-void

    .line 917
    .end local v5    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_950
    const-wide/16 v46, 0x7

    add-long v46, v46, v10

    cmp-long v46, v14, v46

    if-ltz v46, :cond_923

    .line 918
    const-wide/16 v46, 0x7

    sub-long v14, v14, v46

    goto :goto_923

    .line 928
    .end local v10    # "dowFirst":J
    .end local v14    # "fd":J
    .end local v35    # "normalizedYear":I
    :pswitch_95d
    const/16 v23, 0x1

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v46

    if-nez v46, :cond_9b0

    .line 930
    const/16 v46, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v8

    .line 931
    .restart local v8    # "dom":I
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v30

    .line 932
    .restart local v30    # "monthLength":I
    rem-int/lit8 v21, v30, 0x7

    .line 933
    .local v21, "lastDays":I
    div-int/lit8 v22, v30, 0x7

    .line 934
    add-int/lit8 v46, v8, -0x1

    rem-int/lit8 v42, v46, 0x7

    .line 935
    .local v42, "x":I
    move/from16 v0, v42

    move/from16 v1, v21

    if-ge v0, v1, :cond_999

    .line 936
    add-int/lit8 v22, v22, 0x1

    .line 938
    :cond_999
    const/16 v46, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    const/16 v47, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto/16 :goto_21

    .line 943
    .end local v8    # "dom":I
    .end local v21    # "lastDays":I
    .end local v30    # "monthLength":I
    .end local v42    # "x":I
    :cond_9b0
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 944
    .restart local v14    # "fd":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v14, v15}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v26

    .line 945
    .restart local v26    # "month1":J
    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->actualMonthLength()I

    move-result v30

    .line 946
    .restart local v30    # "monthLength":I
    rem-int/lit8 v21, v30, 0x7

    .line 947
    .restart local v21    # "lastDays":I
    div-int/lit8 v22, v30, 0x7

    .line 948
    sub-long v46, v14, v26

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    rem-int/lit8 v42, v46, 0x7

    .line 949
    .restart local v42    # "x":I
    move/from16 v0, v42

    move/from16 v1, v21

    if-ge v0, v1, :cond_9db

    .line 950
    add-int/lit8 v22, v22, 0x1

    .line 952
    :cond_9db
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v46

    add-int/lit8 v39, v46, -0x1

    .line 953
    .restart local v39    # "value":I
    mul-int/lit8 v46, v39, 0x7

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v26

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v14, v46, v48

    .line 954
    invoke-static {v14, v15}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    .line 955
    .restart local v5    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 956
    return-void

    .line 552
    nop

    :pswitch_data_a12
    .packed-switch 0x0
        :pswitch_21
        :pswitch_15c
        :pswitch_166
        :pswitch_492
        :pswitch_67f
        :pswitch_759
        :pswitch_80f
        :pswitch_8ac
        :pswitch_95d
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
    .line 512
    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, v0}, Ljava/util/JapaneseImperialCalendar;->roll(II)V

    .line 513
    return-void

    .line 512
    :cond_7
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 1516
    invoke-super {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1518
    iget-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1519
    return-void
.end method
