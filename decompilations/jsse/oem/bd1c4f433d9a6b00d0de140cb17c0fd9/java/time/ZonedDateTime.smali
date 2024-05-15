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
        "Ljava/time/chrono/ChronoZonedDateTime",
        "<",
        "Ljava/time/LocalDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field private static final serialVersionUID:J = -0x56e37a54888537c2L


# instance fields
.field private final dateTime:Ljava/time/LocalDateTime;

.field private final offset:Ljava/time/ZoneOffset;

.field private final zone:Ljava/time/ZoneId;


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/ZonedDateTime;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/ZonedDateTime;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljava/time/temporal/ChronoField;->values()[Ljava/time/temporal/ChronoField;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_182

    :goto_17
    :try_start_17
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_17f

    :goto_20
    :try_start_20
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_17c

    :goto_29
    :try_start_29
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_179

    :goto_32
    :try_start_32
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_176

    :goto_3b
    :try_start_3b
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_45} :catch_173

    :goto_45
    :try_start_45
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_170

    :goto_4f
    :try_start_4f
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_59} :catch_16d

    :goto_59
    :try_start_59
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_63} :catch_16a

    :goto_63
    :try_start_63
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6d} :catch_167

    :goto_6d
    :try_start_6d
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_77} :catch_164

    :goto_77
    :try_start_77
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_81} :catch_161

    :goto_81
    :try_start_81
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8b} :catch_15e

    :goto_8b
    :try_start_8b
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_95} :catch_15b

    :goto_95
    :try_start_95
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_9e} :catch_158

    :goto_9e
    :try_start_9e
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_a8} :catch_155

    :goto_a8
    :try_start_a8
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b2} :catch_152

    :goto_b2
    :try_start_b2
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2 .. :try_end_bc} :catch_14f

    :goto_bc
    :try_start_bc
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_c6} :catch_14c

    :goto_c6
    :try_start_c6
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d0} :catch_14a

    :goto_d0
    :try_start_d0
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d0 .. :try_end_da} :catch_148

    :goto_da
    :try_start_da
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e4} :catch_146

    :goto_e4
    :try_start_e4
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_ee} :catch_144

    :goto_ee
    :try_start_ee
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_f8} :catch_142

    :goto_f8
    :try_start_f8
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f8 .. :try_end_101} :catch_140

    :goto_101
    :try_start_101
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10b} :catch_13e

    :goto_10b
    :try_start_10b
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_115} :catch_13c

    :goto_115
    :try_start_115
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11f} :catch_13a

    :goto_11f
    :try_start_11f
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_138

    :goto_129
    :try_start_129
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_136

    :goto_133
    sput-object v0, Ljava/time/ZonedDateTime;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    return-object v0

    :catch_136
    move-exception v1

    goto :goto_133

    :catch_138
    move-exception v1

    goto :goto_129

    :catch_13a
    move-exception v1

    goto :goto_11f

    :catch_13c
    move-exception v1

    goto :goto_115

    :catch_13e
    move-exception v1

    goto :goto_10b

    :catch_140
    move-exception v1

    goto :goto_101

    :catch_142
    move-exception v1

    goto :goto_f8

    :catch_144
    move-exception v1

    goto :goto_ee

    :catch_146
    move-exception v1

    goto :goto_e4

    :catch_148
    move-exception v1

    goto :goto_da

    :catch_14a
    move-exception v1

    goto :goto_d0

    :catch_14c
    move-exception v1

    goto/16 :goto_c6

    :catch_14f
    move-exception v1

    goto/16 :goto_bc

    :catch_152
    move-exception v1

    goto/16 :goto_b2

    :catch_155
    move-exception v1

    goto/16 :goto_a8

    :catch_158
    move-exception v1

    goto/16 :goto_9e

    :catch_15b
    move-exception v1

    goto/16 :goto_95

    :catch_15e
    move-exception v1

    goto/16 :goto_8b

    :catch_161
    move-exception v1

    goto/16 :goto_81

    :catch_164
    move-exception v1

    goto/16 :goto_77

    :catch_167
    move-exception v1

    goto/16 :goto_6d

    :catch_16a
    move-exception v1

    goto/16 :goto_63

    :catch_16d
    move-exception v1

    goto/16 :goto_59

    :catch_170
    move-exception v1

    goto/16 :goto_4f

    :catch_173
    move-exception v1

    goto/16 :goto_45

    :catch_176
    move-exception v1

    goto/16 :goto_3b

    :catch_179
    move-exception v1

    goto/16 :goto_32

    :catch_17c
    move-exception v1

    goto/16 :goto_29

    :catch_17f
    move-exception v1

    goto/16 :goto_20

    :catch_182
    move-exception v1

    goto/16 :goto_17
.end method

.method static synthetic -java_time_ZonedDateTime-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;
    .registers 2

    .prologue
    .line 591
    invoke-static {p0}, Ljava/time/ZonedDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V
    .registers 4
    .param p1, "dateTime"    # Ljava/time/LocalDateTime;
    .param p2, "offset"    # Ljava/time/ZoneOffset;
    .param p3, "zone"    # Ljava/time/ZoneId;

    .prologue
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

.method private static create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 10
    .param p0, "epochSecond"    # J
    .param p2, "nanoOfSecond"    # I
    .param p3, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 447
    invoke-virtual {p3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    .line 448
    .local v3, "rules":Ljava/time/zone/ZoneRules;
    int-to-long v4, p2

    invoke-static {p0, p1, v4, v5}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    .line 449
    .local v0, "instant":Ljava/time/Instant;
    invoke-virtual {v3, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v2

    .line 450
    .local v2, "offset":Ljava/time/ZoneOffset;
    invoke-static {p0, p1, p2, v2}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 451
    .local v1, "ldt":Ljava/time/LocalDateTime;
    new-instance v4, Ljava/time/ZonedDateTime;

    invoke-direct {v4, v1, v2, p3}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v4
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;
    .registers 11
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 543
    instance-of v7, p0, Ljava/time/ZonedDateTime;

    if-eqz v7, :cond_7

    .line 544
    check-cast p0, Ljava/time/ZonedDateTime;

    .end local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object p0

    .line 547
    .restart local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/time/ZoneId;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;

    move-result-object v6

    .line 548
    .local v6, "zone":Ljava/time/ZoneId;
    sget-object v7, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v7}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 549
    sget-object v7, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v7}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    .line 550
    .local v2, "epochSecond":J
    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v7}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    .line 551
    .local v4, "nanoOfSecond":I
    invoke-static {v2, v3, v4, v6}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v7

    return-object v7

    .line 553
    .end local v2    # "epochSecond":J
    .end local v4    # "nanoOfSecond":I
    :cond_24
    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    .line 554
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p0}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v5

    .line 555
    .local v5, "time":Ljava/time/LocalTime;
    invoke-static {v0, v5, v6}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    :try_end_2f
    .catch Ljava/time/DateTimeException; {:try_start_7 .. :try_end_2f} :catch_31

    move-result-object v7

    return-object v7

    .line 557
    .end local v0    # "date":Ljava/time/LocalDate;
    .end local v5    # "time":Ljava/time/LocalTime;
    .end local v6    # "zone":Ljava/time/ZoneId;
    :catch_31
    move-exception v1

    .line 558
    .local v1, "ex":Ljava/time/DateTimeException;
    new-instance v7, Ljava/time/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to obtain ZonedDateTime from TemporalAccessor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 559
    const-string/jumbo v9, " of type "

    .line 558
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 559
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 558
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static now()Ljava/time/ZonedDateTime;
    .registers 1

    .prologue
    .line 193
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;
    .registers 3
    .param p0, "clock"    # Ljava/time/Clock;

    .prologue
    .line 226
    const-string/jumbo v1, "clock"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

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

.method public static now(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 210
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIIIIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I
    .param p7, "zone"    # Ljava/time/ZoneId;

    .prologue
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

.method public static of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p0, "date"    # Ljava/time/LocalDate;
    .param p1, "time"    # Ljava/time/LocalTime;
    .param p2, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 259
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 3
    .param p0, "localDateTime"    # Ljava/time/LocalDateTime;
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 5
    .param p0, "instant"    # Ljava/time/Instant;
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 401
    const-string/jumbo v0, "instant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 402
    const-string/jumbo v0, "zone"

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

.method public static ofInstant(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 6
    .param p0, "localDateTime"    # Ljava/time/LocalDateTime;
    .param p1, "offset"    # Ljava/time/ZoneOffset;
    .param p2, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 427
    const-string/jumbo v0, "localDateTime"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 428
    const-string/jumbo v0, "offset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 429
    const-string/jumbo v0, "zone"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    invoke-virtual {p2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/time/zone/ZoneRules;->isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 431
    new-instance v0, Ljava/time/ZonedDateTime;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v0

    .line 433
    :cond_22
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private static ofLenient(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 5
    .param p0, "localDateTime"    # Ljava/time/LocalDateTime;
    .param p1, "offset"    # Ljava/time/ZoneOffset;
    .param p2, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 510
    const-string/jumbo v0, "localDateTime"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 511
    const-string/jumbo v0, "offset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 512
    const-string/jumbo v0, "zone"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 513
    instance-of v0, p2, Ljava/time/ZoneOffset;

    if-eqz v0, :cond_25

    invoke-virtual {p1, p2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 514
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ZoneId must match ZoneOffset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_25
    new-instance v0, Ljava/time/ZonedDateTime;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;
    .registers 10
    .param p0, "localDateTime"    # Ljava/time/LocalDateTime;
    .param p1, "zone"    # Ljava/time/ZoneId;
    .param p2, "preferredOffset"    # Ljava/time/ZoneOffset;

    .prologue
    const/4 v6, 0x0

    .line 361
    const-string/jumbo v4, "localDateTime"

    invoke-static {p0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v4, "zone"

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    instance-of v4, p1, Ljava/time/ZoneOffset;

    if-eqz v4, :cond_1a

    .line 364
    new-instance v5, Ljava/time/ZonedDateTime;

    move-object v4, p1

    check-cast v4, Ljava/time/ZoneOffset;

    invoke-direct {v5, p0, v4, p1}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v5

    .line 366
    :cond_1a
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    .line 367
    .local v1, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v1, p0}, Ljava/time/zone/ZoneRules;->getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v3

    .line 369
    .local v3, "validOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/time/ZoneOffset;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_35

    .line 370
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    .line 382
    .local v0, "offset":Ljava/time/ZoneOffset;
    :goto_2f
    new-instance v4, Ljava/time/ZonedDateTime;

    invoke-direct {v4, p0, v0, p1}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v4

    .line 371
    .end local v0    # "offset":Ljava/time/ZoneOffset;
    :cond_35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_50

    .line 372
    invoke-virtual {v1, p0}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v2

    .line 373
    .local v2, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->getDuration()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 374
    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    .restart local v0    # "offset":Ljava/time/ZoneOffset;
    goto :goto_2f

    .line 376
    .end local v0    # "offset":Ljava/time/ZoneOffset;
    .end local v2    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_50
    if-eqz p2, :cond_5a

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 377
    move-object v0, p2

    .restart local v0    # "offset":Ljava/time/ZoneOffset;
    goto :goto_2f

    .line 379
    .end local v0    # "offset":Ljava/time/ZoneOffset;
    :cond_5a
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/ZoneOffset;

    const-string/jumbo v5, "offset"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    .restart local v0    # "offset":Ljava/time/ZoneOffset;
    goto :goto_2f
.end method

.method public static ofStrict(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 8
    .param p0, "localDateTime"    # Ljava/time/LocalDateTime;
    .param p1, "offset"    # Ljava/time/ZoneOffset;
    .param p2, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 469
    const-string/jumbo v2, "localDateTime"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 470
    const-string/jumbo v2, "offset"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 471
    const-string/jumbo v2, "zone"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 472
    invoke-virtual {p2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    .line 473
    .local v0, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v0, p0, p1}, Ljava/time/zone/ZoneRules;->isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 474
    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 475
    .local v1, "trans":Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 478
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LocalDateTime \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 479
    const-string/jumbo v4, "\' does not exist in zone \'"

    .line 478
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 480
    const-string/jumbo v4, "\' due to a gap in the local time-line, typically caused by daylight savings"

    .line 478
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 482
    :cond_54
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ZoneOffset \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is not valid for LocalDateTime \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 483
    const-string/jumbo v4, "\' in zone \'"

    .line 482
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 483
    const-string/jumbo v4, "\'"

    .line 482
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 485
    .end local v1    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_8b
    new-instance v2, Ljava/time/ZonedDateTime;

    invoke-direct {v2, p0, p1, p2}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v2
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 576
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 590
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$9:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    .line 591
    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljava/time/ZonedDateTime;
    .registers 5
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 2232
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "newDateTime"    # Ljava/time/LocalDateTime;

    .prologue
    .line 625
    iget-object v0, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-static {p1, v0, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "newDateTime"    # Ljava/time/LocalDateTime;

    .prologue
    .line 615
    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {p1, v0, v1}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private resolveOffset(Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;
    .registers 5
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .prologue
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

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 2222
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 552
    check-cast p1, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->compareTo(Ljava/time/chrono/ChronoZonedDateTime;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 2165
    if-ne p0, p1, :cond_5

    .line 2166
    const/4 v1, 0x1

    return v1

    .line 2168
    :cond_5
    instance-of v2, p1, Ljava/time/ZonedDateTime;

    if-eqz v2, :cond_29

    move-object v0, p1

    .line 2169
    check-cast v0, Ljava/time/ZonedDateTime;

    .line 2170
    .local v0, "other":Ljava/time/ZonedDateTime;
    iget-object v2, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v3, v0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2171
    iget-object v2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    iget-object v3, v0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2170
    if-eqz v2, :cond_28

    .line 2172
    iget-object v1, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    iget-object v2, v0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1, v2}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2170
    :cond_28
    return v1

    .line 2174
    .end local v0    # "other":Ljava/time/ZonedDateTime;
    :cond_29
    return v1
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 2136
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2137
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 807
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_2d

    .line 808
    invoke-static {}, Ljava/time/ZonedDateTime;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_32

    .line 814
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 810
    :pswitch_1b
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v1, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 812
    :pswitch_24
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    return v0

    .line 816
    :cond_2d
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 808
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_24
    .end packed-switch
.end method

.method public getDayOfMonth()I
    .registers 2

    .prologue
    .line 1089
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Ljava/time/DayOfWeek;
    .registers 2

    .prologue
    .line 1117
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .registers 2

    .prologue
    .line 1100
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .registers 2

    .prologue
    .line 1140
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 844
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_2a

    .line 845
    invoke-static {}, Ljava/time/ZonedDateTime;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_30

    .line 849
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 846
    :pswitch_1b
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0

    .line 847
    :pswitch_20
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 851
    :cond_2a
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 845
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_20
    .end packed-switch
.end method

.method public getMinute()I
    .registers 2

    .prologue
    .line 1149
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Ljava/time/Month;
    .registers 2

    .prologue
    .line 1078
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .registers 2

    .prologue
    .line 1063
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .registers 2

    .prologue
    .line 1167
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Ljava/time/ZoneOffset;
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .registers 2

    .prologue
    .line 1158
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 1049
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    return v0
.end method

.method public getZone()Ljava/time/ZoneId;
    .registers 2

    .prologue
    .line 939
    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
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

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 698
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_b

    if-eqz p1, :cond_d

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 3
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 739
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->isSupported(Ljava/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;
    .registers 9
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 1842
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_15
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 1799
    instance-of v1, p1, Ljava/time/Period;

    if-eqz v1, :cond_12

    move-object v0, p1

    .line 1800
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
    const-string/jumbo v1, "amountToSubtract"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1804
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    return-object v1
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 5

    .prologue
    .line 1807
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 3

    .prologue
    .line 1776
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 1807
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 1776
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(J)Ljava/time/ZonedDateTime;
    .registers 8
    .param p1, "days"    # J

    .prologue
    .line 1931
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_15
.end method

.method public minusHours(J)Ljava/time/ZonedDateTime;
    .registers 8
    .param p1, "hours"    # J

    .prologue
    .line 1960
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_15
.end method

.method public minusMinutes(J)Ljava/time/ZonedDateTime;
    .registers 8
    .param p1, "minutes"    # J

    .prologue
    .line 1978
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_15
.end method

.method public minusMonths(J)Ljava/time/ZonedDateTime;
    .registers 8
    .param p1, "months"    # J

    .prologue
    .line 1887
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusMonths(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusMonths(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusMonths(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_15
.end method

.method public minusNanos(J)Ljava/time/ZonedDateTime;
    .registers 8
    .param p1, "nanos"    # J

    .prologue
    .line 2014
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusNanos(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusNanos(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusNanos(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_15
.end method

.method public minusSeconds(J)Ljava/time/ZonedDateTime;
    .registers 8
    .param p1, "seconds"    # J

    .prologue
    .line 1996
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_15
.end method

.method public minusWeeks(J)Ljava/time/ZonedDateTime;
    .registers 8
    .param p1, "weeks"    # J

    .prologue
    .line 1909
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusWeeks(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusWeeks(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusWeeks(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_15
.end method

.method public minusYears(J)Ljava/time/ZonedDateTime;
    .registers 8
    .param p1, "years"    # J

    .prologue
    .line 1865
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusYears(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusYears(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusYears(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_15
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;
    .registers 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
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

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 1547
    instance-of v1, p1, Ljava/time/Period;

    if-eqz v1, :cond_12

    move-object v0, p1

    .line 1548
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
    const-string/jumbo v1, "amountToAdd"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1552
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    return-object v1
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 5

    .prologue
    .line 1555
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 3

    .prologue
    .line 1524
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 1555
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 1524
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "days"    # J

    .prologue
    .line 1690
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "hours"    # J

    .prologue
    .line 1719
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "minutes"    # J

    .prologue
    .line 1737
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "months"    # J

    .prologue
    .line 1646
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "nanos"    # J

    .prologue
    .line 1773
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "seconds"    # J

    .prologue
    .line 1755
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusWeeks(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "weeks"    # J

    .prologue
    .line 1668
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "years"    # J

    .prologue
    .line 1624
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
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

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 768
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_18

    .line 769
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_c

    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_11

    .line 770
    :cond_c
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 772
    :cond_11
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 774
    :cond_18
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDate()Ljava/time/LocalDate;
    .registers 2

    .prologue
    .line 1035
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toLocalDate()Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .prologue
    .line 1024
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Ljava/time/LocalDateTime;
    .registers 2

    .prologue
    .line 1021
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;
    .registers 2

    .prologue
    .line 1010
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toLocalTime()Ljava/time/LocalTime;
    .registers 2

    .prologue
    .line 1131
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public toOffsetDateTime()Ljava/time/OffsetDateTime;
    .registers 3

    .prologue
    .line 2150
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v0, v1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2201
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    iget-object v2, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    if-eq v1, v2, :cond_46

    .line 2202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v2}, Ljava/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2204
    :cond_46
    return-object v0
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 1521
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 7
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
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

    move-result-wide v2

    return-wide v2

    .line 2119
    :cond_1d
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/time/OffsetDateTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v2

    return-wide v2

    .line 2122
    :cond_2a
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v2

    return-wide v2
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;
    .registers 8
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .prologue
    .line 1224
    instance-of v2, p1, Ljava/time/LocalDate;

    if-eqz v2, :cond_15

    .line 1225
    check-cast p1, Ljava/time/LocalDate;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    iget-object v2, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    .line 1226
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_15
    instance-of v2, p1, Ljava/time/LocalTime;

    if-eqz v2, :cond_2a

    .line 1227
    iget-object v2, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    check-cast p1, Ljava/time/LocalTime;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    invoke-static {v2, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    .line 1228
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_2a
    instance-of v2, p1, Ljava/time/LocalDateTime;

    if-eqz v2, :cond_35

    .line 1229
    check-cast p1, Ljava/time/LocalDateTime;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    invoke-direct {p0, p1}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    .line 1230
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_35
    instance-of v2, p1, Ljava/time/OffsetDateTime;

    if-eqz v2, :cond_4b

    move-object v1, p1

    .line 1231
    check-cast v1, Ljava/time/OffsetDateTime;

    .line 1232
    .local v1, "odt":Ljava/time/OffsetDateTime;
    invoke-virtual {v1}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v2

    iget-object v3, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    .line 1233
    .end local v1    # "odt":Ljava/time/OffsetDateTime;
    :cond_4b
    instance-of v2, p1, Ljava/time/Instant;

    if-eqz v2, :cond_61

    move-object v0, p1

    .line 1234
    check-cast v0, Ljava/time/Instant;

    .line 1235
    .local v0, "instant":Ljava/time/Instant;
    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v4

    iget-object v5, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-static {v2, v3, v4, v5}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    .line 1236
    .end local v0    # "instant":Ljava/time/Instant;
    :cond_61
    instance-of v2, p1, Ljava/time/ZoneOffset;

    if-eqz v2, :cond_6c

    .line 1237
    check-cast p1, Ljava/time/ZoneOffset;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    invoke-direct {p0, p1}, Ljava/time/ZonedDateTime;->resolveOffset(Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    .line 1239
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_6c
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/ZonedDateTime;

    return-object v2
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/ZonedDateTime;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 1296
    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_37

    move-object v0, p1

    .line 1297
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 1298
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-static {}, Ljava/time/ZonedDateTime;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3e

    .line 1305
    iget-object v2, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2, p1, p2, p3}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    .line 1300
    :pswitch_1f
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v2

    iget-object v3, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-static {p2, p3, v2, v3}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    .line 1302
    :pswitch_2a
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 1303
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-direct {p0, v1}, Ljava/time/ZonedDateTime;->resolveOffset(Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    .line 1307
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :cond_37
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/ZonedDateTime;

    return-object v2

    .line 1298
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_2a
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 3

    .prologue
    .line 1170
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 6

    .prologue
    .line 1242
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 1170
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 6

    .prologue
    .line 1242
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfMonth(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 1375
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withDayOfMonth(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "dayOfYear"    # I

    .prologue
    .line 1398
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withDayOfYear(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withEarlierOffsetAtOverlap()Ljava/time/ZonedDateTime;
    .registers 6

    .prologue
    .line 885
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    iget-object v3, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2, v3}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 886
    .local v1, "trans":Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 887
    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v0

    .line 888
    .local v0, "earlierOffset":Ljava/time/ZoneOffset;
    iget-object v2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 889
    new-instance v2, Ljava/time/ZonedDateTime;

    iget-object v3, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v4, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-direct {v2, v3, v0, v4}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v2

    .line 892
    .end local v0    # "earlierOffset":Ljava/time/ZoneOffset;
    :cond_2c
    return-object p0
.end method

.method public bridge synthetic withEarlierOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .registers 2

    .prologue
    .line 867
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->withEarlierOffsetAtOverlap()Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withFixedOffsetZone()Ljava/time/ZonedDateTime;
    .registers 5

    .prologue
    .line 1007
    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .end local p0    # "this":Ljava/time/ZonedDateTime;
    :goto_a
    return-object p0

    .restart local p0    # "this":Ljava/time/ZonedDateTime;
    :cond_b
    new-instance v0, Ljava/time/ZonedDateTime;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    iget-object v3, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1, v2, v3}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public withHour(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "hour"    # I

    .prologue
    .line 1421
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withHour(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withLaterOffsetAtOverlap()Ljava/time/ZonedDateTime;
    .registers 6

    .prologue
    .line 913
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 914
    .local v1, "trans":Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v1, :cond_28

    .line 915
    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    .line 916
    .local v0, "laterOffset":Ljava/time/ZoneOffset;
    iget-object v2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 917
    new-instance v2, Ljava/time/ZonedDateTime;

    iget-object v3, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v4, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-direct {v2, v3, v0, v4}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v2

    .line 920
    .end local v0    # "laterOffset":Ljava/time/ZoneOffset;
    :cond_28
    return-object p0
.end method

.method public bridge synthetic withLaterOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .registers 2

    .prologue
    .line 895
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->withLaterOffsetAtOverlap()Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "minute"    # I

    .prologue
    .line 1443
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withMinute(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "month"    # I

    .prologue
    .line 1352
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withMonth(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "nanoOfSecond"    # I

    .prologue
    .line 1487
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withNano(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withSecond(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "second"    # I

    .prologue
    .line 1465
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "year"    # I

    .prologue
    .line 1330
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withYear(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 5
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 984
    const-string/jumbo v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 985
    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, p1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .end local p0    # "this":Ljava/time/ZonedDateTime;
    :goto_e
    return-object p0

    .line 986
    .restart local p0    # "this":Ljava/time/ZonedDateTime;
    :cond_f
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v0

    iget-object v2, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    goto :goto_e
.end method

.method public bridge synthetic withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 3

    .prologue
    .line 965
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 961
    const-string/jumbo v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 962
    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, p1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .end local p0    # "this":Ljava/time/ZonedDateTime;
    :goto_e
    return-object p0

    .restart local p0    # "this":Ljava/time/ZonedDateTime;
    :cond_f
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v0, p1, v1}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object p0

    goto :goto_e
.end method

.method public bridge synthetic withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 3

    .prologue
    .line 942
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

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
