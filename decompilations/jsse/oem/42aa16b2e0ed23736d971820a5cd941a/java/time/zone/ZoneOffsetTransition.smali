.class public final Ljava/time/zone/ZoneOffsetTransition;
.super Ljava/lang/Object;
.source "ZoneOffsetTransition.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/time/zone/ZoneOffsetTransition;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x60654e82b3c68362L


# instance fields
.field private final greylist-max-o offsetAfter:Ljava/time/ZoneOffset;

.field private final greylist-max-o offsetBefore:Ljava/time/ZoneOffset;

.field private final greylist-max-o transition:Ljava/time/LocalDateTime;


# direct methods
.method constructor greylist-max-o <init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .registers 6
    .param p1, "epochSecond"    # J
    .param p3, "offsetBefore"    # Ljava/time/ZoneOffset;
    .param p4, "offsetAfter"    # Ljava/time/ZoneOffset;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    .line 169
    iput-object p3, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    .line 170
    iput-object p4, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    .line 171
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .registers 4
    .param p1, "transition"    # Ljava/time/LocalDateTime;
    .param p2, "offsetBefore"    # Ljava/time/ZoneOffset;
    .param p3, "offsetAfter"    # Ljava/time/ZoneOffset;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    .line 156
    iput-object p2, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    .line 157
    iput-object p3, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    .line 158
    return-void
.end method

.method private greylist-max-o getDurationSeconds()I
    .registers 3

    .line 331
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static whitelist core-platform-api test-api of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 5
    .param p0, "transition"    # Ljava/time/LocalDateTime;
    .param p1, "offsetBefore"    # Ljava/time/ZoneOffset;
    .param p2, "offsetAfter"    # Ljava/time/ZoneOffset;

    .line 135
    const-string v0, "transition"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    const-string v0, "offsetBefore"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    const-string v0, "offsetAfter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p1, p2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 141
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v0

    if-nez v0, :cond_21

    .line 144
    new-instance v0, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v0

    .line 142
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nano-of-second must be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offsets must not be equal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 7
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-static {p0}, Ljava/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v0

    .line 226
    .local v0, "epochSecond":J
    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v2

    .line 227
    .local v2, "before":Ljava/time/ZoneOffset;
    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v3

    .line 228
    .local v3, "after":Ljava/time/ZoneOffset;
    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 231
    new-instance v4, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v4

    .line 229
    :cond_18
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Offsets must not be equal"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 202
    new-instance v0, Ljava/time/zone/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ljava/time/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 99
    check-cast p1, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneOffsetTransition;->compareTo(Ljava/time/zone/ZoneOffsetTransition;)I

    move-result p1

    return p1
.end method

.method public whitelist core-platform-api test-api compareTo(Ljava/time/zone/ZoneOffsetTransition;)I
    .registers 4
    .param p1, "transition"    # Ljava/time/zone/ZoneOffsetTransition;

    .line 400
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/zone/ZoneOffsetTransition;->getInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 414
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 415
    return v0

    .line 417
    :cond_4
    instance-of v1, p1, Ljava/time/zone/ZoneOffsetTransition;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 418
    move-object v1, p1

    check-cast v1, Ljava/time/zone/ZoneOffsetTransition;

    .line 419
    .local v1, "d":Ljava/time/zone/ZoneOffsetTransition;
    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    iget-object v4, v1, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v4, v1, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    .line 420
    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    iget-object v4, v1, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    .line 419
    :goto_2c
    return v0

    .line 422
    .end local v1    # "d":Ljava/time/zone/ZoneOffsetTransition;
    :cond_2d
    return v2
.end method

.method public whitelist core-platform-api test-api getDateTimeAfter()Ljava/time/LocalDateTime;
    .registers 4

    .line 287
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    invoke-direct {p0}, Ljava/time/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDateTimeBefore()Ljava/time/LocalDateTime;
    .registers 2

    .line 273
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDuration()Ljava/time/Duration;
    .registers 3

    .line 322
    invoke-direct {p0}, Ljava/time/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getInstant()Ljava/time/Instant;
    .registers 3

    .line 247
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getOffsetAfter()Ljava/time/ZoneOffset;
    .registers 2

    .line 309
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getOffsetBefore()Ljava/time/ZoneOffset;
    .registers 2

    .line 298
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method greylist-max-o getValidOffsets()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 383
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 385
    :cond_b
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/time/ZoneOffset;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 4

    .line 432
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api isGap()Z
    .registers 3

    .line 344
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-le v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public whitelist core-platform-api test-api isOverlap()Z
    .registers 3

    .line 357
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public whitelist core-platform-api test-api isValidOffset(Ljava/time/ZoneOffset;)Z
    .registers 4
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 371
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    :cond_7
    goto :goto_1d

    :cond_8
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    return v1
.end method

.method public whitelist core-platform-api test-api toEpochSecond()J
    .registers 3

    .line 256
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "Transition["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "Gap"

    goto :goto_15

    :cond_13
    const-string v1, "Overlap"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 449
    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ljava/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 213
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-static {v0, p1}, Ljava/time/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 214
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-static {v0, p1}, Ljava/time/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 215
    return-void
.end method
