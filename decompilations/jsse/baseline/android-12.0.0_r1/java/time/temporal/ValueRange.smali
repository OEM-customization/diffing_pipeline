.class public final Ljava/time/temporal/ValueRange;
.super Ljava/lang/Object;
.source "ValueRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = -0x658e56a90d32a548L


# instance fields
.field private final greylist-max-o maxLargest:J

.field private final greylist-max-o maxSmallest:J

.field private final greylist-max-o minLargest:J

.field private final greylist-max-o minSmallest:J


# direct methods
.method private constructor greylist-max-o <init>(JJJJ)V
    .registers 9
    .param p1, "minSmallest"    # J
    .param p3, "minLargest"    # J
    .param p5, "maxSmallest"    # J
    .param p7, "maxLargest"    # J

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

.method private greylist-max-o genInvalidFieldMessage(Ljava/time/temporal/TemporalField;J)Ljava/lang/String;
    .registers 7
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J

    .line 336
    const-string v0, "): "

    if-eqz p1, :cond_24

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (valid values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 339
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value (valid values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(JJ)Ljava/time/temporal/ValueRange;
    .registers 14
    .param p0, "min"    # J
    .param p2, "max"    # J

    .line 126
    cmp-long v0, p0, p2

    if-gtz v0, :cond_f

    .line 129
    new-instance v0, Ljava/time/temporal/ValueRange;

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p0

    move-wide v6, p2

    move-wide v8, p2

    invoke-direct/range {v1 .. v9}, Ljava/time/temporal/ValueRange;-><init>(JJJJ)V

    return-object v0

    .line 127
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api of(JJJ)Ljava/time/temporal/ValueRange;
    .registers 14
    .param p0, "min"    # J
    .param p2, "maxSmallest"    # J
    .param p4, "maxLargest"    # J

    .line 147
    move-wide v0, p0

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(JJJJ)Ljava/time/temporal/ValueRange;
    .registers 18
    .param p0, "minSmallest"    # J
    .param p2, "minLargest"    # J
    .param p4, "maxSmallest"    # J
    .param p6, "maxLargest"    # J

    .line 166
    cmp-long v0, p0, p2

    if-gtz v0, :cond_28

    .line 169
    cmp-long v0, p4, p6

    if-gtz v0, :cond_20

    .line 172
    cmp-long v0, p2, p6

    if-gtz v0, :cond_18

    .line 175
    new-instance v9, Ljava/time/temporal/ValueRange;

    move-object v0, v9

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Ljava/time/temporal/ValueRange;-><init>(JJJJ)V

    return-object v9

    .line 173
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 358
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 359
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_28

    .line 362
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_20

    .line 365
    cmp-long v0, v2, v4

    if-gtz v0, :cond_18

    .line 368
    return-void

    .line 366
    :cond_18
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_20
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_28
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api checkValidIntValue(JLjava/time/temporal/TemporalField;)I
    .registers 6
    .param p1, "value"    # J
    .param p3, "field"    # Ljava/time/temporal/TemporalField;

    .line 329
    invoke-virtual {p0, p1, p2}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 332
    long-to-int v0, p1

    return v0

    .line 330
    :cond_8
    new-instance v0, Ljava/time/DateTimeException;

    invoke-direct {p0, p3, p1, p2}, Ljava/time/temporal/ValueRange;->genInvalidFieldMessage(Ljava/time/temporal/TemporalField;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api checkValidValue(JLjava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "value"    # J
    .param p3, "field"    # Ljava/time/temporal/TemporalField;

    .line 310
    invoke-virtual {p0, p1, p2}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 313
    return-wide p1

    .line 311
    :cond_7
    new-instance v0, Ljava/time/DateTimeException;

    invoke-direct {p0, p3, p1, p2}, Ljava/time/temporal/ValueRange;->genInvalidFieldMessage(Ljava/time/temporal/TemporalField;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 383
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 384
    return v0

    .line 386
    :cond_4
    instance-of v1, p1, Ljava/time/temporal/ValueRange;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    .line 387
    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ValueRange;

    .line 388
    .local v1, "other":Ljava/time/temporal/ValueRange;
    iget-wide v3, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v5, v1, Ljava/time/temporal/ValueRange;->minSmallest:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2d

    iget-wide v3, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    iget-wide v5, v1, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2d

    iget-wide v3, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v5, v1, Ljava/time/temporal/ValueRange;->maxSmallest:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2d

    iget-wide v3, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    iget-wide v5, v1, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v2

    :goto_2e
    return v0

    .line 391
    .end local v1    # "other":Ljava/time/temporal/ValueRange;
    :cond_2f
    return v2
.end method

.method public whitelist test-api getLargestMinimum()J
    .registers 3

    .line 229
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    return-wide v0
.end method

.method public whitelist test-api getMaximum()J
    .registers 3

    .line 253
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    return-wide v0
.end method

.method public whitelist test-api getMinimum()J
    .registers 3

    .line 217
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    return-wide v0
.end method

.method public whitelist test-api getSmallestMaximum()J
    .registers 3

    .line 241
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 401
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    add-long/2addr v0, v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    long-to-int v2, v2

    shl-long/2addr v0, v2

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    const-wide/16 v4, 0x30

    add-long v6, v2, v4

    long-to-int v6, v6

    shr-long/2addr v0, v6

    const-wide/16 v6, 0x20

    add-long/2addr v2, v6

    long-to-int v2, v2

    shl-long/2addr v0, v2

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    add-long/2addr v6, v2

    long-to-int v6, v6

    shr-long/2addr v0, v6

    add-long/2addr v2, v4

    long-to-int v2, v2

    shl-long/2addr v0, v2

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    .line 403
    .local v0, "hash":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public whitelist test-api isFixed()Z
    .registers 5

    .line 204
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api isIntValue()Z
    .registers 5

    .line 270
    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_18

    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public whitelist test-api isValidIntValue(J)Z
    .registers 4
    .param p1, "value"    # J

    .line 295
    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->isIntValue()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api isValidValue(J)Z
    .registers 5
    .param p1, "value"    # J

    .line 282
    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 420
    iget-wide v1, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v3, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v1, v1, v3

    const/16 v2, 0x2f

    if-eqz v1, :cond_1c

    .line 421
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 423
    :cond_1c
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 424
    iget-wide v3, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v5, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_36

    .line 425
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 427
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
