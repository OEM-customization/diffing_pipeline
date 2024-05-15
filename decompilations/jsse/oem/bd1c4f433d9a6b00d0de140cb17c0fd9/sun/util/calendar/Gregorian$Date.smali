.class Lsun/util/calendar/Gregorian$Date;
.super Lsun/util/calendar/BaseCalendar$Date;
.source "Gregorian.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/calendar/Gregorian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Date"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar$Date;-><init>()V

    .line 42
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .registers 2
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getNormalizedYear()I
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lsun/util/calendar/Gregorian$Date;->getYear()I

    move-result v0

    return v0
.end method

.method public setNormalizedYear(I)V
    .registers 2
    .param p1, "normalizedYear"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lsun/util/calendar/Gregorian$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 54
    return-void
.end method
