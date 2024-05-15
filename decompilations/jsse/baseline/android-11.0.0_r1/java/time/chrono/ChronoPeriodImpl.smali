.class final Ljava/time/chrono/ChronoPeriodImpl;
.super Ljava/lang/Object;
.source "ChronoPeriodImpl.java"

# interfaces
.implements Ljava/time/chrono/ChronoPeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist SUPPORTED_UNITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0xd5c8c11b1L


# instance fields
.field private final blacklist chrono:Ljava/time/chrono/Chronology;

.field final blacklist days:I

.field final blacklist months:I

.field final blacklist years:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 109
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/ChronoPeriodImpl;->SUPPORTED_UNITS:Ljava/util/List;

    .line 108
    return-void
.end method

.method constructor blacklist <init>(Ljava/time/chrono/Chronology;III)V
    .registers 6
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "years"    # I
    .param p3, "months"    # I
    .param p4, "days"    # I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-string v0, "chrono"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    iput-object p1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    .line 134
    iput p2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    .line 135
    iput p3, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    .line 136
    iput p4, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    .line 137
    return-void
.end method

.method private blacklist monthRange()J
    .registers 6

    .line 249
    iget-object v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    .line 250
    .local v0, "startRange":Ljava/time/temporal/ValueRange;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->isFixed()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->isIntValue()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 251
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    return-wide v1

    .line 253
    :cond_21
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method static blacklist readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ChronoPeriodImpl;
    .registers 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/Chronology;->of(Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v0

    .line 395
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 396
    .local v1, "years":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 397
    .local v2, "months":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 398
    .local v3, "days":I
    new-instance v4, Ljava/time/chrono/ChronoPeriodImpl;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v4
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist validateAmount(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriodImpl;
    .registers 6
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .line 202
    const-string v0, "amount"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    instance-of v0, p1, Ljava/time/chrono/ChronoPeriodImpl;

    if-eqz v0, :cond_46

    .line 206
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoPeriodImpl;

    .line 207
    .local v0, "period":Ljava/time/chrono/ChronoPeriodImpl;
    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 210
    return-object v0

    .line 208
    :cond_19
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chronology mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    .end local v0    # "period":Ljava/time/chrono/ChronoPeriodImpl;
    :cond_46
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain ChronoPeriod from TemporalAmount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist validateChrono(Ljava/time/temporal/TemporalAccessor;)V
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 311
    const-string v0, "temporal"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 313
    .local v0, "temporalChrono":Ljava/time/chrono/Chronology;
    if-eqz v0, :cond_43

    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v1, v0}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_43

    .line 314
    :cond_1a
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chronology mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_43
    :goto_43
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 8
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 259
    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    .line 260
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_13

    .line 261
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v0, :cond_40

    .line 262
    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_40

    .line 265
    :cond_13
    invoke-direct {p0}, Ljava/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 266
    .local v0, "monthRange":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2c

    .line 267
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_40

    .line 269
    :cond_2c
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_37

    .line 270
    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 272
    :cond_37
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 275
    .end local v0    # "monthRange":J
    :cond_40
    :goto_40
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v0, :cond_4b

    .line 276
    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 278
    :cond_4b
    return-object p1
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 321
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 322
    return v0

    .line 324
    :cond_4
    instance-of v1, p1, Ljava/time/chrono/ChronoPeriodImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 325
    move-object v1, p1

    check-cast v1, Ljava/time/chrono/ChronoPeriodImpl;

    .line 326
    .local v1, "other":Ljava/time/chrono/ChronoPeriodImpl;
    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v1, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-ne v3, v4, :cond_29

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    iget v4, v1, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-ne v3, v4, :cond_29

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    iget v4, v1, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-ne v3, v4, :cond_29

    iget-object v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    iget-object v4, v1, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    .line 327
    invoke-interface {v3, v4}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    .line 326
    :goto_2a
    return v0

    .line 329
    .end local v1    # "other":Ljava/time/chrono/ChronoPeriodImpl;
    :cond_2b
    return v2
.end method

.method public whitelist core-platform-api test-api get(Ljava/time/temporal/TemporalUnit;)J
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 142
    sget-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_8

    .line 143
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    return-wide v0

    .line 144
    :cond_8
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_10

    .line 145
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v0, v0

    return-wide v0

    .line 146
    :cond_10
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_18

    .line 147
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    return-wide v0

    .line 149
    :cond_18
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

.method public whitelist core-platform-api test-api getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .line 160
    iget-object v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    return-object v0
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

    .line 155
    sget-object v0, Ljava/time/chrono/ChronoPeriodImpl;->SUPPORTED_UNITS:Ljava/util/List;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 4

    .line 334
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v1}, Ljava/time/chrono/Chronology;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api isNegative()Z
    .registers 2

    .line 171
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-gez v0, :cond_d

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

.method public whitelist core-platform-api test-api isZero()Z
    .registers 2

    .line 166
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-nez v0, :cond_e

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_e

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist core-platform-api test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .registers 9
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 187
    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateAmount(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    .line 188
    .local v0, "amount":Ljava/time/chrono/ChronoPeriodImpl;
    new-instance v1, Ljava/time/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    .line 190
    invoke-static {v3, v4}, Ljava/lang/Math;->subtractExact(II)I

    move-result v3

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    .line 191
    invoke-static {v4, v5}, Ljava/lang/Math;->subtractExact(II)I

    move-result v4

    iget v5, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    .line 192
    invoke-static {v5, v6}, Ljava/lang/Math;->subtractExact(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    .line 188
    return-object v1
.end method

.method public whitelist core-platform-api test-api multipliedBy(I)Ljava/time/chrono/ChronoPeriod;
    .registers 7
    .param p1, "scalar"    # I

    .line 216
    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    goto :goto_24

    .line 219
    :cond_a
    new-instance v0, Ljava/time/chrono/ChronoPeriodImpl;

    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    .line 221
    invoke-static {v2, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    .line 222
    invoke-static {v3, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v3

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    .line 223
    invoke-static {v4, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    .line 219
    return-object v0

    .line 217
    :cond_24
    :goto_24
    return-object p0
.end method

.method public whitelist core-platform-api test-api normalized()Ljava/time/chrono/ChronoPeriod;
    .registers 12

    .line 229
    invoke-direct {p0}, Ljava/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 230
    .local v0, "monthRange":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2d

    .line 231
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v3, v2

    mul-long/2addr v3, v0

    iget v5, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v6, v5

    add-long/2addr v3, v6

    .line 232
    .local v3, "totalMonths":J
    div-long v6, v3, v0

    .line 233
    .local v6, "splitYears":J
    rem-long v8, v3, v0

    long-to-int v8, v8

    .line 234
    .local v8, "splitMonths":I
    int-to-long v9, v2

    cmp-long v2, v6, v9

    if-nez v2, :cond_1f

    if-ne v8, v5, :cond_1f

    .line 235
    return-object p0

    .line 237
    :cond_1f
    new-instance v2, Ljava/time/chrono/ChronoPeriodImpl;

    iget-object v5, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v9

    iget v10, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-direct {v2, v5, v9, v8, v10}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v2

    .line 240
    .end local v3    # "totalMonths":J
    .end local v6    # "splitYears":J
    .end local v8    # "splitMonths":I
    :cond_2d
    return-object p0
.end method

.method public whitelist core-platform-api test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .registers 9
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 177
    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateAmount(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    .line 178
    .local v0, "amount":Ljava/time/chrono/ChronoPeriodImpl;
    new-instance v1, Ljava/time/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    .line 180
    invoke-static {v3, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    .line 181
    invoke-static {v4, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v4

    iget v5, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    .line 182
    invoke-static {v5, v6}, Ljava/lang/Math;->addExact(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    .line 178
    return-object v1
.end method

.method public whitelist core-platform-api test-api subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 8
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 285
    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    .line 286
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_13

    .line 287
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v0, :cond_40

    .line 288
    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_40

    .line 291
    :cond_13
    invoke-direct {p0}, Ljava/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 292
    .local v0, "monthRange":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2c

    .line 293
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_40

    .line 295
    :cond_2c
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_37

    .line 296
    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 298
    :cond_37
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 301
    .end local v0    # "monthRange":J
    :cond_40
    :goto_40
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v0, :cond_4b

    .line 302
    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 304
    :cond_4b
    return-object p1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 340
    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " P0D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 343
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v1, :cond_46

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    :cond_46
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-eqz v1, :cond_52

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    :cond_52
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v1, :cond_5e

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist writeExternal(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 388
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 389
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 390
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 391
    return-void
.end method

.method protected whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 373
    new-instance v0, Ljava/time/chrono/Ser;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
