.class abstract Ljava/time/chrono/ChronoLocalDateImpl;
.super Ljava/lang/Object;
.source "ChronoLocalDateImpl.java"

# interfaces
.implements Ljava/time/chrono/ChronoLocalDate;
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/time/chrono/ChronoLocalDate;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/time/chrono/ChronoLocalDate;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoUnitSwitchesValues:[I = null

.field private static final serialVersionUID:J = 0x572fb054bf61a0b8L


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoUnitSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/chrono/ChronoLocalDateImpl;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/chrono/ChronoLocalDateImpl;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljava/time/temporal/ChronoUnit;->values()[Ljava/time/temporal/ChronoUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_cc

    :goto_17
    :try_start_17
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_c9

    :goto_20
    :try_start_20
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_c6

    :goto_29
    :try_start_29
    sget-object v1, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_c3

    :goto_32
    :try_start_32
    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_c0

    :goto_3c
    :try_start_3c
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_be

    :goto_46
    :try_start_46
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_bc

    :goto_50
    :try_start_50
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_ba

    :goto_5a
    :try_start_5a
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_63} :catch_b8

    :goto_63
    :try_start_63
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6d} :catch_b6

    :goto_6d
    :try_start_6d
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_77} :catch_b4

    :goto_77
    :try_start_77
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_80} :catch_b2

    :goto_80
    :try_start_80
    sget-object v1, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8a} :catch_b0

    :goto_8a
    :try_start_8a
    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_94} :catch_ae

    :goto_94
    :try_start_94
    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9d} :catch_ac

    :goto_9d
    :try_start_9d
    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_aa

    :goto_a7
    sput-object v0, Ljava/time/chrono/ChronoLocalDateImpl;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    return-object v0

    :catch_aa
    move-exception v1

    goto :goto_a7

    :catch_ac
    move-exception v1

    goto :goto_9d

    :catch_ae
    move-exception v1

    goto :goto_94

    :catch_b0
    move-exception v1

    goto :goto_8a

    :catch_b2
    move-exception v1

    goto :goto_80

    :catch_b4
    move-exception v1

    goto :goto_77

    :catch_b6
    move-exception v1

    goto :goto_6d

    :catch_b8
    move-exception v1

    goto :goto_63

    :catch_ba
    move-exception v1

    goto :goto_5a

    :catch_bc
    move-exception v1

    goto :goto_50

    :catch_be
    move-exception v1

    goto :goto_46

    :catch_c0
    move-exception v1

    goto/16 :goto_3c

    :catch_c3
    move-exception v1

    goto/16 :goto_32

    :catch_c6
    move-exception v1

    goto/16 :goto_29

    :catch_c9
    move-exception v1

    goto/16 :goto_20

    :catch_cc
    move-exception v1

    goto/16 :goto_17
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 173
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method private daysUntil(Ljava/time/chrono/ChronoLocalDate;)J
    .registers 6
    .param p1, "end"    # Ljava/time/chrono/ChronoLocalDate;

    .prologue
    .line 397
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->toEpochDay()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDate;
    .registers 6
    .param p0, "chrono"    # Ljava/time/chrono/Chronology;
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">(",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/temporal/Temporal;",
            ")TD;"
        }
    .end annotation

    .prologue
    move-object v0, p1

    .line 162
    check-cast v0, Ljava/time/chrono/ChronoLocalDate;

    .line 163
    .local v0, "other":Ljava/time/chrono/ChronoLocalDate;, "TD;"
    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 164
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Chronology mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_3e
    return-object v0
.end method

.method private monthsUntil(Ljava/time/chrono/ChronoLocalDate;)J
    .registers 14
    .param p1, "end"    # Ljava/time/chrono/ChronoLocalDate;

    .prologue
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/16 v10, 0x20

    .line 401
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v5

    sget-object v6, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Ljava/time/chrono/Chronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    .line 402
    .local v4, "range":Ljava/time/temporal/ValueRange;
    invoke-virtual {v4}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    const-wide/16 v8, 0xc

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1f

    .line 403
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "ChronoLocalDateImpl only supports Chronologies with 12 months per year"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 405
    :cond_1f
    sget-object v5, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v5}, Ljava/time/chrono/ChronoLocalDateImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    mul-long/2addr v6, v10

    sget-object v5, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v5}, Ljava/time/chrono/ChronoLocalDateImpl;->get(Ljava/time/temporal/TemporalField;)I

    move-result v5

    int-to-long v8, v5

    add-long v0, v6, v8

    .line 406
    .local v0, "packed1":J
    sget-object v5, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    mul-long/2addr v6, v10

    sget-object v5, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v5

    int-to-long v8, v5

    add-long v2, v6, v8

    .line 407
    .local v2, "packed2":J
    sub-long v6, v2, v0

    div-long/2addr v6, v10

    return-wide v6
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 673
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    check-cast p1, Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 412
    if-ne p0, p1, :cond_5

    .line 413
    return v0

    .line 415
    :cond_5
    instance-of v2, p1, Ljava/time/chrono/ChronoLocalDate;

    if-eqz v2, :cond_14

    .line 416
    check-cast p1, Ljava/time/chrono/ChronoLocalDate;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v2

    if-nez v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11

    .line 418
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_14
    return v1
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 423
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->toEpochDay()J

    move-result-wide v0

    .line 424
    .local v0, "epDay":J
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v2}, Ljava/time/chrono/Chronology;->hashCode()I

    move-result v2

    const/16 v3, 0x20

    ushr-long v4, v0, v3

    xor-long/2addr v4, v0

    long-to-int v3, v4

    xor-int/2addr v2, v3

    return v2
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 5
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAmount;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 222
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 216
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method minusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 8
    .param p1, "daysToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_18

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_17
.end method

.method minusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 8
    .param p1, "monthsToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_18

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_17
.end method

.method minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 8
    .param p1, "weeksToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_18

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_17
.end method

.method minusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 8
    .param p1, "yearsToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_18

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_17
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 9
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    instance-of v1, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_7a

    move-object v0, p3

    .line 200
    check-cast v0, Ljava/time/temporal/ChronoUnit;

    .line 201
    .local v0, "f":Ljava/time/temporal/ChronoUnit;
    invoke-static {}, Ljava/time/chrono/ChronoLocalDateImpl;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_80

    .line 211
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :pswitch_2e
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 203
    :pswitch_33
    const-wide/16 v2, 0x7

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 204
    :pswitch_3e
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 205
    :pswitch_43
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 206
    :pswitch_48
    const-wide/16 v2, 0xa

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 207
    :pswitch_53
    const-wide/16 v2, 0x64

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 208
    :pswitch_5e
    const-wide/16 v2, 0x3e8

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 209
    :pswitch_69
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/ChronoLocalDateImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 213
    .end local v0    # "f":Ljava/time/temporal/ChronoUnit;
    :cond_7a
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 201
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_53
        :pswitch_2e
        :pswitch_48
        :pswitch_69
        :pswitch_5e
        :pswitch_3e
        :pswitch_33
        :pswitch_43
    .end packed-switch
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAmount;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 195
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 188
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method abstract plusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation
.end method

.method abstract plusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation
.end method

.method plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 6
    .param p1, "weeksToAdd"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/16 v0, 0x7

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method abstract plusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    .prologue
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/16 v10, 0xa

    .line 430
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    .line 431
    .local v6, "yoe":J
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    .line 432
    .local v4, "moy":J
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    .line 433
    .local v2, "dom":J
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 434
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 435
    const-string/jumbo v8, " "

    .line 434
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 436
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->getEra()Ljava/time/chrono/Era;

    move-result-object v8

    .line 434
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 437
    const-string/jumbo v8, " "

    .line 434
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 439
    cmp-long v1, v4, v10

    if-gez v1, :cond_63

    const-string/jumbo v1, "-0"

    .line 434
    :goto_48
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 440
    cmp-long v1, v2, v10

    if-gez v1, :cond_67

    const-string/jumbo v1, "-0"

    .line 434
    :goto_57
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 439
    :cond_63
    const-string/jumbo v1, "-"

    goto :goto_48

    .line 440
    :cond_67
    const-string/jumbo v1, "-"

    goto :goto_57
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 9
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 377
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-string/jumbo v1, "endExclusive"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 379
    .local v0, "end":Ljava/time/chrono/ChronoLocalDate;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_7c

    .line 380
    invoke-static {}, Ljava/time/chrono/ChronoLocalDateImpl;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v2

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_88

    .line 390
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :pswitch_3c
    invoke-direct {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->daysUntil(Ljava/time/chrono/ChronoLocalDate;)J

    move-result-wide v2

    return-wide v2

    .line 382
    :pswitch_41
    invoke-direct {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->daysUntil(Ljava/time/chrono/ChronoLocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x7

    div-long/2addr v2, v4

    return-wide v2

    .line 383
    :pswitch_49
    invoke-direct {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljava/time/chrono/ChronoLocalDate;)J

    move-result-wide v2

    return-wide v2

    .line 384
    :pswitch_4e
    invoke-direct {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljava/time/chrono/ChronoLocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0xc

    div-long/2addr v2, v4

    return-wide v2

    .line 385
    :pswitch_56
    invoke-direct {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljava/time/chrono/ChronoLocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x78

    div-long/2addr v2, v4

    return-wide v2

    .line 386
    :pswitch_5e
    invoke-direct {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljava/time/chrono/ChronoLocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x4b0

    div-long/2addr v2, v4

    return-wide v2

    .line 387
    :pswitch_66
    invoke-direct {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljava/time/chrono/ChronoLocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x2ee0

    div-long/2addr v2, v4

    return-wide v2

    .line 388
    :pswitch_6e
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2

    .line 392
    :cond_7c
    const-string/jumbo v1, "unit"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 393
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v2

    return-wide v2

    .line 380
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_3c
        :pswitch_56
        :pswitch_6e
        :pswitch_66
        :pswitch_49
        :pswitch_41
        :pswitch_4e
    .end packed-switch
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAdjuster;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "J)TD;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 176
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 6

    .prologue
    .line 182
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method
