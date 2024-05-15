.class final Ljava/time/Clock$FixedClock;
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
    name = "FixedClock"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x671e0bb19c27c88eL


# instance fields
.field private final greylist-max-o instant:Ljava/time/Instant;

.field private final greylist-max-o zone:Ljava/time/ZoneId;


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/Instant;Ljava/time/ZoneId;)V
    .registers 3
    .param p1, "fixedInstant"    # Ljava/time/Instant;
    .param p2, "zone"    # Ljava/time/ZoneId;

    .line 500
    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    .line 501
    iput-object p1, p0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    .line 502
    iput-object p2, p0, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    .line 503
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 525
    instance-of v0, p1, Ljava/time/Clock$FixedClock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 526
    move-object v0, p1

    check-cast v0, Ljava/time/Clock$FixedClock;

    .line 527
    .local v0, "other":Ljava/time/Clock$FixedClock;
    iget-object v2, p0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    iget-object v3, v0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    invoke-virtual {v2, v3}, Ljava/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    iget-object v3, v0, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v2, v3}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1

    .line 529
    .end local v0    # "other":Ljava/time/Clock$FixedClock;
    :cond_1e
    return v1
.end method

.method public whitelist test-api getZone()Ljava/time/ZoneId;
    .registers 2

    .line 506
    iget-object v0, p0, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 533
    iget-object v0, p0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1}, Ljava/time/ZoneId;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api instant()Ljava/time/Instant;
    .registers 2

    .line 521
    iget-object v0, p0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist test-api millis()J
    .registers 3

    .line 517
    iget-object v0, p0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FixedClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 4
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 510
    iget-object v0, p0, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {p1, v0}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 511
    return-object p0

    .line 513
    :cond_9
    new-instance v0, Ljava/time/Clock$FixedClock;

    iget-object v1, p0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    invoke-direct {v0, v1, p1}, Ljava/time/Clock$FixedClock;-><init>(Ljava/time/Instant;Ljava/time/ZoneId;)V

    return-object v0
.end method
