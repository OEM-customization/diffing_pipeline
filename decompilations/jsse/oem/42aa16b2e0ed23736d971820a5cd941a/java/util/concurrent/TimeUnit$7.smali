.class final enum Ljava/util/concurrent/TimeUnit$7;
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

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit$1;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api convert(JLjava/util/concurrent/TimeUnit;)J
    .registers 6
    .param p1, "d"    # J
    .param p3, "u"    # Ljava/util/concurrent/TimeUnit;

    .line 178
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist excessNanos(JJ)I
    .registers 6
    .param p1, "d"    # J
    .param p3, "m"    # J

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api toDays(J)J
    .registers 3
    .param p1, "d"    # J

    .line 177
    return-wide p1
.end method

.method public whitelist core-platform-api test-api toHours(J)J
    .registers 9
    .param p1, "d"    # J

    .line 176
    const-wide/16 v2, 0x18

    const-wide v4, 0x555555555555555L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toMicros(J)J
    .registers 9
    .param p1, "d"    # J

    .line 172
    const-wide v2, 0x141dd76000L

    const-wide/32 v4, 0x65ce7f7

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toMillis(J)J
    .registers 9
    .param p1, "d"    # J

    .line 173
    const-wide/32 v2, 0x5265c00

    const-wide v4, 0x18daea1d7fL

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toMinutes(J)J
    .registers 9
    .param p1, "d"    # J

    .line 175
    const-wide/16 v2, 0x5a0

    const-wide v4, 0x16c16c16c16c16L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toNanos(J)J
    .registers 9
    .param p1, "d"    # J

    .line 171
    const-wide v2, 0x4e94914f0000L

    const-wide/32 v4, 0x1a0ff

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toSeconds(J)J
    .registers 9
    .param p1, "d"    # J

    .line 174
    const-wide/32 v2, 0x15180

    const-wide v4, 0x611722833944L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
