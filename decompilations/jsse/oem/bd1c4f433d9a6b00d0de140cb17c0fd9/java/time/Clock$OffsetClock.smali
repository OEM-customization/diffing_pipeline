.class final Ljava/time/Clock$OffsetClock;
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
    name = "OffsetClock"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1bdc04b7477ef050L


# instance fields
.field private final baseClock:Ljava/time/Clock;

.field private final offset:Ljava/time/Duration;


# direct methods
.method constructor <init>(Ljava/time/Clock;Ljava/time/Duration;)V
    .registers 3
    .param p1, "baseClock"    # Ljava/time/Clock;
    .param p2, "offset"    # Ljava/time/Duration;

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    .line 551
    iput-object p1, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    .line 552
    iput-object p2, p0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    .line 553
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 575
    instance-of v2, p1, Ljava/time/Clock$OffsetClock;

    if-eqz v2, :cond_1b

    move-object v0, p1

    .line 576
    check-cast v0, Ljava/time/Clock$OffsetClock;

    .line 577
    .local v0, "other":Ljava/time/Clock$OffsetClock;
    iget-object v2, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    iget-object v3, v0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v2, v3}, Ljava/time/Clock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v1, p0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    iget-object v2, v0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-virtual {v1, v2}, Ljava/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1a
    return v1

    .line 579
    .end local v0    # "other":Ljava/time/Clock$OffsetClock;
    :cond_1b
    return v1
.end method

.method public getZone()Ljava/time/ZoneId;
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 583
    iget-object v0, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public instant()Ljava/time/Instant;
    .registers 3

    .prologue
    .line 571
    iget-object v0, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public millis()J
    .registers 5

    .prologue
    .line 567
    iget-object v0, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object v2, p0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OffsetClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

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
    .registers 5
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 560
    iget-object v0, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 561
    return-object p0

    .line 563
    :cond_d
    new-instance v0, Ljava/time/Clock$OffsetClock;

    iget-object v1, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v1, p1}, Ljava/time/Clock;->withZone(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    iget-object v2, p0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-direct {v0, v1, v2}, Ljava/time/Clock$OffsetClock;-><init>(Ljava/time/Clock;Ljava/time/Duration;)V

    return-object v0
.end method
