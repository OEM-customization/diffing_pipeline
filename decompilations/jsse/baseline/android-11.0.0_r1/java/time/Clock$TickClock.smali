.class final Ljava/time/Clock$TickClock;
.super Ljava/time/Clock;
.source "Clock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TickClock"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x5a4531089f29d952L


# instance fields
.field private final greylist-max-o baseClock:Ljava/time/Clock;

.field private final greylist-max-o tickNanos:J


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/Clock;J)V
    .registers 4
    .param p1, "baseClock"    # Ljava/time/Clock;
    .param p2, "tickNanos"    # J

    .line 600
    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    .line 601
    iput-object p1, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    .line 602
    iput-wide p2, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    .line 603
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 633
    instance-of v0, p1, Ljava/time/Clock$TickClock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 634
    move-object v0, p1

    check-cast v0, Ljava/time/Clock$TickClock;

    .line 635
    .local v0, "other":Ljava/time/Clock$TickClock;
    iget-object v2, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    iget-object v3, v0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v2, v3}, Ljava/time/Clock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-wide v2, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    iget-wide v4, v0, Ljava/time/Clock$TickClock;->tickNanos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    .line 637
    .end local v0    # "other":Ljava/time/Clock$TickClock;
    :cond_1c
    return v1
.end method

.method public whitelist core-platform-api test-api getZone()Ljava/time/ZoneId;
    .registers 2

    .line 606
    iget-object v0, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 6

    .line 641
    iget-object v0, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->hashCode()I

    move-result v0

    iget-wide v1, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api instant()Ljava/time/Instant;
    .registers 7

    .line 622
    iget-wide v0, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_20

    .line 623
    iget-object v0, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 624
    .local v0, "millis":J
    iget-wide v4, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    div-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    return-object v2

    .line 626
    .end local v0    # "millis":J
    :cond_20
    iget-object v0, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    .line 627
    .local v0, "instant":Ljava/time/Instant;
    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v1

    int-to-long v1, v1

    .line 628
    .local v1, "nanos":J
    iget-wide v3, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v3

    .line 629
    .local v3, "adjust":J
    invoke-virtual {v0, v3, v4}, Ljava/time/Instant;->minusNanos(J)Ljava/time/Instant;

    move-result-object v5

    return-object v5
.end method

.method public whitelist core-platform-api test-api millis()J
    .registers 7

    .line 617
    iget-object v0, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 618
    .local v0, "millis":J
    iget-wide v2, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v2

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TickClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    invoke-static {v1, v2}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 6
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 610
    iget-object v0, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 611
    return-object p0

    .line 613
    :cond_d
    new-instance v0, Ljava/time/Clock$TickClock;

    iget-object v1, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v1, p1}, Ljava/time/Clock;->withZone(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    iget-wide v2, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    invoke-direct {v0, v1, v2, v3}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    return-object v0
.end method
