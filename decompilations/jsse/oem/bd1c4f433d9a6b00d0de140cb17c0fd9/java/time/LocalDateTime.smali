.class public final Ljava/time/LocalDateTime;
.super Ljava/lang/Object;
.source "LocalDateTime.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/time/chrono/ChronoLocalDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/time/chrono/ChronoLocalDateTime",
        "<",
        "Ljava/time/LocalDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoUnitSwitchesValues:[I = null

.field public static final MAX:Ljava/time/LocalDateTime;

.field public static final MIN:Ljava/time/LocalDateTime;

.field private static final serialVersionUID:J = 0x56266aa6a95fff2eL


# instance fields
.field private final date:Ljava/time/LocalDate;

.field private final time:Ljava/time/LocalTime;


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoUnitSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/LocalDateTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/LocalDateTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_18} :catch_cc

    :goto_18
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_22} :catch_c9

    :goto_22
    :try_start_22
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_c6

    :goto_2c
    :try_start_2c
    sget-object v1, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_36} :catch_c3

    :goto_36
    :try_start_36
    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_40} :catch_c0

    :goto_40
    :try_start_40
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_49} :catch_be

    :goto_49
    :try_start_49
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_52} :catch_bc

    :goto_52
    :try_start_52
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5b} :catch_ba

    :goto_5b
    :try_start_5b
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_65} :catch_b8

    :goto_65
    :try_start_65
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6e} :catch_b6

    :goto_6e
    :try_start_6e
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_77} :catch_b4

    :goto_77
    :try_start_77
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_81} :catch_b2

    :goto_81
    :try_start_81
    sget-object v1, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8a} :catch_b0

    :goto_8a
    :try_start_8a
    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_93} :catch_ae

    :goto_93
    :try_start_93
    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_ac

    :goto_9d
    :try_start_9d
    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_aa

    :goto_a7
    sput-object v0, Ljava/time/LocalDateTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    return-object v0

    :catch_aa
    move-exception v1

    goto :goto_a7

    :catch_ac
    move-exception v1

    goto :goto_9d

    :catch_ae
    move-exception v1

    goto :goto_93

    :catch_b0
    move-exception v1

    goto :goto_8a

    :catch_b2
    move-exception v1

    goto :goto_81

    :catch_b4
    move-exception v1

    goto :goto_77

    :catch_b6
    move-exception v1

    goto :goto_6e

    :catch_b8
    move-exception v1

    goto :goto_65

    :catch_ba
    move-exception v1

    goto :goto_5b

    :catch_bc
    move-exception v1

    goto :goto_52

    :catch_be
    move-exception v1

    goto :goto_49

    :catch_c0
    move-exception v1

    goto/16 :goto_40

    :catch_c3
    move-exception v1

    goto/16 :goto_36

    :catch_c6
    move-exception v1

    goto/16 :goto_2c

    :catch_c9
    move-exception v1

    goto/16 :goto_22

    :catch_cc
    move-exception v1

    goto/16 :goto_18
.end method

.method static synthetic -java_time_LocalDateTime-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;
    .registers 2

    .prologue
    .line 486
    invoke-static {p0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 138
    sget-object v0, Ljava/time/LocalDate;->MIN:Ljava/time/LocalDate;

    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDateTime;->MIN:Ljava/time/LocalDateTime;

    .line 145
    sget-object v0, Ljava/time/LocalDate;->MAX:Ljava/time/LocalDate;

    sget-object v1, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    .line 129
    return-void
.end method

.method private constructor <init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V
    .registers 3
    .param p1, "date"    # Ljava/time/LocalDate;
    .param p2, "time"    # Ljava/time/LocalTime;

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    .line 498
    iput-object p2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    .line 499
    return-void
.end method

.method private compareTo0(Ljava/time/LocalDateTime;)I
    .registers 5
    .param p1, "other"    # Ljava/time/LocalDateTime;

    .prologue
    .line 1821
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v0

    .line 1822
    .local v0, "cmp":I
    if-nez v0, :cond_16

    .line 1823
    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v0

    .line 1825
    :cond_16
    return v0
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;
    .registers 7
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 442
    instance-of v3, p0, Ljava/time/LocalDateTime;

    if-eqz v3, :cond_7

    .line 443
    check-cast p0, Ljava/time/LocalDateTime;

    .end local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object p0

    .line 444
    .restart local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_7
    instance-of v3, p0, Ljava/time/ZonedDateTime;

    if-eqz v3, :cond_12

    .line 445
    check-cast p0, Ljava/time/ZonedDateTime;

    .end local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v3

    return-object v3

    .line 446
    .restart local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_12
    instance-of v3, p0, Ljava/time/OffsetDateTime;

    if-eqz v3, :cond_1d

    .line 447
    check-cast p0, Ljava/time/OffsetDateTime;

    .end local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v3

    return-object v3

    .line 450
    .restart local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_1d
    :try_start_1d
    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    .line 451
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p0}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v2

    .line 452
    .local v2, "time":Ljava/time/LocalTime;
    new-instance v3, Ljava/time/LocalDateTime;

    invoke-direct {v3, v0, v2}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V
    :try_end_2a
    .catch Ljava/time/DateTimeException; {:try_start_1d .. :try_end_2a} :catch_2b

    return-object v3

    .line 453
    .end local v0    # "date":Ljava/time/LocalDate;
    .end local v2    # "time":Ljava/time/LocalTime;
    :catch_2b
    move-exception v1

    .line 454
    .local v1, "ex":Ljava/time/DateTimeException;
    new-instance v3, Ljava/time/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to obtain LocalDateTime from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 455
    const-string/jumbo v5, " of type "

    .line 454
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 455
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 454
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static now()Ljava/time/LocalDateTime;
    .registers 1

    .prologue
    .line 174
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/LocalDateTime;
    .registers 6
    .param p0, "clock"    # Ljava/time/Clock;

    .prologue
    .line 204
    const-string/jumbo v2, "clock"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    .line 206
    .local v0, "now":Ljava/time/Instant;
    invoke-virtual {p0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 207
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 190
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIII)Ljava/time/LocalDateTime;
    .registers 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I

    .prologue
    .line 305
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    .line 306
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p3, p4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v1

    .line 307
    .local v1, "time":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static of(IIIIII)Ljava/time/LocalDateTime;
    .registers 9
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .prologue
    .line 330
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    .line 331
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p3, p4, p5}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v1

    .line 332
    .local v1, "time":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static of(IIIIIII)Ljava/time/LocalDateTime;
    .registers 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I

    .prologue
    .line 355
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    .line 356
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p3, p4, p5, p6}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v1

    .line 357
    .local v1, "time":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static of(ILjava/time/Month;III)Ljava/time/LocalDateTime;
    .registers 8
    .param p0, "year"    # I
    .param p1, "month"    # Ljava/time/Month;
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I

    .prologue
    .line 230
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    .line 231
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p3, p4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v1

    .line 232
    .local v1, "time":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static of(ILjava/time/Month;IIII)Ljava/time/LocalDateTime;
    .registers 9
    .param p0, "year"    # I
    .param p1, "month"    # Ljava/time/Month;
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .prologue
    .line 255
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    .line 256
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p3, p4, p5}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v1

    .line 257
    .local v1, "time":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static of(ILjava/time/Month;IIIII)Ljava/time/LocalDateTime;
    .registers 10
    .param p0, "year"    # I
    .param p1, "month"    # Ljava/time/Month;
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I

    .prologue
    .line 280
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    .line 281
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p3, p4, p5, p6}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v1

    .line 282
    .local v1, "time":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .registers 3
    .param p0, "date"    # Ljava/time/LocalDate;
    .param p1, "time"    # Ljava/time/LocalTime;

    .prologue
    .line 368
    const-string/jumbo v0, "date"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 369
    const-string/jumbo v0, "time"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    new-instance v0, Ljava/time/LocalDateTime;

    invoke-direct {v0, p0, p1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v0
.end method

.method public static ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;
    .registers 16
    .param p0, "epochSecond"    # J
    .param p2, "nanoOfSecond"    # I
    .param p3, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    const-wide/32 v10, 0x15180

    .line 411
    const-string/jumbo v7, "offset"

    invoke-static {p3, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 412
    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    int-to-long v8, p2

    invoke-virtual {v7, v8, v9}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 413
    invoke-virtual {p3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v7

    int-to-long v8, v7

    add-long v4, p0, v8

    .line 414
    .local v4, "localSecond":J
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    .line 415
    .local v2, "localEpochDay":J
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v8

    long-to-int v1, v8

    .line 416
    .local v1, "secsOfDay":I
    invoke-static {v2, v3}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 417
    .local v0, "date":Ljava/time/LocalDate;
    int-to-long v8, v1

    const-wide/32 v10, 0x3b9aca00

    mul-long/2addr v8, v10

    int-to-long v10, p2

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v6

    .line 418
    .local v6, "time":Ljava/time/LocalTime;
    new-instance v7, Ljava/time/LocalDateTime;

    invoke-direct {v7, v0, v6}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v7
.end method

.method public static ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;
    .registers 7
    .param p0, "instant"    # Ljava/time/Instant;
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 388
    const-string/jumbo v2, "instant"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 389
    const-string/jumbo v2, "zone"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    .line 391
    .local v1, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v1, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 392
    .local v0, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 471
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 485
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$2:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    .line 486
    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDateTime;

    return-object v0
.end method

.method private plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;
    .registers 29
    .param p1, "newDate"    # Ljava/time/LocalDate;
    .param p2, "hours"    # J
    .param p4, "minutes"    # J
    .param p6, "seconds"    # J
    .param p8, "nanos"    # J
    .param p10, "sign"    # I

    .prologue
    .line 1548
    or-long v12, p2, p4

    or-long v12, v12, p6

    or-long v12, v12, p8

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-nez v7, :cond_19

    .line 1549
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v7

    return-object v7

    .line 1551
    :cond_19
    const-wide v12, 0x4e94914f0000L

    div-long v12, p8, v12

    .line 1552
    const-wide/32 v14, 0x15180

    div-long v14, p6, v14

    .line 1551
    add-long/2addr v12, v14

    .line 1553
    const-wide/16 v14, 0x5a0

    div-long v14, p4, v14

    .line 1551
    add-long/2addr v12, v14

    .line 1554
    const-wide/16 v14, 0x18

    div-long v14, p2, v14

    .line 1551
    add-long v8, v12, v14

    .line 1555
    .local v8, "totDays":J
    move/from16 v0, p10

    int-to-long v12, v0

    mul-long/2addr v8, v12

    .line 1556
    const-wide v12, 0x4e94914f0000L

    rem-long v12, p8, v12

    .line 1557
    const-wide/32 v14, 0x15180

    rem-long v14, p6, v14

    const-wide/32 v16, 0x3b9aca00

    mul-long v14, v14, v16

    .line 1556
    add-long/2addr v12, v14

    .line 1558
    const-wide/16 v14, 0x5a0

    rem-long v14, p4, v14

    const-wide v16, 0xdf8475800L

    mul-long v14, v14, v16

    .line 1556
    add-long/2addr v12, v14

    .line 1559
    const-wide/16 v14, 0x18

    rem-long v14, p2, v14

    const-wide v16, 0x34630b8a000L

    mul-long v14, v14, v16

    .line 1556
    add-long v10, v12, v14

    .line 1560
    .local v10, "totNanos":J
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v7}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    .line 1561
    .local v2, "curNoD":J
    move/from16 v0, p10

    int-to-long v12, v0

    mul-long/2addr v12, v10

    add-long v10, v12, v2

    .line 1562
    const-wide v12, 0x4e94914f0000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v12

    add-long/2addr v8, v12

    .line 1563
    const-wide v12, 0x4e94914f0000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v4

    .line 1564
    .local v4, "newNoD":J
    cmp-long v7, v4, v2

    if-nez v7, :cond_96

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    .line 1565
    .local v6, "newTime":Ljava/time/LocalTime;
    :goto_89
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v7

    return-object v7

    .line 1564
    .end local v6    # "newTime":Ljava/time/LocalTime;
    :cond_96
    invoke-static {v4, v5}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v6

    .restart local v6    # "newTime":Ljava/time/LocalTime;
    goto :goto_89
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/LocalDateTime;
    .registers 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2002
    invoke-static {p0}, Ljava/time/LocalDate;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDate;

    move-result-object v0

    .line 2003
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p0}, Ljava/time/LocalTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalTime;

    move-result-object v1

    .line 2004
    .local v1, "time":Ljava/time/LocalTime;
    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    return-object v2
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
    .line 1993
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "newDate"    # Ljava/time/LocalDate;
    .param p2, "newTime"    # Ljava/time/LocalTime;

    .prologue
    .line 510
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    if-ne v0, p1, :cond_9

    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    if-ne v0, p2, :cond_9

    .line 511
    return-object p0

    .line 513
    :cond_9
    new-instance v0, Ljava/time/LocalDateTime;

    invoke-direct {v0, p1, p2}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1983
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 1623
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .registers 3
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 1760
    invoke-static {p0, p1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 1794
    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 3

    .prologue
    .line 1763
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1797
    check-cast p1, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1814
    .local p1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    instance-of v0, p1, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_b

    .line 1815
    check-cast p1, Ljava/time/LocalDateTime;

    .end local p1    # "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-direct {p0, p1}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v0

    return v0

    .line 1817
    .restart local p1    # "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    :cond_b
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1927
    if-ne p0, p1, :cond_5

    .line 1928
    const/4 v1, 0x1

    return v1

    .line 1930
    :cond_5
    instance-of v2, p1, Ljava/time/LocalDateTime;

    if-eqz v2, :cond_1f

    move-object v0, p1

    .line 1931
    check-cast v0, Ljava/time/LocalDateTime;

    .line 1932
    .local v0, "other":Ljava/time/LocalDateTime;
    iget-object v2, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    iget-object v3, v0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    iget-object v2, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1e
    return v1

    .line 1934
    .end local v0    # "other":Ljava/time/LocalDateTime;
    :cond_1f
    return v1
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 1745
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1746
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 680
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1b

    move-object v0, p1

    .line 681
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 682
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    :goto_13
    return v1

    :cond_14
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    goto :goto_13

    .line 684
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_1b
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    return v1
.end method

.method public getDayOfMonth()I
    .registers 2

    .prologue
    .line 784
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Ljava/time/DayOfWeek;
    .registers 2

    .prologue
    .line 812
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .registers 2

    .prologue
    .line 795
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .registers 2

    .prologue
    .line 835
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 712
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1b

    move-object v0, p1

    .line 713
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 714
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    :goto_13
    return-wide v2

    :cond_14
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    goto :goto_13

    .line 716
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_1b
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getMinute()I
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Ljava/time/Month;
    .registers 2

    .prologue
    .line 773
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .registers 2

    .prologue
    .line 862
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getSecond()I
    .registers 2

    .prologue
    .line 853
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1944
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    const/4 v0, 0x0

    .line 1851
    instance-of v1, p1, Ljava/time/LocalDateTime;

    if-eqz v1, :cond_f

    .line 1852
    check-cast p1, Ljava/time/LocalDateTime;

    .end local p1    # "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-direct {p0, p1}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 1854
    .restart local p1    # "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    :cond_f
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    const/4 v0, 0x0

    .line 1880
    instance-of v1, p1, Ljava/time/LocalDateTime;

    if-eqz v1, :cond_f

    .line 1881
    check-cast p1, Ljava/time/LocalDateTime;

    .end local p1    # "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-direct {p0, p1}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v1

    if-gez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 1883
    .restart local p1    # "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    :cond_f
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    const/4 v0, 0x0

    .line 1909
    instance-of v1, p1, Ljava/time/LocalDateTime;

    if-eqz v1, :cond_f

    .line 1910
    check-cast p1, Ljava/time/LocalDateTime;

    .end local p1    # "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-direct {p0, p1}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 1912
    .restart local p1    # "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    :cond_f
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->isEqual(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 569
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 570
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 571
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isDateBased()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x1

    goto :goto_11

    .line 573
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_14
    if-eqz p1, :cond_1b

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v1

    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 3
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 614
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->isSupported(Ljava/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;
    .registers 9
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 1389
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_15
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;
    .registers 5
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 1360
    instance-of v1, p1, Ljava/time/Period;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 1361
    check-cast v0, Ljava/time/Period;

    .line 1362
    .local v0, "periodToSubtract":Ljava/time/Period;
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, v0}, Ljava/time/LocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1364
    .end local v0    # "periodToSubtract":Ljava/time/Period;
    :cond_14
    const-string/jumbo v1, "amountToSubtract"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1365
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDateTime;

    return-object v1
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 5

    .prologue
    .line 1368
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 3

    .prologue
    .line 1337
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 1368
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 1337
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(J)Ljava/time/LocalDateTime;
    .registers 8
    .param p1, "days"    # J

    .prologue
    .line 1476
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_15
.end method

.method public minusHours(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "hours"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 1490
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMinutes(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "minutes"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1503
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMonths(J)Ljava/time/LocalDateTime;
    .registers 8
    .param p1, "months"    # J

    .prologue
    .line 1438
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_15
.end method

.method public minusNanos(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "nanos"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1529
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1516
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    move-wide v8, v2

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusWeeks(J)Ljava/time/LocalDateTime;
    .registers 8
    .param p1, "weeks"    # J

    .prologue
    .line 1457
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_15
.end method

.method public minusYears(J)Ljava/time/LocalDateTime;
    .registers 8
    .param p1, "years"    # J

    .prologue
    .line 1414
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_15
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;
    .registers 15
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    const-wide v8, 0x141dd76000L

    const-wide/32 v6, 0x5265c00

    const-wide/16 v4, 0x100

    .line 1177
    instance-of v1, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_70

    move-object v0, p3

    .line 1178
    check-cast v0, Ljava/time/temporal/ChronoUnit;

    .line 1179
    .local v0, "f":Ljava/time/temporal/ChronoUnit;
    invoke-static {}, Ljava/time/LocalDateTime;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_78

    .line 1188
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1180
    :pswitch_2b
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1181
    :pswitch_30
    div-long v2, p1, v8

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    rem-long v2, p1, v8

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1182
    :pswitch_40
    div-long v2, p1, v6

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    rem-long v2, p1, v6

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1183
    :pswitch_51
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1184
    :pswitch_56
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1185
    :pswitch_5b
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1186
    :pswitch_60
    div-long v2, p1, v4

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    rem-long v2, p1, v4

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1190
    .end local v0    # "f":Ljava/time/temporal/ChronoUnit;
    :cond_70
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDateTime;

    return-object v1

    .line 1179
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5b
        :pswitch_30
        :pswitch_40
        :pswitch_56
        :pswitch_2b
        :pswitch_51
    .end packed-switch
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;
    .registers 5
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 1141
    instance-of v1, p1, Ljava/time/Period;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 1142
    check-cast v0, Ljava/time/Period;

    .line 1143
    .local v0, "periodToAdd":Ljava/time/Period;
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, v0}, Ljava/time/LocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1145
    .end local v0    # "periodToAdd":Ljava/time/Period;
    :cond_14
    const-string/jumbo v1, "amountToAdd"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1146
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDateTime;

    return-object v1
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 5

    .prologue
    .line 1149
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 3

    .prologue
    .line 1118
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 1149
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 1118
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Ljava/time/LocalDateTime;
    .registers 6
    .param p1, "days"    # J

    .prologue
    .line 1280
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 1281
    .local v0, "newDate":Ljava/time/LocalDate;
    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusHours(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "hours"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 1295
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "minutes"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1308
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Ljava/time/LocalDateTime;
    .registers 6
    .param p1, "months"    # J

    .prologue
    .line 1240
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 1241
    .local v0, "newDate":Ljava/time/LocalDate;
    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusNanos(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "nanos"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1334
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1321
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    move-wide v8, v2

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusWeeks(J)Ljava/time/LocalDateTime;
    .registers 6
    .param p1, "weeks"    # J

    .prologue
    .line 1260
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 1261
    .local v0, "newDate":Ljava/time/LocalDate;
    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusYears(J)Ljava/time/LocalDateTime;
    .registers 6
    .param p1, "years"    # J

    .prologue
    .line 1215
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 1216
    .local v0, "newDate":Ljava/time/LocalDate;
    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 1590
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 1591
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    return-object v0

    .line 1593
    :cond_9
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 643
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1b

    move-object v0, p1

    .line 644
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 645
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    :goto_13
    return-object v1

    :cond_14
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    goto :goto_13

    .line 647
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_1b
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1
.end method

.method public toLocalDate()Ljava/time/LocalDate;
    .registers 2

    .prologue
    .line 730
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic toLocalDate()Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .prologue
    .line 719
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalTime()Ljava/time/LocalTime;
    .registers 2

    .prologue
    .line 826
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 1115
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 13
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 1677
    invoke-static {p1}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 1678
    .local v2, "end":Ljava/time/LocalDateTime;
    instance-of v6, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v6, :cond_f0

    .line 1679
    invoke-interface {p2}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 1680
    iget-object v6, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    iget-object v7, v2, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v6, v7}, Ljava/time/LocalDate;->daysUntil(Ljava/time/LocalDate;)J

    move-result-wide v0

    .line 1681
    .local v0, "amount":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_25

    .line 1682
    iget-object v6, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    iget-object v7, v2, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v6, v7, p2}, Ljava/time/LocalTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v6

    return-wide v6

    .line 1684
    :cond_25
    iget-object v6, v2, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v6}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    iget-object v8, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v8}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 1685
    .local v4, "timePart":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_56

    .line 1686
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    .line 1687
    const-wide v6, 0x4e94914f0000L

    add-long/2addr v4, v6

    .line 1692
    :goto_42
    invoke-static {}, Ljava/time/LocalDateTime;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v6

    check-cast p2, Ljava/time/temporal/ChronoUnit;

    .end local p2    # "unit":Ljava/time/temporal/TemporalUnit;
    invoke-virtual {p2}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_f6

    .line 1721
    :goto_51
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v6

    return-wide v6

    .line 1689
    .restart local p2    # "unit":Ljava/time/temporal/TemporalUnit;
    :cond_56
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 1690
    const-wide v6, 0x4e94914f0000L

    sub-long/2addr v4, v6

    goto :goto_42

    .line 1694
    .end local p2    # "unit":Ljava/time/temporal/TemporalUnit;
    :pswitch_60
    const-wide v6, 0x4e94914f0000L

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_51

    .line 1697
    :pswitch_6a
    const-wide v6, 0x141dd76000L

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    .line 1698
    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    goto :goto_51

    .line 1701
    :pswitch_77
    const-wide/32 v6, 0x5265c00

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    .line 1702
    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    goto :goto_51

    .line 1705
    :pswitch_83
    const-wide/32 v6, 0x15180

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    .line 1706
    const-wide/32 v6, 0x3b9aca00

    div-long/2addr v4, v6

    goto :goto_51

    .line 1709
    :pswitch_8f
    const-wide/16 v6, 0x5a0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    .line 1710
    const-wide v6, 0xdf8475800L

    div-long/2addr v4, v6

    goto :goto_51

    .line 1713
    :pswitch_9c
    const-wide/16 v6, 0x18

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    .line 1714
    const-wide v6, 0x34630b8a000L

    div-long/2addr v4, v6

    goto :goto_51

    .line 1717
    :pswitch_a9
    const-wide/16 v6, 0x2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    .line 1718
    const-wide v6, 0x274a48a78000L

    div-long/2addr v4, v6

    goto :goto_51

    .line 1723
    .end local v0    # "amount":J
    .end local v4    # "timePart":J
    .restart local p2    # "unit":Ljava/time/temporal/TemporalUnit;
    :cond_b6
    iget-object v3, v2, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    .line 1724
    .local v3, "endDate":Ljava/time/LocalDate;
    iget-object v6, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v3, v6}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v6

    if-eqz v6, :cond_d7

    iget-object v6, v2, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    iget-object v7, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v6, v7}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 1725
    const-wide/16 v6, 0x1

    invoke-virtual {v3, v6, v7}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v3

    .line 1729
    :cond_d0
    :goto_d0
    iget-object v6, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v6, v3, p2}, Ljava/time/LocalDate;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v6

    return-wide v6

    .line 1726
    :cond_d7
    iget-object v6, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v3, v6}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v6

    if-eqz v6, :cond_d0

    iget-object v6, v2, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    iget-object v7, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v6, v7}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v6

    if-eqz v6, :cond_d0

    .line 1727
    const-wide/16 v6, 0x1

    invoke-virtual {v3, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v3

    goto :goto_d0

    .line 1731
    .end local v3    # "endDate":Ljava/time/LocalDate;
    :cond_f0
    invoke-interface {p2, p0, v2}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v6

    return-wide v6

    .line 1692
    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_a9
        :pswitch_9c
        :pswitch_6a
        :pswitch_77
        :pswitch_8f
        :pswitch_60
        :pswitch_83
    .end packed-switch
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .prologue
    .line 913
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_d

    .line 914
    check-cast p1, Ljava/time/LocalDate;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, p1, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 915
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_d
    instance-of v0, p1, Ljava/time/LocalTime;

    if-eqz v0, :cond_1a

    .line 916
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    check-cast p1, Ljava/time/LocalTime;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    invoke-direct {p0, v0, p1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 917
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_1a
    instance-of v0, p1, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_21

    .line 918
    check-cast p1, Ljava/time/LocalDateTime;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    return-object p1

    .line 920
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_21
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 959
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_27

    move-object v0, p1

    .line 960
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 961
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 962
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, p1, p2, p3}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 964
    :cond_1a
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 967
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_27
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDateTime;

    return-object v1
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 3

    .prologue
    .line 865
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 6

    .prologue
    .line 923
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 865
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 6

    .prologue
    .line 923
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfMonth(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 1017
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->withDayOfMonth(I)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "dayOfYear"    # I

    .prologue
    .line 1033
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->withDayOfYear(I)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withHour(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "hour"    # I

    .prologue
    .line 1047
    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->withHour(I)Ljava/time/LocalTime;

    move-result-object v0

    .line 1048
    .local v0, "newTime":Ljava/time/LocalTime;
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withMinute(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "minute"    # I

    .prologue
    .line 1061
    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->withMinute(I)Ljava/time/LocalTime;

    move-result-object v0

    .line 1062
    .local v0, "newTime":Ljava/time/LocalTime;
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withMonth(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "month"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->withMonth(I)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "nanoOfSecond"    # I

    .prologue
    .line 1089
    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v0

    .line 1090
    .local v0, "newTime":Ljava/time/LocalTime;
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withSecond(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "second"    # I

    .prologue
    .line 1075
    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->withSecond(I)Ljava/time/LocalTime;

    move-result-object v0

    .line 1076
    .local v0, "newTime":Ljava/time/LocalTime;
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withYear(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "year"    # I

    .prologue
    .line 984
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
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
    .line 1997
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 1998
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1999
    return-void
.end method
