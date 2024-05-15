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
        "Ljava/lang/Comparable<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static greylist-max-o defaultCenturyStart:I = 0x0

.field private static final greylist-max-o gcal:Lsun/util/calendar/BaseCalendar;

.field private static greylist-max-o jcal:Lsun/util/calendar/BaseCalendar; = null

.field private static final whitelist serialVersionUID:J = 0x686a81014b597419L

.field private static final greylist-max-o ttb:[I

.field private static final greylist-max-o wtb:[Ljava/lang/String;


# instance fields
.field private transient greylist-max-o cdate:Lsun/util/calendar/BaseCalendar$Date;

.field private transient greylist-max-o fastTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 33

    .line 135
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    sput-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    .line 640
    const-string v1, "am"

    const-string v2, "pm"

    const-string v3, "monday"

    const-string v4, "tuesday"

    const-string v5, "wednesday"

    const-string v6, "thursday"

    const-string v7, "friday"

    const-string v8, "saturday"

    const-string v9, "sunday"

    const-string v10, "january"

    const-string v11, "february"

    const-string v12, "march"

    const-string v13, "april"

    const-string v14, "may"

    const-string v15, "june"

    const-string v16, "july"

    const-string v17, "august"

    const-string v18, "september"

    const-string v19, "october"

    const-string v20, "november"

    const-string v21, "december"

    const-string v22, "gmt"

    const-string v23, "ut"

    const-string v24, "utc"

    const-string v25, "est"

    const-string v26, "edt"

    const-string v27, "cst"

    const-string v28, "cdt"

    const-string v29, "mst"

    const-string v30, "mdt"

    const-string v31, "pst"

    const-string v32, "pdt"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/util/Date;->wtb:[Ljava/lang/String;

    .line 649
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_56

    sput-object v0, Ljava/util/Date;->ttb:[I

    return-void

    :array_56
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

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 3

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 166
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(III)V
    .registers 11
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 198
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(IIIII)V
    .registers 13
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hrs"    # I
    .param p5, "min"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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

.method public constructor whitelist core-platform-api test-api <init>(IIIIII)V
    .registers 11
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hrs"    # I
    .param p5, "min"    # I
    .param p6, "sec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    add-int/lit16 v0, p1, 0x76c

    .line 246
    .local v0, "y":I
    const/16 v1, 0xc

    if-lt p2, v1, :cond_f

    .line 247
    div-int/lit8 v1, p2, 0xc

    add-int/2addr v0, v1

    .line 248
    rem-int/lit8 p2, p2, 0xc

    goto :goto_1a

    .line 249
    :cond_f
    if-gez p2, :cond_1a

    .line 250
    invoke-static {p2, v1}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 251
    invoke-static {p2, v1}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p2

    .line 253
    :cond_1a
    :goto_1a
    invoke-static {v0}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v1

    .line 254
    .local v1, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 255
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v0, v3, p3}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p4, p5, p6, v3}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 256
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    .line 257
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 258
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(J)V
    .registers 3
    .param p1, "date"    # J

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-wide p1, p0, Ljava/util/Date;->fastTime:J

    .line 179
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    invoke-static {p1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 275
    return-void
.end method

.method public static whitelist core-platform-api test-api UTC(IIIIII)J
    .registers 13
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "date"    # I
    .param p3, "hrs"    # I
    .param p4, "min"    # I
    .param p5, "sec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    add-int/lit16 v0, p0, 0x76c

    .line 321
    .local v0, "y":I
    const/16 v1, 0xc

    if-lt p1, v1, :cond_c

    .line 322
    div-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    .line 323
    rem-int/lit8 p1, p1, 0xc

    goto :goto_17

    .line 324
    :cond_c
    if-gez p1, :cond_17

    .line 325
    invoke-static {p1, v1}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 326
    invoke-static {p1, v1}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p1

    .line 328
    :cond_17
    :goto_17
    add-int/lit8 v1, p1, 0x1

    .line 329
    .local v1, "m":I
    invoke-static {v0}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v2

    .line 330
    .local v2, "cal":Lsun/util/calendar/BaseCalendar;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    .line 331
    .local v3, "udate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v3, v0, v1, p2}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p3, p4, p5, v5}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 335
    new-instance v4, Ljava/util/Date;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 336
    .local v4, "d":Ljava/util/Date;
    invoke-direct {v4, v3}, Ljava/util/Date;->normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;

    .line 337
    iget-wide v5, v4, Ljava/util/Date;->fastTime:J

    return-wide v5
.end method

.method private static final greylist-max-o convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;

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

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1082
    return-object p0
.end method

.method public static whitelist core-platform-api test-api from(Ljava/time/Instant;)Ljava/util/Date;
    .registers 4
    .param p0, "instant"    # Ljava/time/Instant;

    .line 1375
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
    :try_end_9
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 1376
    :catch_a
    move-exception v0

    .line 1377
    .local v0, "ex":Ljava/lang/ArithmeticException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final greylist-max-o getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;
    .registers 5

    .line 1203
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v0, :cond_18

    .line 1204
    iget-wide v0, p0, Ljava/util/Date;->fastTime:J

    invoke-static {v0, v1}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 1205
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v1, p0, Ljava/util/Date;->fastTime:J

    .line 1206
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v3

    .line 1205
    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1208
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_18
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    return-object v0
.end method

.method private static final greylist-max-o getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;
    .registers 2
    .param p0, "year"    # I

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

.method private static final greylist-max-o getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;
    .registers 6
    .param p0, "utc"    # J

    .line 1306
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1f

    const-wide v0, -0xb1d069b5400L

    .line 1308
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1a

    goto :goto_1f

    .line 1311
    :cond_1a
    invoke-static {}, Ljava/util/Date;->getJulianCalendar()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    return-object v0

    .line 1309
    :cond_1f
    :goto_1f
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    return-object v0
.end method

.method private static final greylist-max-o getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;
    .registers 2
    .param p0, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;

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

.method private static final declared-synchronized greylist-max-o getJulianCalendar()Lsun/util/calendar/BaseCalendar;
    .registers 2

    const-class v0, Ljava/util/Date;

    monitor-enter v0

    .line 1325
    :try_start_3
    sget-object v1, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    if-nez v1, :cond_11

    .line 1326
    const-string v1, "julian"

    invoke-static {v1}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar;

    sput-object v1, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    .line 1328
    :cond_11
    sget-object v1, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object v1

    .line 1324
    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static final greylist-max-o getMillisOf(Ljava/util/Date;)J
    .registers 4
    .param p0, "date"    # Ljava/util/Date;

    .line 979
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1a

    .line 982
    :cond_b
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 983
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    sget-object v1, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v1

    return-wide v1

    .line 980
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_1a
    :goto_1a
    iget-wide v0, p0, Ljava/util/Date;->fastTime:J

    return-wide v0
.end method

.method private final greylist-max-o getTimeImpl()J
    .registers 3

    .line 910
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_d

    .line 911
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    .line 913
    :cond_d
    iget-wide v0, p0, Ljava/util/Date;->fastTime:J

    return-wide v0
.end method

.method private final greylist-max-o normalize()Lsun/util/calendar/BaseCalendar$Date;
    .registers 6

    .line 1212
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v0, :cond_19

    .line 1213
    iget-wide v0, p0, Ljava/util/Date;->fastTime:J

    invoke-static {v0, v1}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 1214
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v1, p0, Ljava/util/Date;->fastTime:J

    .line 1215
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v3

    .line 1214
    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1216
    return-object v1

    .line 1221
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_19
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1222
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {p0, v0}, Ljava/util/Date;->normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1227
    :cond_27
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    .line 1228
    .local v0, "tz":Ljava/util/TimeZone;
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    if-eq v0, v1, :cond_45

    .line 1229
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1230
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-static {v1}, Ljava/util/Date;->getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;

    move-result-object v1

    .line 1231
    .local v1, "cal":Lsun/util/calendar/CalendarSystem;
    iget-wide v2, p0, Ljava/util/Date;->fastTime:J

    iget-object v4, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v2, v3, v4}, Lsun/util/calendar/CalendarSystem;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    .line 1233
    .end local v1    # "cal":Lsun/util/calendar/CalendarSystem;
    :cond_45
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    return-object v1
.end method

.method private final greylist-max-o normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;
    .registers 19
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;

    .line 1238
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v8

    .line 1239
    .local v8, "y":I
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v9

    .line 1240
    .local v9, "m":I
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v10

    .line 1241
    .local v10, "d":I
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v11

    .line 1242
    .local v11, "hh":I
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v12

    .line 1243
    .local v12, "mm":I
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v13

    .line 1244
    .local v13, "ss":I
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/BaseCalendar$Date;->getMillis()I

    move-result v14

    .line 1245
    .local v14, "ms":I
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 1255
    .local v1, "tz":Ljava/util/TimeZone;
    const/16 v2, 0x62e

    if-eq v8, v2, :cond_6c

    const v2, 0x10b07600

    if-gt v8, v2, :cond_6c

    const v2, -0x10b07600

    if-ge v8, v2, :cond_31

    goto :goto_6c

    .line 1269
    :cond_31
    invoke-static {v8}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v2

    .line 1270
    .local v2, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-static/range {p1 .. p1}, Ljava/util/Date;->getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;

    move-result-object v3

    if-eq v2, v3, :cond_49

    .line 1271
    invoke-virtual {v2, v1}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    .line 1272
    .end local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    .local v3, "date":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v3, v8, v9, v10}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v4

    invoke-virtual {v4, v11, v12, v13, v14}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    goto :goto_4b

    .line 1270
    .end local v3    # "date":Lsun/util/calendar/BaseCalendar$Date;
    .restart local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    :cond_49
    move-object/from16 v3, p1

    .line 1275
    .end local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    .restart local v3    # "date":Lsun/util/calendar/BaseCalendar$Date;
    :goto_4b
    invoke-virtual {v2, v3}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    iput-wide v4, v0, Ljava/util/Date;->fastTime:J

    .line 1279
    invoke-static {v4, v5}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    .line 1280
    .local v4, "ncal":Lsun/util/calendar/BaseCalendar;
    if-eq v4, v2, :cond_6b

    .line 1281
    invoke-virtual {v4, v1}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    .line 1282
    invoke-virtual {v3, v8, v9, v10}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    invoke-virtual {v5, v11, v12, v13, v14}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 1283
    invoke-virtual {v4, v3}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v5

    iput-wide v5, v0, Ljava/util/Date;->fastTime:J

    .line 1285
    :cond_6b
    return-object v3

    .line 1256
    .end local v2    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v3    # "date":Lsun/util/calendar/BaseCalendar$Date;
    .end local v4    # "ncal":Lsun/util/calendar/BaseCalendar;
    .restart local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    :cond_6c
    :goto_6c
    if-nez v1, :cond_76

    .line 1257
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    move-object v15, v1

    goto :goto_77

    .line 1256
    :cond_76
    move-object v15, v1

    .line 1259
    .end local v1    # "tz":Ljava/util/TimeZone;
    .local v15, "tz":Ljava/util/TimeZone;
    :goto_77
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, v15}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    move-object v7, v1

    .line 1260
    .local v7, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->clear()V

    .line 1261
    const/16 v1, 0xe

    invoke-virtual {v7, v1, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1262
    add-int/lit8 v3, v9, -0x1

    move-object v1, v7

    move v2, v8

    move v4, v10

    move v5, v11

    move v6, v12

    move-object/from16 v16, v7

    .end local v7    # "gc":Ljava/util/GregorianCalendar;
    .local v16, "gc":Ljava/util/GregorianCalendar;
    move v7, v13

    invoke-virtual/range {v1 .. v7}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 1263
    invoke-virtual/range {v16 .. v16}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, v0, Ljava/util/Date;->fastTime:J

    .line 1264
    invoke-static {v1, v2}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v1

    .line 1265
    .local v1, "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v2, v0, Ljava/util/Date;->fastTime:J

    invoke-virtual {v1, v2, v3, v15}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/BaseCalendar$Date;

    .line 1266
    .end local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    .local v2, "date":Lsun/util/calendar/BaseCalendar$Date;
    return-object v2
.end method

.method public static whitelist core-platform-api test-api parse(Ljava/lang/String;)J
    .registers 27
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 455
    move-object/from16 v7, p0

    const/high16 v0, -0x80000000

    .line 456
    .local v0, "year":I
    const/4 v1, -0x1

    .line 457
    .local v1, "mon":I
    const/4 v2, -0x1

    .line 458
    .local v2, "mday":I
    const/4 v3, -0x1

    .line 459
    .local v3, "hour":I
    const/4 v4, -0x1

    .line 460
    .local v4, "min":I
    const/4 v5, -0x1

    .line 461
    .local v5, "sec":I
    const/4 v8, -0x1

    .line 462
    .local v8, "millis":I
    const/4 v6, -0x1

    .line 463
    .local v6, "c":I
    const/4 v9, 0x0

    .line 464
    .local v9, "i":I
    const/4 v10, -0x1

    .line 465
    .local v10, "n":I
    const/4 v11, -0x1

    .line 466
    .local v11, "wst":I
    const/4 v12, -0x1

    .line 467
    .local v12, "tzoffset":I
    const/4 v13, 0x0

    .line 470
    .local v13, "prevc":I
    if-eqz v7, :cond_302

    .line 472
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v10

    move v5, v12

    move v4, v13

    move v10, v1

    move v12, v2

    move v13, v3

    move v1, v9

    move v9, v0

    .line 473
    .end local v0    # "year":I
    .end local v2    # "mday":I
    .end local v3    # "hour":I
    .local v1, "i":I
    .local v4, "prevc":I
    .local v5, "tzoffset":I
    .local v9, "year":I
    .local v10, "mon":I
    .local v12, "mday":I
    .local v13, "hour":I
    .local v14, "limit":I
    .local v15, "min":I
    .local v16, "sec":I
    .local v17, "n":I
    :cond_22
    :goto_22
    if-ge v1, v14, :cond_266

    .line 474
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 475
    add-int/lit8 v1, v1, 0x1

    .line 476
    const/16 v3, 0x20

    if-le v6, v3, :cond_25c

    const/16 v0, 0x2c

    if-ne v6, v0, :cond_38

    .line 477
    move/from16 v23, v4

    move/from16 v24, v5

    goto/16 :goto_260

    .line 478
    :cond_38
    const/16 v0, 0x28

    if-ne v6, v0, :cond_53

    .line 479
    const/4 v2, 0x1

    .line 480
    .local v2, "depth":I
    :cond_3d
    :goto_3d
    if-ge v1, v14, :cond_22

    .line 481
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 482
    add-int/lit8 v1, v1, 0x1

    .line 483
    if-ne v6, v0, :cond_4a

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 484
    :cond_4a
    const/16 v3, 0x29

    if-ne v6, v3, :cond_3d

    .line 485
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_3d

    .line 486
    goto :goto_22

    .line 490
    .end local v2    # "depth":I
    :cond_53
    const/16 v2, 0x30

    if-gt v2, v6, :cond_172

    const/16 v0, 0x39

    if-gt v6, v0, :cond_172

    .line 491
    add-int/lit8 v17, v6, -0x30

    move/from16 v3, v17

    .line 492
    .end local v17    # "n":I
    .local v3, "n":I
    :goto_5f
    if-ge v1, v14, :cond_76

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v6, v0

    if-gt v2, v0, :cond_76

    const/16 v0, 0x39

    if-gt v6, v0, :cond_76

    .line 493
    mul-int/lit8 v0, v3, 0xa

    add-int/2addr v0, v6

    add-int/lit8 v3, v0, -0x30

    .line 494
    add-int/lit8 v1, v1, 0x1

    const/16 v0, 0x39

    goto :goto_5f

    .line 496
    :cond_76
    const/16 v0, 0x2b

    if-eq v4, v0, :cond_107

    const/16 v0, 0x2d

    if-ne v4, v0, :cond_84

    const/high16 v0, -0x80000000

    if-eq v9, v0, :cond_86

    goto/16 :goto_107

    :cond_84
    const/high16 v0, -0x80000000

    .line 528
    :cond_86
    const/16 v2, 0x46

    if-lt v3, v2, :cond_a2

    .line 529
    if-ne v9, v0, :cond_a0

    .line 531
    const/16 v0, 0x20

    if-le v6, v0, :cond_9a

    const/16 v0, 0x2c

    if-eq v6, v0, :cond_9a

    const/16 v0, 0x2f

    if-eq v6, v0, :cond_9a

    if-lt v1, v14, :cond_10e

    .line 533
    :cond_9a
    move v0, v3

    move v9, v0

    move/from16 v17, v3

    .end local v9    # "year":I
    .restart local v0    # "year":I
    goto/16 :goto_16f

    .line 530
    .end local v0    # "year":I
    .restart local v9    # "year":I
    :cond_a0
    goto/16 :goto_10e

    .line 536
    :cond_a2
    const/16 v0, 0x3a

    if-ne v6, v0, :cond_b6

    .line 537
    if-gez v13, :cond_ae

    .line 538
    int-to-byte v0, v3

    move v13, v0

    move/from16 v17, v3

    .end local v13    # "hour":I
    .local v0, "hour":I
    goto/16 :goto_16f

    .line 539
    .end local v0    # "hour":I
    .restart local v13    # "hour":I
    :cond_ae
    if-gez v15, :cond_10e

    .line 540
    int-to-byte v0, v3

    move v15, v0

    move/from16 v17, v3

    .end local v15    # "min":I
    .local v0, "min":I
    goto/16 :goto_16f

    .line 543
    .end local v0    # "min":I
    .restart local v15    # "min":I
    :cond_b6
    const/16 v0, 0x2f

    if-ne v6, v0, :cond_cc

    .line 544
    if-gez v10, :cond_c4

    .line 545
    add-int/lit8 v0, v3, -0x1

    int-to-byte v0, v0

    move v10, v0

    move/from16 v17, v3

    .end local v10    # "mon":I
    .local v0, "mon":I
    goto/16 :goto_16f

    .line 546
    .end local v0    # "mon":I
    .restart local v10    # "mon":I
    :cond_c4
    if-gez v12, :cond_10e

    .line 547
    int-to-byte v0, v3

    move v12, v0

    move/from16 v17, v3

    .end local v12    # "mday":I
    .local v0, "mday":I
    goto/16 :goto_16f

    .line 550
    .end local v0    # "mday":I
    .restart local v12    # "mday":I
    :cond_cc
    if-ge v1, v14, :cond_dc

    const/16 v0, 0x2c

    if-eq v6, v0, :cond_dc

    const/16 v0, 0x20

    if-le v6, v0, :cond_dc

    const/16 v0, 0x2d

    if-ne v6, v0, :cond_db

    goto :goto_dc

    .line 551
    :cond_db
    goto :goto_10e

    .line 552
    :cond_dc
    :goto_dc
    if-ltz v13, :cond_e6

    if-gez v15, :cond_e6

    .line 553
    int-to-byte v0, v3

    move v15, v0

    move/from16 v17, v3

    .end local v15    # "min":I
    .local v0, "min":I
    goto/16 :goto_16f

    .line 554
    .end local v0    # "min":I
    .restart local v15    # "min":I
    :cond_e6
    if-ltz v15, :cond_f1

    if-gez v16, :cond_f1

    .line 555
    int-to-byte v0, v3

    move/from16 v16, v0

    move/from16 v17, v3

    .end local v16    # "sec":I
    .local v0, "sec":I
    goto/16 :goto_16f

    .line 556
    .end local v0    # "sec":I
    .restart local v16    # "sec":I
    :cond_f1
    if-gez v12, :cond_f9

    .line 557
    int-to-byte v0, v3

    move v12, v0

    move/from16 v17, v3

    .end local v12    # "mday":I
    .local v0, "mday":I
    goto/16 :goto_16f

    .line 559
    .end local v0    # "mday":I
    .restart local v12    # "mday":I
    :cond_f9
    const/high16 v0, -0x80000000

    if-ne v9, v0, :cond_10e

    if-ltz v10, :cond_10e

    if-ltz v12, :cond_10e

    .line 560
    move v0, v3

    move v9, v0

    move/from16 v17, v3

    .end local v9    # "year":I
    .local v0, "year":I
    goto/16 :goto_16f

    .line 499
    .end local v0    # "year":I
    .restart local v9    # "year":I
    :cond_107
    :goto_107
    if-eqz v5, :cond_11b

    const/4 v0, -0x1

    if-ne v5, v0, :cond_10d

    goto :goto_11b

    .line 500
    :cond_10d
    nop

    .line 638
    .end local v14    # "limit":I
    :cond_10e
    :goto_10e
    move v0, v9

    move v2, v12

    move v9, v1

    move v12, v5

    move v1, v10

    move/from16 v5, v16

    move v10, v3

    move v3, v13

    move v13, v4

    move v4, v15

    goto/16 :goto_303

    .line 503
    .restart local v14    # "limit":I
    :cond_11b
    :goto_11b
    const/16 v0, 0x18

    if-ge v3, v0, :cond_15c

    .line 504
    mul-int/lit8 v3, v3, 0x3c

    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, "minutesPart":I
    if-ge v1, v14, :cond_154

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v17, v0

    const/16 v0, 0x3a

    .end local v0    # "minutesPart":I
    .local v17, "minutesPart":I
    if-ne v2, v0, :cond_151

    .line 511
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v17

    .line 512
    .end local v17    # "minutesPart":I
    .restart local v0    # "minutesPart":I
    :goto_132
    if-ge v1, v14, :cond_14e

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v6, v2

    move/from16 v19, v5

    const/16 v5, 0x30

    .end local v5    # "tzoffset":I
    .local v19, "tzoffset":I
    if-gt v5, v2, :cond_15a

    const/16 v2, 0x39

    if-gt v6, v2, :cond_15a

    .line 513
    mul-int/lit8 v17, v0, 0xa

    add-int/lit8 v18, v6, -0x30

    add-int v0, v17, v18

    .line 514
    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v19

    goto :goto_132

    .line 512
    .end local v19    # "tzoffset":I
    .restart local v5    # "tzoffset":I
    :cond_14e
    move/from16 v19, v5

    .end local v5    # "tzoffset":I
    .restart local v19    # "tzoffset":I
    goto :goto_15a

    .line 510
    .end local v0    # "minutesPart":I
    .end local v19    # "tzoffset":I
    .restart local v5    # "tzoffset":I
    .restart local v17    # "minutesPart":I
    :cond_151
    move/from16 v19, v5

    .end local v5    # "tzoffset":I
    .restart local v19    # "tzoffset":I
    goto :goto_158

    .end local v17    # "minutesPart":I
    .end local v19    # "tzoffset":I
    .restart local v0    # "minutesPart":I
    .restart local v5    # "tzoffset":I
    :cond_154
    move/from16 v17, v0

    move/from16 v19, v5

    .line 518
    .end local v0    # "minutesPart":I
    .end local v5    # "tzoffset":I
    .restart local v17    # "minutesPart":I
    .restart local v19    # "tzoffset":I
    :goto_158
    move/from16 v0, v17

    .end local v17    # "minutesPart":I
    .restart local v0    # "minutesPart":I
    :cond_15a
    :goto_15a
    add-int/2addr v3, v0

    .line 519
    .end local v0    # "minutesPart":I
    goto :goto_166

    .line 520
    .end local v19    # "tzoffset":I
    .restart local v5    # "tzoffset":I
    :cond_15c
    move/from16 v19, v5

    .end local v5    # "tzoffset":I
    .restart local v19    # "tzoffset":I
    rem-int/lit8 v0, v3, 0x64

    div-int/lit8 v2, v3, 0x64

    mul-int/lit8 v2, v2, 0x3c

    add-int v3, v0, v2

    .line 523
    :goto_166
    const/16 v0, 0x2b

    if-ne v4, v0, :cond_16b

    .line 524
    neg-int v3, v3

    .line 527
    :cond_16b
    move v0, v3

    move v5, v0

    move/from16 v17, v3

    .line 563
    .end local v3    # "n":I
    .end local v19    # "tzoffset":I
    .restart local v5    # "tzoffset":I
    .local v17, "n":I
    :goto_16f
    const/4 v4, 0x0

    goto/16 :goto_22

    .line 490
    :cond_172
    move/from16 v19, v5

    .line 564
    .end local v5    # "tzoffset":I
    .restart local v19    # "tzoffset":I
    const/16 v0, 0x2f

    if-eq v6, v0, :cond_253

    const/16 v0, 0x3a

    if-eq v6, v0, :cond_253

    const/16 v0, 0x2b

    if-eq v6, v0, :cond_253

    const/16 v0, 0x2d

    if-ne v6, v0, :cond_18a

    move/from16 v23, v4

    move/from16 v24, v19

    goto/16 :goto_257

    .line 567
    :cond_18a
    add-int/lit8 v0, v1, -0x1

    move/from16 v25, v6

    move v6, v1

    move/from16 v1, v25

    .line 568
    .local v0, "st":I
    .local v1, "c":I
    .local v6, "i":I
    :goto_191
    if-ge v6, v14, :cond_1ae

    .line 569
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 570
    const/16 v2, 0x41

    if-gt v2, v1, :cond_19f

    const/16 v2, 0x5a

    if-le v1, v2, :cond_1a8

    :cond_19f
    const/16 v2, 0x61

    if-gt v2, v1, :cond_1ab

    const/16 v2, 0x7a

    if-le v1, v2, :cond_1a8

    .line 571
    goto :goto_1ab

    .line 572
    :cond_1a8
    add-int/lit8 v6, v6, 0x1

    goto :goto_191

    .line 574
    :cond_1ab
    :goto_1ab
    move/from16 v20, v1

    goto :goto_1b0

    .line 568
    :cond_1ae
    move/from16 v20, v1

    .line 574
    .end local v1    # "c":I
    .local v20, "c":I
    :goto_1b0
    add-int/lit8 v1, v0, 0x1

    if-le v6, v1, :cond_23a

    .line 577
    sget-object v1, Ljava/util/Date;->wtb:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "k":I
    :goto_1b7
    const/4 v2, -0x1

    add-int/lit8 v21, v1, -0x1

    .end local v1    # "k":I
    .local v21, "k":I
    if-ltz v21, :cond_217

    .line 578
    sget-object v1, Ljava/util/Date;->wtb:[Ljava/lang/String;

    aget-object v1, v1, v21

    const/4 v2, 0x1

    const/4 v3, 0x0

    sub-int v22, v6, v0

    move/from16 v23, v4

    .end local v4    # "prevc":I
    .local v23, "prevc":I
    move-object/from16 v4, p0

    move/from16 v24, v19

    .end local v19    # "tzoffset":I
    .local v24, "tzoffset":I
    move v5, v0

    move/from16 v19, v6

    .end local v6    # "i":I
    .local v19, "i":I
    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_20e

    .line 579
    sget-object v1, Ljava/util/Date;->ttb:[I

    aget v1, v1, v21

    .line 580
    .local v1, "action":I
    if-eqz v1, :cond_21d

    .line 581
    const/16 v2, 0xc

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1ed

    .line 582
    if-gt v13, v2, :cond_240

    if-lt v13, v3, :cond_1eb

    .line 584
    if-ge v13, v2, :cond_21d

    .line 585
    add-int/lit8 v13, v13, 0xc

    move/from16 v5, v24

    goto :goto_21f

    .line 583
    :cond_1eb
    goto/16 :goto_240

    .line 586
    :cond_1ed
    const/16 v4, 0xe

    if-ne v1, v4, :cond_1fd

    .line 587
    if-gt v13, v2, :cond_240

    if-lt v13, v3, :cond_1fc

    .line 589
    if-ne v13, v2, :cond_21d

    .line 590
    const/4 v2, 0x0

    move v13, v2

    move/from16 v5, v24

    .end local v13    # "hour":I
    .local v2, "hour":I
    goto :goto_21f

    .line 588
    .end local v2    # "hour":I
    .restart local v13    # "hour":I
    :cond_1fc
    goto :goto_240

    .line 591
    :cond_1fd
    const/16 v2, 0xd

    if-gt v1, v2, :cond_20a

    .line 592
    if-gez v10, :cond_240

    .line 593
    add-int/lit8 v2, v1, -0x2

    int-to-byte v2, v2

    move v10, v2

    move/from16 v5, v24

    .end local v10    # "mon":I
    .local v2, "mon":I
    goto :goto_21f

    .line 597
    .end local v2    # "mon":I
    .restart local v10    # "mon":I
    :cond_20a
    add-int/lit16 v2, v1, -0x2710

    move v5, v2

    .end local v24    # "tzoffset":I
    .local v2, "tzoffset":I
    goto :goto_21f

    .line 578
    .end local v1    # "action":I
    .end local v2    # "tzoffset":I
    .restart local v24    # "tzoffset":I
    :cond_20e
    move/from16 v6, v19

    move/from16 v1, v21

    move/from16 v4, v23

    move/from16 v19, v24

    goto :goto_1b7

    .line 577
    .end local v23    # "prevc":I
    .end local v24    # "tzoffset":I
    .restart local v4    # "prevc":I
    .restart local v6    # "i":I
    .local v19, "tzoffset":I
    :cond_217
    move/from16 v23, v4

    move/from16 v24, v19

    move/from16 v19, v6

    .line 602
    .end local v4    # "prevc":I
    .end local v6    # "i":I
    .local v19, "i":I
    .restart local v23    # "prevc":I
    .restart local v24    # "tzoffset":I
    :cond_21d
    move/from16 v5, v24

    .end local v24    # "tzoffset":I
    .restart local v5    # "tzoffset":I
    :goto_21f
    if-ltz v21, :cond_228

    .line 604
    const/4 v4, 0x0

    .line 605
    .end local v0    # "st":I
    .end local v21    # "k":I
    .end local v23    # "prevc":I
    .restart local v4    # "prevc":I
    move/from16 v1, v19

    move/from16 v6, v20

    goto/16 :goto_22

    .line 603
    .end local v4    # "prevc":I
    .restart local v0    # "st":I
    .restart local v21    # "k":I
    .restart local v23    # "prevc":I
    :cond_228
    move v0, v9

    move v1, v10

    move v2, v12

    move v3, v13

    move v4, v15

    move/from16 v10, v17

    move/from16 v9, v19

    move/from16 v6, v20

    move/from16 v13, v23

    move v12, v5

    move/from16 v5, v16

    goto/16 :goto_303

    .line 575
    .end local v5    # "tzoffset":I
    .end local v21    # "k":I
    .end local v23    # "prevc":I
    .restart local v4    # "prevc":I
    .restart local v6    # "i":I
    .local v19, "tzoffset":I
    :cond_23a
    move/from16 v23, v4

    move/from16 v24, v19

    move/from16 v19, v6

    .line 638
    .end local v0    # "st":I
    .end local v4    # "prevc":I
    .end local v6    # "i":I
    .end local v14    # "limit":I
    .local v19, "i":I
    .restart local v23    # "prevc":I
    .restart local v24    # "tzoffset":I
    :cond_240
    :goto_240
    move v0, v9

    move v1, v10

    move v2, v12

    move v3, v13

    move v4, v15

    move/from16 v5, v16

    move/from16 v10, v17

    move/from16 v9, v19

    move/from16 v6, v20

    move/from16 v13, v23

    move/from16 v12, v24

    goto/16 :goto_303

    .line 564
    .end local v20    # "c":I
    .end local v23    # "prevc":I
    .end local v24    # "tzoffset":I
    .local v1, "i":I
    .restart local v4    # "prevc":I
    .local v6, "c":I
    .restart local v14    # "limit":I
    .local v19, "tzoffset":I
    :cond_253
    move/from16 v23, v4

    move/from16 v24, v19

    .line 565
    .end local v4    # "prevc":I
    .end local v19    # "tzoffset":I
    .restart local v23    # "prevc":I
    .restart local v24    # "tzoffset":I
    :goto_257
    move v4, v6

    move/from16 v5, v24

    .end local v23    # "prevc":I
    .restart local v4    # "prevc":I
    goto/16 :goto_22

    .line 476
    .end local v24    # "tzoffset":I
    .restart local v5    # "tzoffset":I
    :cond_25c
    move/from16 v23, v4

    move/from16 v24, v5

    .line 473
    .end local v4    # "prevc":I
    .end local v5    # "tzoffset":I
    .restart local v23    # "prevc":I
    .restart local v24    # "tzoffset":I
    :goto_260
    move/from16 v4, v23

    move/from16 v5, v24

    goto/16 :goto_22

    .line 607
    .end local v23    # "prevc":I
    .end local v24    # "tzoffset":I
    .restart local v4    # "prevc":I
    .restart local v5    # "tzoffset":I
    :cond_266
    move/from16 v23, v4

    move/from16 v24, v5

    .end local v4    # "prevc":I
    .end local v5    # "tzoffset":I
    .restart local v23    # "prevc":I
    .restart local v24    # "tzoffset":I
    const/high16 v0, -0x80000000

    if-eq v9, v0, :cond_2ef

    if-ltz v10, :cond_2ef

    if-ltz v12, :cond_2ea

    .line 610
    const/16 v0, 0x64

    if-ge v9, v0, :cond_29a

    .line 611
    const-class v2, Ljava/util/Date;

    monitor-enter v2

    .line 612
    :try_start_279
    sget v3, Ljava/util/Date;->defaultCenturyStart:I

    if-nez v3, :cond_28b

    .line 613
    sget-object v3, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate()Lsun/util/calendar/CalendarDate;

    move-result-object v3

    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    add-int/lit8 v3, v3, -0x50

    sput v3, Ljava/util/Date;->defaultCenturyStart:I

    .line 615
    :cond_28b
    monitor-exit v2
    :try_end_28c
    .catchall {:try_start_279 .. :try_end_28c} :catchall_297

    .line 616
    sget v2, Ljava/util/Date;->defaultCenturyStart:I

    div-int/lit8 v3, v2, 0x64

    mul-int/2addr v3, v0

    add-int/2addr v9, v3

    .line 617
    if-ge v9, v2, :cond_29a

    add-int/lit8 v9, v9, 0x64

    goto :goto_29a

    .line 615
    :catchall_297
    move-exception v0

    :try_start_298
    monitor-exit v2
    :try_end_299
    .catchall {:try_start_298 .. :try_end_299} :catchall_297

    throw v0

    .line 619
    :cond_29a
    :goto_29a
    if-gez v16, :cond_2a1

    .line 620
    const/16 v16, 0x0

    move/from16 v0, v16

    goto :goto_2a3

    .line 619
    :cond_2a1
    move/from16 v0, v16

    .line 621
    .end local v16    # "sec":I
    .local v0, "sec":I
    :goto_2a3
    if-gez v15, :cond_2a6

    .line 622
    const/4 v15, 0x0

    .line 623
    :cond_2a6
    if-gez v13, :cond_2a9

    .line 624
    const/4 v13, 0x0

    .line 625
    :cond_2a9
    invoke-static {v9}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v2

    .line 626
    .local v2, "cal":Lsun/util/calendar/BaseCalendar;
    move/from16 v5, v24

    const/4 v4, -0x1

    .end local v24    # "tzoffset":I
    .restart local v5    # "tzoffset":I
    if-ne v5, v4, :cond_2ca

    .line 627
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v4

    check-cast v4, Lsun/util/calendar/BaseCalendar$Date;

    .line 628
    .local v4, "ldate":Lsun/util/calendar/BaseCalendar$Date;
    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v4, v9, v3, v12}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 629
    const/4 v3, 0x0

    invoke-virtual {v4, v13, v15, v0, v3}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 630
    invoke-virtual {v2, v4}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v18

    return-wide v18

    .line 632
    .end local v4    # "ldate":Lsun/util/calendar/BaseCalendar$Date;
    :cond_2ca
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    .line 633
    .local v3, "udate":Lsun/util/calendar/BaseCalendar$Date;
    add-int/lit8 v4, v10, 0x1

    invoke-virtual {v3, v9, v4, v12}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 634
    const/4 v4, 0x0

    invoke-virtual {v3, v13, v15, v0, v4}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 635
    invoke-virtual {v2, v3}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v18

    const v4, 0xea60

    mul-int/2addr v4, v5

    move/from16 v16, v0

    move/from16 v20, v1

    .end local v0    # "sec":I
    .end local v1    # "i":I
    .restart local v16    # "sec":I
    .local v20, "i":I
    int-to-long v0, v4

    add-long v18, v18, v0

    return-wide v18

    .line 608
    .end local v2    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v3    # "udate":Lsun/util/calendar/BaseCalendar$Date;
    .end local v5    # "tzoffset":I
    .end local v20    # "i":I
    .restart local v1    # "i":I
    .restart local v24    # "tzoffset":I
    :cond_2ea
    move/from16 v20, v1

    move/from16 v5, v24

    .end local v1    # "i":I
    .end local v24    # "tzoffset":I
    .restart local v5    # "tzoffset":I
    .restart local v20    # "i":I
    goto :goto_2f3

    .line 607
    .end local v5    # "tzoffset":I
    .end local v20    # "i":I
    .restart local v1    # "i":I
    .restart local v24    # "tzoffset":I
    :cond_2ef
    move/from16 v20, v1

    move/from16 v5, v24

    .line 638
    .end local v1    # "i":I
    .end local v14    # "limit":I
    .end local v24    # "tzoffset":I
    .restart local v5    # "tzoffset":I
    .restart local v20    # "i":I
    :goto_2f3
    move v0, v9

    move v1, v10

    move v2, v12

    move v3, v13

    move v4, v15

    move/from16 v10, v17

    move/from16 v9, v20

    move/from16 v13, v23

    move v12, v5

    move/from16 v5, v16

    goto :goto_303

    .line 471
    .end local v15    # "min":I
    .end local v16    # "sec":I
    .end local v17    # "n":I
    .end local v20    # "i":I
    .end local v23    # "prevc":I
    .local v0, "year":I
    .local v1, "mon":I
    .local v2, "mday":I
    .local v3, "hour":I
    .local v4, "min":I
    .local v5, "sec":I
    .local v9, "i":I
    .local v10, "n":I
    .local v12, "tzoffset":I
    .local v13, "prevc":I
    :cond_302
    nop

    .line 638
    :goto_303
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1350
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/Date;->fastTime:J

    .line 1351
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1341
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1342
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api after(Ljava/util/Date;)Z
    .registers 6
    .param p1, "when"    # Ljava/util/Date;

    .line 952
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist core-platform-api test-api before(Ljava/util/Date;)Z
    .registers 6
    .param p1, "when"    # Ljava/util/Date;

    .line 938
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 3

    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, "d":Ljava/util/Date;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    move-object v0, v1

    .line 284
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v1, :cond_18

    .line 285
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;
    :try_end_16
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_16} :catch_17

    goto :goto_18

    .line 287
    :catch_17
    move-exception v1

    :cond_18
    :goto_18
    nop

    .line 288
    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 131
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public whitelist core-platform-api test-api compareTo(Ljava/util/Date;)I
    .registers 7
    .param p1, "anotherDate"    # Ljava/util/Date;

    .line 998
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v0

    .line 999
    .local v0, "thisTime":J
    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v2

    .line 1000
    .local v2, "anotherTime":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    const/4 v4, -0x1

    goto :goto_15

    :cond_e
    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    const/4 v4, 0x0

    goto :goto_15

    :cond_14
    const/4 v4, 0x1

    :goto_15
    return v4
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 971
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    move-object v2, p1

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public whitelist core-platform-api test-api getDate()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 757
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getDay()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 796
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist core-platform-api test-api getHours()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 813
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getMinutes()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 845
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getMonth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 708
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist core-platform-api test-api getSeconds()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 878
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getTime()J
    .registers 3

    .line 906
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getTimezoneOffset()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1191
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v0, :cond_19

    .line 1193
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->fastTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 1194
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 1195
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    .local v1, "zoneOffset":I
    goto :goto_22

    .line 1196
    .end local v1    # "zoneOffset":I
    :cond_19
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    .line 1197
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getZoneOffset()I

    move-result v1

    .line 1199
    .restart local v1    # "zoneOffset":I
    :goto_22
    neg-int v0, v1

    const v2, 0xea60

    div-int/2addr v0, v2

    return v0
.end method

.method public whitelist core-platform-api test-api getYear()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 672
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x76c

    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 6

    .line 1015
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1016
    .local v0, "ht":J
    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long v3, v0, v3

    long-to-int v3, v3

    xor-int/2addr v2, v3

    return v2
.end method

.method public whitelist core-platform-api test-api setDate(I)V
    .registers 3
    .param p1, "date"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 777
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 778
    return-void
.end method

.method public whitelist core-platform-api test-api setHours(I)V
    .registers 3
    .param p1, "hours"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 830
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setHours(I)Lsun/util/calendar/CalendarDate;

    .line 831
    return-void
.end method

.method public whitelist core-platform-api test-api setMinutes(I)V
    .registers 3
    .param p1, "minutes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 862
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 863
    return-void
.end method

.method public whitelist core-platform-api test-api setMonth(I)V
    .registers 5
    .param p1, "month"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 727
    const/4 v0, 0x0

    .line 728
    .local v0, "y":I
    const/16 v1, 0xc

    if-lt p1, v1, :cond_a

    .line 729
    div-int/lit8 v0, p1, 0xc

    .line 730
    rem-int/lit8 p1, p1, 0xc

    goto :goto_14

    .line 731
    :cond_a
    if-gez p1, :cond_14

    .line 732
    invoke-static {p1, v1}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v0

    .line 733
    invoke-static {p1, v1}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p1

    .line 735
    :cond_14
    :goto_14
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v1

    .line 736
    .local v1, "d":Lsun/util/calendar/BaseCalendar$Date;
    if-eqz v0, :cond_22

    .line 737
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 739
    :cond_22
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 740
    return-void
.end method

.method public whitelist core-platform-api test-api setSeconds(I)V
    .registers 3
    .param p1, "seconds"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 895
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 896
    return-void
.end method

.method public whitelist core-platform-api test-api setTime(J)V
    .registers 4
    .param p1, "time"    # J

    .line 923
    iput-wide p1, p0, Ljava/util/Date;->fastTime:J

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 925
    return-void
.end method

.method public whitelist core-platform-api test-api setYear(I)V
    .registers 4
    .param p1, "year"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 692
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    add-int/lit16 v1, p1, 0x76c

    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 693
    return-void
.end method

.method public whitelist core-platform-api test-api toGMTString()Ljava/lang/String;
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1141
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1142
    .local v0, "t":J
    invoke-static {v0, v1}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v2

    .line 1143
    .local v2, "cal":Lsun/util/calendar/BaseCalendar;
    nop

    .line 1144
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v5, 0x0

    check-cast v5, Ljava/util/TimeZone;

    invoke-virtual {v2, v3, v4, v5}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    .line 1145
    .local v3, "date":Lsun/util/calendar/BaseCalendar$Date;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1146
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1147
    sget-object v6, Ljava/util/Date;->wtb:[Ljava/lang/String;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v8

    sub-int/2addr v8, v7

    const/4 v7, 0x2

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x7

    aget-object v6, v6, v8

    invoke-static {v4, v6}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1148
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v5

    invoke-static {v4, v5, v7}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v5

    invoke-static {v4, v5, v7}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v5

    invoke-static {v4, v5, v7}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 1152
    const-string v5, " GMT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public whitelist core-platform-api test-api toInstant()Ljava/time/Instant;
    .registers 3

    .line 1392
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toLocaleString()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1103
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 1104
    .local v0, "formatter":Ljava/text/DateFormat;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 9

    .line 1051
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 1052
    .local v0, "date":Lsun/util/calendar/BaseCalendar$Date;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1053
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v2

    .line 1054
    .local v2, "index":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 1055
    const/16 v2, 0x8

    .line 1057
    :cond_14
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v1, v4}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1058
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v6

    sub-int/2addr v6, v3

    const/4 v3, 0x2

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x7

    aget-object v4, v4, v6

    invoke-static {v1, v4}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1059
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    invoke-static {v1, v4, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1061
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v4

    invoke-static {v1, v4, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1062
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v4

    invoke-static {v1, v4, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v4

    invoke-static {v1, v4, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1064
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1065
    .local v3, "zi":Ljava/util/TimeZone;
    if-eqz v3, :cond_78

    .line 1066
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isDaylightTime()Z

    move-result v4

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4, v6, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 1068
    :cond_78
    const-string v4, "GMT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    :goto_7d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1071
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
