.class final enum Ljava/util/concurrent/TimeUnit$1;
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

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit$1;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api convert(JLjava/util/concurrent/TimeUnit;)J
    .registers 6
    .param p1, "d"    # J
    .param p3, "u"    # Ljava/util/concurrent/TimeUnit;

    .line 85
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist excessNanos(JJ)I
    .registers 7
    .param p1, "d"    # J
    .param p3, "m"    # J

    .line 86
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p3

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api toDays(J)J
    .registers 5
    .param p1, "d"    # J

    .line 84
    const-wide v0, 0x4e94914f0000L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public whitelist test-api toHours(J)J
    .registers 5
    .param p1, "d"    # J

    .line 83
    const-wide v0, 0x34630b8a000L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public whitelist test-api toMicros(J)J
    .registers 5
    .param p1, "d"    # J

    .line 79
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method

.method public whitelist test-api toMillis(J)J
    .registers 5
    .param p1, "d"    # J

    .line 80
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    return-wide v0
.end method

.method public whitelist test-api toMinutes(J)J
    .registers 5
    .param p1, "d"    # J

    .line 82
    const-wide v0, 0xdf8475800L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public whitelist test-api toNanos(J)J
    .registers 3
    .param p1, "d"    # J

    .line 78
    return-wide p1
.end method

.method public whitelist test-api toSeconds(J)J
    .registers 5
    .param p1, "d"    # J

    .line 81
    const-wide/32 v0, 0x3b9aca00

    div-long v0, p1, v0

    return-wide v0
.end method
