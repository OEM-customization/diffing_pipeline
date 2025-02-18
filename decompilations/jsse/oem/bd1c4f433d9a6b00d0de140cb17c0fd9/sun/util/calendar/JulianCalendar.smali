.class public Lsun/util/calendar/JulianCalendar;
.super Lsun/util/calendar/BaseCalendar;
.source "JulianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/calendar/JulianCalendar$Date;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BCE:I = 0x0

.field private static final CE:I = 0x1

.field private static final JULIAN_EPOCH:I = -0x1

.field private static final eras:[Lsun/util/calendar/Era;


# direct methods
.method static synthetic -get0()[Lsun/util/calendar/Era;
    .registers 1

    sget-object v0, Lsun/util/calendar/JulianCalendar;->eras:[Lsun/util/calendar/Era;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-class v0, Lsun/util/calendar/JulianCalendar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/util/calendar/JulianCalendar;->-assertionsDisabled:Z

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lsun/util/calendar/Era;

    .line 42
    new-instance v1, Lsun/util/calendar/Era;

    const-string/jumbo v2, "BeforeCommonEra"

    const-string/jumbo v3, "B.C.E."

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct/range {v1 .. v6}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    aput-object v1, v0, v6

    .line 43
    new-instance v1, Lsun/util/calendar/Era;

    const-string/jumbo v2, "CommonEra"

    const-string/jumbo v3, "C.E."

    const-wide v4, -0x388318df9000L

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    aput-object v1, v0, v7

    .line 41
    sput-object v0, Lsun/util/calendar/JulianCalendar;->eras:[Lsun/util/calendar/Era;

    .line 36
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 113
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar;-><init>()V

    .line 114
    sget-object v0, Lsun/util/calendar/JulianCalendar;->eras:[Lsun/util/calendar/Era;

    invoke-virtual {p0, v0}, Lsun/util/calendar/JulianCalendar;->setEras([Lsun/util/calendar/Era;)V

    .line 115
    return-void
.end method


# virtual methods
.method public bridge synthetic getCalendarDate()Lsun/util/calendar/CalendarDate;
    .registers 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->getCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .registers 4

    .prologue
    .line 125
    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(J)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .registers 5

    .prologue
    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .registers 5

    .prologue
    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate()Lsun/util/calendar/JulianCalendar$Date;
    .registers 4

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(J)Lsun/util/calendar/JulianCalendar$Date;
    .registers 4
    .param p1, "millis"    # J

    .prologue
    .line 126
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;
    .registers 5
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 134
    invoke-virtual {p0, p3}, Lsun/util/calendar/JulianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;
    .registers 5
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/JulianCalendar$Date;

    return-object v0
.end method

.method public getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
    .registers 18
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;
    .param p2, "fixedDate"    # J

    .prologue
    move-object v5, p1

    .line 186
    check-cast v5, Lsun/util/calendar/JulianCalendar$Date;

    .line 187
    .local v5, "jdate":Lsun/util/calendar/JulianCalendar$Date;
    const-wide/16 v10, -0x1

    sub-long v10, p2, v10

    const-wide/16 v12, 0x4

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x5b8

    add-long v2, v10, v12

    .line 189
    .local v2, "fd":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-ltz v9, :cond_6a

    .line 190
    const-wide/16 v10, 0x5b5

    div-long v10, v2, v10

    long-to-int v8, v10

    .line 194
    .local v8, "year":I
    :goto_19
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {p0, v8, v9, v10, v5}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v10

    sub-long v10, p2, v10

    long-to-int v7, v10

    .line 195
    .local v7, "priorDays":I
    invoke-static {v8}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v4

    .line 196
    .local v4, "isLeap":Z
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {p0, v8, v9, v10, v5}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v10

    cmp-long v9, p2, v10

    if-ltz v9, :cond_34

    .line 197
    if-eqz v4, :cond_72

    const/4 v9, 0x1

    :goto_33
    add-int/2addr v7, v9

    .line 199
    :cond_34
    mul-int/lit8 v9, v7, 0xc

    add-int/lit16 v6, v9, 0x175

    .line 200
    .local v6, "month":I
    if-lez v6, :cond_74

    .line 201
    div-int/lit16 v6, v6, 0x16f

    .line 205
    :goto_3c
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v6, v9, v5}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v10

    sub-long v10, p2, v10

    long-to-int v9, v10

    add-int/lit8 v0, v9, 0x1

    .line 206
    .local v0, "dayOfMonth":I
    invoke-static/range {p2 .. p3}, Lsun/util/calendar/JulianCalendar;->getDayOfWeekFromFixedDate(J)I

    move-result v1

    .line 207
    .local v1, "dayOfWeek":I
    sget-boolean v9, Lsun/util/calendar/JulianCalendar;->-assertionsDisabled:Z

    if-nez v9, :cond_7b

    if-gtz v1, :cond_7b

    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "negative day of week "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 192
    .end local v0    # "dayOfMonth":I
    .end local v1    # "dayOfWeek":I
    .end local v4    # "isLeap":Z
    .end local v6    # "month":I
    .end local v7    # "priorDays":I
    .end local v8    # "year":I
    :cond_6a
    const-wide/16 v10, 0x5b5

    invoke-static {v2, v3, v10, v11}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v10

    long-to-int v8, v10

    .restart local v8    # "year":I
    goto :goto_19

    .line 197
    .restart local v4    # "isLeap":Z
    .restart local v7    # "priorDays":I
    :cond_72
    const/4 v9, 0x2

    goto :goto_33

    .line 203
    .restart local v6    # "month":I
    :cond_74
    const/16 v9, 0x16f

    invoke-static {v6, v9}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v6

    goto :goto_3c

    .line 208
    .restart local v0    # "dayOfMonth":I
    .restart local v1    # "dayOfWeek":I
    :cond_7b
    invoke-virtual {v5, v8}, Lsun/util/calendar/JulianCalendar$Date;->setNormalizedYear(I)V

    .line 209
    invoke-virtual {v5, v6}, Lsun/util/calendar/JulianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 210
    invoke-virtual {v5, v0}, Lsun/util/calendar/JulianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 211
    invoke-virtual {v5, v1}, Lsun/util/calendar/JulianCalendar$Date;->setDayOfWeek(I)V

    .line 212
    invoke-virtual {v5, v4}, Lsun/util/calendar/JulianCalendar$Date;->setLeapYear(Z)V

    .line 213
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lsun/util/calendar/JulianCalendar$Date;->setNormalized(Z)V

    .line 214
    return-void
.end method

.method public getDayOfWeek(Lsun/util/calendar/CalendarDate;)I
    .registers 5
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lsun/util/calendar/JulianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    .line 228
    .local v0, "fixedDate":J
    invoke-static {v0, v1}, Lsun/util/calendar/JulianCalendar;->getDayOfWeekFromFixedDate(J)I

    move-result v2

    return v2
.end method

.method public getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J
    .registers 15
    .param p1, "jyear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "cache"    # Lsun/util/calendar/BaseCalendar$Date;

    .prologue
    .line 149
    const/4 v3, 0x1

    if-ne p2, v3, :cond_16

    const/4 v3, 0x1

    if-ne p3, v3, :cond_16

    const/4 v2, 0x1

    .line 152
    .local v2, "isJan1":Z
    :goto_7
    if-eqz p4, :cond_25

    invoke-virtual {p4, p1}, Lsun/util/calendar/BaseCalendar$Date;->hit(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 153
    if-eqz v2, :cond_18

    .line 154
    invoke-virtual {p4}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v6

    return-wide v6

    .line 149
    .end local v2    # "isJan1":Z
    :cond_16
    const/4 v2, 0x0

    .restart local v2    # "isJan1":Z
    goto :goto_7

    .line 156
    :cond_18
    invoke-virtual {p4}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v6

    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/JulianCalendar;->getDayOfYear(III)J

    move-result-wide v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    return-wide v6

    .line 159
    :cond_25
    int-to-long v4, p1

    .line 160
    .local v4, "y":J
    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    const-wide/16 v8, 0x16d

    mul-long/2addr v6, v8

    const-wide/16 v8, -0x2

    add-long/2addr v6, v8

    int-to-long v8, p3

    add-long v0, v6, v8

    .line 161
    .local v0, "days":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_6a

    .line 163
    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 168
    :goto_41
    if-lez p2, :cond_76

    .line 169
    int-to-long v6, p2

    const-wide/16 v8, 0x16f

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x16a

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc

    div-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 173
    :goto_4e
    const/4 v3, 0x2

    if-le p2, v3, :cond_5a

    .line 174
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_85

    const/4 v3, 0x1

    :goto_58
    int-to-long v6, v3

    sub-long/2addr v0, v6

    .line 178
    :cond_5a
    if-eqz p4, :cond_69

    if-eqz v2, :cond_69

    .line 179
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_87

    const/16 v3, 0x16e

    :goto_66
    invoke-virtual {p4, p1, v0, v1, v3}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    .line 182
    :cond_69
    return-wide v0

    .line 166
    :cond_6a
    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    const-wide/16 v8, 0x4

    invoke-static {v6, v7, v8, v9}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_41

    .line 171
    :cond_76
    int-to-long v6, p2

    const-wide/16 v8, 0x16f

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x16a

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc

    invoke-static {v6, v7, v8, v9}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_4e

    .line 174
    :cond_85
    const/4 v3, 0x2

    goto :goto_58

    .line 179
    :cond_87
    const/16 v3, 0x16d

    goto :goto_66
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    const-string/jumbo v0, "julian"

    return-object v0
.end method

.method public getYearFromFixedDate(J)I
    .registers 10
    .param p1, "fixedDate"    # J

    .prologue
    .line 220
    const-wide/16 v2, -0x1

    sub-long v2, p1, v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x5b8

    add-long/2addr v2, v4

    const-wide/16 v4, 0x5b5

    invoke-static {v2, v3, v4, v5}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 221
    .local v0, "year":I
    return v0
.end method

.method isLeapYear(I)Z
    .registers 3
    .param p1, "jyear"    # I

    .prologue
    .line 232
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic newCalendarDate()Lsun/util/calendar/CalendarDate;
    .registers 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .registers 3

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lsun/util/calendar/JulianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;
    .registers 2

    .prologue
    .line 138
    new-instance v0, Lsun/util/calendar/JulianCalendar$Date;

    invoke-direct {v0}, Lsun/util/calendar/JulianCalendar$Date;-><init>()V

    return-object v0
.end method

.method public newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 142
    new-instance v0, Lsun/util/calendar/JulianCalendar$Date;

    invoke-direct {v0, p1}, Lsun/util/calendar/JulianCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    return-object v0
.end method
