.class public abstract Lsun/util/calendar/AbstractCalendar;
.super Lsun/util/calendar/CalendarSystem;
.source "AbstractCalendar.java"


# static fields
.field static final DAY_IN_MILLIS:I = 0x5265c00

.field static final EPOCH_OFFSET:I = 0xaf93b

.field static final HOUR_IN_MILLIS:I = 0x36ee80

.field static final MINUTE_IN_MILLIS:I = 0xea60

.field static final SECOND_IN_MILLIS:I = 0x3e8


# instance fields
.field private eras:[Lsun/util/calendar/Era;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Lsun/util/calendar/CalendarSystem;-><init>()V

    .line 63
    return-void
.end method

.method static getDayOfWeekDateAfter(JI)J
    .registers 5
    .param p0, "fixedDate"    # J
    .param p2, "dayOfWeek"    # I

    .prologue
    .line 312
    const-wide/16 v0, 0x7

    add-long/2addr v0, p0

    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method static getDayOfWeekDateBefore(JI)J
    .registers 5
    .param p0, "fixedDate"    # J
    .param p2, "dayOfWeek"    # I

    .prologue
    .line 300
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDayOfWeekDateOnOrBefore(JI)J
    .registers 9
    .param p0, "fixedDate"    # J
    .param p2, "dayOfWeek"    # I

    .prologue
    const-wide/16 v4, 0x7

    .line 325
    add-int/lit8 v2, p2, -0x1

    int-to-long v2, v2

    sub-long v0, p0, v2

    .line 326
    .local v0, "fd":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    .line 327
    rem-long v2, v0, v4

    sub-long v2, p0, v2

    return-wide v2

    .line 329
    :cond_12
    invoke-static {v0, v1, v4, v5}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v2

    sub-long v2, p0, v2

    return-wide v2
.end method


# virtual methods
.method public getCalendarDate()Lsun/util/calendar/CalendarDate;
    .registers 4

    .prologue
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsun/util/calendar/AbstractCalendar;->newCalendarDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .registers 4
    .param p1, "millis"    # J

    .prologue
    .line 108
    invoke-virtual {p0}, Lsun/util/calendar/AbstractCalendar;->newCalendarDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .registers 7
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 112
    invoke-virtual {p0, p3}, Lsun/util/calendar/AbstractCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    .line 113
    .local v0, "date":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    return-object v1
.end method

.method public getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .registers 15
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "ms":I
    const/4 v6, 0x0

    .line 119
    .local v6, "zoneOffset":I
    const/4 v4, 0x0

    .line 120
    .local v4, "saving":I
    const-wide/16 v0, 0x0

    .line 123
    .local v0, "days":J
    invoke-virtual {p3}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 124
    .local v5, "zi":Ljava/util/TimeZone;
    if-eqz v5, :cond_2f

    .line 125
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 130
    .local v3, "offsets":[I
    invoke-virtual {v5, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    .line 131
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    const/4 v8, 0x0

    aput v7, v3, v8

    .line 132
    const/4 v7, 0x0

    aget v7, v3, v7

    sub-int v7, v6, v7

    const/4 v8, 0x1

    aput v7, v3, v8

    .line 142
    const v7, 0x5265c00

    div-int v7, v6, v7

    int-to-long v0, v7

    .line 143
    const v7, 0x5265c00

    rem-int v2, v6, v7

    .line 144
    const/4 v7, 0x1

    aget v4, v3, v7

    .line 146
    .end local v3    # "offsets":[I
    :cond_2f
    invoke-virtual {p3, v6}, Lsun/util/calendar/CalendarDate;->setZoneOffset(I)V

    .line 147
    invoke-virtual {p3, v4}, Lsun/util/calendar/CalendarDate;->setDaylightSaving(I)V

    .line 149
    const-wide/32 v8, 0x5265c00

    div-long v8, p1, v8

    add-long/2addr v0, v8

    .line 150
    const-wide/32 v8, 0x5265c00

    rem-long v8, p1, v8

    long-to-int v7, v8

    add-int/2addr v2, v7

    .line 151
    const v7, 0x5265c00

    if-lt v2, v7, :cond_64

    .line 153
    const v7, 0x5265c00

    sub-int/2addr v2, v7

    .line 154
    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    .line 165
    :cond_4e
    const-wide/32 v8, 0xaf93b

    add-long/2addr v0, v8

    .line 168
    invoke-virtual {p0, p3, v0, v1}, Lsun/util/calendar/AbstractCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 171
    invoke-virtual {p0, p3, v2}, Lsun/util/calendar/AbstractCalendar;->setTimeOfDay(Lsun/util/calendar/CalendarDate;I)Lsun/util/calendar/CalendarDate;

    .line 172
    invoke-virtual {p0, p3}, Lsun/util/calendar/AbstractCalendar;->isLeapYear(Lsun/util/calendar/CalendarDate;)Z

    move-result v7

    invoke-virtual {p3, v7}, Lsun/util/calendar/CalendarDate;->setLeapYear(Z)V

    .line 173
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    .line 174
    return-object p3

    .line 158
    :cond_64
    :goto_64
    if-gez v2, :cond_4e

    .line 159
    const v7, 0x5265c00

    add-int/2addr v2, v7

    .line 160
    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    goto :goto_64
.end method

.method protected abstract getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
.end method

.method public getEra(Ljava/lang/String;)Lsun/util/calendar/Era;
    .registers 5
    .param p1, "eraName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    if-eqz v1, :cond_1d

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 68
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lsun/util/calendar/Era;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 69
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    return-object v1

    .line 67
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 73
    .end local v0    # "i":I
    :cond_1d
    return-object v2
.end method

.method public getEras()[Lsun/util/calendar/Era;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "e":[Lsun/util/calendar/Era;
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    if-eqz v1, :cond_13

    .line 79
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v1, v1

    new-array v0, v1, [Lsun/util/calendar/Era;

    .line 80
    .local v0, "e":[Lsun/util/calendar/Era;
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    iget-object v2, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    .end local v0    # "e":[Lsun/util/calendar/Era;
    :cond_13
    return-object v0
.end method

.method protected abstract getFixedDate(Lsun/util/calendar/CalendarDate;)J
.end method

.method public getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .registers 14
    .param p1, "nth"    # I
    .param p2, "dayOfWeek"    # I
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 278
    invoke-virtual {p3}, Lsun/util/calendar/CalendarDate;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/CalendarDate;

    .line 279
    .local v2, "ndate":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p0, v2}, Lsun/util/calendar/AbstractCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 280
    invoke-virtual {p0, v2}, Lsun/util/calendar/AbstractCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    .line 282
    .local v0, "fd":J
    if-lez p1, :cond_1c

    .line 283
    mul-int/lit8 v3, p1, 0x7

    int-to-long v6, v3

    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateBefore(JI)J

    move-result-wide v8

    add-long v4, v6, v8

    .line 287
    .local v4, "nfd":J
    :goto_18
    invoke-virtual {p0, v2, v4, v5}, Lsun/util/calendar/AbstractCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 288
    return-object v2

    .line 285
    .end local v4    # "nfd":J
    :cond_1c
    mul-int/lit8 v3, p1, 0x7

    int-to-long v6, v3

    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateAfter(JI)J

    move-result-wide v8

    add-long v4, v6, v8

    .restart local v4    # "nfd":J
    goto :goto_18
.end method

.method public getTime(Lsun/util/calendar/CalendarDate;)J
    .registers 14
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    .line 179
    .local v0, "gd":J
    const-wide/32 v8, 0xaf93b

    sub-long v8, v0, v8

    const-wide/32 v10, 0x5265c00

    mul-long/2addr v8, v10

    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDay(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    add-long v2, v8, v10

    .line 180
    .local v2, "ms":J
    const/4 v6, 0x0

    .line 181
    .local v6, "zoneOffset":I
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 182
    .local v5, "zi":Ljava/util/TimeZone;
    if-eqz v5, :cond_3c

    .line 183
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v7

    if-eqz v7, :cond_28

    .line 184
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v7

    int-to-long v8, v7

    sub-long v8, v2, v8

    return-wide v8

    .line 187
    :cond_28
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 188
    .local v4, "offsets":[I
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isStandardTime()Z

    move-result v7

    if-eqz v7, :cond_42

    .line 199
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    int-to-long v8, v7

    sub-long v8, v2, v8

    invoke-virtual {v5, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    .line 215
    .end local v4    # "offsets":[I
    :cond_3c
    :goto_3c
    int-to-long v8, v6

    sub-long/2addr v2, v8

    .line 216
    invoke-virtual {p0, v2, v3, p1}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    .line 217
    return-wide v2

    .line 211
    .restart local v4    # "offsets":[I
    :cond_42
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    int-to-long v8, v7

    sub-long v8, v2, v8

    invoke-virtual {v5, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    goto :goto_3c
.end method

.method protected getTimeOfDay(Lsun/util/calendar/CalendarDate;)J
    .registers 6
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 221
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v0

    .line 222
    .local v0, "fraction":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 223
    return-wide v0

    .line 225
    :cond_b
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDayValue(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    .line 226
    invoke-virtual {p1, v0, v1}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    .line 227
    return-wide v0
.end method

.method public getTimeOfDayValue(Lsun/util/calendar/CalendarDate;)J
    .registers 8
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    const-wide/16 v4, 0x3c

    .line 231
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v2

    int-to-long v0, v2

    .line 232
    .local v0, "fraction":J
    mul-long/2addr v0, v4

    .line 233
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 234
    mul-long/2addr v0, v4

    .line 235
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 236
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 237
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMillis()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 238
    return-wide v0
.end method

.method public getWeekLength()I
    .registers 2

    .prologue
    .line 272
    const/4 v0, 0x7

    return v0
.end method

.method protected abstract isLeapYear(Lsun/util/calendar/CalendarDate;)Z
.end method

.method normalizeTime(Lsun/util/calendar/CalendarDate;)I
    .registers 16
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x3c

    const-wide/32 v6, 0x5265c00

    .line 380
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDay(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v2

    .line 381
    .local v2, "fraction":J
    const-wide/16 v0, 0x0

    .line 383
    .local v0, "days":J
    cmp-long v4, v2, v6

    if-ltz v4, :cond_39

    .line 384
    div-long v0, v2, v6

    .line 385
    rem-long/2addr v2, v6

    .line 392
    :cond_16
    :goto_16
    cmp-long v4, v0, v10

    if-eqz v4, :cond_1d

    .line 393
    invoke-virtual {p1, v2, v3}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    .line 395
    :cond_1d
    rem-long v4, v2, v12

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    .line 396
    div-long/2addr v2, v12

    .line 397
    rem-long v4, v2, v8

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 398
    div-long/2addr v2, v8

    .line 399
    rem-long v4, v2, v8

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 400
    div-long v4, v2, v8

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    .line 401
    long-to-int v4, v0

    return v4

    .line 386
    :cond_39
    cmp-long v4, v2, v10

    if-gez v4, :cond_16

    .line 387
    invoke-static {v2, v3, v6, v7}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v0

    .line 388
    cmp-long v4, v0, v10

    if-eqz v4, :cond_16

    .line 389
    mul-long v4, v6, v0

    sub-long/2addr v2, v4

    goto :goto_16
.end method

.method public setEra(Lsun/util/calendar/CalendarDate;Ljava/lang/String;)V
    .registers 8
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;
    .param p2, "eraName"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v2, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    if-nez v2, :cond_5

    .line 87
    return-void

    .line 89
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v2, v2

    if-ge v1, v2, :cond_22

    .line 90
    iget-object v2, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v0, v2, v1

    .line 91
    .local v0, "e":Lsun/util/calendar/Era;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 92
    invoke-virtual {p1, v0}, Lsun/util/calendar/CalendarDate;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    .line 93
    return-void

    .line 89
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 96
    .end local v0    # "e":Lsun/util/calendar/Era;
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown era name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected setEras([Lsun/util/calendar/Era;)V
    .registers 2
    .param p1, "eras"    # [Lsun/util/calendar/Era;

    .prologue
    .line 100
    iput-object p1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    .line 101
    return-void
.end method

.method public setTimeOfDay(Lsun/util/calendar/CalendarDate;I)Lsun/util/calendar/CalendarDate;
    .registers 11
    .param p1, "cdate"    # Lsun/util/calendar/CalendarDate;
    .param p2, "fraction"    # I

    .prologue
    const v6, 0x36ee80

    const v5, 0xea60

    .line 242
    if-gez p2, :cond_e

    .line 243
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 245
    :cond_e
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v2

    .line 246
    .local v2, "normalizedState":Z
    move v4, p2

    .line 247
    .local v4, "time":I
    div-int v0, p2, v6

    .line 248
    .local v0, "hours":I
    rem-int v4, p2, v6

    .line 249
    div-int v1, v4, v5

    .line 250
    .local v1, "minutes":I
    rem-int/2addr v4, v5

    .line 251
    div-int/lit16 v3, v4, 0x3e8

    .line 252
    .local v3, "seconds":I
    rem-int/lit16 v4, v4, 0x3e8

    .line 253
    invoke-virtual {p1, v0}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    .line 254
    invoke-virtual {p1, v1}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 255
    invoke-virtual {p1, v3}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 256
    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    .line 257
    int-to-long v6, p2

    invoke-virtual {p1, v6, v7}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    .line 258
    const/16 v5, 0x18

    if-ge v0, v5, :cond_37

    if-eqz v2, :cond_37

    .line 261
    invoke-virtual {p1, v2}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    .line 263
    :cond_37
    return-object p1
.end method

.method public validateTime(Lsun/util/calendar/CalendarDate;)Z
    .registers 6
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    const/16 v3, 0x3c

    const/4 v2, 0x0

    .line 358
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v0

    .line 359
    .local v0, "t":I
    if-ltz v0, :cond_d

    const/16 v1, 0x18

    if-lt v0, v1, :cond_e

    .line 360
    :cond_d
    return v2

    .line 362
    :cond_e
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    move-result v0

    .line 363
    if-ltz v0, :cond_16

    if-lt v0, v3, :cond_17

    .line 364
    :cond_16
    return v2

    .line 366
    :cond_17
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    move-result v0

    .line 368
    if-ltz v0, :cond_1f

    if-lt v0, v3, :cond_20

    .line 369
    :cond_1f
    return v2

    .line 371
    :cond_20
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMillis()I

    move-result v0

    .line 372
    if-ltz v0, :cond_2a

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_2b

    .line 373
    :cond_2a
    return v2

    .line 375
    :cond_2b
    const/4 v1, 0x1

    return v1
.end method
