.class public abstract Ljava/time/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/Clock$TickClock;,
        Ljava/time/Clock$OffsetClock;,
        Ljava/time/Clock$FixedClock;,
        Ljava/time/Clock$SystemClock;
    }
.end annotation


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    return-void
.end method

.method public static whitelist test-api fixed(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 3
    .param p0, "fixedInstant"    # Ljava/time/Instant;
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 315
    const-string v0, "fixedInstant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    new-instance v0, Ljava/time/Clock$FixedClock;

    invoke-direct {v0, p0, p1}, Ljava/time/Clock$FixedClock;-><init>(Ljava/time/Instant;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static whitelist test-api offset(Ljava/time/Clock;Ljava/time/Duration;)Ljava/time/Clock;
    .registers 3
    .param p0, "baseClock"    # Ljava/time/Clock;
    .param p1, "offsetDuration"    # Ljava/time/Duration;

    .line 341
    const-string v0, "baseClock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    const-string v0, "offsetDuration"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {p1, v0}, Ljava/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 344
    return-object p0

    .line 346
    :cond_13
    new-instance v0, Ljava/time/Clock$OffsetClock;

    invoke-direct {v0, p0, p1}, Ljava/time/Clock$OffsetClock;-><init>(Ljava/time/Clock;Ljava/time/Duration;)V

    return-object v0
.end method

.method public static whitelist test-api system(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 197
    const-string v0, "zone"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    new-instance v0, Ljava/time/Clock$SystemClock;

    invoke-direct {v0, p0}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static whitelist test-api systemDefaultZone()Ljava/time/Clock;
    .registers 2

    .line 178
    new-instance v0, Ljava/time/Clock$SystemClock;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static whitelist test-api systemUTC()Ljava/time/Clock;
    .registers 2

    .line 155
    new-instance v0, Ljava/time/Clock$SystemClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static whitelist test-api tick(Ljava/time/Clock;Ljava/time/Duration;)Ljava/time/Clock;
    .registers 8
    .param p0, "baseClock"    # Ljava/time/Clock;
    .param p1, "tickDuration"    # Ljava/time/Duration;

    .line 280
    const-string v0, "baseClock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    const-string v0, "tickDuration"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 285
    invoke-virtual {p1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    .line 286
    .local v0, "tickNanos":J
    const-wide/32 v2, 0xf4240

    rem-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_20

    goto :goto_28

    .line 288
    :cond_20
    const-wide/32 v2, 0x3b9aca00

    rem-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_35

    .line 293
    :goto_28
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2f

    .line 294
    return-object p0

    .line 296
    :cond_2f
    new-instance v2, Ljava/time/Clock$TickClock;

    invoke-direct {v2, p0, v0, v1}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    return-object v2

    .line 291
    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid tick duration"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    .end local v0    # "tickNanos":J
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tick duration must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api tickMinutes(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 5
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 245
    new-instance v0, Ljava/time/Clock$TickClock;

    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    const-wide v2, 0xdf8475800L

    invoke-direct {v0, v1, v2, v3}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    return-object v0
.end method

.method public static whitelist test-api tickSeconds(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 5
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 222
    new-instance v0, Ljava/time/Clock$TickClock;

    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    const-wide/32 v2, 0x3b9aca00

    invoke-direct {v0, v1, v2, v3}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 425
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api getZone()Ljava/time/ZoneId;
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 439
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api instant()Ljava/time/Instant;
.end method

.method public whitelist test-api millis()J
    .registers 3

    .line 398
    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract whitelist test-api withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
.end method
