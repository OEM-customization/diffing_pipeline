.class final Ljava/time/chrono/ChronoLocalDateTimeImpl;
.super Ljava/lang/Object;
.source "ChronoLocalDateTimeImpl.java"

# interfaces
.implements Ljava/time/chrono/ChronoLocalDateTime;
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
        "Ljava/time/chrono/ChronoLocalDateTime",
        "<TD;>;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoUnitSwitchesValues:[I = null

.field static final HOURS_PER_DAY:I = 0x18

.field static final MICROS_PER_DAY:J = 0x141dd76000L

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field static final SECONDS_PER_DAY:I = 0x15180

.field static final SECONDS_PER_HOUR:I = 0xe10

.field static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x3f3a2d24660eebe2L


# instance fields
.field private final transient date:Ljava/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final transient time:Ljava/time/LocalTime;


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoUnitSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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
    sput-object v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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

.method private constructor <init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)V
    .registers 4
    .param p2, "time"    # Ljava/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/time/LocalTime;",
            ")V"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    .local p1, "date":Ljava/time/chrono/ChronoLocalDate;, "TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const-string/jumbo v0, "date"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    const-string/jumbo v0, "time"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    iput-object p1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    .line 206
    iput-object p2, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    .line 207
    return-void
.end method

.method static ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 6
    .param p0, "chrono"    # Ljava/time/chrono/Chronology;
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">(",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/temporal/Temporal;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TR;>;"
        }
    .end annotation

    .prologue
    move-object v0, p1

    .line 188
    check-cast v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    .line 189
    .local v0, "other":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TR;>;"
    invoke-virtual {v0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 190
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Chronology mismatch, required: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 191
    const-string/jumbo v3, ", actual: "

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 191
    invoke-virtual {v0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_3e
    return-object v0
.end method

.method static of(Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 3
    .param p1, "time"    # Ljava/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">(TR;",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "date":Ljava/time/chrono/ChronoLocalDate;, "TR;"
    new-instance v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-direct {v0, p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)V

    return-object v0
.end method

.method private plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 6
    .param p1, "days"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusHours(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 14
    .param p1, "hours"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const-wide/16 v4, 0x0

    .line 326
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    move-object v0, p0

    move-wide v2, p1

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v9}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusMinutes(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 14
    .param p1, "minutes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const-wide/16 v2, 0x0

    .line 330
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v0 .. v9}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 14
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const-wide/16 v2, 0x0

    .line 338
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, p1

    invoke-direct/range {v0 .. v9}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 28
    .param p2, "hours"    # J
    .param p4, "minutes"    # J
    .param p6, "seconds"    # J
    .param p8, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;JJJJ)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    .local p1, "newDate":Ljava/time/chrono/ChronoLocalDate;, "TD;"
    or-long v12, p2, p4

    or-long v12, v12, p6

    or-long v12, v12, p8

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-nez v7, :cond_19

    .line 345
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v7

    return-object v7

    .line 347
    :cond_19
    const-wide v12, 0x4e94914f0000L

    div-long v12, p8, v12

    .line 348
    const-wide/32 v14, 0x15180

    div-long v14, p6, v14

    .line 347
    add-long/2addr v12, v14

    .line 349
    const-wide/16 v14, 0x5a0

    div-long v14, p4, v14

    .line 347
    add-long/2addr v12, v14

    .line 350
    const-wide/16 v14, 0x18

    div-long v14, p2, v14

    .line 347
    add-long v8, v12, v14

    .line 351
    .local v8, "totDays":J
    const-wide v12, 0x4e94914f0000L

    rem-long v12, p8, v12

    .line 352
    const-wide/32 v14, 0x15180

    rem-long v14, p6, v14

    const-wide/32 v16, 0x3b9aca00

    mul-long v14, v14, v16

    .line 351
    add-long/2addr v12, v14

    .line 353
    const-wide/16 v14, 0x5a0

    rem-long v14, p4, v14

    const-wide v16, 0xdf8475800L

    mul-long v14, v14, v16

    .line 351
    add-long/2addr v12, v14

    .line 354
    const-wide/16 v14, 0x18

    rem-long v14, p2, v14

    const-wide v16, 0x34630b8a000L

    mul-long v14, v14, v16

    .line 351
    add-long v10, v12, v14

    .line 355
    .local v10, "totNanos":J
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v7}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    .line 356
    .local v2, "curNoD":J
    add-long/2addr v10, v2

    .line 357
    const-wide v12, 0x4e94914f0000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v12

    add-long/2addr v8, v12

    .line 358
    const-wide v12, 0x4e94914f0000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v4

    .line 359
    .local v4, "newNoD":J
    cmp-long v7, v4, v2

    if-nez v7, :cond_8f

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    .line 360
    .local v6, "newTime":Ljava/time/LocalTime;
    :goto_80
    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9, v7}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v7

    return-object v7

    .line 359
    .end local v6    # "newTime":Ljava/time/LocalTime;
    :cond_8f
    invoke-static {v4, v5}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v6

    .restart local v6    # "newTime":Ljava/time/LocalTime;
    goto :goto_80
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 4
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDate;

    .line 433
    .local v0, "date":Ljava/time/chrono/ChronoLocalDate;
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/LocalTime;

    .line 434
    .local v1, "time":Ljava/time/LocalTime;
    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

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
    .line 423
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 5
    .param p1, "newDate"    # Ljava/time/temporal/Temporal;
    .param p2, "newTime"    # Ljava/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/Temporal;",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    if-ne v1, p1, :cond_9

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    if-ne v1, p2, :cond_9

    .line 219
    return-object p0

    .line 222
    :cond_9
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 223
    .local v0, "cd":Ljava/time/chrono/ChronoLocalDate;, "TD;"
    new-instance v1, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-direct {v1, v0, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)V

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 413
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 471
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    check-cast p1, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 440
    if-ne p0, p1, :cond_5

    .line 441
    return v0

    .line 443
    :cond_5
    instance-of v2, p1, Ljava/time/chrono/ChronoLocalDateTime;

    if-eqz v2, :cond_14

    .line 444
    check-cast p1, Ljava/time/chrono/ChronoLocalDateTime;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v2

    if-nez v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11

    .line 446
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_14
    return v1
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 258
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1b

    move-object v0, p1

    .line 259
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 260
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    :goto_13
    return v1

    :cond_14
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    goto :goto_13

    .line 262
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_1b
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    return v1
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 267
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1b

    move-object v0, p1

    .line 268
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 269
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    :goto_13
    return-wide v2

    :cond_14
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    goto :goto_13

    .line 271
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_1b
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    return-wide v2
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 451
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 240
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 241
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 242
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

    .line 244
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

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 305
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 295
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 5

    .prologue
    .line 302
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 15
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const-wide v8, 0x141dd76000L

    const-wide/32 v6, 0x5265c00

    const-wide/16 v4, 0x100

    .line 305
    instance-of v1, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_70

    move-object v0, p3

    .line 306
    check-cast v0, Ljava/time/temporal/ChronoUnit;

    .line 307
    .local v0, "f":Ljava/time/temporal/ChronoUnit;
    invoke-static {}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_80

    .line 316
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 308
    :pswitch_2b
    invoke-direct {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 309
    :pswitch_30
    div-long v2, p1, v8

    invoke-direct {p0, v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    rem-long v2, p1, v8

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 310
    :pswitch_40
    div-long v2, p1, v6

    invoke-direct {p0, v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    rem-long v2, p1, v6

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 311
    :pswitch_51
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 312
    :pswitch_56
    invoke-direct {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusMinutes(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 313
    :pswitch_5b
    invoke-direct {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 314
    :pswitch_60
    div-long v2, p1, v4

    invoke-direct {p0, v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    rem-long v2, p1, v4

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 318
    .end local v0    # "f":Ljava/time/temporal/ChronoUnit;
    :cond_70
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 307
    nop

    :pswitch_data_80
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

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 302
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 277
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method plusSeconds(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 14
    .param p1, "seconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const-wide/16 v2, 0x0

    .line 334
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    move-wide v8, v2

    invoke-direct/range {v0 .. v9}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 249
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1b

    move-object v0, p1

    .line 250
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 251
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    :goto_13
    return-object v1

    :cond_14
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    goto :goto_13

    .line 253
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_1b
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1
.end method

.method public toLocalDate()Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    return-object v0
.end method

.method public toLocalTime()Ljava/time/LocalTime;
    .registers 2

    .prologue
    .line 234
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 456
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 11
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 372
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const-string/jumbo v4, "endExclusive"

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 374
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/time/chrono/Chronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    .line 375
    .local v2, "end":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    instance-of v4, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v4, :cond_9f

    .line 376
    invoke-interface {p2}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 377
    sget-object v4, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Ljava/time/chrono/ChronoLocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    iget-object v6, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    sget-object v7, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 378
    .local v0, "amount":J
    invoke-static {}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v5

    move-object v4, p2

    check-cast v4, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_aa

    .line 387
    :goto_38
    iget-object v4, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-interface {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/time/LocalTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    return-wide v4

    .line 379
    :pswitch_47
    const-wide v4, 0x4e94914f0000L

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_38

    .line 380
    :pswitch_51
    const-wide v4, 0x141dd76000L

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_38

    .line 381
    :pswitch_5b
    const-wide/32 v4, 0x5265c00

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_38

    .line 382
    :pswitch_63
    const-wide/32 v4, 0x15180

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_38

    .line 383
    :pswitch_6b
    const-wide/16 v4, 0x5a0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_38

    .line 384
    :pswitch_72
    const-wide/16 v4, 0x18

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_38

    .line 385
    :pswitch_79
    const-wide/16 v4, 0x2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_38

    .line 389
    .end local v0    # "amount":J
    :cond_80
    invoke-interface {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v3

    .line 390
    .local v3, "endDate":Ljava/time/chrono/ChronoLocalDate;
    invoke-interface {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    iget-object v5, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v4, v5}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 391
    const-wide/16 v4, 0x1

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/chrono/ChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v3

    .line 393
    :cond_98
    iget-object v4, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v4, v3, p2}, Ljava/time/chrono/ChronoLocalDate;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    return-wide v4

    .line 395
    .end local v3    # "endDate":Ljava/time/chrono/ChronoLocalDate;
    :cond_9f
    const-string/jumbo v4, "unit"

    invoke-static {p2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 396
    invoke-interface {p2, p0, v2}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v4

    return-wide v4

    .line 378
    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_79
        :pswitch_72
        :pswitch_51
        :pswitch_5b
        :pswitch_6b
        :pswitch_47
        :pswitch_63
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 3

    .prologue
    .line 274
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 6

    .prologue
    .line 289
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 4
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAdjuster;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_d

    .line 280
    check-cast p1, Ljava/time/chrono/ChronoLocalDate;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {p0, p1, v0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    .line 281
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_d
    instance-of v0, p1, Ljava/time/LocalTime;

    if-eqz v0, :cond_1a

    .line 282
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    check-cast p1, Ljava/time/LocalTime;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    invoke-direct {p0, v0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    .line 283
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_1a
    instance-of v0, p1, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    if-eqz v0, :cond_2b

    .line 284
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    check-cast p1, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    invoke-static {v0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    .line 286
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_2b
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-static {v1, v0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_27

    move-object v0, p1

    .line 292
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 293
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 294
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v2, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, p1, p2, p3}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 296
    :cond_1a
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 299
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_27
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 274
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 6

    .prologue
    .line 289
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 428
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 429
    return-void
.end method
