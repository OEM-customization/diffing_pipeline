.class final enum Ljava/util/concurrent/TimeUnit$3;
.super Ljava/util/concurrent/TimeUnit;
.source "TimeUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/TimeUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit$1;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api convert(JLjava/util/concurrent/TimeUnit;)J
    .registers 6
    .param p1, "d"    # J
    .param p3, "u"    # Ljava/util/concurrent/TimeUnit;

    .line 115
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist excessNanos(JJ)I
    .registers 6
    .param p1, "d"    # J
    .param p3, "m"    # J

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api toDays(J)J
    .registers 5
    .param p1, "d"    # J

    .line 114
    const-wide/32 v0, 0x5265c00

    div-long v0, p1, v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toHours(J)J
    .registers 5
    .param p1, "d"    # J

    .line 113
    const-wide/32 v0, 0x36ee80

    div-long v0, p1, v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toMicros(J)J
    .registers 9
    .param p1, "d"    # J

    .line 109
    const-wide/16 v2, 0x3e8

    const-wide v4, 0x20c49ba5e353f7L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$3;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toMillis(J)J
    .registers 3
    .param p1, "d"    # J

    .line 110
    return-wide p1
.end method

.method public whitelist core-platform-api test-api toMinutes(J)J
    .registers 5
    .param p1, "d"    # J

    .line 112
    const-wide/32 v0, 0xea60

    div-long v0, p1, v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toNanos(J)J
    .registers 9
    .param p1, "d"    # J

    .line 108
    const-wide/32 v2, 0xf4240

    const-wide v4, 0x8637bd05af6L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$3;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toSeconds(J)J
    .registers 5
    .param p1, "d"    # J

    .line 111
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method
