.class public final Ljava/time/chrono/ThaiBuddhistDate;
.super Ljava/time/chrono/ChronoLocalDateImpl;
.source "ThaiBuddhistDate.java"

# interfaces
.implements Ljava/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/chrono/ChronoLocalDateImpl<",
        "Ljava/time/chrono/ThaiBuddhistDate;",
        ">;",
        "Ljava/time/chrono/ChronoLocalDate;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x790bcfffa3423007L


# instance fields
.field private final transient greylist-max-o isoDate:Ljava/time/LocalDate;


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/LocalDate;)V
    .registers 3
    .param p1, "isoDate"    # Ljava/time/LocalDate;

    .line 206
    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 207
    const-string v0, "isoDate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    iput-object p1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    .line 209
    return-void
.end method

.method public static whitelist core-platform-api test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 2
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 197
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    invoke-virtual {v0, p0}, Ljava/time/chrono/ThaiBuddhistChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getProlepticMonth()J
    .registers 5

    .line 296
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-object v2, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private greylist-max-o getProlepticYear()I
    .registers 2

    .line 300
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x21f

    return v0
.end method

.method public static whitelist core-platform-api test-api now()Ljava/time/chrono/ThaiBuddhistDate;
    .registers 1

    .line 127
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/ThaiBuddhistDate;->now(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api now(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 3
    .param p0, "clock"    # Ljava/time/Clock;

    .line 158
    new-instance v0, Ljava/time/chrono/ThaiBuddhistDate;

    invoke-static {p0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api now(Ljava/time/ZoneId;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 143
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/ThaiBuddhistDate;->now(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(III)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 5
    .param p0, "prolepticYear"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 176
    new-instance v0, Ljava/time/chrono/ThaiBuddhistDate;

    add-int/lit16 v1, p0, -0x21f

    invoke-static {v1, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 508
    .local v0, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 509
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 510
    .local v2, "dayOfMonth":I
    sget-object v3, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    invoke-virtual {v3, v0, v1, v2}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

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

    .line 479
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 3
    .param p1, "newDate"    # Ljava/time/LocalDate;

    .line 416
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {p1, v0}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    goto :goto_f

    :cond_a
    new-instance v0, Ljava/time/chrono/ThaiBuddhistDate;

    invoke-direct {v0, p1}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    :goto_f
    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 496
    new-instance v0, Ljava/time/chrono/Ser;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final whitelist core-platform-api test-api atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 3
    .param p1, "localTime"    # Ljava/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "Ljava/time/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    .line 422
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 451
    if-ne p0, p1, :cond_4

    .line 452
    const/4 v0, 0x1

    return v0

    .line 454
    :cond_4
    instance-of v0, p1, Ljava/time/chrono/ThaiBuddhistDate;

    if-eqz v0, :cond_14

    .line 455
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    .line 456
    .local v0, "otherDate":Ljava/time/chrono/ThaiBuddhistDate;
    iget-object v1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    iget-object v2, v0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, v2}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 458
    .end local v0    # "otherDate":Ljava/time/chrono/ThaiBuddhistDate;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .line 100
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getChronology()Ljava/time/chrono/ThaiBuddhistChronology;
    .registers 2

    .line 222
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getEra()Ljava/time/chrono/Era;
    .registers 2

    .line 100
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getEra()Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getEra()Ljava/time/chrono/ThaiBuddhistEra;
    .registers 3

    .line 235
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_a

    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BE:Ljava/time/chrono/ThaiBuddhistEra;

    goto :goto_c

    :cond_a
    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;

    :goto_c
    return-object v0
.end method

.method public whitelist core-platform-api test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 277
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_44

    .line 278
    sget-object v0, Ljava/time/chrono/ThaiBuddhistDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_38

    const/4 v1, 0x5

    if-eq v0, v1, :cond_33

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x7

    if-eq v0, v1, :cond_23

    .line 290
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 288
    :cond_23
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    if-lt v0, v2, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    int-to-long v0, v2

    return-wide v0

    .line 286
    :cond_2d
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 280
    :cond_33
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 282
    :cond_38
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    .line 283
    .local v0, "prolepticYear":I
    if-lt v0, v2, :cond_40

    move v1, v0

    goto :goto_42

    :cond_40
    rsub-int/lit8 v1, v0, 0x1

    :goto_42
    int-to-long v1, v1

    return-wide v1

    .line 292
    .end local v0    # "prolepticYear":I
    :cond_44
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 468
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/chrono/ThaiBuddhistChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api lengthOfMonth()I
    .registers 2

    .line 248
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 392
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public whitelist core-platform-api test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .line 361
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 4

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic blacklist minusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .line 100
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->minusDays(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o minusDays(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "daysToSubtract"    # J

    .line 412
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic blacklist minusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .line 100
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->minusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o minusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "monthsToSubtract"    # J

    .line 402
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic blacklist minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .line 100
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->minusWeeks(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o minusWeeks(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "weeksToSubtract"    # J

    .line 407
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic blacklist minusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .line 100
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->minusYears(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o minusYears(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "yearsToSubtract"    # J

    .line 397
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 387
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public whitelist core-platform-api test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .line 351
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 4

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic blacklist plusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .line 100
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->plusDays(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o plusDays(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "days"    # J

    .line 382
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist plusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .line 100
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->plusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o plusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "months"    # J

    .line 372
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .line 100
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->plusWeeks(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o plusWeeks(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "weeksToAdd"    # J

    .line 377
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic blacklist plusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .line 100
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->plusYears(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o plusYears(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "years"    # J

    .line 367
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 11
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 254
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_6a

    .line 255
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 256
    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 257
    .local v0, "f":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/chrono/ThaiBuddhistDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4c

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2a

    .line 268
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/chrono/ThaiBuddhistChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 263
    :cond_2a
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v1

    .line 264
    .local v1, "range":Ljava/time/temporal/ValueRange;
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v2

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x21f

    if-gtz v2, :cond_42

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v7

    add-long/2addr v7, v5

    neg-long v5, v7

    add-long/2addr v5, v3

    goto :goto_47

    :cond_42
    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 265
    .local v5, "max":J
    :goto_47
    invoke-static {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 261
    .end local v1    # "range":Ljava/time/temporal/ValueRange;
    .end local v5    # "max":J
    :cond_4c
    iget-object v1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 270
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_53
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_6a
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toEpochDay()J
    .registers 3

    .line 433
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 100
    invoke-super {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 3

    .line 100
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist core-platform-api test-api until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .registers 7
    .param p1, "endDate"    # Ljava/time/chrono/ChronoLocalDate;

    .line 427
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;

    move-result-object v0

    .line 428
    .local v0, "period":Ljava/time/Period;
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Period;->getYears()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/Period;->getMonths()I

    move-result v3

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/chrono/ThaiBuddhistChronology;->period(III)Ljava/time/chrono/ChronoPeriod;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist core-platform-api test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 341
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public whitelist core-platform-api test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 11
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 306
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_97

    .line 307
    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 308
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-nez v1, :cond_10

    .line 309
    return-object p0

    .line 311
    :cond_10
    sget-object v1, Ljava/time/chrono/ThaiBuddhistDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3b

    const/4 v5, 0x5

    if-eq v1, v5, :cond_25

    if-eq v1, v3, :cond_3b

    if-eq v1, v2, :cond_3b

    goto :goto_56

    .line 313
    :cond_25
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/chrono/ThaiBuddhistChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 314
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticMonth()J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/chrono/ThaiBuddhistDate;->plusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v1

    return-object v1

    .line 318
    :cond_3b
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/chrono/ThaiBuddhistChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 319
    .local v1, "nvalue":I
    sget-object v5, Ljava/time/chrono/ThaiBuddhistDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v4, :cond_80

    if-eq v5, v3, :cond_73

    if-eq v5, v2, :cond_61

    .line 329
    .end local v1    # "nvalue":I
    :goto_56
    iget-object v1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v1

    return-object v1

    .line 325
    .restart local v1    # "nvalue":I
    :cond_61
    iget-object v2, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v3

    sub-int/2addr v6, v3

    add-int/lit16 v6, v6, -0x21f

    invoke-virtual {v2, v6}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    .line 323
    :cond_73
    iget-object v2, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    add-int/lit16 v3, v1, -0x21f

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    .line 321
    :cond_80
    iget-object v2, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v3

    if-lt v3, v6, :cond_8a

    move v3, v1

    goto :goto_8c

    :cond_8a
    rsub-int/lit8 v3, v1, 0x1

    :goto_8c
    add-int/lit16 v3, v3, -0x21f

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    .line 331
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    .end local v1    # "nvalue":I
    :cond_97
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 4

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ThaiBuddhistDate;

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

    .line 501
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 502
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 503
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 504
    return-void
.end method
