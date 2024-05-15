.class final Ljava/time/chrono/ChronoPeriodImpl;
.super Ljava/lang/Object;
.source "ChronoPeriodImpl.java"

# interfaces
.implements Ljava/time/chrono/ChronoPeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final SUPPORTED_UNITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0xd5c8c11b1L


# instance fields
.field private final chrono:Ljava/time/chrono/Chronology;

.field final days:I

.field final months:I

.field final years:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 109
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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 108
    sput-object v0, Ljava/time/chrono/ChronoPeriodImpl;->SUPPORTED_UNITS:Ljava/util/List;

    .line 96
    return-void
.end method

.method constructor <init>(Ljava/time/chrono/Chronology;III)V
    .registers 6
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "years"    # I
    .param p3, "months"    # I
    .param p4, "days"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-string/jumbo v0, "chrono"

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

.method private monthRange()J
    .registers 7

    .prologue
    .line 249
    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/time/chrono/Chronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

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

    move-result-wide v2

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    return-wide v2

    .line 253
    :cond_21
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ChronoPeriodImpl;
    .registers 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/time/chrono/Chronology;->of(Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v0

    .line 395
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 396
    .local v3, "years":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 397
    .local v2, "months":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 398
    .local v1, "days":I
    new-instance v4, Ljava/time/chrono/ChronoPeriodImpl;

    invoke-direct {v4, v0, v3, v2, v1}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 383
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateAmount(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriodImpl;
    .registers 6
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 202
    const-string/jumbo v1, "amount"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    instance-of v1, p1, Ljava/time/chrono/ChronoPeriodImpl;

    if-nez v1, :cond_28

    .line 204
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to obtain ChronoPeriod from TemporalAmount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    move-object v0, p1

    .line 206
    check-cast v0, Ljava/time/chrono/ChronoPeriodImpl;

    .line 207
    .local v0, "period":Ljava/time/chrono/ChronoPeriodImpl;
    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 208
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Chronology mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_6a
    return-object v0
.end method

.method private validateChrono(Ljava/time/temporal/TemporalAccessor;)V
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 311
    const-string/jumbo v1, "temporal"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 313
    .local v0, "temporalChrono":Ljava/time/chrono/Chronology;
    if-eqz v0, :cond_49

    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v1, v0}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 314
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Chronology mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_49
    return-void
.end method


# virtual methods
.method public addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 8
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    .line 260
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v2, :cond_22

    .line 261
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_14

    .line 262
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 275
    :cond_14
    :goto_14
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v2, :cond_21

    .line 276
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 278
    :cond_21
    return-object p1

    .line 265
    :cond_22
    invoke-direct {p0}, Ljava/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 266
    .local v0, "monthRange":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3b

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

    goto :goto_14

    .line 269
    :cond_3b
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_48

    .line 270
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 272
    :cond_48
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_14
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 321
    if-ne p0, p1, :cond_5

    .line 322
    const/4 v1, 0x1

    return v1

    .line 324
    :cond_5
    instance-of v2, p1, Ljava/time/chrono/ChronoPeriodImpl;

    if-eqz v2, :cond_27

    move-object v0, p1

    .line 325
    check-cast v0, Ljava/time/chrono/ChronoPeriodImpl;

    .line 326
    .local v0, "other":Ljava/time/chrono/ChronoPeriodImpl;
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v3, v0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-ne v2, v3, :cond_26

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    iget v3, v0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-ne v2, v3, :cond_26

    .line 327
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    iget v3, v0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-ne v2, v3, :cond_26

    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    iget-object v2, v0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v1, v2}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 326
    :cond_26
    return v1

    .line 329
    .end local v0    # "other":Ljava/time/chrono/ChronoPeriodImpl;
    :cond_27
    return v1
.end method

.method public get(Ljava/time/temporal/TemporalUnit;)J
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
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

    const-string/jumbo v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    return-object v0
.end method

.method public getUnits()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    sget-object v0, Ljava/time/chrono/ChronoPeriodImpl;->SUPPORTED_UNITS:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
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

.method public isNegative()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-ltz v2, :cond_a

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-gez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-ltz v2, :cond_a

    move v0, v1

    goto :goto_a
.end method

.method public isZero()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 166
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-nez v1, :cond_e

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v1, :cond_e

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .registers 9
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateAmount(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    .line 188
    .local v0, "amount":Ljava/time/chrono/ChronoPeriodImpl;
    new-instance v1, Ljava/time/chrono/ChronoPeriodImpl;

    .line 189
    iget-object v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    .line 190
    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v3, v4}, Ljava/lang/Math;->subtractExact(II)I

    move-result v3

    .line 191
    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v4, v5}, Ljava/lang/Math;->subtractExact(II)I

    move-result v4

    .line 192
    iget v5, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v5, v6}, Ljava/lang/Math;->subtractExact(II)I

    move-result v5

    .line 188
    invoke-direct {v1, v2, v3, v4, v5}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v1
.end method

.method public multipliedBy(I)Ljava/time/chrono/ChronoPeriod;
    .registers 7
    .param p1, "scalar"    # I

    .prologue
    .line 216
    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 217
    :cond_9
    return-object p0

    .line 219
    :cond_a
    new-instance v0, Ljava/time/chrono/ChronoPeriodImpl;

    .line 220
    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    .line 221
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v2, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    .line 222
    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v3, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v3

    .line 223
    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v4, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v4

    .line 219
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v0
.end method

.method public normalized()Ljava/time/chrono/ChronoPeriod;
    .registers 13

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 230
    .local v0, "monthRange":J
    const-wide/16 v8, 0x0

    cmp-long v3, v0, v8

    if-lez v3, :cond_32

    .line 231
    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v8, v3

    mul-long/2addr v8, v0

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v10, v3

    add-long v6, v8, v10

    .line 232
    .local v6, "totalMonths":J
    div-long v4, v6, v0

    .line 233
    .local v4, "splitYears":J
    rem-long v8, v6, v0

    long-to-int v2, v8

    .line 234
    .local v2, "splitMonths":I
    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v8, v3

    cmp-long v3, v4, v8

    if-nez v3, :cond_24

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-ne v2, v3, :cond_24

    .line 235
    return-object p0

    .line 237
    :cond_24
    new-instance v3, Ljava/time/chrono/ChronoPeriodImpl;

    iget-object v8, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v9

    iget v10, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-direct {v3, v8, v9, v2, v10}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v3

    .line 240
    .end local v2    # "splitMonths":I
    .end local v4    # "splitYears":J
    .end local v6    # "totalMonths":J
    :cond_32
    return-object p0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .registers 9
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateAmount(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    .line 178
    .local v0, "amount":Ljava/time/chrono/ChronoPeriodImpl;
    new-instance v1, Ljava/time/chrono/ChronoPeriodImpl;

    .line 179
    iget-object v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    .line 180
    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v3, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    .line 181
    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v4, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v4

    .line 182
    iget v5, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v5, v6}, Ljava/lang/Math;->addExact(II)I

    move-result v5

    .line 178
    invoke-direct {v1, v2, v3, v4, v5}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v1
.end method

.method public subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 8
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    .line 286
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v2, :cond_22

    .line 287
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_14

    .line 288
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 301
    :cond_14
    :goto_14
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v2, :cond_21

    .line 302
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 304
    :cond_21
    return-object p1

    .line 291
    :cond_22
    invoke-direct {p0}, Ljava/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 292
    .local v0, "monthRange":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3b

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

    goto :goto_14

    .line 295
    :cond_3b
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_48

    .line 296
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 298
    :cond_48
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_14
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 340
    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v2}, Ljava/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " P0D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 343
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v1, :cond_4e

    .line 346
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    :cond_4e
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-eqz v1, :cond_5d

    .line 349
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    :cond_5d
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v1, :cond_6c

    .line 352
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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

.method protected writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 373
    new-instance v0, Ljava/time/chrono/Ser;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
