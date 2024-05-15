.class public final Ljava/time/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Ljava/time/temporal/TemporalAmount;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/Duration$DurationUnits;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/TemporalAmount;",
        "Ljava/lang/Comparable<",
        "Ljava/time/Duration;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

.field private static final greylist-max-o PATTERN:Ljava/util/regex/Pattern;

.field public static final whitelist core-platform-api test-api ZERO:Ljava/time/Duration;

.field private static final whitelist serialVersionUID:J = 0x2aba9d02d1c4f832L


# instance fields
.field private final greylist-max-o nanos:I

.field private final greylist-max-o seconds:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 133
    new-instance v0, Ljava/time/Duration;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/Duration;-><init>(JI)V

    sput-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 141
    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljava/time/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    .line 145
    nop

    .line 146
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/time/Duration;->PATTERN:Ljava/util/regex/Pattern;

    .line 145
    return-void
.end method

.method private constructor greylist-max-o <init>(JI)V
    .registers 4
    .param p1, "seconds"    # J
    .param p3, "nanos"    # I

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-wide p1, p0, Ljava/time/Duration;->seconds:J

    .line 508
    iput p3, p0, Ljava/time/Duration;->nanos:I

    .line 509
    return-void
.end method

.method public static whitelist core-platform-api test-api between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;
    .registers 12
    .param p0, "startInclusive"    # Ljava/time/temporal/Temporal;
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;

    .line 467
    :try_start_0
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p0, p1, v0}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v0
    :try_end_a
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 468
    :catch_b
    move-exception v0

    .line 469
    .local v0, "ex":Ljava/lang/RuntimeException;
    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p0, p1, v1}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v1

    .line 472
    .local v1, "secs":J
    :try_start_12
    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v5}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v5
    :try_end_1e
    .catch Ljava/time/DateTimeException; {:try_start_12 .. :try_end_1e} :catch_37

    sub-long/2addr v3, v5

    .line 473
    .local v3, "nanos":J
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    const-wide/16 v8, 0x1

    if-lez v7, :cond_2d

    cmp-long v7, v3, v5

    if-gez v7, :cond_2d

    .line 474
    add-long/2addr v1, v8

    goto :goto_36

    .line 475
    :cond_2d
    cmp-long v7, v1, v5

    if-gez v7, :cond_36

    cmp-long v5, v3, v5

    if-lez v5, :cond_36

    .line 476
    sub-long/2addr v1, v8

    .line 480
    :cond_36
    :goto_36
    goto :goto_3b

    .line 478
    .end local v3    # "nanos":J
    :catch_37
    move-exception v3

    .line 479
    .local v3, "ex2":Ljava/time/DateTimeException;
    const-wide/16 v4, 0x0

    move-wide v3, v4

    .line 481
    .local v3, "nanos":J
    :goto_3b
    invoke-static {v1, v2, v3, v4}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v5

    return-object v5
.end method

.method private static greylist-max-o create(JI)Ljava/time/Duration;
    .registers 7
    .param p0, "seconds"    # J
    .param p2, "nanoAdjustment"    # I

    .line 493
    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 494
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    return-object v0

    .line 496
    :cond_b
    new-instance v0, Ljava/time/Duration;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/Duration;-><init>(JI)V

    return-object v0
.end method

.method private static greylist-max-o create(Ljava/math/BigDecimal;)Ljava/time/Duration;
    .registers 7
    .param p0, "seconds"    # Ljava/math/BigDecimal;

    .line 997
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v0

    .line 998
    .local v0, "nanos":Ljava/math/BigInteger;
    sget-object v1, Ljava/time/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 999
    .local v1, "divRem":[Ljava/math/BigInteger;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x3f

    if-gt v3, v4, :cond_2e

    .line 1002
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v2

    return-object v2

    .line 1000
    :cond_2e
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exceeds capacity of Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static greylist-max-o create(ZJJJJI)Ljava/time/Duration;
    .registers 14
    .param p0, "negate"    # Z
    .param p1, "daysAsSecs"    # J
    .param p3, "hoursAsSecs"    # J
    .param p5, "minsAsSecs"    # J
    .param p7, "secs"    # J
    .param p9, "nanos"    # I

    .line 436
    invoke-static {p5, p6, p7, p8}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 437
    .local v0, "seconds":J
    if-eqz p0, :cond_18

    .line 438
    int-to-long v2, p9

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->negated()Ljava/time/Duration;

    move-result-object v2

    return-object v2

    .line 440
    :cond_18
    int-to-long v2, p9

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist core-platform-api test-api from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Duration;
    .registers 6
    .param p0, "amount"    # Ljava/time/temporal/TemporalAmount;

    .line 327
    const-string v0, "amount"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 329
    .local v0, "duration":Ljava/time/Duration;
    invoke-interface {p0}, Ljava/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/TemporalUnit;

    .line 330
    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    invoke-interface {p0, v2}, Ljava/time/temporal/TemporalAmount;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    .line 331
    .end local v2    # "unit":Ljava/time/temporal/TemporalUnit;
    goto :goto_f

    .line 332
    :cond_24
    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;
    .registers 4
    .param p0, "amount"    # J
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 302
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, p0, p1, p2}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofDays(J)Ljava/time/Duration;
    .registers 5
    .param p0, "days"    # J

    .line 173
    const-wide/32 v0, 0x15180

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofHours(J)Ljava/time/Duration;
    .registers 5
    .param p0, "hours"    # J

    .line 188
    const-wide/16 v0, 0xe10

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofMillis(J)Ljava/time/Duration;
    .registers 8
    .param p0, "millis"    # J

    .line 254
    const-wide/16 v0, 0x3e8

    div-long v2, p0, v0

    .line 255
    .local v2, "secs":J
    rem-long v0, p0, v0

    long-to-int v0, v0

    .line 256
    .local v0, "mos":I
    if-gez v0, :cond_e

    .line 257
    add-int/lit16 v0, v0, 0x3e8

    .line 258
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 260
    :cond_e
    const v1, 0xf4240

    mul-int/2addr v1, v0

    invoke-static {v2, v3, v1}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist core-platform-api test-api ofMinutes(J)Ljava/time/Duration;
    .registers 5
    .param p0, "minutes"    # J

    .line 203
    const-wide/16 v0, 0x3c

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofNanos(J)Ljava/time/Duration;
    .registers 9
    .param p0, "nanos"    # J

    .line 273
    const-wide/32 v0, 0x3b9aca00

    div-long v2, p0, v0

    .line 274
    .local v2, "secs":J
    rem-long v4, p0, v0

    long-to-int v4, v4

    .line 275
    .local v4, "nos":I
    if-gez v4, :cond_10

    .line 276
    int-to-long v5, v4

    add-long/2addr v5, v0

    long-to-int v4, v5

    .line 277
    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    .line 279
    :cond_10
    invoke-static {v2, v3, v4}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofSeconds(J)Ljava/time/Duration;
    .registers 3
    .param p0, "seconds"    # J

    .line 216
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofSeconds(JJ)Ljava/time/Duration;
    .registers 8
    .param p0, "seconds"    # J
    .param p2, "nanoAdjustment"    # J

    .line 239
    const-wide/32 v0, 0x3b9aca00

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    .line 240
    .local v2, "secs":J
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 241
    .local v0, "nos":I
    invoke-static {v2, v3, v0}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist core-platform-api test-api parse(Ljava/lang/CharSequence;)Ljava/time/Duration;
    .registers 30
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 381
    move-object/from16 v1, p0

    const-string v0, "text"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 382
    sget-object v0, Ljava/time/Duration;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 383
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_a0

    .line 385
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "T"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 386
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 387
    .local v4, "negate":Z
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, "dayMatch":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 389
    .local v15, "hourMatch":Ljava/lang/String;
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 390
    .local v13, "minuteMatch":Ljava/lang/String;
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 391
    .local v14, "secondMatch":Ljava/lang/String;
    const/4 v6, 0x7

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 392
    .local v11, "fractionMatch":Ljava/lang/String;
    if-nez v5, :cond_4d

    if-nez v15, :cond_4d

    if-nez v13, :cond_4d

    if-eqz v14, :cond_a0

    .line 393
    :cond_4d
    const v6, 0x15180

    const-string v7, "days"

    invoke-static {v1, v5, v6, v7}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v16

    .line 394
    .local v16, "daysAsSecs":J
    const/16 v6, 0xe10

    const-string v7, "hours"

    invoke-static {v1, v15, v6, v7}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v18

    .line 395
    .local v18, "hoursAsSecs":J
    const/16 v6, 0x3c

    const-string v7, "minutes"

    invoke-static {v1, v13, v6, v7}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v20

    .line 396
    .local v20, "minsAsSecs":J
    const-string v6, "seconds"

    invoke-static {v1, v14, v0, v6}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v22

    .line 397
    .local v22, "seconds":J
    const-wide/16 v6, 0x0

    cmp-long v6, v22, v6

    if-gez v6, :cond_73

    const/4 v0, -0x1

    :cond_73
    invoke-static {v1, v11, v0}, Ljava/time/Duration;->parseFraction(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v24

    .line 399
    .local v24, "nanos":I
    move v6, v4

    move-wide/from16 v7, v16

    move-wide/from16 v9, v18

    move-object/from16 v25, v11

    .end local v11    # "fractionMatch":Ljava/lang/String;
    .local v25, "fractionMatch":Ljava/lang/String;
    move-wide/from16 v11, v20

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    .end local v13    # "minuteMatch":Ljava/lang/String;
    .end local v14    # "secondMatch":Ljava/lang/String;
    .local v26, "minuteMatch":Ljava/lang/String;
    .local v27, "secondMatch":Ljava/lang/String;
    move-wide/from16 v13, v22

    move-object/from16 v28, v15

    .end local v15    # "hourMatch":Ljava/lang/String;
    .local v28, "hourMatch":Ljava/lang/String;
    move/from16 v15, v24

    :try_start_8a
    invoke-static/range {v6 .. v15}, Ljava/time/Duration;->create(ZJJJJI)Ljava/time/Duration;

    move-result-object v0
    :try_end_8e
    .catch Ljava/lang/ArithmeticException; {:try_start_8a .. :try_end_8e} :catch_8f

    return-object v0

    .line 400
    :catch_8f
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 401
    .local v0, "ex":Ljava/lang/ArithmeticException;
    new-instance v6, Ljava/time/format/DateTimeParseException;

    const-string v7, "Text cannot be parsed to a Duration: overflow"

    invoke-direct {v6, v7, v1, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v6, v0}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/time/format/DateTimeParseException;

    throw v3

    .line 406
    .end local v0    # "ex":Ljava/lang/ArithmeticException;
    .end local v4    # "negate":Z
    .end local v5    # "dayMatch":Ljava/lang/String;
    .end local v16    # "daysAsSecs":J
    .end local v18    # "hoursAsSecs":J
    .end local v20    # "minsAsSecs":J
    .end local v22    # "seconds":J
    .end local v24    # "nanos":I
    .end local v25    # "fractionMatch":Ljava/lang/String;
    .end local v26    # "minuteMatch":Ljava/lang/String;
    .end local v27    # "secondMatch":Ljava/lang/String;
    .end local v28    # "hourMatch":Ljava/lang/String;
    :cond_a0
    new-instance v0, Ljava/time/format/DateTimeParseException;

    const-string v4, "Text cannot be parsed to a Duration"

    invoke-direct {v0, v4, v1, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method private static greylist-max-o parseFraction(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .registers 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "parsed"    # Ljava/lang/String;
    .param p2, "negate"    # I

    .line 424
    const/4 v0, 0x0

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_37

    .line 428
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "000000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 429
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_26} :catch_28
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_26} :catch_28

    mul-int/2addr v0, p2

    return v0

    .line 430
    :catch_28
    move-exception v1

    .line 431
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/time/format/DateTimeParseException;

    const-string v3, "Text cannot be parsed to a Duration: fraction"

    invoke-direct {v2, v3, p0, v0}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v1}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/time/format/DateTimeParseException;

    throw v0

    .line 425
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_37
    :goto_37
    return v0
.end method

.method private static greylist-max-o parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J
    .registers 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "parsed"    # Ljava/lang/String;
    .param p2, "multiplier"    # I
    .param p3, "errorText"    # Ljava/lang/String;

    .line 411
    if-nez p1, :cond_5

    .line 412
    const-wide/16 v0, 0x0

    return-wide v0

    .line 415
    :cond_5
    :try_start_5
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 416
    .local v0, "val":J
    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_e} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_e} :catch_f

    return-wide v2

    .line 417
    .end local v0    # "val":J
    :catch_f
    move-exception v0

    .line 418
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text cannot be parsed to a Duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v0}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/time/format/DateTimeParseException;

    throw v1
.end method

.method private greylist-max-o plus(JJ)Ljava/time/Duration;
    .registers 11
    .param p1, "secondsToAdd"    # J
    .param p3, "nanosToAdd"    # J

    .line 806
    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 807
    return-object p0

    .line 809
    :cond_9
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 810
    .local v0, "epochSec":J
    const-wide/32 v2, 0x3b9aca00

    div-long v4, p3, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 811
    rem-long/2addr p3, v2

    .line 812
    iget v2, p0, Ljava/time/Duration;->nanos:I

    int-to-long v2, v2

    add-long/2addr v2, p3

    .line 813
    .local v2, "nanoAdjustment":J
    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v4

    return-object v4
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/Duration;
    .registers 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1336
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 1337
    .local v0, "seconds":J
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1338
    .local v2, "nanos":I
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v3

    return-object v3
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1327
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist toSeconds()Ljava/math/BigDecimal;
    .registers 5

    .line 986
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget v1, p0, Ljava/time/Duration;->nanos:I

    int-to-long v1, v1

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1317
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api abs()Ljava/time/Duration;
    .registers 2

    .line 1033
    invoke-virtual {p0}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/time/Duration;->negated()Ljava/time/Duration;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, p0

    :goto_c
    return-object v0
.end method

.method public whitelist core-platform-api test-api addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 1063
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    .line 1064
    sget-object v2, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 1066
    :cond_e
    iget v0, p0, Ljava/time/Duration;->nanos:I

    if-eqz v0, :cond_19

    .line 1067
    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 1069
    :cond_19
    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 127
    check-cast p1, Ljava/time/Duration;

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    return p1
.end method

.method public whitelist core-platform-api test-api compareTo(Ljava/time/Duration;)I
    .registers 6
    .param p1, "otherDuration"    # Ljava/time/Duration;

    .line 1197
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    iget-wide v2, p1, Ljava/time/Duration;->seconds:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 1198
    .local v0, "cmp":I
    if-eqz v0, :cond_b

    .line 1199
    return v0

    .line 1201
    :cond_b
    iget v1, p0, Ljava/time/Duration;->nanos:I

    iget v2, p1, Ljava/time/Duration;->nanos:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public whitelist core-platform-api test-api dividedBy(J)Ljava/time/Duration;
    .registers 6
    .param p1, "divisor"    # J

    .line 970
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_20

    .line 973
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 974
    return-object p0

    .line 976
    :cond_d
    invoke-direct {p0}, Ljava/time/Duration;->toSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Ljava/time/Duration;->create(Ljava/math/BigDecimal;)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    .line 971
    :cond_20
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Cannot divide by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherDuration"    # Ljava/lang/Object;

    .line 1215
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1216
    return v0

    .line 1218
    :cond_4
    instance-of v1, p1, Ljava/time/Duration;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 1219
    move-object v1, p1

    check-cast v1, Ljava/time/Duration;

    .line 1220
    .local v1, "other":Ljava/time/Duration;
    iget-wide v3, p0, Ljava/time/Duration;->seconds:J

    iget-wide v5, v1, Ljava/time/Duration;->seconds:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    iget v3, p0, Ljava/time/Duration;->nanos:I

    iget v4, v1, Ljava/time/Duration;->nanos:I

    if-ne v3, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    return v0

    .line 1223
    .end local v1    # "other":Ljava/time/Duration;
    :cond_1d
    return v2
.end method

.method public whitelist core-platform-api test-api get(Ljava/time/temporal/TemporalUnit;)J
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 526
    sget-object v0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_7

    .line 527
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    return-wide v0

    .line 528
    :cond_7
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_f

    .line 529
    iget v0, p0, Ljava/time/Duration;->nanos:I

    int-to-long v0, v0

    return-wide v0

    .line 531
    :cond_f
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getNano()I
    .registers 2

    .line 623
    iget v0, p0, Ljava/time/Duration;->nanos:I

    return v0
.end method

.method public whitelist core-platform-api test-api getSeconds()J
    .registers 3

    .line 605
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getUnits()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .line 549
    sget-object v0, Ljava/time/Duration$DurationUnits;->UNITS:Ljava/util/List;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 5

    .line 1233
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Ljava/time/Duration;->nanos:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api isNegative()Z
    .registers 5

    .line 586
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist core-platform-api test-api isZero()Z
    .registers 5

    .line 573
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    iget v2, p0, Ljava/time/Duration;->nanos:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist core-platform-api test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;
    .registers 7
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 851
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist core-platform-api test-api minus(Ljava/time/Duration;)Ljava/time/Duration;
    .registers 10
    .param p1, "duration"    # Ljava/time/Duration;

    .line 827
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    .line 828
    .local v0, "secsToSubtract":J
    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result v2

    .line 829
    .local v2, "nanosToSubtract":I
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v0, v3

    if-nez v3, :cond_22

    .line 830
    const-wide v3, 0x7fffffffffffffffL

    neg-int v5, v2

    int-to-long v5, v5

    invoke-direct {p0, v3, v4, v5, v6}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v3

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v3

    return-object v3

    .line 832
    :cond_22
    neg-long v3, v0

    neg-int v5, v2

    int-to-long v5, v5

    invoke-direct {p0, v3, v4, v5, v6}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v3

    return-object v3
.end method

.method public whitelist core-platform-api test-api minusDays(J)Ljava/time/Duration;
    .registers 6
    .param p1, "daysToSubtract"    # J

    .line 868
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusDays(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->plusDays(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusDays(J)Ljava/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist core-platform-api test-api minusHours(J)Ljava/time/Duration;
    .registers 6
    .param p1, "hoursToSubtract"    # J

    .line 883
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusHours(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->plusHours(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusHours(J)Ljava/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist core-platform-api test-api minusMillis(J)Ljava/time/Duration;
    .registers 6
    .param p1, "millisToSubtract"    # J

    .line 924
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist core-platform-api test-api minusMinutes(J)Ljava/time/Duration;
    .registers 6
    .param p1, "minutesToSubtract"    # J

    .line 898
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusMinutes(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->plusMinutes(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusMinutes(J)Ljava/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist core-platform-api test-api minusNanos(J)Ljava/time/Duration;
    .registers 6
    .param p1, "nanosToSubtract"    # J

    .line 937
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist core-platform-api test-api minusSeconds(J)Ljava/time/Duration;
    .registers 6
    .param p1, "secondsToSubtract"    # J

    .line 911
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist core-platform-api test-api multipliedBy(J)Ljava/time/Duration;
    .registers 5
    .param p1, "multiplicand"    # J

    .line 951
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 952
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    return-object v0

    .line 954
    :cond_9
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_10

    .line 955
    return-object p0

    .line 957
    :cond_10
    invoke-direct {p0}, Ljava/time/Duration;->toSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Ljava/time/Duration;->create(Ljava/math/BigDecimal;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api negated()Ljava/time/Duration;
    .registers 3

    .line 1018
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->multipliedBy(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;
    .registers 10
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 690
    const-string v0, "unit"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 691
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x0

    if-ne p3, v0, :cond_17

    .line 692
    const-wide/32 v3, 0x15180

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1, v2}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    .line 694
    :cond_17
    invoke-interface {p3}, Ljava/time/temporal/TemporalUnit;->isDurationEstimated()Z

    move-result v0

    if-nez v0, :cond_89

    .line 697
    cmp-long v0, p1, v1

    if-nez v0, :cond_22

    .line 698
    return-object p0

    .line 700
    :cond_22
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_6f

    .line 701
    sget-object v0, Ljava/time/Duration$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_56

    const/4 v1, 0x3

    if-eq v0, v1, :cond_51

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4c

    .line 707
    invoke-interface {p3}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v0

    iget-wide v0, v0, Ljava/time/Duration;->seconds:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    .line 705
    :cond_4c
    invoke-virtual {p0, p1, p2}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    .line 704
    :cond_51
    invoke-virtual {p0, p1, p2}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    .line 703
    :cond_56
    const-wide/32 v0, 0x3b9aca00

    div-long v2, p1, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v2

    rem-long v0, p1, v0

    mul-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    .line 702
    :cond_6a
    invoke-virtual {p0, p1, p2}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    .line 709
    :cond_6f
    invoke-interface {p3}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/time/Duration;->multipliedBy(J)Ljava/time/Duration;

    move-result-object v0

    .line 710
    .local v0, "duration":Ljava/time/Duration;
    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    .line 695
    .end local v0    # "duration":Ljava/time/Duration;
    :cond_89
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unit must not have an estimated duration"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api plus(Ljava/time/Duration;)Ljava/time/Duration;
    .registers 6
    .param p1, "duration"    # Ljava/time/Duration;

    .line 670
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api plusDays(J)Ljava/time/Duration;
    .registers 7
    .param p1, "daysToAdd"    # J

    .line 727
    const-wide/32 v0, 0x15180

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api plusHours(J)Ljava/time/Duration;
    .registers 7
    .param p1, "hoursToAdd"    # J

    .line 740
    const-wide/16 v0, 0xe10

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api plusMillis(J)Ljava/time/Duration;
    .registers 9
    .param p1, "millisToAdd"    # J

    .line 779
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    rem-long v0, p1, v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    invoke-direct {p0, v2, v3, v0, v1}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api plusMinutes(J)Ljava/time/Duration;
    .registers 7
    .param p1, "minutesToAdd"    # J

    .line 753
    const-wide/16 v0, 0x3c

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api plusNanos(J)Ljava/time/Duration;
    .registers 5
    .param p1, "nanosToAdd"    # J

    .line 792
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api plusSeconds(J)Ljava/time/Duration;
    .registers 5
    .param p1, "secondsToAdd"    # J

    .line 766
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 1098
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    .line 1099
    sget-object v2, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 1101
    :cond_e
    iget v0, p0, Ljava/time/Duration;->nanos:I

    if-eqz v0, :cond_19

    .line 1102
    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 1104
    :cond_19
    return-object p1
.end method

.method public whitelist core-platform-api test-api toDays()J
    .registers 5

    .line 1120
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toHours()J
    .registers 5

    .line 1134
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toMillis()J
    .registers 5

    .line 1165
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    .line 1166
    .local v0, "millis":J
    iget v2, p0, Ljava/time/Duration;->nanos:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 1167
    return-wide v0
.end method

.method public whitelist core-platform-api test-api toMinutes()J
    .registers 5

    .line 1148
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toNanos()J
    .registers 5

    .line 1180
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/32 v2, 0x3b9aca00

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    .line 1181
    .local v0, "totalNanos":J
    iget v2, p0, Ljava/time/Duration;->nanos:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 1182
    return-wide v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 11

    .line 1261
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    if-ne p0, v0, :cond_7

    .line 1262
    const-string v0, "PT0S"

    return-object v0

    .line 1264
    :cond_7
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long v4, v0, v2

    .line 1265
    .local v4, "hours":J
    rem-long v2, v0, v2

    const-wide/16 v6, 0x3c

    div-long/2addr v2, v6

    long-to-int v2, v2

    .line 1266
    .local v2, "minutes":I
    rem-long/2addr v0, v6

    long-to-int v0, v0

    .line 1267
    .local v0, "secs":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1268
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string v3, "PT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2f

    .line 1270
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1272
    :cond_2f
    if-eqz v2, :cond_39

    .line 1273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x4d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1275
    :cond_39
    if-nez v0, :cond_4b

    iget v3, p0, Ljava/time/Duration;->nanos:I

    if-nez v3, :cond_4b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v6, 0x2

    if-le v3, v6, :cond_4b

    .line 1276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1278
    :cond_4b
    if-gez v0, :cond_60

    iget v3, p0, Ljava/time/Duration;->nanos:I

    if-lez v3, :cond_60

    .line 1279
    const/4 v3, -0x1

    if-ne v0, v3, :cond_5a

    .line 1280
    const-string v3, "-0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 1282
    :cond_5a
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 1285
    :cond_60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1287
    :goto_63
    iget v3, p0, Ljava/time/Duration;->nanos:I

    if-lez v3, :cond_9f

    .line 1288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1289
    .local v3, "pos":I
    if-gez v0, :cond_78

    .line 1290
    const-wide/32 v6, 0x77359400

    iget v8, p0, Ljava/time/Duration;->nanos:I

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_82

    .line 1292
    :cond_78
    iget v6, p0, Ljava/time/Duration;->nanos:I

    int-to-long v6, v6

    const-wide/32 v8, 0x3b9aca00

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1294
    :goto_82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_9a

    .line 1295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_82

    .line 1297
    :cond_9a
    const/16 v6, 0x2e

    invoke-virtual {v1, v3, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1299
    .end local v3    # "pos":I
    :cond_9f
    const/16 v3, 0x53

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist core-platform-api test-api withNanos(I)Ljava/time/Duration;
    .registers 5
    .param p1, "nanoOfSecond"    # I

    .line 655
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    .line 656
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    invoke-static {v0, v1, p1}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api withSeconds(J)Ljava/time/Duration;
    .registers 4
    .param p1, "seconds"    # J

    .line 639
    iget v0, p0, Ljava/time/Duration;->nanos:I

    invoke-static {p1, p2, v0}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1331
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1332
    iget v0, p0, Ljava/time/Duration;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1333
    return-void
.end method
