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
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/zone/ZoneOffsetTransition;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x60654e82b3c68362L


# instance fields
.field private final offsetAfter:Ljava/time/ZoneOffset;

.field private final offsetBefore:Ljava/time/ZoneOffset;

.field private final transition:Ljava/time/LocalDateTime;


# direct methods
.method constructor <init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .registers 6
    .param p1, "epochSecond"    # J
    .param p3, "offsetBefore"    # Ljava/time/ZoneOffset;
    .param p4, "offsetAfter"    # Ljava/time/ZoneOffset;

    .prologue
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

.method constructor <init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .registers 4
    .param p1, "transition"    # Ljava/time/LocalDateTime;
    .param p2, "offsetBefore"    # Ljava/time/ZoneOffset;
    .param p3, "offsetAfter"    # Ljava/time/ZoneOffset;

    .prologue
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

.method private getDurationSeconds()I
    .registers 3

    .prologue
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

.method public static of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 5
    .param p0, "transition"    # Ljava/time/LocalDateTime;
    .param p1, "offsetBefore"    # Ljava/time/ZoneOffset;
    .param p2, "offsetAfter"    # Ljava/time/ZoneOffset;

    .prologue
    .line 135
    const-string/jumbo v0, "transition"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v0, "offsetBefore"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v0, "offsetAfter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p1, p2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Offsets must not be equal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_21
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v0

    if-eqz v0, :cond_30

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Nano-of-second must be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_30
    new-instance v0, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 7
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {p0}, Ljava/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v2

    .line 226
    .local v2, "epochSecond":J
    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 227
    .local v1, "before":Ljava/time/ZoneOffset;
    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 228
    .local v0, "after":Ljava/time/ZoneOffset;
    invoke-virtual {v1, v0}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 229
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Offsets must not be equal"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    :cond_1b
    new-instance v4, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v4, v2, v3, v1, v0}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 202
    new-instance v0, Ljava/time/zone/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ljava/time/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 388
    check-cast p1, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneOffsetTransition;->compareTo(Ljava/time/zone/ZoneOffsetTransition;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/zone/ZoneOffsetTransition;)I
    .registers 4
    .param p1, "transition"    # Ljava/time/zone/ZoneOffsetTransition;

    .prologue
    .line 400
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/zone/ZoneOffsetTransition;->getInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 414
    if-ne p1, p0, :cond_5

    .line 415
    const/4 v1, 0x1

    return v1

    .line 417
    :cond_5
    instance-of v2, p1, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v2, :cond_29

    move-object v0, p1

    .line 418
    check-cast v0, Ljava/time/zone/ZoneOffsetTransition;

    .line 419
    .local v0, "d":Ljava/time/zone/ZoneOffsetTransition;
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 420
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 419
    if-eqz v2, :cond_28

    .line 420
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    iget-object v2, v0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 419
    :cond_28
    return v1

    .line 422
    .end local v0    # "d":Ljava/time/zone/ZoneOffsetTransition;
    :cond_29
    return v1
.end method

.method public getDateTimeAfter()Ljava/time/LocalDateTime;
    .registers 5

    .prologue
    .line 287
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    invoke-direct {p0}, Ljava/time/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeBefore()Ljava/time/LocalDateTime;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public getDuration()Ljava/time/Duration;
    .registers 3

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/time/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getInstant()Ljava/time/Instant;
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetAfter()Ljava/time/ZoneOffset;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getOffsetBefore()Ljava/time/ZoneOffset;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method getValidOffsets()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation

    .prologue
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

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
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

.method public isGap()Z
    .registers 3

    .prologue
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

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isOverlap()Z
    .registers 3

    .prologue
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

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isValidOffset(Ljava/time/ZoneOffset;)Z
    .registers 3
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 371
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7

    :cond_1b
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public toEpochSecond()J
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Transition["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 445
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v1

    if-eqz v1, :cond_43

    const-string/jumbo v1, "Gap"

    .line 444
    :goto_15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 446
    const-string/jumbo v2, " at "

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 447
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 448
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 449
    const-string/jumbo v2, " to "

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 450
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 451
    const/16 v2, 0x5d

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 445
    :cond_43
    const-string/jumbo v1, "Overlap"

    goto :goto_15
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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
