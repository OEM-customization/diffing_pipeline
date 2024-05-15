.class public Ljava/util/Date;
.super Ljava/lang/Object;
.source "Date.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static defaultCenturyStart:I = 0x0

.field private static final gcal:Lsun/util/calendar/BaseCalendar;

.field private static jcal:Lsun/util/calendar/BaseCalendar; = null

.field private static final serialVersionUID:J = 0x686a81014b597419L

.field private static final ttb:[I

.field private static final wtb:[Ljava/lang/String;


# instance fields
.field private transient cdate:Lsun/util/calendar/BaseCalendar$Date;

.field private transient fastTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x20

    .line 135
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    .line 134
    sput-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    .line 640
    new-array v0, v3, [Ljava/lang/String;

    .line 641
    const-string/jumbo v1, "am"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "pm"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 642
    const-string/jumbo v1, "monday"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "tuesday"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "wednesday"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "thursday"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "friday"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 643
    const-string/jumbo v1, "saturday"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "sunday"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 644
    const-string/jumbo v1, "january"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "february"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "march"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "april"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "may"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "june"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 645
    const-string/jumbo v1, "july"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "august"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "september"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "october"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "november"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "december"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 646
    const-string/jumbo v1, "gmt"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "ut"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "utc"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "est"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "edt"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "cst"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "cdt"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 647
    const-string/jumbo v1, "mst"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "mdt"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "pst"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "pdt"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 640
    sput-object v0, Ljava/util/Date;->wtb:[Ljava/lang/String;

    .line 649
    new-array v0, v3, [I

    fill-array-data v0, :array_ec

    sput-object v0, Ljava/util/Date;->ttb:[I

    .line 131
    return-void

    .line 649
    :array_ec
    .array-data 4
        0xe
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
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
        0x2710
        0x2710
        0x2710
        0x283c
        0x2800
        0x2878
        0x283c
        0x28b4
        0x2878
        0x28f0
        0x28b4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 166
    return-void
.end method

.method public constructor <init>(III)V
    .registers 11
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    .line 197
    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 198
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 13
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hrs"    # I
    .param p5, "min"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 220
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 221
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 12
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hrs"    # I
    .param p5, "min"    # I
    .param p6, "sec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xc

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    add-int/lit16 v1, p1, 0x76c

    .line 246
    .local v1, "y":I
    if-lt p2, v3, :cond_31

    .line 247
    div-int/lit8 v2, p2, 0xc

    add-int/2addr v1, v2

    .line 248
    rem-int/lit8 p2, p2, 0xc

    .line 253
    :cond_f
    :goto_f
    invoke-static {v1}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 254
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 255
    iget-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v1, v3, p3}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v2

    invoke-virtual {v2, p4, p5, p6, v4}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 256
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    .line 257
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 258
    return-void

    .line 249
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_31
    if-gez p2, :cond_f

    .line 250
    invoke-static {p2, v3}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 251
    invoke-static {p2, v3}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p2

    goto :goto_f
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "date"    # J

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-wide p1, p0, Ljava/util/Date;->fastTime:J

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    invoke-static {p1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 275
    return-void
.end method

.method public static UTC(IIIIII)J
    .registers 14
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "date"    # I
    .param p3, "hrs"    # I
    .param p4, "min"    # I
    .param p5, "sec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xc

    .line 319
    add-int/lit16 v4, p0, 0x76c

    .line 321
    .local v4, "y":I
    if-lt p1, v6, :cond_2d

    .line 322
    div-int/lit8 v5, p1, 0xc

    add-int/2addr v4, v5

    .line 323
    rem-int/lit8 p1, p1, 0xc

    .line 328
    :cond_c
    :goto_c
    add-int/lit8 v2, p1, 0x1

    .line 329
    .local v2, "m":I
    invoke-static {v4}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 330
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    .line 331
    .local v3, "udate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v3, v4, v2, p2}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    invoke-virtual {v5, p3, p4, p5, v7}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 335
    new-instance v1, Ljava/util/Date;

    const-wide/16 v6, 0x0

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 336
    .local v1, "d":Ljava/util/Date;
    invoke-direct {v1, v3}, Ljava/util/Date;->normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;

    .line 337
    iget-wide v6, v1, Ljava/util/Date;->fastTime:J

    return-wide v6

    .line 324
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v1    # "d":Ljava/util/Date;
    .end local v2    # "m":I
    .end local v3    # "udate":Lsun/util/calendar/BaseCalendar$Date;
    :cond_2d
    if-gez p1, :cond_c

    .line 325
    invoke-static {p1, v6}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 326
    invoke-static {p1, v6}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p1

    goto :goto_c
.end method

.method private static final convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1080
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1081
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1082
    return-object p0
.end method

.method public static from(Ljava/time/Instant;)Ljava/util/Date;
    .registers 5
    .param p0, "instant"    # Ljava/time/Instant;

    .prologue
    .line 1375
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_9
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    .line 1376
    :catch_a
    move-exception v0

    .line 1377
    .local v0, "ex":Ljava/lang/ArithmeticException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;
    .registers 5

    .prologue
    .line 1203
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v1, :cond_18

    .line 1204
    iget-wide v2, p0, Ljava/util/Date;->fastTime:J

    invoke-static {v2, v3}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 1205
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v2, p0, Ljava/util/Date;->fastTime:J

    .line 1206
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v1

    .line 1205
    invoke-virtual {v0, v2, v3, v1}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1208
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_18
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    return-object v1
.end method

.method private static final getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;
    .registers 2
    .param p0, "year"    # I

    .prologue
    .line 1296
    const/16 v0, 0x62e

    if-lt p0, v0, :cond_7

    .line 1297
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    return-object v0

    .line 1299
    :cond_7
    invoke-static {}, Ljava/util/Date;->getJulianCalendar()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    return-object v0
.end method

.method private static final getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;
    .registers 6
    .param p0, "utc"    # J

    .prologue
    .line 1306
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1a

    .line 1308
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    .line 1307
    const-wide v2, -0xb1d069b5400L

    sub-long v0, v2, v0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1d

    .line 1309
    :cond_1a
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    return-object v0

    .line 1311
    :cond_1d
    invoke-static {}, Ljava/util/Date;->getJulianCalendar()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    return-object v0
.end method

.method private static final getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;
    .registers 2
    .param p0, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;

    .prologue
    .line 1315
    sget-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    if-nez v0, :cond_7

    .line 1316
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    return-object v0

    .line 1318
    :cond_7
    invoke-virtual {p0}, Lsun/util/calendar/BaseCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1319
    sget-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    return-object v0

    .line 1321
    :cond_10
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    return-object v0
.end method

.method private static final declared-synchronized getJulianCalendar()Lsun/util/calendar/BaseCalendar;
    .registers 2

    .prologue
    const-class v1, Ljava/util/Date;

    monitor-enter v1

    .line 1325
    :try_start_3
    sget-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    if-nez v0, :cond_12

    .line 1326
    const-string/jumbo v0, "julian"

    invoke-static {v0}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/BaseCalendar;

    sput-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    .line 1328
    :cond_12
    sget-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static final getMillisOf(Ljava/util/Date;)J
    .registers 5
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 979
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v1, :cond_c

    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 980
    :cond_c
    iget-wide v2, p0, Ljava/util/Date;->fastTime:J

    return-wide v2

    .line 982
    :cond_f
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 983
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    sget-object v1, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v2

    return-wide v2
.end method

.method private final getTimeImpl()J
    .registers 3

    .prologue
    .line 910
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 911
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    .line 913
    :cond_11
    iget-wide v0, p0, Ljava/util/Date;->fastTime:J

    return-wide v0
.end method

.method private final normalize()Lsun/util/calendar/BaseCalendar$Date;
    .registers 7

    .prologue
    .line 1212
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v3, :cond_1b

    .line 1213
    iget-wide v4, p0, Ljava/util/Date;->fastTime:J

    invoke-static {v4, v5}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 1214
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v4, p0, Ljava/util/Date;->fastTime:J

    .line 1215
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v3

    .line 1214
    invoke-virtual {v0, v4, v5, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1216
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    return-object v3

    .line 1221
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_1b
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1222
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {p0, v3}, Ljava/util/Date;->normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1227
    :cond_2b
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v2

    .line 1228
    .local v2, "tz":Ljava/util/TimeZone;
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v3

    if-eq v2, v3, :cond_49

    .line 1229
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3, v2}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1230
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-static {v3}, Ljava/util/Date;->getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;

    move-result-object v1

    .line 1231
    .local v1, "cal":Lsun/util/calendar/CalendarSystem;
    iget-wide v4, p0, Ljava/util/Date;->fastTime:J

    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v4, v5, v3}, Lsun/util/calendar/CalendarSystem;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    .line 1233
    .end local v1    # "cal":Lsun/util/calendar/CalendarSystem;
    :cond_49
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    return-object v3
.end method

.method private final normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;
    .registers 16
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;

    .prologue
    .line 1238
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    .line 1239
    .local v1, "y":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v8

    .line 1240
    .local v8, "m":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v3

    .line 1241
    .local v3, "d":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v4

    .line 1242
    .local v4, "hh":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v5

    .line 1243
    .local v5, "mm":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v6

    .line 1244
    .local v6, "ss":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMillis()I

    move-result v9

    .line 1245
    .local v9, "ms":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v11

    .line 1255
    .local v11, "tz":Ljava/util/TimeZone;
    const/16 v2, 0x62e

    if-eq v1, v2, :cond_29

    const v2, 0x10b07600

    if-le v1, v2, :cond_59

    .line 1256
    :cond_29
    if-nez v11, :cond_32

    .line 1257
    const-string/jumbo v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    .line 1259
    :cond_32
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v11}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1260
    .local v0, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    .line 1261
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1262
    add-int/lit8 v2, v8, -0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 1263
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v12

    iput-wide v12, p0, Ljava/util/Date;->fastTime:J

    .line 1264
    iget-wide v12, p0, Ljava/util/Date;->fastTime:J

    invoke-static {v12, v13}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v7

    .line 1265
    .local v7, "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v12, p0, Ljava/util/Date;->fastTime:J

    invoke-virtual {v7, v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object p1

    .end local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .line 1266
    .restart local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    return-object p1

    .line 1255
    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    .end local v7    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_59
    const v2, -0x10b07600

    if-lt v1, v2, :cond_29

    .line 1269
    invoke-static {v1}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v7

    .line 1270
    .restart local v7    # "cal":Lsun/util/calendar/BaseCalendar;
    invoke-static {p1}, Ljava/util/Date;->getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;

    move-result-object v2

    if-eq v7, v2, :cond_75

    .line 1271
    invoke-virtual {v7, v11}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object p1

    .end local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .line 1272
    .restart local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {p1, v1, v8, v3}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v6, v9}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 1275
    :cond_75
    invoke-virtual {v7, p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v12

    iput-wide v12, p0, Ljava/util/Date;->fastTime:J

    .line 1279
    iget-wide v12, p0, Ljava/util/Date;->fastTime:J

    invoke-static {v12, v13}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v10

    .line 1280
    .local v10, "ncal":Lsun/util/calendar/BaseCalendar;
    if-eq v10, v7, :cond_96

    .line 1281
    invoke-virtual {v10, v11}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object p1

    .end local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .line 1282
    .restart local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {p1, v1, v8, v3}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v6, v9}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 1283
    invoke-virtual {v10, p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v12

    iput-wide v12, p0, Ljava/util/Date;->fastTime:J

    .line 1285
    :cond_96
    return-object p1
.end method

.method public static parse(Ljava/lang/String;)J
    .registers 32
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    const/high16 v30, -0x80000000

    .line 456
    .local v30, "year":I
    const/16 v23, -0x1

    .line 457
    .local v23, "mon":I
    const/16 v19, -0x1

    .line 458
    .local v19, "mday":I
    const/4 v14, -0x1

    .line 459
    .local v14, "hour":I
    const/16 v21, -0x1

    .line 460
    .local v21, "min":I
    const/16 v26, -0x1

    .line 461
    .local v26, "sec":I
    const/16 v20, -0x1

    .line 462
    .local v20, "millis":I
    const/4 v11, -0x1

    .line 463
    .local v11, "c":I
    const/4 v15, 0x0

    .line 464
    .local v15, "i":I
    const/16 v24, -0x1

    .line 465
    .local v24, "n":I
    const/16 v29, -0x1

    .line 466
    .local v29, "wst":I
    const/16 v27, -0x1

    .line 467
    .local v27, "tzoffset":I
    const/16 v25, 0x0

    .line 470
    .local v25, "prevc":I
    if-nez p0, :cond_1f

    .line 638
    :cond_19
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 472
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    .line 473
    .local v18, "limit":I
    :cond_23
    :goto_23
    move/from16 v0, v18

    if-ge v15, v0, :cond_1f4

    .line 474
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 475
    add-int/lit8 v15, v15, 0x1

    .line 476
    const/16 v4, 0x20

    if-le v11, v4, :cond_23

    const/16 v4, 0x2c

    if-eq v11, v4, :cond_23

    .line 478
    const/16 v4, 0x28

    if-ne v11, v4, :cond_58

    .line 479
    const/4 v13, 0x1

    .line 480
    .local v13, "depth":I
    :cond_3c
    :goto_3c
    move/from16 v0, v18

    if-ge v15, v0, :cond_23

    .line 481
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 482
    add-int/lit8 v15, v15, 0x1

    .line 483
    const/16 v4, 0x28

    if-ne v11, v4, :cond_4f

    add-int/lit8 v13, v13, 0x1

    goto :goto_3c

    .line 484
    :cond_4f
    const/16 v4, 0x29

    if-ne v11, v4, :cond_3c

    .line 485
    add-int/lit8 v13, v13, -0x1

    if-gtz v13, :cond_3c

    goto :goto_23

    .line 490
    .end local v13    # "depth":I
    :cond_58
    const/16 v4, 0x30

    if-gt v4, v11, :cond_166

    const/16 v4, 0x39

    if-gt v11, v4, :cond_166

    .line 491
    add-int/lit8 v24, v11, -0x30

    .line 492
    :goto_62
    move/from16 v0, v18

    if-ge v15, v0, :cond_7c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v4, 0x30

    if-gt v4, v11, :cond_7c

    const/16 v4, 0x39

    if-gt v11, v4, :cond_7c

    .line 493
    mul-int/lit8 v4, v24, 0xa

    add-int/2addr v4, v11

    add-int/lit8 v24, v4, -0x30

    .line 494
    add-int/lit8 v15, v15, 0x1

    goto :goto_62

    .line 496
    :cond_7c
    const/16 v4, 0x2b

    move/from16 v0, v25

    if-eq v0, v4, :cond_8e

    const/16 v4, 0x2d

    move/from16 v0, v25

    if-ne v0, v4, :cond_e6

    const/high16 v4, -0x80000000

    move/from16 v0, v30

    if-eq v0, v4, :cond_e6

    .line 499
    :cond_8e
    if-eqz v27, :cond_95

    const/4 v4, -0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_19

    .line 503
    :cond_95
    const/16 v4, 0x18

    move/from16 v0, v24

    if-ge v0, v4, :cond_dd

    .line 504
    mul-int/lit8 v24, v24, 0x3c

    .line 509
    const/16 v22, 0x0

    .line 510
    .local v22, "minutesPart":I
    move/from16 v0, v18

    if-ge v15, v0, :cond_ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_ca

    .line 511
    add-int/lit8 v15, v15, 0x1

    .line 512
    :goto_af
    move/from16 v0, v18

    if-ge v15, v0, :cond_ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v4, 0x30

    if-gt v4, v11, :cond_ca

    const/16 v4, 0x39

    if-gt v11, v4, :cond_ca

    .line 513
    mul-int/lit8 v4, v22, 0xa

    add-int/lit8 v5, v11, -0x30

    add-int v22, v4, v5

    .line 514
    add-int/lit8 v15, v15, 0x1

    goto :goto_af

    .line 518
    :cond_ca
    add-int v24, v24, v22

    .line 523
    .end local v22    # "minutesPart":I
    :goto_cc
    const/16 v4, 0x2b

    move/from16 v0, v25

    if-ne v0, v4, :cond_d7

    .line 524
    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    .line 527
    :cond_d7
    move/from16 v27, v24

    .line 563
    :goto_d9
    const/16 v25, 0x0

    .line 490
    goto/16 :goto_23

    .line 520
    :cond_dd
    rem-int/lit8 v4, v24, 0x64

    div-int/lit8 v5, v24, 0x64

    mul-int/lit8 v5, v5, 0x3c

    add-int v24, v4, v5

    goto :goto_cc

    .line 528
    :cond_e6
    const/16 v4, 0x46

    move/from16 v0, v24

    if-lt v0, v4, :cond_106

    .line 529
    const/high16 v4, -0x80000000

    move/from16 v0, v30

    if-ne v0, v4, :cond_19

    .line 531
    const/16 v4, 0x20

    if-le v11, v4, :cond_fa

    const/16 v4, 0x2c

    if-ne v11, v4, :cond_fd

    .line 533
    :cond_fa
    :goto_fa
    move/from16 v30, v24

    goto :goto_d9

    .line 531
    :cond_fd
    const/16 v4, 0x2f

    if-eq v11, v4, :cond_fa

    move/from16 v0, v18

    if-lt v15, v0, :cond_19

    goto :goto_fa

    .line 536
    :cond_106
    const/16 v4, 0x3a

    if-ne v11, v4, :cond_118

    .line 537
    if-gez v14, :cond_110

    .line 538
    move/from16 v0, v24

    int-to-byte v14, v0

    goto :goto_d9

    .line 539
    :cond_110
    if-gez v21, :cond_19

    .line 540
    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v21, v0

    goto :goto_d9

    .line 543
    :cond_118
    const/16 v4, 0x2f

    if-ne v11, v4, :cond_12c

    .line 544
    if-gez v23, :cond_124

    .line 545
    add-int/lit8 v4, v24, -0x1

    int-to-byte v0, v4

    move/from16 v23, v0

    goto :goto_d9

    .line 546
    :cond_124
    if-gez v19, :cond_19

    .line 547
    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v19, v0

    goto :goto_d9

    .line 550
    :cond_12c
    move/from16 v0, v18

    if-ge v15, v0, :cond_13c

    const/16 v4, 0x2c

    if-eq v11, v4, :cond_13c

    const/16 v4, 0x20

    if-le v11, v4, :cond_13c

    const/16 v4, 0x2d

    if-ne v11, v4, :cond_19

    .line 552
    :cond_13c
    if-ltz v14, :cond_146

    if-gez v21, :cond_146

    .line 553
    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v21, v0

    goto :goto_d9

    .line 554
    :cond_146
    if-ltz v21, :cond_150

    if-gez v26, :cond_150

    .line 555
    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v26, v0

    goto :goto_d9

    .line 556
    :cond_150
    if-gez v19, :cond_158

    .line 557
    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v19, v0

    goto :goto_d9

    .line 559
    :cond_158
    const/high16 v4, -0x80000000

    move/from16 v0, v30

    if-ne v0, v4, :cond_19

    if-ltz v23, :cond_19

    if-ltz v19, :cond_19

    .line 560
    move/from16 v30, v24

    goto/16 :goto_d9

    .line 564
    :cond_166
    const/16 v4, 0x2f

    if-eq v11, v4, :cond_16e

    const/16 v4, 0x3a

    if-ne v11, v4, :cond_172

    .line 565
    :cond_16e
    move/from16 v25, v11

    goto/16 :goto_23

    .line 564
    :cond_172
    const/16 v4, 0x2b

    if-eq v11, v4, :cond_16e

    const/16 v4, 0x2d

    if-eq v11, v4, :cond_16e

    .line 567
    add-int/lit8 v8, v15, -0x1

    .line 568
    .local v8, "st":I
    :goto_17c
    move/from16 v0, v18

    if-ge v15, v0, :cond_196

    .line 569
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 570
    const/16 v4, 0x41

    if-gt v4, v11, :cond_18e

    const/16 v4, 0x5a

    if-le v11, v4, :cond_1cf

    :cond_18e
    const/16 v4, 0x61

    if-gt v4, v11, :cond_196

    const/16 v4, 0x7a

    if-le v11, v4, :cond_1cf

    .line 574
    :cond_196
    add-int/lit8 v4, v8, 0x1

    if-le v15, v4, :cond_19

    .line 577
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    array-length v0, v4

    move/from16 v16, v0

    .local v16, "k":I
    :cond_19f
    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_1c9

    .line 578
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    aget-object v4, v4, v16

    sub-int v9, v15, v8

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_19f

    .line 579
    sget-object v4, Ljava/util/Date;->ttb:[I

    aget v10, v4, v16

    .line 580
    .local v10, "action":I
    if-eqz v10, :cond_1c9

    .line 581
    const/4 v4, 0x1

    if-ne v10, v4, :cond_1d2

    .line 582
    const/16 v4, 0xc

    if-gt v14, v4, :cond_19

    const/4 v4, 0x1

    if-lt v14, v4, :cond_19

    .line 584
    const/16 v4, 0xc

    if-ge v14, v4, :cond_1c9

    .line 585
    add-int/lit8 v14, v14, 0xc

    .line 602
    .end local v10    # "action":I
    :cond_1c9
    :goto_1c9
    if-ltz v16, :cond_19

    .line 604
    const/16 v25, 0x0

    goto/16 :goto_23

    .line 572
    .end local v16    # "k":I
    :cond_1cf
    add-int/lit8 v15, v15, 0x1

    goto :goto_17c

    .line 586
    .restart local v10    # "action":I
    .restart local v16    # "k":I
    :cond_1d2
    const/16 v4, 0xe

    if-ne v10, v4, :cond_1e3

    .line 587
    const/16 v4, 0xc

    if-gt v14, v4, :cond_19

    const/4 v4, 0x1

    if-lt v14, v4, :cond_19

    .line 589
    const/16 v4, 0xc

    if-ne v14, v4, :cond_1c9

    .line 590
    const/4 v14, 0x0

    goto :goto_1c9

    .line 591
    :cond_1e3
    const/16 v4, 0xd

    if-gt v10, v4, :cond_1ef

    .line 592
    if-gez v23, :cond_19

    .line 593
    add-int/lit8 v4, v10, -0x2

    int-to-byte v0, v4

    move/from16 v23, v0

    goto :goto_1c9

    .line 597
    :cond_1ef
    add-int/lit16 v0, v10, -0x2710

    move/from16 v27, v0

    goto :goto_1c9

    .line 607
    .end local v8    # "st":I
    .end local v10    # "action":I
    .end local v16    # "k":I
    :cond_1f4
    const/high16 v4, -0x80000000

    move/from16 v0, v30

    if-eq v0, v4, :cond_19

    if-ltz v23, :cond_19

    if-ltz v19, :cond_19

    .line 610
    const/16 v4, 0x64

    move/from16 v0, v30

    if-ge v0, v4, :cond_22a

    .line 611
    const-class v5, Ljava/util/Date;

    monitor-enter v5

    .line 612
    :try_start_207
    sget v4, Ljava/util/Date;->defaultCenturyStart:I

    if-nez v4, :cond_219

    .line 613
    sget-object v4, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar;->getCalendarDate()Lsun/util/calendar/CalendarDate;

    move-result-object v4

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v4

    add-int/lit8 v4, v4, -0x50

    sput v4, Ljava/util/Date;->defaultCenturyStart:I
    :try_end_219
    .catchall {:try_start_207 .. :try_end_219} :catchall_264

    :cond_219
    monitor-exit v5

    .line 616
    sget v4, Ljava/util/Date;->defaultCenturyStart:I

    div-int/lit8 v4, v4, 0x64

    mul-int/lit8 v4, v4, 0x64

    add-int v30, v30, v4

    .line 617
    sget v4, Ljava/util/Date;->defaultCenturyStart:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_22a

    add-int/lit8 v30, v30, 0x64

    .line 619
    :cond_22a
    if-gez v26, :cond_22e

    .line 620
    const/16 v26, 0x0

    .line 621
    :cond_22e
    if-gez v21, :cond_232

    .line 622
    const/16 v21, 0x0

    .line 623
    :cond_232
    if-gez v14, :cond_235

    .line 624
    const/4 v14, 0x0

    .line 625
    :cond_235
    invoke-static/range {v30 .. v30}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v12

    .line 626
    .local v12, "cal":Lsun/util/calendar/BaseCalendar;
    const/4 v4, -0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_267

    .line 627
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v12, v4}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v17

    check-cast v17, Lsun/util/calendar/BaseCalendar$Date;

    .line 628
    .local v17, "ldate":Lsun/util/calendar/BaseCalendar$Date;
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 629
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v26

    invoke-virtual {v0, v14, v1, v2, v4}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 630
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    return-wide v4

    .line 611
    .end local v12    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v17    # "ldate":Lsun/util/calendar/BaseCalendar$Date;
    :catchall_264
    move-exception v4

    monitor-exit v5

    throw v4

    .line 632
    .restart local v12    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_267
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v28

    check-cast v28, Lsun/util/calendar/BaseCalendar$Date;

    .line 633
    .local v28, "udate":Lsun/util/calendar/BaseCalendar$Date;
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 634
    const/4 v4, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v26

    invoke-virtual {v0, v14, v1, v2, v4}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 635
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    const v6, 0xea60

    mul-int v6, v6, v27

    int-to-long v6, v6

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1350
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/Date;->fastTime:J

    .line 1351
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1341
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1342
    return-void
.end method


# virtual methods
.method public after(Ljava/util/Date;)Z
    .registers 6
    .param p1, "when"    # Ljava/util/Date;

    .prologue
    .line 952
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public before(Ljava/util/Date;)Z
    .registers 6
    .param p1, "when"    # Ljava/util/Date;

    .prologue
    .line 938
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 283
    .local v1, "d":Ljava/util/Date;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Date;

    move-object v1, v0

    .line 284
    .local v1, "d":Ljava/util/Date;
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v3, :cond_17

    .line 285
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v3, v1, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;
    :try_end_17
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_17} :catch_18

    .line 288
    .end local v1    # "d":Ljava/util/Date;
    :cond_17
    :goto_17
    return-object v1

    .line 287
    :catch_18
    move-exception v2

    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    goto :goto_17
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 986
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/Date;)I
    .registers 7
    .param p1, "anotherDate"    # Ljava/util/Date;

    .prologue
    .line 998
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v2

    .line 999
    .local v2, "thisTime":J
    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v0

    .line 1000
    .local v0, "anotherTime":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_e

    const/4 v4, -0x1

    :goto_d
    return v4

    :cond_e
    cmp-long v4, v2, v0

    if-nez v4, :cond_14

    const/4 v4, 0x0

    goto :goto_d

    :cond_14
    const/4 v4, 0x1

    goto :goto_d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 971
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    check-cast p1, Ljava/util/Date;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public getDate()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 757
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDay()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 796
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getHours()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 813
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 845
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 708
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSeconds()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 878
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v0

    return v0
.end method

.method public getTime()J
    .registers 3

    .prologue
    .line 906
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimezoneOffset()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1191
    iget-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v2, :cond_1f

    .line 1193
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->fastTime:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 1194
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int v1, v2, v3

    .line 1199
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    .local v1, "zoneOffset":I
    :goto_19
    neg-int v2, v1

    const v3, 0xea60

    div-int/2addr v2, v3

    return v2

    .line 1196
    .end local v1    # "zoneOffset":I
    :cond_1f
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    .line 1197
    iget-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getZoneOffset()I

    move-result v1

    .restart local v1    # "zoneOffset":I
    goto :goto_19
.end method

.method public getYear()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 672
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x76c

    return v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 1015
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1016
    .local v0, "ht":J
    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long v4, v0, v3

    long-to-int v3, v4

    xor-int/2addr v2, v3

    return v2
.end method

.method public setDate(I)V
    .registers 3
    .param p1, "date"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 777
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 778
    return-void
.end method

.method public setHours(I)V
    .registers 3
    .param p1, "hours"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 830
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setHours(I)Lsun/util/calendar/CalendarDate;

    .line 831
    return-void
.end method

.method public setMinutes(I)V
    .registers 3
    .param p1, "minutes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 862
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 863
    return-void
.end method

.method public setMonth(I)V
    .registers 5
    .param p1, "month"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0xc

    .line 727
    const/4 v1, 0x0

    .line 728
    .local v1, "y":I
    if-lt p1, v2, :cond_1d

    .line 729
    div-int/lit8 v1, p1, 0xc

    .line 730
    rem-int/lit8 p1, p1, 0xc

    .line 735
    :cond_9
    :goto_9
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 736
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    if-eqz v1, :cond_17

    .line 737
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 739
    :cond_17
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 740
    return-void

    .line 731
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_1d
    if-gez p1, :cond_9

    .line 732
    invoke-static {p1, v2}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v1

    .line 733
    invoke-static {p1, v2}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p1

    goto :goto_9
.end method

.method public setSeconds(I)V
    .registers 3
    .param p1, "seconds"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 895
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 896
    return-void
.end method

.method public setTime(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 923
    iput-wide p1, p0, Ljava/util/Date;->fastTime:J

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 925
    return-void
.end method

.method public setYear(I)V
    .registers 4
    .param p1, "year"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 692
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    add-int/lit16 v1, p1, 0x76c

    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 693
    return-void
.end method

.method public toGMTString()Ljava/lang/String;
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v10, 0x3a

    const/4 v9, 0x2

    const/16 v8, 0x20

    .line 1141
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1142
    .local v4, "t":J
    invoke-static {v4, v5}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 1144
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 v3, 0x0

    check-cast v3, Ljava/util/TimeZone;

    invoke-virtual {v0, v6, v7, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    .line 1145
    .local v1, "date":Lsun/util/calendar/BaseCalendar$Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1146
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v3

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1147
    sget-object v3, Ljava/util/Date;->wtb:[Ljava/lang/String;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x7

    aget-object v3, v3, v6

    invoke-static {v2, v3}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1148
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v3

    invoke-static {v2, v3, v9}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v3

    invoke-static {v2, v3, v9}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v3

    invoke-static {v2, v3, v9}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 1152
    const-string/jumbo v3, " GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toInstant()Ljava/time/Instant;
    .registers 3

    .prologue
    .line 1392
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public toLocaleString()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1103
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 1104
    .local v0, "formatter":Ljava/text/DateFormat;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x3a

    const/4 v6, 0x2

    const/16 v7, 0x20

    .line 1051
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 1052
    .local v0, "date":Lsun/util/calendar/BaseCalendar$Date;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x1c

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1053
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v1

    .line 1054
    .local v1, "index":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_19

    .line 1055
    const/16 v1, 0x8

    .line 1057
    :cond_19
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v2, v4}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1058
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x7

    aget-object v4, v4, v5

    invoke-static {v2, v4}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1059
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1061
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v4

    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1062
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v4

    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v4

    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1064
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1065
    .local v3, "zi":Ljava/util/TimeZone;
    if-eqz v3, :cond_89

    .line 1066
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isDaylightTime()Z

    move-result v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    :goto_79
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1071
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1068
    :cond_89
    const-string/jumbo v4, "GMT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_79
.end method
