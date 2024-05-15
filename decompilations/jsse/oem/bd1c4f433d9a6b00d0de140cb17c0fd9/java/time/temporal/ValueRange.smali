.class public final Ljava/time/temporal/ValueRange;
.super Ljava/lang/Object;
.source "ValueRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x658e56a90d32a548L


# instance fields
.field private final maxLargest:J

.field private final maxSmallest:J

.field private final minLargest:J

.field private final minSmallest:J


# direct methods
.method private constructor <init>(JJJJ)V
    .registers 10
    .param p1, "minSmallest"    # J
    .param p3, "minLargest"    # J
    .param p5, "maxSmallest"    # J
    .param p7, "maxLargest"    # J

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-wide p1, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    .line 188
    iput-wide p3, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    .line 189
    iput-wide p5, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    .line 190
    iput-wide p7, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    .line 191
    return-void
.end method

.method private genInvalidFieldMessage(Ljava/time/temporal/TemporalField;J)Ljava/lang/String;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J

    .prologue
    .line 336
    if-eqz p1, :cond_2d

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid value for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (valid values "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 339
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid value (valid values "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static of(JJ)Ljava/time/temporal/ValueRange;
    .registers 14
    .param p0, "min"    # J
    .param p2, "max"    # J

    .prologue
    .line 126
    cmp-long v0, p0, p2

    if-lez v0, :cond_d

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_d
    new-instance v1, Ljava/time/temporal/ValueRange;

    move-wide v2, p0

    move-wide v4, p0

    move-wide v6, p2

    move-wide v8, p2

    invoke-direct/range {v1 .. v9}, Ljava/time/temporal/ValueRange;-><init>(JJJJ)V

    return-object v1
.end method

.method public static of(JJJ)Ljava/time/temporal/ValueRange;
    .registers 14
    .param p0, "min"    # J
    .param p2, "maxSmallest"    # J
    .param p4, "maxLargest"    # J

    .prologue
    move-wide v0, p0

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    .line 147
    invoke-static/range {v0 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public static of(JJJJ)Ljava/time/temporal/ValueRange;
    .registers 18
    .param p0, "minSmallest"    # J
    .param p2, "minLargest"    # J
    .param p4, "maxSmallest"    # J
    .param p6, "maxLargest"    # J

    .prologue
    .line 166
    cmp-long v0, p0, p2

    if-lez v0, :cond_d

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_d
    cmp-long v0, p4, p6

    if-lez v0, :cond_1a

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1a
    cmp-long v0, p2, p6

    if-lez v0, :cond_27

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_27
    new-instance v1, Ljava/time/temporal/ValueRange;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Ljava/time/temporal/ValueRange;-><init>(JJJJ)V

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 359
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 360
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_14
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 363
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_25
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_36

    .line 366
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_36
    return-void
.end method


# virtual methods
.method public checkValidIntValue(JLjava/time/temporal/TemporalField;)I
    .registers 7
    .param p1, "value"    # J
    .param p3, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 329
    invoke-virtual {p0, p1, p2}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result v0

    if-nez v0, :cond_10

    .line 330
    new-instance v0, Ljava/time/DateTimeException;

    invoke-direct {p0, p3, p1, p2}, Ljava/time/temporal/ValueRange;->genInvalidFieldMessage(Ljava/time/temporal/TemporalField;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_10
    long-to-int v0, p1

    return v0
.end method

.method public checkValidValue(JLjava/time/temporal/TemporalField;)J
    .registers 7
    .param p1, "value"    # J
    .param p3, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 310
    invoke-virtual {p0, p1, p2}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-nez v0, :cond_10

    .line 311
    new-instance v0, Ljava/time/DateTimeException;

    invoke-direct {p0, p3, p1, p2}, Ljava/time/temporal/ValueRange;->genInvalidFieldMessage(Ljava/time/temporal/TemporalField;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_10
    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 383
    if-ne p1, p0, :cond_5

    .line 384
    return v1

    .line 386
    :cond_5
    instance-of v3, p1, Ljava/time/temporal/ValueRange;

    if-eqz v3, :cond_31

    move-object v0, p1

    .line 387
    check-cast v0, Ljava/time/temporal/ValueRange;

    .line 388
    .local v0, "other":Ljava/time/temporal/ValueRange;
    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v6, v0, Ljava/time/temporal/ValueRange;->minSmallest:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2f

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    iget-wide v6, v0, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2f

    .line 389
    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v6, v0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2f

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    iget-wide v6, v0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2d

    .line 388
    :goto_2c
    return v1

    :cond_2d
    move v1, v2

    .line 389
    goto :goto_2c

    :cond_2f
    move v1, v2

    .line 388
    goto :goto_2c

    .line 391
    .end local v0    # "other":Ljava/time/temporal/ValueRange;
    :cond_31
    return v2
.end method

.method public getLargestMinimum()J
    .registers 3

    .prologue
    .line 229
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    return-wide v0
.end method

.method public getMaximum()J
    .registers 3

    .prologue
    .line 253
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    return-wide v0
.end method

.method public getMinimum()J
    .registers 3

    .prologue
    .line 217
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    return-wide v0
.end method

.method public getSmallestMaximum()J
    .registers 3

    .prologue
    .line 241
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 13

    .prologue
    const-wide/16 v10, 0x30

    const-wide/16 v8, 0x20

    .line 401
    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    long-to-int v4, v4

    shl-long/2addr v2, v4

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    add-long/2addr v4, v10

    long-to-int v4, v4

    shr-long/2addr v2, v4

    .line 402
    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    .line 401
    add-long/2addr v4, v8

    long-to-int v4, v4

    shl-long/2addr v2, v4

    .line 402
    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    add-long/2addr v4, v8

    long-to-int v4, v4

    .line 401
    shr-long/2addr v2, v4

    .line 402
    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    add-long/2addr v4, v10

    long-to-int v4, v4

    .line 401
    shl-long/2addr v2, v4

    .line 402
    const/16 v4, 0x10

    .line 401
    shr-long v0, v2, v4

    .line 403
    .local v0, "hash":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public isFixed()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 204
    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_12

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public isIntValue()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v2

    const-wide/32 v4, -0x80000000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_18

    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gtz v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public isValidIntValue(J)Z
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 295
    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->isIntValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isValidValue(J)Z
    .registers 8
    .param p1, "value"    # J

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-ltz v1, :cond_12

    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-gtz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0x2f

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 420
    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1d

    .line 421
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 423
    :cond_1d
    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 424
    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3a

    .line 425
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 427
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
