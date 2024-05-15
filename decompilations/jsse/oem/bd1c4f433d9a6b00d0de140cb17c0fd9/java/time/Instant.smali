.class public final Ljava/time/Instant;
.super Ljava/lang/Object;
.source "Instant.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/Instant;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field private static final synthetic -java-time-temporal-ChronoUnitSwitchesValues:[I = null

.field public static final EPOCH:Ljava/time/Instant;

.field public static final MAX:Ljava/time/Instant;

.field private static final MAX_SECOND:J = 0x701cd2fa9578ffL

.field public static final MIN:Ljava/time/Instant;

.field private static final MIN_SECOND:J = -0x701cefeb9bec00L

.field private static final serialVersionUID:J = -0x93d170fdcc5dce4L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/Instant;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/Instant;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_18} :catch_185

    :goto_18
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_22} :catch_182

    :goto_22
    :try_start_22
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_17f

    :goto_2c
    :try_start_2c
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_36} :catch_17c

    :goto_36
    :try_start_36
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_40} :catch_179

    :goto_40
    :try_start_40
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4a} :catch_176

    :goto_4a
    :try_start_4a
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_173

    :goto_54
    :try_start_54
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5e} :catch_170

    :goto_5e
    :try_start_5e
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_68} :catch_16d

    :goto_68
    :try_start_68
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_72} :catch_16a

    :goto_72
    :try_start_72
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7c} :catch_167

    :goto_7c
    :try_start_7c
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_86} :catch_164

    :goto_86
    :try_start_86
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_90} :catch_161

    :goto_90
    :try_start_90
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9a} :catch_15e

    :goto_9a
    :try_start_9a
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_a3} :catch_15b

    :goto_a3
    :try_start_a3
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_ad} :catch_158

    :goto_ad
    :try_start_ad
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b6} :catch_155

    :goto_b6
    :try_start_b6
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c0} :catch_152

    :goto_c0
    :try_start_c0
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_c9} :catch_14f

    :goto_c9
    :try_start_c9
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d3} :catch_14d

    :goto_d3
    :try_start_d3
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d3 .. :try_end_dd} :catch_14b

    :goto_dd
    :try_start_dd
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_e7} :catch_149

    :goto_e7
    :try_start_e7
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e7 .. :try_end_f1} :catch_147

    :goto_f1
    :try_start_f1
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f1 .. :try_end_fa} :catch_145

    :goto_fa
    :try_start_fa
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_104
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fa .. :try_end_104} :catch_143

    :goto_104
    :try_start_104
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_10e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_104 .. :try_end_10e} :catch_141

    :goto_10e
    :try_start_10e
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10e .. :try_end_118} :catch_13f

    :goto_118
    :try_start_118
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_122} :catch_13d

    :goto_122
    :try_start_122
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12c} :catch_13b

    :goto_12c
    :try_start_12c
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_136
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_136} :catch_139

    :goto_136
    sput-object v0, Ljava/time/Instant;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    return-object v0

    :catch_139
    move-exception v1

    goto :goto_136

    :catch_13b
    move-exception v1

    goto :goto_12c

    :catch_13d
    move-exception v1

    goto :goto_122

    :catch_13f
    move-exception v1

    goto :goto_118

    :catch_141
    move-exception v1

    goto :goto_10e

    :catch_143
    move-exception v1

    goto :goto_104

    :catch_145
    move-exception v1

    goto :goto_fa

    :catch_147
    move-exception v1

    goto :goto_f1

    :catch_149
    move-exception v1

    goto :goto_e7

    :catch_14b
    move-exception v1

    goto :goto_dd

    :catch_14d
    move-exception v1

    goto :goto_d3

    :catch_14f
    move-exception v1

    goto/16 :goto_c9

    :catch_152
    move-exception v1

    goto/16 :goto_c0

    :catch_155
    move-exception v1

    goto/16 :goto_b6

    :catch_158
    move-exception v1

    goto/16 :goto_ad

    :catch_15b
    move-exception v1

    goto/16 :goto_a3

    :catch_15e
    move-exception v1

    goto/16 :goto_9a

    :catch_161
    move-exception v1

    goto/16 :goto_90

    :catch_164
    move-exception v1

    goto/16 :goto_86

    :catch_167
    move-exception v1

    goto/16 :goto_7c

    :catch_16a
    move-exception v1

    goto/16 :goto_72

    :catch_16d
    move-exception v1

    goto/16 :goto_68

    :catch_170
    move-exception v1

    goto/16 :goto_5e

    :catch_173
    move-exception v1

    goto/16 :goto_54

    :catch_176
    move-exception v1

    goto/16 :goto_4a

    :catch_179
    move-exception v1

    goto/16 :goto_40

    :catch_17c
    move-exception v1

    goto/16 :goto_36

    :catch_17f
    move-exception v1

    goto/16 :goto_2c

    :catch_182
    move-exception v1

    goto/16 :goto_22

    :catch_185
    move-exception v1

    goto/16 :goto_18
.end method

.method private static synthetic -getjava-time-temporal-ChronoUnitSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/Instant;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/Instant;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_18} :catch_cc

    :goto_18
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_21} :catch_c9

    :goto_21
    :try_start_21
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2b} :catch_c6

    :goto_2b
    :try_start_2b
    sget-object v1, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_c3

    :goto_35
    :try_start_35
    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_3f} :catch_c0

    :goto_3f
    :try_start_3f
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_48} :catch_be

    :goto_48
    :try_start_48
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_51} :catch_bc

    :goto_51
    :try_start_51
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5a} :catch_ba

    :goto_5a
    :try_start_5a
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_b8

    :goto_64
    :try_start_64
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6d} :catch_b6

    :goto_6d
    :try_start_6d
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_76} :catch_b4

    :goto_76
    :try_start_76
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_80} :catch_b2

    :goto_80
    :try_start_80
    sget-object v1, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_89} :catch_b0

    :goto_89
    :try_start_89
    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_ae

    :goto_93
    :try_start_93
    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_ac

    :goto_9d
    :try_start_9d
    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_aa

    :goto_a7
    sput-object v0, Ljava/time/Instant;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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

    goto :goto_89

    :catch_b2
    move-exception v1

    goto :goto_80

    :catch_b4
    move-exception v1

    goto :goto_76

    :catch_b6
    move-exception v1

    goto :goto_6d

    :catch_b8
    move-exception v1

    goto :goto_64

    :catch_ba
    move-exception v1

    goto :goto_5a

    :catch_bc
    move-exception v1

    goto :goto_51

    :catch_be
    move-exception v1

    goto :goto_48

    :catch_c0
    move-exception v1

    goto/16 :goto_3f

    :catch_c3
    move-exception v1

    goto/16 :goto_35

    :catch_c6
    move-exception v1

    goto/16 :goto_2b

    :catch_c9
    move-exception v1

    goto/16 :goto_21

    :catch_cc
    move-exception v1

    goto/16 :goto_18
.end method

.method static synthetic -java_time_Instant-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .registers 2

    .prologue
    .line 389
    invoke-static {p0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 207
    new-instance v0, Ljava/time/Instant;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/time/Instant;-><init>(JI)V

    sput-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    .line 226
    const-wide v0, -0x701cefeb9bec00L

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    .line 237
    const-wide/32 v0, 0x3b9ac9ff

    const-wide v2, 0x701cd2fa9578ffL

    invoke-static {v2, v3, v0, v1}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Ljava/time/Instant;->MAX:Ljava/time/Instant;

    .line 201
    return-void
.end method

.method private constructor <init>(JI)V
    .registers 5
    .param p1, "epochSecond"    # J
    .param p3, "nanos"    # I

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-wide p1, p0, Ljava/time/Instant;->seconds:J

    .line 420
    iput p3, p0, Ljava/time/Instant;->nanos:I

    .line 421
    return-void
.end method

.method private static create(JI)Ljava/time/Instant;
    .registers 7
    .param p0, "seconds"    # J
    .param p2, "nanoOfSecond"    # I

    .prologue
    .line 401
    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 402
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    return-object v0

    .line 404
    :cond_b
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1d

    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v0, p0, v0

    if-lez v0, :cond_26

    .line 405
    :cond_1d
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Instant exceeds minimum or maximum instant"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_26
    new-instance v0, Ljava/time/Instant;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/Instant;-><init>(JI)V

    return-object v0
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .registers 8
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 362
    instance-of v4, p0, Ljava/time/Instant;

    if-eqz v4, :cond_7

    .line 363
    check-cast p0, Ljava/time/Instant;

    .end local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object p0

    .line 365
    .restart local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_7
    const-string/jumbo v4, "temporal"

    invoke-static {p0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 367
    :try_start_d
    sget-object v4, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    .line 368
    .local v2, "instantSecs":J
    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 369
    .local v1, "nanoOfSecond":I
    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;
    :try_end_1d
    .catch Ljava/time/DateTimeException; {:try_start_d .. :try_end_1d} :catch_1f

    move-result-object v4

    return-object v4

    .line 370
    .end local v1    # "nanoOfSecond":I
    .end local v2    # "instantSecs":J
    :catch_1f
    move-exception v0

    .line 371
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v4, Ljava/time/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to obtain Instant from TemporalAccessor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 372
    const-string/jumbo v6, " of type "

    .line 371
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 371
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private nanosUntil(Ljava/time/Instant;)J
    .registers 10
    .param p1, "end"    # Ljava/time/Instant;

    .prologue
    .line 1157
    iget-wide v4, p1, Ljava/time/Instant;->seconds:J

    iget-wide v6, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    .line 1158
    .local v0, "secsDiff":J
    const-wide/32 v4, 0x3b9aca00

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    .line 1159
    .local v2, "totalNanos":J
    iget v4, p1, Ljava/time/Instant;->nanos:I

    iget v5, p0, Ljava/time/Instant;->nanos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public static now()Ljava/time/Instant;
    .registers 1

    .prologue
    .line 267
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/Instant;
    .registers 2
    .param p0, "clock"    # Ljava/time/Clock;

    .prologue
    .line 282
    const-string/jumbo v0, "clock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static ofEpochMilli(J)Ljava/time/Instant;
    .registers 8
    .param p0, "epochMilli"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 338
    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    .line 339
    .local v2, "secs":J
    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .line 340
    .local v0, "mos":I
    const v1, 0xf4240

    mul-int/2addr v1, v0

    invoke-static {v2, v3, v1}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v1

    return-object v1
.end method

.method public static ofEpochSecond(J)Ljava/time/Instant;
    .registers 4
    .param p0, "epochSecond"    # J

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static ofEpochSecond(JJ)Ljava/time/Instant;
    .registers 12
    .param p0, "epochSecond"    # J
    .param p2, "nanoAdjustment"    # J

    .prologue
    const-wide/32 v6, 0x3b9aca00

    .line 322
    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v4

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    .line 323
    .local v2, "secs":J
    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .line 324
    .local v0, "nos":I
    invoke-static {v2, v3, v0}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/Instant;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 389
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    sget-object v1, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$0:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    invoke-virtual {v0, p0, v1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0
.end method

.method private plus(JJ)Ljava/time/Instant;
    .registers 16
    .param p1, "secondsToAdd"    # J
    .param p3, "nanosToAdd"    # J

    .prologue
    const-wide/32 v8, 0x3b9aca00

    .line 916
    or-long v4, p1, p3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    .line 917
    return-object p0

    .line 919
    :cond_c
    iget-wide v4, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 920
    .local v0, "epochSec":J
    div-long v4, p3, v8

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 921
    rem-long/2addr p3, v8

    .line 922
    iget v4, p0, Ljava/time/Instant;->nanos:I

    int-to-long v4, v4

    add-long v2, v4, p3

    .line 923
    .local v2, "nanoAdjustment":J
    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v4

    return-object v4
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/Instant;
    .registers 7
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1360
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 1361
    .local v2, "seconds":J
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1362
    .local v0, "nanos":I
    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v1

    return-object v1
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
    .line 1351
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private secondsUntil(Ljava/time/Instant;)J
    .registers 14
    .param p1, "end"    # Ljava/time/Instant;

    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 1163
    iget-wide v4, p1, Ljava/time/Instant;->seconds:J

    iget-wide v6, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    .line 1164
    .local v2, "secsDiff":J
    iget v4, p1, Ljava/time/Instant;->nanos:I

    iget v5, p0, Ljava/time/Instant;->nanos:I

    sub-int/2addr v4, v5

    int-to-long v0, v4

    .line 1165
    .local v0, "nanosDiff":J
    cmp-long v4, v2, v8

    if-lez v4, :cond_1c

    cmp-long v4, v0, v8

    if-gez v4, :cond_1c

    .line 1166
    sub-long/2addr v2, v10

    .line 1170
    :cond_1b
    :goto_1b
    return-wide v2

    .line 1167
    :cond_1c
    cmp-long v4, v2, v8

    if-gez v4, :cond_1b

    cmp-long v4, v0, v8

    if-lez v4, :cond_1b

    .line 1168
    add-long/2addr v2, v10

    goto :goto_1b
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1341
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 1089
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    invoke-interface {p1, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    iget v2, p0, Ljava/time/Instant;->nanos:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .registers 3
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 1189
    invoke-static {p0, p1}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 1207
    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1236
    check-cast p1, Ljava/time/Instant;

    invoke-virtual {p0, p1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/Instant;)I
    .registers 8
    .param p1, "otherInstant"    # Ljava/time/Instant;

    .prologue
    .line 1249
    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    iget-wide v4, p1, Ljava/time/Instant;->seconds:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 1250
    .local v0, "cmp":I
    if-eqz v0, :cond_b

    .line 1251
    return v0

    .line 1253
    :cond_b
    iget v1, p0, Ljava/time/Instant;->nanos:I

    iget v2, p1, Ljava/time/Instant;->nanos:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "otherInstant"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1293
    if-ne p0, p1, :cond_5

    .line 1294
    return v1

    .line 1296
    :cond_5
    instance-of v3, p1, Ljava/time/Instant;

    if-eqz v3, :cond_1f

    move-object v0, p1

    .line 1297
    check-cast v0, Ljava/time/Instant;

    .line 1298
    .local v0, "other":Ljava/time/Instant;
    iget-wide v4, p0, Ljava/time/Instant;->seconds:J

    iget-wide v6, v0, Ljava/time/Instant;->seconds:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1d

    .line 1299
    iget v3, p0, Ljava/time/Instant;->nanos:I

    iget v4, v0, Ljava/time/Instant;->nanos:I

    if-ne v3, v4, :cond_1b

    .line 1298
    :goto_1a
    return v1

    :cond_1b
    move v1, v2

    .line 1299
    goto :goto_1a

    :cond_1d
    move v1, v2

    .line 1298
    goto :goto_1a

    .line 1301
    .end local v0    # "other":Ljava/time/Instant;
    :cond_1f
    return v2
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 553
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_45

    .line 554
    invoke-static {}, Ljava/time/Instant;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_52

    .line 560
    :goto_14
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :pswitch_2e
    iget v0, p0, Ljava/time/Instant;->nanos:I

    return v0

    .line 556
    :pswitch_31
    iget v0, p0, Ljava/time/Instant;->nanos:I

    div-int/lit16 v0, v0, 0x3e8

    return v0

    .line 557
    :pswitch_36
    iget v0, p0, Ljava/time/Instant;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    return v0

    .line 558
    :pswitch_3d
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    goto :goto_14

    .line 562
    :cond_45
    invoke-virtual {p0, p1}, Ljava/time/Instant;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 554
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_31
        :pswitch_36
        :pswitch_2e
    .end packed-switch
.end method

.method public getEpochSecond()J
    .registers 3

    .prologue
    .line 613
    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    return-wide v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 590
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_43

    .line 591
    invoke-static {}, Ljava/time/Instant;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_48

    .line 597
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :pswitch_2e
    iget v0, p0, Ljava/time/Instant;->nanos:I

    int-to-long v0, v0

    return-wide v0

    .line 593
    :pswitch_32
    iget v0, p0, Ljava/time/Instant;->nanos:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    .line 594
    :pswitch_38
    iget v0, p0, Ljava/time/Instant;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 595
    :pswitch_40
    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    return-wide v0

    .line 599
    :cond_43
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 591
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_40
        :pswitch_32
        :pswitch_38
        :pswitch_2e
    .end packed-switch
.end method

.method public getNano()I
    .registers 2

    .prologue
    .line 626
    iget v0, p0, Ljava/time/Instant;->nanos:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 1311
    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Ljava/time/Instant;->nanos:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Ljava/time/Instant;)Z
    .registers 4
    .param p1, "otherInstant"    # Ljava/time/Instant;

    .prologue
    const/4 v0, 0x0

    .line 1266
    invoke-virtual {p0, p1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v1

    if-lez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isBefore(Ljava/time/Instant;)Z
    .registers 4
    .param p1, "otherInstant"    # Ljava/time/Instant;

    .prologue
    const/4 v0, 0x0

    .line 1279
    invoke-virtual {p0, p1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v1

    if-gez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 452
    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_19

    .line 453
    sget-object v2, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    if-eq p1, v2, :cond_e

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-ne p1, v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    sget-object v2, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-eq p1, v2, :cond_e

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-eq p1, v2, :cond_e

    move v0, v1

    goto :goto_e

    .line 455
    :cond_19
    if-eqz p1, :cond_1f

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v1

    :cond_1f
    return v1
.end method

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 489
    instance-of v2, p1, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_13

    .line 490
    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v2, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10

    .line 492
    :cond_13
    if-eqz p1, :cond_19

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v1

    :cond_19
    return v1
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;
    .registers 9
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 973
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    goto :goto_15
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;
    .registers 3
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 949
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 952
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 926
    invoke-virtual {p0, p1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public minusMillis(J)Ljava/time/Instant;
    .registers 8
    .param p1, "millisToSubtract"    # J

    .prologue
    .line 1005
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    .line 1006
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 1008
    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public minusNanos(J)Ljava/time/Instant;
    .registers 8
    .param p1, "nanosToSubtract"    # J

    .prologue
    .line 1022
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    .line 1023
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 1025
    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Ljava/time/Instant;
    .registers 8
    .param p1, "secondsToSubtract"    # J

    .prologue
    .line 988
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    .line 989
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 991
    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;
    .registers 11
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    const-wide/32 v2, 0xf4240

    .line 845
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_7a

    .line 846
    invoke-static {}, Ljava/time/Instant;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v1

    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_82

    .line 856
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :pswitch_31
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 848
    :pswitch_36
    div-long v0, p1, v2

    rem-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 849
    :pswitch_42
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 850
    :pswitch_47
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 851
    :pswitch_4c
    const-wide/16 v0, 0x3c

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 852
    :pswitch_57
    const-wide/16 v0, 0xe10

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 853
    :pswitch_62
    const-wide/32 v0, 0xa8c0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 854
    :pswitch_6e
    const-wide/32 v0, 0x15180

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 858
    :cond_7a
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0

    .line 846
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_62
        :pswitch_57
        :pswitch_36
        :pswitch_42
        :pswitch_4c
        :pswitch_31
        :pswitch_47
    .end packed-switch
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;
    .registers 3
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 782
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 785
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 759
    invoke-virtual {p0, p1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plusMillis(J)Ljava/time/Instant;
    .registers 10
    .param p1, "millisToAdd"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 887
    div-long v0, p1, v2

    rem-long v2, p1, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Ljava/time/Instant;
    .registers 6
    .param p1, "nanosToAdd"    # J

    .prologue
    .line 901
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Ljava/time/Instant;
    .registers 6
    .param p1, "secondsToAdd"    # J

    .prologue
    .line 873
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

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
    .line 1050
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 1051
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 1054
    :cond_9
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_15

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_17

    .line 1057
    :cond_15
    const/4 v0, 0x0

    return-object v0

    .line 1055
    :cond_17
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_15

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_15

    .line 1056
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_15

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_15

    .line 1059
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 521
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toEpochMilli()J
    .registers 13

    .prologue
    const-wide/16 v10, 0x3e8

    const v8, 0xf4240

    .line 1226
    iget-wide v4, p0, Ljava/time/Instant;->seconds:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_25

    iget v4, p0, Ljava/time/Instant;->nanos:I

    if-lez v4, :cond_25

    .line 1227
    iget-wide v4, p0, Ljava/time/Instant;->seconds:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    .line 1228
    .local v2, "millis":J
    iget v4, p0, Ljava/time/Instant;->nanos:I

    div-int/2addr v4, v8

    add-int/lit16 v4, v4, -0x3e8

    int-to-long v0, v4

    .line 1229
    .local v0, "adjustment":J
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    return-wide v4

    .line 1231
    .end local v0    # "adjustment":J
    .end local v2    # "millis":J
    :cond_25
    iget-wide v4, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    .line 1232
    .restart local v2    # "millis":J
    iget v4, p0, Ljava/time/Instant;->nanos:I

    div-int/2addr v4, v8

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1324
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/Instant;
    .registers 16
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    const-wide/32 v12, 0x15180

    .line 743
    sget-object v7, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v7, :cond_8

    .line 744
    return-object p0

    .line 746
    :cond_8
    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v6

    .line 747
    .local v6, "unitDur":Ljava/time/Duration;
    invoke-virtual {v6}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v8

    cmp-long v7, v8, v12

    if-lez v7, :cond_1d

    .line 748
    new-instance v7, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v8, "Unit is too large to be used for truncation"

    invoke-direct {v7, v8}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 750
    :cond_1d
    invoke-virtual {v6}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    .line 751
    .local v0, "dur":J
    const-wide v8, 0x4e94914f0000L

    rem-long/2addr v8, v0

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_36

    .line 752
    new-instance v7, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v8, "Unit must divide into a standard day without remainder"

    invoke-direct {v7, v8}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 754
    :cond_36
    iget-wide v8, p0, Ljava/time/Instant;->seconds:J

    rem-long/2addr v8, v12

    const-wide/32 v10, 0x3b9aca00

    mul-long/2addr v8, v10

    iget v7, p0, Ljava/time/Instant;->nanos:I

    int-to-long v10, v7

    add-long v2, v8, v10

    .line 755
    .local v2, "nod":J
    div-long v8, v2, v0

    mul-long v4, v8, v0

    .line 756
    .local v4, "result":J
    sub-long v8, v4, v2

    invoke-virtual {p0, v8, v9}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v7

    return-object v7
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 9
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 1138
    invoke-static {p1}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v0

    .line 1139
    .local v0, "end":Ljava/time/Instant;
    instance-of v2, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_73

    move-object v1, p2

    .line 1140
    check-cast v1, Ljava/time/temporal/ChronoUnit;

    .line 1141
    .local v1, "f":Ljava/time/temporal/ChronoUnit;
    invoke-static {}, Ljava/time/Instant;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_78

    .line 1151
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported unit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1142
    :pswitch_32
    invoke-direct {p0, v0}, Ljava/time/Instant;->nanosUntil(Ljava/time/Instant;)J

    move-result-wide v2

    return-wide v2

    .line 1143
    :pswitch_37
    invoke-direct {p0, v0}, Ljava/time/Instant;->nanosUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2

    .line 1144
    :pswitch_3f
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    return-wide v2

    .line 1145
    :pswitch_4c
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    return-wide v2

    .line 1146
    :pswitch_51
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    return-wide v2

    .line 1147
    :pswitch_59
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0xe10

    div-long/2addr v2, v4

    return-wide v2

    .line 1148
    :pswitch_61
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/32 v4, 0xa8c0

    div-long/2addr v2, v4

    return-wide v2

    .line 1149
    :pswitch_6a
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    return-wide v2

    .line 1153
    .end local v1    # "f":Ljava/time/temporal/ChronoUnit;
    :cond_73
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v2

    return-wide v2

    .line 1141
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_61
        :pswitch_59
        :pswitch_37
        :pswitch_3f
        :pswitch_51
        :pswitch_32
        :pswitch_4c
    .end packed-switch
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/Instant;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .prologue
    .line 650
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/Instant;
    .registers 10
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 699
    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_6c

    move-object v0, p1

    .line 700
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 701
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 702
    invoke-static {}, Ljava/time/Instant;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_74

    .line 714
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 704
    :pswitch_31
    long-to-int v2, p2

    const v3, 0xf4240

    mul-int v1, v2, v3

    .line 705
    .local v1, "nval":I
    iget v2, p0, Ljava/time/Instant;->nanos:I

    if-eq v1, v2, :cond_41

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v2, v3, v1}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object p0

    .end local p0    # "this":Ljava/time/Instant;
    :cond_41
    return-object p0

    .line 708
    .end local v1    # "nval":I
    .restart local p0    # "this":Ljava/time/Instant;
    :pswitch_42
    long-to-int v2, p2

    mul-int/lit16 v1, v2, 0x3e8

    .line 709
    .restart local v1    # "nval":I
    iget v2, p0, Ljava/time/Instant;->nanos:I

    if-eq v1, v2, :cond_4f

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v2, v3, v1}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object p0

    .end local p0    # "this":Ljava/time/Instant;
    :cond_4f
    return-object p0

    .line 711
    .end local v1    # "nval":I
    .restart local p0    # "this":Ljava/time/Instant;
    :pswitch_50
    iget v2, p0, Ljava/time/Instant;->nanos:I

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-eqz v2, :cond_5e

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    long-to-int v4, p2

    invoke-static {v2, v3, v4}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object p0

    .end local p0    # "this":Ljava/time/Instant;
    :cond_5e
    return-object p0

    .line 712
    .restart local p0    # "this":Ljava/time/Instant;
    :pswitch_5f
    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    cmp-long v2, p2, v2

    if-eqz v2, :cond_6b

    iget v2, p0, Ljava/time/Instant;->nanos:I

    invoke-static {p2, p3, v2}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object p0

    .end local p0    # "this":Ljava/time/Instant;
    :cond_6b
    return-object p0

    .line 716
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    .restart local p0    # "this":Ljava/time/Instant;
    :cond_6c
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/Instant;

    return-object v2

    .line 702
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_42
        :pswitch_31
        :pswitch_50
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Ljava/time/Instant;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 6

    .prologue
    .line 653
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/Instant;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1355
    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1356
    iget v0, p0, Ljava/time/Instant;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1357
    return-void
.end method
