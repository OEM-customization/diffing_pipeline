.class public final Lsun/util/calendar/Era;
.super Ljava/lang/Object;
.source "Era.java"


# instance fields
.field private final blacklist abbr:Ljava/lang/String;

.field private blacklist hash:I

.field private final blacklist localTime:Z

.field private final blacklist name:Ljava/lang/String;

.field private final blacklist since:J

.field private final blacklist sinceDate:Lsun/util/calendar/CalendarDate;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "abbr"    # Ljava/lang/String;
    .param p3, "since"    # J
    .param p5, "localTime"    # Z

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lsun/util/calendar/Era;->hash:I

    .line 83
    iput-object p1, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    .line 85
    iput-wide p3, p0, Lsun/util/calendar/Era;->since:J

    .line 86
    iput-boolean p5, p0, Lsun/util/calendar/Era;->localTime:Z

    .line 87
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    .line 88
    .local v0, "gcal":Lsun/util/calendar/Gregorian;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v1

    .line 89
    .local v1, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0, p3, p4, v1}, Lsun/util/calendar/Gregorian;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/Gregorian$Date;

    .line 90
    new-instance v2, Lsun/util/calendar/ImmutableGregorianDate;

    invoke-direct {v2, v1}, Lsun/util/calendar/ImmutableGregorianDate;-><init>(Lsun/util/calendar/BaseCalendar$Date;)V

    iput-object v2, p0, Lsun/util/calendar/Era;->sinceDate:Lsun/util/calendar/CalendarDate;

    .line 91
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 126
    instance-of v0, p1, Lsun/util/calendar/Era;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 127
    return v1

    .line 129
    :cond_6
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/Era;

    .line 130
    .local v0, "that":Lsun/util/calendar/Era;
    iget-object v2, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    iget-object v3, v0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    iget-object v3, v0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-wide v2, p0, Lsun/util/calendar/Era;->since:J

    iget-wide v4, v0, Lsun/util/calendar/Era;->since:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2d

    iget-boolean v2, p0, Lsun/util/calendar/Era;->localTime:Z

    iget-boolean v3, v0, Lsun/util/calendar/Era;->localTime:Z

    if-ne v2, v3, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    nop

    .line 130
    :goto_2e
    return v1
.end method

.method public greylist getAbbreviation()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDiaplayAbbreviation(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 106
    iget-object v0, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 98
    iget-object v0, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getName()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSince(Ljava/util/TimeZone;)J
    .registers 7
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 110
    if-eqz p1, :cond_12

    iget-boolean v0, p0, Lsun/util/calendar/Era;->localTime:Z

    if-nez v0, :cond_7

    goto :goto_12

    .line 113
    :cond_7
    iget-wide v0, p0, Lsun/util/calendar/Era;->since:J

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 114
    .local v0, "offset":I
    iget-wide v1, p0, Lsun/util/calendar/Era;->since:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    return-wide v1

    .line 111
    .end local v0    # "offset":I
    :cond_12
    :goto_12
    iget-wide v0, p0, Lsun/util/calendar/Era;->since:J

    return-wide v0
.end method

.method public greylist getSinceDate()Lsun/util/calendar/CalendarDate;
    .registers 2

    .line 118
    iget-object v0, p0, Lsun/util/calendar/Era;->sinceDate:Lsun/util/calendar/CalendarDate;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 5

    .line 139
    iget v0, p0, Lsun/util/calendar/Era;->hash:I

    if-nez v0, :cond_1f

    .line 140
    iget-object v0, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lsun/util/calendar/Era;->since:J

    long-to-int v3, v1

    xor-int/2addr v0, v3

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 141
    iget-boolean v1, p0, Lsun/util/calendar/Era;->localTime:Z

    xor-int/2addr v0, v1

    iput v0, p0, Lsun/util/calendar/Era;->hash:I

    .line 143
    :cond_1f
    iget v0, p0, Lsun/util/calendar/Era;->hash:I

    return v0
.end method

.method public blacklist isLocalTime()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lsun/util/calendar/Era;->localTime:Z

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, " since "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    iget-boolean v1, p0, Lsun/util/calendar/Era;->localTime:Z

    if-eqz v1, :cond_40

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 154
    const-string v1, " local time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_40
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
