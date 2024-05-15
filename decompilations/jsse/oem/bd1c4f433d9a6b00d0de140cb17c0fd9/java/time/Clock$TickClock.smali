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
.field private static final serialVersionUID:J = 0x5a4531089f29d952L


# instance fields
.field private final baseClock:Ljava/time/Clock;

.field private final tickNanos:J


# direct methods
.method constructor <init>(Ljava/time/Clock;J)V
    .registers 4
    .param p1, "baseClock"    # Ljava/time/Clock;
    .param p2, "tickNanos"    # J

    .prologue
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
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 633
    instance-of v2, p1, Ljava/time/Clock$TickClock;

    if-eqz v2, :cond_1c

    move-object v0, p1

    .line 634
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

.method public getZone()Ljava/time/ZoneId;
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 641
    iget-object v0, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->hashCode()I

    move-result v0

    iget-wide v2, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    iget-wide v4, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public instant()Ljava/time/Instant;
    .registers 15

    .prologue
    const-wide/32 v12, 0xf4240

    .line 622
    iget-wide v8, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    rem-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_20

    .line 623
    iget-object v3, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 624
    .local v4, "millis":J
    iget-wide v8, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    div-long/2addr v8, v12

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v8

    sub-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    return-object v3

    .line 626
    .end local v4    # "millis":J
    :cond_20
    iget-object v3, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v2

    .line 627
    .local v2, "instant":Ljava/time/Instant;
    invoke-virtual {v2}, Ljava/time/Instant;->getNano()I

    move-result v3

    int-to-long v6, v3

    .line 628
    .local v6, "nanos":J
    iget-wide v8, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    .line 629
    .local v0, "adjust":J
    invoke-virtual {v2, v0, v1}, Ljava/time/Instant;->minusNanos(J)Ljava/time/Instant;

    move-result-object v3

    return-object v3
.end method

.method public millis()J
    .registers 7

    .prologue
    .line 617
    iget-object v2, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

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

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TickClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    invoke-static {v2, v3}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 6
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
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
