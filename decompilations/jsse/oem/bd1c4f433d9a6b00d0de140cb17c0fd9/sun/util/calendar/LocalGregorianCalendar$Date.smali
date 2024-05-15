.class public Lsun/util/calendar/LocalGregorianCalendar$Date;
.super Lsun/util/calendar/BaseCalendar$Date;
.source "LocalGregorianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/calendar/LocalGregorianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Date"
.end annotation


# instance fields
.field private gregorianYear:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar$Date;-><init>()V

    .line 55
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    .line 55
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 53
    return-void
.end method


# virtual methods
.method public bridge synthetic addYear(I)Lsun/util/calendar/CalendarDate;
    .registers 3

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 3
    .param p1, "localYear"    # I

    .prologue
    .line 68
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 69
    iget v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 70
    return-object p0
.end method

.method public getNormalizedYear()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    return v0
.end method

.method public bridge synthetic setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .registers 3

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 3
    .param p1, "era"    # Lsun/util/calendar/Era;

    .prologue
    .line 59
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    if-eq v0, p1, :cond_d

    .line 60
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    .line 61
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 63
    :cond_d
    return-object p0
.end method

.method setLocalEra(Lsun/util/calendar/Era;)V
    .registers 2
    .param p1, "era"    # Lsun/util/calendar/Era;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    .line 94
    return-void
.end method

.method setLocalYear(I)V
    .registers 2
    .param p1, "year"    # I

    .prologue
    .line 97
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 98
    return-void
.end method

.method public setNormalizedYear(I)V
    .registers 2
    .param p1, "normalizedYear"    # I

    .prologue
    .line 89
    iput p1, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 90
    return-void
.end method

.method public bridge synthetic setYear(I)Lsun/util/calendar/CalendarDate;
    .registers 3

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 3
    .param p1, "localYear"    # I

    .prologue
    .line 75
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 76
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 77
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 79
    :cond_d
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0x2e

    const/4 v5, 0x2

    .line 102
    invoke-super {p0}, Lsun/util/calendar/BaseCalendar$Date;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "time":Ljava/lang/String;
    const/16 v4, 0x54

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    .line 106
    .local v1, "era":Lsun/util/calendar/Era;
    if-eqz v1, :cond_25

    .line 107
    invoke-virtual {v1}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "abbr":Ljava/lang/String;
    if-eqz v0, :cond_25

    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .end local v0    # "abbr":Ljava/lang/String;
    :cond_25
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v4

    invoke-static {v2, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v4

    invoke-static {v2, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
