.class final Ljava/time/Clock$SystemClock;
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
    name = "SystemClock"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x5d8b8814510769ebL


# instance fields
.field private final greylist-max-o zone:Ljava/time/ZoneId;


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/ZoneId;)V
    .registers 2
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 451
    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    .line 452
    iput-object p1, p0, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    .line 453
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 475
    instance-of v0, p1, Ljava/time/Clock$SystemClock;

    if-eqz v0, :cond_10

    .line 476
    iget-object v0, p0, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    move-object v1, p1

    check-cast v1, Ljava/time/Clock$SystemClock;

    iget-object v1, v1, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, v1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 478
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getZone()Ljava/time/ZoneId;
    .registers 2

    .line 456
    iget-object v0, p0, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 482
    iget-object v0, p0, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0}, Ljava/time/ZoneId;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api instant()Ljava/time/Instant;
    .registers 3

    .line 471
    invoke-virtual {p0}, Ljava/time/Clock$SystemClock;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api millis()J
    .registers 3

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 460
    iget-object v0, p0, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {p1, v0}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 461
    return-object p0

    .line 463
    :cond_9
    new-instance v0, Ljava/time/Clock$SystemClock;

    invoke-direct {v0, p1}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method
