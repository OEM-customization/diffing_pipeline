.class public final Ljava/time/ZonedDateTime;
.super Ljava/lang/Object;
.source "ZonedDateTime.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/chrono/ChronoZonedDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/chrono/ChronoZonedDateTime<",
        "Ljava/time/LocalDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x56e37a54888537c2L


# instance fields
.field private final greylist-max-o dateTime:Ljava/time/LocalDateTime;

.field private final greylist-max-o offset:Ljava/time/ZoneOffset;

.field private final greylist-max-o zone:Ljava/time/ZoneId;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V
    .registers 4
    .param p1, "dateTime"    # Ljava/time/LocalDateTime;
    .param p2, "offset"    # Ljava/time/ZoneOffset;
    .param p3, "zone"    # Ljava/time/ZoneId;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    .line 604
    iput-object p2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    .line 605
    iput-object p3, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    .line 606
    return-void
.end method

.method private static greylist-max-o create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 9
    .param p0, "epochSecond"    # J
    .param p2, "nanoOfSecond"    # I
    .param p3, "zone"    # Ljava/time/ZoneId;

    .line 447
    invoke-virtual {p3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    .line 448
    .local v0, "rules":Ljava/time/zone/ZoneRules;
    int-to-long v1, p2

    invoke-static {p0, p1, v1, v2}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v1

    .line 449
    .local v1, "instant":Ljava/time/Instant;
    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v2

    .line 450
    .local v2, "offset":Ljava/time/ZoneOffset;
    invoke-static {p0, p1, p2, v2}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v3

    .line 451
    .local v3, "ldt":Ljava/time/LocalDateTime;
    new-instance v4, Ljava/time/ZonedDateTime;

    invoke-direct {v4, v3, v2, p3}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v4
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;
    .registers 6
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 543
    instance-of v0, p0, Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_8

    .line 544
    move-object v0, p0

    check-cast v0, Ljava/time/ZonedDateTime;

    return-object v0

    .line 547
    :cond_8
    :try_start_8
    invoke-static {p0}, Ljava/time/ZoneId;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;

    move-result-object v0

    .line 548
    .local v0, "zone":Ljava/time/ZoneId;
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 549
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    .line 550
    .local v1, "epochSecond":J
    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v3}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    .line 551
    .local v3, "nanoOfSecond":I
    invoke-static {v1, v2, v3, v0}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    return-object v4

    .line 553
    .end local v1    # "epochSecond":J
    .end local v3    # "nanoOfSecond":I
    :cond_25
    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v1

    .line 554
    .local v1, "date":Ljava/time/LocalDate;
    invoke-static {p0}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v2

    .line 555
    .local v2, "time":Ljava/time/LocalTime;
    invoke-static {v1, v2, v0}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3
    :try_end_31
    .catch Ljava/time/DateTimeException; {:try_start_8 .. :try_end_31} :catch_32

    return-object v3

    .line 557
    .end local v0    # "zone":Ljava/time/ZoneId;
    .end local v1    # "date":Ljava/time/LocalDate;
    .end local v2    # "time":Ljava/time/LocalTime;
    :catch_32
    move-exception v0

    .line 558
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ZonedDateTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist test-api now()Ljava/time/ZonedDateTime;
    .registers 1

    .line 193
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;
    .registers 3
    .param p0, "clock"    # Ljava/time/Clock;

    .line 226
    const-string v0, "clock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    .line 228
    .local v0, "now":Ljava/time/Instant;
    invoke-virtual {p0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api now(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 210
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(IIIIIIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I
    .param p7, "zone"    # Ljava/time/ZoneId;

    .line 333
    invoke-static/range {p0 .. p6}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 334
    .local v0, "dt":Ljava/time/LocalDateTime;
    const/4 v1, 0x0

    invoke-static {v0, p7, v1}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p0, "date"    # Ljava/time/LocalDate;
    .param p1, "time"    # Ljava/time/LocalTime;
    .param p2, "zone"    # Ljava/time/ZoneId;

    .line 259
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 3
    .param p0, "localDateTime"    # Ljava/time/LocalDateTime;
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 287
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 5
    .param p0, "instant"    # Ljava/time/Instant;
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 401
    const-string v0, "instant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 402
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 403
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofInstant(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 6
    .param p0, "localDateTime"    # Ljava/time/LocalDateTime;
    .param p1, "offset"    # Ljava/time/ZoneOffset;
    .param p2, "zone"    # Ljava/time/ZoneId;

    .line 427
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 428
    const-string v0, "offset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 429
    const-string v0, "zone"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    invoke-virtual {p2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/time/zone/ZoneRules;->isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 431
    new-instance v0, Ljava/time/ZonedDateTime;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v0

    .line 433
    :cond_1f
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o ofLenient(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 5
    .param p0, "localDateTime"    # Ljava/time/LocalDateTime;
    .param p1, "offset"    # Ljava/time/ZoneOffset;
    .param p2, "zone"    # Ljava/time/ZoneId;

    .line 510
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 511
    const-string v0, "offset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 512
    const-string v0, "zone"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 513
    instance-of v0, p2, Ljava/time/ZoneOffset;

    if-eqz v0, :cond_22

    invoke-virtual {p1, p2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_22

    .line 514
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ZoneId must match ZoneOffset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_22
    :goto_22
    new-instance v0, Ljava/time/ZonedDateTime;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static whitelist test-api ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;
    .registers 8
    .param p0, "localDateTime"    # Ljava/time/LocalDateTime;
    .param p1, "zone"    # Ljava/time/ZoneId;
    .param p2, "preferredOffset"    # Ljava/time/ZoneOffset;

    .line 361
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    instance-of v0, p1, Ljava/time/ZoneOffset;

    if-eqz v0, :cond_17

    .line 364
    new-instance v0, Ljava/time/ZonedDateTime;

    move-object v1, p1

    check-cast v1, Ljava/time/ZoneOffset;

    invoke-direct {v0, p0, v1, p1}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v0

    .line 366
    :cond_17
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    .line 367
    .local v0, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v1

    .line 369
    .local v1, "validOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/time/ZoneOffset;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2e

    .line 370
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/ZoneOffset;

    .local v2, "offset":Ljava/time/ZoneOffset;
    goto :goto_60

    .line 371
    .end local v2    # "offset":Ljava/time/ZoneOffset;
    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_49

    .line 372
    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v2

    .line 373
    .local v2, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->getDuration()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 374
    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v2

    .line 375
    .local v2, "offset":Ljava/time/ZoneOffset;
    goto :goto_60

    .line 376
    .end local v2    # "offset":Ljava/time/ZoneOffset;
    :cond_49
    if-eqz p2, :cond_53

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 377
    move-object v2, p2

    .restart local v2    # "offset":Ljava/time/ZoneOffset;
    goto :goto_60

    .line 379
    .end local v2    # "offset":Ljava/time/ZoneOffset;
    :cond_53
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/ZoneOffset;

    const-string v3, "offset"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ljava/time/ZoneOffset;

    .line 382
    .restart local v2    # "offset":Ljava/time/ZoneOffset;
    :goto_60
    new-instance v3, Ljava/time/ZonedDateTime;

    invoke-direct {v3, p0, v2, p1}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v3
.end method

.method public static whitelist test-api ofStrict(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 8
    .param p0, "localDateTime"    # Ljava/time/LocalDateTime;
    .param p1, "offset"    # Ljava/time/ZoneOffset;
    .param p2, "zone"    # Ljava/time/ZoneId;

    .line 469
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 470
    const-string v0, "offset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 471
    const-string v0, "zone"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 472
    invoke-virtual {p2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    .line 473
    .local v0, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v0, p0, p1}, Ljava/time/zone/ZoneRules;->isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 474
    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 475
    .local v1, "trans":Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 478
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalDateTime \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' does not exist in zone \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' due to a gap in the local time-line, typically caused by daylight savings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 482
    :cond_49
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZoneOffset \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' is not valid for LocalDateTime \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' in zone \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 485
    .end local v1    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_75
    new-instance v1, Ljava/time/ZonedDateTime;

    invoke-direct {v1, p0, p1, p2}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v1
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 576
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 590
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 591
    sget-object v0, Ljava/time/ZonedDateTime$$ExternalSyntheticLambda0;->INSTANCE:Ljava/time/ZonedDateTime$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/ObjectInput;)Ljava/time/ZonedDateTime;
    .registers 5
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2242
    invoke-static {p0}, Ljava/time/LocalDateTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 2243
    .local v0, "dateTime":Ljava/time/LocalDateTime;
    invoke-static {p0}, Ljava/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 2244
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-static {p0}, Ljava/time/Ser;->read(Ljava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/ZoneId;

    .line 2245
    .local v2, "zone":Ljava/time/ZoneId;
    invoke-static {v0, v1, v2}, Ljava/time/ZonedDateTime;->ofLenient(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

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

    .line 2232
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "newDateTime"    # Ljava/time/LocalDateTime;

    .line 625
    iget-object v0, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-static {p1, v0, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "newDateTime"    # Ljava/time/LocalDateTime;

    .line 615
    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {p1, v0, v1}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o resolveOffset(Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;
    .registers 5
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 637
    iget-object v0, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v1, p1}, Ljava/time/zone/ZoneRules;->isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 638
    new-instance v0, Ljava/time/ZonedDateTime;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v2, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-direct {v0, v1, p1, v2}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v0

    .line 640
    :cond_20
    return-object p0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 2222
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2165
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2166
    return v0

    .line 2168
    :cond_4
    instance-of v1, p1, Ljava/time/ZonedDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 2169
    move-object v1, p1

    check-cast v1, Ljava/time/ZonedDateTime;

    .line 2170
    .local v1, "other":Ljava/time/ZonedDateTime;
    iget-object v3, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v4, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    iget-object v4, v1, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    .line 2171
    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    iget-object v4, v1, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    .line 2172
    invoke-virtual {v3, v4}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    .line 2170
    :goto_2c
    return v0

    .line 2174
    .end local v1    # "other":Ljava/time/ZonedDateTime;
    :cond_2d
    return v2
.end method

.method public whitelist test-api format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 2136
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2137
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 807
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_2a

    .line 808
    sget-object v0, Ljava/time/ZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 814
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 812
    :pswitch_19
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    return v0

    .line 810
    :pswitch_22
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_2a
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_22
        :pswitch_19
    .end packed-switch
.end method

.method public whitelist test-api getDayOfMonth()I
    .registers 2

    .line 1089
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getDayOfWeek()Ljava/time/DayOfWeek;
    .registers 2

    .line 1117
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDayOfYear()I
    .registers 2

    .line 1100
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getHour()I
    .registers 2

    .line 1140
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 844
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_28

    .line 845
    sget-object v0, Ljava/time/ZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 849
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 847
    :pswitch_19
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 846
    :pswitch_23
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0

    .line 851
    :cond_28
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_23
        :pswitch_19
    .end packed-switch
.end method

.method public whitelist test-api getMinute()I
    .registers 2

    .line 1149
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getMonth()Ljava/time/Month;
    .registers 2

    .line 1078
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMonthValue()I
    .registers 2

    .line 1063
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getNano()I
    .registers 2

    .line 1167
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getOffset()Ljava/time/ZoneOffset;
    .registers 2

    .line 864
    iget-object v0, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist test-api getSecond()I
    .registers 2

    .line 1158
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getYear()I
    .registers 2

    .line 1049
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getZone()Ljava/time/ZoneId;
    .registers 2

    .line 939
    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 2184
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1}, Ljava/time/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 698
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_f

    if-eqz p1, :cond_d

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 3
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 739
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->isSupported(Ljava/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;
    .registers 7
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1842
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 1799
    instance-of v0, p1, Ljava/time/Period;

    if-eqz v0, :cond_12

    .line 1800
    move-object v0, p1

    check-cast v0, Ljava/time/Period;

    .line 1801
    .local v0, "periodToSubtract":Ljava/time/Period;
    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v0}, Ljava/time/LocalDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    .line 1803
    .end local v0    # "periodToSubtract":Ljava/time/Period;
    :cond_12
    const-string v0, "amountToSubtract"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1804
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 4

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusDays(J)Ljava/time/ZonedDateTime;
    .registers 6
    .param p1, "days"    # J

    .line 1931
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusHours(J)Ljava/time/ZonedDateTime;
    .registers 6
    .param p1, "hours"    # J

    .line 1960
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/ZonedDateTime;->plusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusMinutes(J)Ljava/time/ZonedDateTime;
    .registers 6
    .param p1, "minutes"    # J

    .line 1978
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusMonths(J)Ljava/time/ZonedDateTime;
    .registers 6
    .param p1, "months"    # J

    .line 1887
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusMonths(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/ZonedDateTime;->plusMonths(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusMonths(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusNanos(J)Ljava/time/ZonedDateTime;
    .registers 6
    .param p1, "nanos"    # J

    .line 2014
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusNanos(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/ZonedDateTime;->plusNanos(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusNanos(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusSeconds(J)Ljava/time/ZonedDateTime;
    .registers 6
    .param p1, "seconds"    # J

    .line 1996
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusWeeks(J)Ljava/time/ZonedDateTime;
    .registers 6
    .param p1, "weeks"    # J

    .line 1909
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusWeeks(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/ZonedDateTime;->plusWeeks(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusWeeks(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusYears(J)Ljava/time/ZonedDateTime;
    .registers 6
    .param p1, "years"    # J

    .line 1865
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusYears(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/ZonedDateTime;->plusYears(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusYears(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;
    .registers 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1594
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_20

    .line 1595
    invoke-interface {p3}, Ljava/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1596
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1598
    :cond_15
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1601
    :cond_20
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 1547
    instance-of v0, p1, Ljava/time/Period;

    if-eqz v0, :cond_12

    .line 1548
    move-object v0, p1

    check-cast v0, Ljava/time/Period;

    .line 1549
    .local v0, "periodToAdd":Ljava/time/Period;
    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v0}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    .line 1551
    .end local v0    # "periodToAdd":Ljava/time/Period;
    :cond_12
    const-string v0, "amountToAdd"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1552
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 4

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusDays(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "days"    # J

    .line 1690
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusHours(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "hours"    # J

    .line 1719
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusMinutes(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "minutes"    # J

    .line 1737
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusMonths(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "months"    # J

    .line 1646
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusNanos(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "nanos"    # J

    .line 1773
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusSeconds(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "seconds"    # J

    .line 1755
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusWeeks(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "weeks"    # J

    .line 1668
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusYears(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "years"    # J

    .line 1624
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 2039
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 2040
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 2042
    :cond_b
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 768
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_19

    .line 769
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_14

    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    goto :goto_14

    .line 772
    :cond_d
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 770
    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 774
    :cond_19
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toLocalDate()Ljava/time/LocalDate;
    .registers 2

    .line 1035
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api toLocalDate()Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 158
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toLocalDateTime()Ljava/time/LocalDateTime;
    .registers 2

    .line 1021
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;
    .registers 2

    .line 158
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toLocalTime()Ljava/time/LocalTime;
    .registers 2

    .line 1131
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toOffsetDateTime()Ljava/time/OffsetDateTime;
    .registers 3

    .line 2150
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v0, v1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2201
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    iget-object v2, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    if-eq v1, v2, :cond_40

    .line 2202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v2}, Ljava/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2204
    :cond_40
    return-object v0
.end method

.method public whitelist test-api truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1521
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 6
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 2113
    invoke-static {p1}, Ljava/time/ZonedDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 2114
    .local v0, "end":Ljava/time/ZonedDateTime;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_2a

    .line 2115
    iget-object v1, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 2116
    invoke-interface {p2}, Ljava/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2117
    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v2, v0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v2, p2}, Ljava/time/LocalDateTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v1

    return-wide v1

    .line 2119
    :cond_1d
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/time/OffsetDateTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v1

    return-wide v1

    .line 2122
    :cond_2a
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;
    .registers 7
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 1224
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_16

    .line 1225
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDate;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1226
    :cond_16
    instance-of v0, p1, Ljava/time/LocalTime;

    if-eqz v0, :cond_2c

    .line 1227
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1228
    :cond_2c
    instance-of v0, p1, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_38

    .line 1229
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDateTime;

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1230
    :cond_38
    instance-of v0, p1, Ljava/time/OffsetDateTime;

    if-eqz v0, :cond_4e

    .line 1231
    move-object v0, p1

    check-cast v0, Ljava/time/OffsetDateTime;

    .line 1232
    .local v0, "odt":Ljava/time/OffsetDateTime;
    invoke-virtual {v0}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v1

    iget-object v2, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    .line 1233
    .end local v0    # "odt":Ljava/time/OffsetDateTime;
    :cond_4e
    instance-of v0, p1, Ljava/time/Instant;

    if-eqz v0, :cond_64

    .line 1234
    move-object v0, p1

    check-cast v0, Ljava/time/Instant;

    .line 1235
    .local v0, "instant":Ljava/time/Instant;
    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v3

    iget-object v4, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-static {v1, v2, v3, v4}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    .line 1236
    .end local v0    # "instant":Ljava/time/Instant;
    :cond_64
    instance-of v0, p1, Ljava/time/ZoneOffset;

    if-eqz v0, :cond_70

    .line 1237
    move-object v0, p1

    check-cast v0, Ljava/time/ZoneOffset;

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveOffset(Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1239
    :cond_70
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/ZonedDateTime;
    .registers 7
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 1296
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_35

    .line 1297
    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 1298
    .local v0, "f":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/ZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 1305
    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, p1, p2, p3}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    .line 1302
    :pswitch_1d
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 1303
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-direct {p0, v1}, Ljava/time/ZonedDateTime;->resolveOffset(Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    .line 1300
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :pswitch_2a
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v1

    iget-object v2, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-static {p2, p3, v1, v2}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    .line 1307
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_35
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/ZonedDateTime;

    return-object v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1d
    .end packed-switch
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 4

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api withDayOfMonth(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "dayOfMonth"    # I

    .line 1375
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withDayOfMonth(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withDayOfYear(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "dayOfYear"    # I

    .line 1398
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withDayOfYear(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withEarlierOffsetAtOverlap()Ljava/time/ZonedDateTime;
    .registers 6

    .line 885
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v0

    .line 886
    .local v0, "trans":Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/time/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 887
    invoke-virtual {v0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    .line 888
    .local v1, "earlierOffset":Ljava/time/ZoneOffset;
    iget-object v2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 889
    new-instance v2, Ljava/time/ZonedDateTime;

    iget-object v3, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v4, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-direct {v2, v3, v1, v4}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v2

    .line 892
    .end local v1    # "earlierOffset":Ljava/time/ZoneOffset;
    :cond_2c
    return-object p0
.end method

.method public bridge synthetic whitelist test-api withEarlierOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .registers 2

    .line 158
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->withEarlierOffsetAtOverlap()Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withFixedOffsetZone()Ljava/time/ZonedDateTime;
    .registers 4

    .line 1007
    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p0

    goto :goto_15

    :cond_c
    new-instance v0, Ljava/time/ZonedDateTime;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1, v2, v2}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    :goto_15
    return-object v0
.end method

.method public whitelist test-api withHour(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "hour"    # I

    .line 1421
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withHour(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withLaterOffsetAtOverlap()Ljava/time/ZonedDateTime;
    .registers 6

    .line 913
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v0

    .line 914
    .local v0, "trans":Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v0, :cond_28

    .line 915
    invoke-virtual {v0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    .line 916
    .local v1, "laterOffset":Ljava/time/ZoneOffset;
    iget-object v2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 917
    new-instance v2, Ljava/time/ZonedDateTime;

    iget-object v3, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v4, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-direct {v2, v3, v1, v4}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v2

    .line 920
    .end local v1    # "laterOffset":Ljava/time/ZoneOffset;
    :cond_28
    return-object p0
.end method

.method public bridge synthetic whitelist test-api withLaterOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .registers 2

    .line 158
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->withLaterOffsetAtOverlap()Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withMinute(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "minute"    # I

    .line 1443
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withMinute(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withMonth(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "month"    # I

    .line 1352
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withMonth(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withNano(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "nanoOfSecond"    # I

    .line 1487
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withNano(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withSecond(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "second"    # I

    .line 1465
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withYear(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "year"    # I

    .line 1330
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withYear(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 5
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 984
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 985
    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, p1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, p0

    goto :goto_21

    .line 986
    :cond_f
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v0

    iget-object v2, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 985
    :goto_21
    return-object v0
.end method

.method public bridge synthetic whitelist test-api withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 961
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 962
    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, p1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, p0

    goto :goto_17

    :cond_f
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v0, p1, v1}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method public bridge synthetic whitelist test-api withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2236
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 2237
    iget-object v0, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, p1}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 2238
    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, p1}, Ljava/time/ZoneId;->write(Ljava/io/DataOutput;)V

    .line 2239
    return-void
.end method
