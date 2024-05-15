.class public final Ljava/time/LocalTime;
.super Ljava/lang/Object;
.source "LocalTime.java"

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
        "Ljava/time/LocalTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field private static final synthetic -java-time-temporal-ChronoUnitSwitchesValues:[I = null

.field private static final HOURS:[Ljava/time/LocalTime;

.field static final HOURS_PER_DAY:I = 0x18

.field public static final MAX:Ljava/time/LocalTime;

.field static final MICROS_PER_DAY:J = 0x141dd76000L

.field public static final MIDNIGHT:Ljava/time/LocalTime;

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MIN:Ljava/time/LocalTime;

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field public static final NOON:Ljava/time/LocalTime;

.field static final SECONDS_PER_DAY:I = 0x15180

.field static final SECONDS_PER_HOUR:I = 0xe10

.field static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x5904a8b626e1a4f1L


# instance fields
.field private final hour:B

.field private final minute:B

.field private final nano:I

.field private final second:B


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/LocalTime;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/LocalTime;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_18} :catch_182

    :goto_18
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_22} :catch_17f

    :goto_22
    :try_start_22
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_17c

    :goto_2c
    :try_start_2c
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_36} :catch_179

    :goto_36
    :try_start_36
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_3f} :catch_176

    :goto_3f
    :try_start_3f
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_48} :catch_173

    :goto_48
    :try_start_48
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_51} :catch_170

    :goto_51
    :try_start_51
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5b} :catch_16d

    :goto_5b
    :try_start_5b
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_65} :catch_16a

    :goto_65
    :try_start_65
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_167

    :goto_6f
    :try_start_6f
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_164

    :goto_79
    :try_start_79
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_161

    :goto_83
    :try_start_83
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8c} :catch_15e

    :goto_8c
    :try_start_8c
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_95} :catch_15b

    :goto_95
    :try_start_95
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_9f} :catch_158

    :goto_9f
    :try_start_9f
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a8} :catch_155

    :goto_a8
    :try_start_a8
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b1} :catch_152

    :goto_b1
    :try_start_b1
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_14f

    :goto_bb
    :try_start_bb
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c5} :catch_14c

    :goto_c5
    :try_start_c5
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_14a

    :goto_cf
    :try_start_cf
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_148

    :goto_d9
    :try_start_d9
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e3} :catch_146

    :goto_e3
    :try_start_e3
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ed} :catch_144

    :goto_ed
    :try_start_ed
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f7} :catch_142

    :goto_f7
    :try_start_f7
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_101} :catch_140

    :goto_101
    :try_start_101
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10b} :catch_13e

    :goto_10b
    :try_start_10b
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_115} :catch_13c

    :goto_115
    :try_start_115
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11f} :catch_13a

    :goto_11f
    :try_start_11f
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_138

    :goto_129
    :try_start_129
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_136

    :goto_133
    sput-object v0, Ljava/time/LocalTime;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    goto :goto_f7

    :catch_144
    move-exception v1

    goto :goto_ed

    :catch_146
    move-exception v1

    goto :goto_e3

    :catch_148
    move-exception v1

    goto :goto_d9

    :catch_14a
    move-exception v1

    goto :goto_cf

    :catch_14c
    move-exception v1

    goto/16 :goto_c5

    :catch_14f
    move-exception v1

    goto/16 :goto_bb

    :catch_152
    move-exception v1

    goto/16 :goto_b1

    :catch_155
    move-exception v1

    goto/16 :goto_a8

    :catch_158
    move-exception v1

    goto/16 :goto_9f

    :catch_15b
    move-exception v1

    goto/16 :goto_95

    :catch_15e
    move-exception v1

    goto/16 :goto_8c

    :catch_161
    move-exception v1

    goto/16 :goto_83

    :catch_164
    move-exception v1

    goto/16 :goto_79

    :catch_167
    move-exception v1

    goto/16 :goto_6f

    :catch_16a
    move-exception v1

    goto/16 :goto_65

    :catch_16d
    move-exception v1

    goto/16 :goto_5b

    :catch_170
    move-exception v1

    goto/16 :goto_51

    :catch_173
    move-exception v1

    goto/16 :goto_48

    :catch_176
    move-exception v1

    goto/16 :goto_3f

    :catch_179
    move-exception v1

    goto/16 :goto_36

    :catch_17c
    move-exception v1

    goto/16 :goto_2c

    :catch_17f
    move-exception v1

    goto/16 :goto_22

    :catch_182
    move-exception v1

    goto/16 :goto_18
.end method

.method private static synthetic -getjava-time-temporal-ChronoUnitSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/LocalTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/LocalTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_18} :catch_cc

    :goto_18
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_22} :catch_c9

    :goto_22
    :try_start_22
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_c6

    :goto_2c
    :try_start_2c
    sget-object v1, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_36} :catch_c3

    :goto_36
    :try_start_36
    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

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

    const/16 v2, 0x1c

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

    const/16 v2, 0x1d

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

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_ac

    :goto_9d
    :try_start_9d
    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_aa

    :goto_a7
    sput-object v0, Ljava/time/LocalTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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

.method static synthetic -java_time_LocalTime-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;
    .registers 2

    .prologue
    .line 435
    invoke-static {p0}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x3b

    const/4 v3, 0x0

    .line 143
    const/16 v1, 0x18

    new-array v1, v1, [Ljava/time/LocalTime;

    sput-object v1, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    sget-object v1, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 146
    sget-object v1, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    new-instance v2, Ljava/time/LocalTime;

    invoke-direct {v2, v0, v3, v3, v3}, Ljava/time/LocalTime;-><init>(IIII)V

    aput-object v2, v1, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 148
    :cond_1b
    sget-object v1, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    aget-object v1, v1, v3

    sput-object v1, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    .line 149
    sget-object v1, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    sput-object v1, Ljava/time/LocalTime;->NOON:Ljava/time/LocalTime;

    .line 150
    sget-object v1, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    aget-object v1, v1, v3

    sput-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    .line 151
    new-instance v1, Ljava/time/LocalTime;

    const/16 v2, 0x17

    const v3, 0x3b9ac9ff

    invoke-direct {v1, v2, v4, v4, v3}, Ljava/time/LocalTime;-><init>(IIII)V

    sput-object v1, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    .line 119
    return-void
.end method

.method private constructor <init>(IIII)V
    .registers 6
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "nanoOfSecond"    # I

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    int-to-byte v0, p1

    iput-byte v0, p0, Ljava/time/LocalTime;->hour:B

    .line 467
    int-to-byte v0, p2

    iput-byte v0, p0, Ljava/time/LocalTime;->minute:B

    .line 468
    int-to-byte v0, p3

    iput-byte v0, p0, Ljava/time/LocalTime;->second:B

    .line 469
    iput p4, p0, Ljava/time/LocalTime;->nano:I

    .line 470
    return-void
.end method

.method private static create(IIII)Ljava/time/LocalTime;
    .registers 5
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "nanoOfSecond"    # I

    .prologue
    .line 451
    or-int v0, p1, p2

    or-int/2addr v0, p3

    if-nez v0, :cond_a

    .line 452
    sget-object v0, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    aget-object v0, v0, p0

    return-object v0

    .line 454
    :cond_a
    new-instance v0, Ljava/time/LocalTime;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/time/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 399
    const-string/jumbo v1, "temporal"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 400
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    .line 401
    .local v0, "time":Ljava/time/LocalTime;
    if-nez v0, :cond_3f

    .line 402
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to obtain LocalTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    const-string/jumbo v3, " of type "

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_3f
    return-object v0
.end method

.method private get0(Ljava/time/temporal/TemporalField;)I
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 656
    invoke-static {}, Ljava/time/LocalTime;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_8a

    .line 673
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 657
    :pswitch_2a
    iget v1, p0, Ljava/time/LocalTime;->nano:I

    return v1

    .line 658
    :pswitch_2d
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v2, "Invalid field \'NanoOfDay\' for get() method, use getLong() instead"

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 659
    :pswitch_36
    iget v1, p0, Ljava/time/LocalTime;->nano:I

    div-int/lit16 v1, v1, 0x3e8

    return v1

    .line 660
    :pswitch_3b
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v2, "Invalid field \'MicroOfDay\' for get() method, use getLong() instead"

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 661
    :pswitch_44
    iget v1, p0, Ljava/time/LocalTime;->nano:I

    const v2, 0xf4240

    div-int/2addr v1, v2

    return v1

    .line 662
    :pswitch_4b
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v1, v2

    return v1

    .line 663
    :pswitch_55
    iget-byte v1, p0, Ljava/time/LocalTime;->second:B

    return v1

    .line 664
    :pswitch_58
    invoke-virtual {p0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v1

    return v1

    .line 665
    :pswitch_5d
    iget-byte v1, p0, Ljava/time/LocalTime;->minute:B

    return v1

    .line 666
    :pswitch_60
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    mul-int/lit8 v1, v1, 0x3c

    iget-byte v2, p0, Ljava/time/LocalTime;->minute:B

    add-int/2addr v1, v2

    return v1

    .line 667
    :pswitch_68
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    rem-int/lit8 v1, v1, 0xc

    return v1

    .line 668
    :pswitch_6d
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    rem-int/lit8 v0, v1, 0xc

    .local v0, "ham":I
    rem-int/lit8 v1, v0, 0xc

    if-nez v1, :cond_77

    const/16 v0, 0xc

    .end local v0    # "ham":I
    :cond_77
    return v0

    .line 669
    :pswitch_78
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    return v1

    .line 670
    :pswitch_7b
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    if-nez v1, :cond_82

    const/16 v1, 0x18

    :goto_81
    return v1

    :cond_82
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    goto :goto_81

    .line 671
    :pswitch_85
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    div-int/lit8 v1, v1, 0xc

    return v1

    .line 656
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_85
        :pswitch_6d
        :pswitch_7b
        :pswitch_68
        :pswitch_78
        :pswitch_3b
        :pswitch_36
        :pswitch_4b
        :pswitch_44
        :pswitch_60
        :pswitch_5d
        :pswitch_2d
        :pswitch_2a
        :pswitch_58
        :pswitch_55
    .end packed-switch
.end method

.method public static now()Ljava/time/LocalTime;
    .registers 1

    .prologue
    .line 238
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalTime;->now(Ljava/time/Clock;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/LocalTime;
    .registers 11
    .param p0, "clock"    # Ljava/time/Clock;

    .prologue
    .line 268
    const-string/jumbo v5, "clock"

    invoke-static {p0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v2

    .line 271
    .local v2, "now":Ljava/time/Instant;
    invoke-virtual {p0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v3

    .line 272
    .local v3, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {v2}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    int-to-long v8, v5

    add-long v0, v6, v8

    .line 273
    .local v0, "localSecond":J
    const-wide/32 v6, 0x15180

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v6

    long-to-int v4, v6

    .line 274
    .local v4, "secsOfDay":I
    int-to-long v6, v4

    const-wide/32 v8, 0x3b9aca00

    mul-long/2addr v6, v8

    invoke-virtual {v2}, Ljava/time/Instant;->getNano()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    return-object v5
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/LocalTime;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 254
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalTime;->now(Ljava/time/Clock;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(II)Ljava/time/LocalTime;
    .registers 6
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .prologue
    const/4 v1, 0x0

    .line 290
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 291
    if-nez p1, :cond_e

    .line 292
    sget-object v0, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    aget-object v0, v0, p0

    return-object v0

    .line 294
    :cond_e
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 295
    new-instance v0, Ljava/time/LocalTime;

    invoke-direct {v0, p0, p1, v1, v1}, Ljava/time/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static of(III)Ljava/time/LocalTime;
    .registers 7
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I

    .prologue
    const/4 v1, 0x0

    .line 311
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 312
    or-int v0, p1, p2

    if-nez v0, :cond_10

    .line 313
    sget-object v0, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    aget-object v0, v0, p0

    return-object v0

    .line 315
    :cond_10
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 316
    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 317
    new-instance v0, Ljava/time/LocalTime;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/time/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static of(IIII)Ljava/time/LocalTime;
    .registers 8
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "nanoOfSecond"    # I

    .prologue
    .line 333
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 334
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 335
    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 336
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 337
    invoke-static {p0, p1, p2, p3}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofNanoOfDay(J)Ljava/time/LocalTime;
    .registers 14
    .param p0, "nanoOfDay"    # J

    .prologue
    const-wide v10, 0x34630b8a000L

    const-wide v8, 0xdf8475800L

    const-wide/32 v6, 0x3b9aca00

    .line 370
    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, p0, p1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 371
    div-long v4, p0, v10

    long-to-int v0, v4

    .line 372
    .local v0, "hours":I
    int-to-long v4, v0

    mul-long/2addr v4, v10

    sub-long/2addr p0, v4

    .line 373
    div-long v4, p0, v8

    long-to-int v1, v4

    .line 374
    .local v1, "minutes":I
    int-to-long v4, v1

    mul-long/2addr v4, v8

    sub-long/2addr p0, v4

    .line 375
    div-long v4, p0, v6

    long-to-int v2, v4

    .line 376
    .local v2, "seconds":I
    int-to-long v4, v2

    mul-long/2addr v4, v6

    sub-long/2addr p0, v4

    .line 377
    long-to-int v3, p0

    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v3

    return-object v3
.end method

.method public static ofSecondOfDay(J)Ljava/time/LocalTime;
    .registers 6
    .param p0, "secondOfDay"    # J

    .prologue
    .line 352
    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, p0, p1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 353
    const-wide/16 v2, 0xe10

    div-long v2, p0, v2

    long-to-int v0, v2

    .line 354
    .local v0, "hours":I
    mul-int/lit16 v2, v0, 0xe10

    int-to-long v2, v2

    sub-long/2addr p0, v2

    .line 355
    const-wide/16 v2, 0x3c

    div-long v2, p0, v2

    long-to-int v1, v2

    .line 356
    .local v1, "minutes":I
    mul-int/lit8 v2, v1, 0x3c

    int-to-long v2, v2

    sub-long/2addr p0, v2

    .line 357
    long-to-int v2, p0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v2

    return-object v2
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 420
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalTime;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 434
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$3:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    .line 435
    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/LocalTime;
    .registers 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1665
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 1666
    .local v0, "hour":I
    const/4 v1, 0x0

    .line 1667
    .local v1, "minute":I
    const/4 v3, 0x0

    .line 1668
    .local v3, "second":I
    const/4 v2, 0x0

    .line 1669
    .local v2, "nano":I
    if-gez v0, :cond_f

    .line 1670
    not-int v0, v0

    .line 1684
    :goto_a
    invoke-static {v0, v1, v3, v2}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v4

    return-object v4

    .line 1672
    :cond_f
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 1673
    if-gez v1, :cond_17

    .line 1674
    not-int v1, v1

    goto :goto_a

    .line 1676
    :cond_17
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    .line 1677
    if-gez v3, :cond_1f

    .line 1678
    not-int v3, v3

    goto :goto_a

    .line 1680
    :cond_1f
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    goto :goto_a
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
    .line 1639
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1629
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 1327
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atDate(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;
    .registers 3
    .param p1, "date"    # Ljava/time/LocalDate;

    .prologue
    .line 1421
    invoke-static {p1, p0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .registers 3
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 1434
    invoke-static {p0, p1}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1465
    check-cast p1, Ljava/time/LocalTime;

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/LocalTime;)I
    .registers 5
    .param p1, "other"    # Ljava/time/LocalTime;

    .prologue
    .line 1478
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    iget-byte v2, p1, Ljava/time/LocalTime;->hour:B

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1479
    .local v0, "cmp":I
    if-nez v0, :cond_26

    .line 1480
    iget-byte v1, p0, Ljava/time/LocalTime;->minute:B

    iget-byte v2, p1, Ljava/time/LocalTime;->minute:B

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1481
    if-nez v0, :cond_26

    .line 1482
    iget-byte v1, p0, Ljava/time/LocalTime;->second:B

    iget-byte v2, p1, Ljava/time/LocalTime;->second:B

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1483
    if-nez v0, :cond_26

    .line 1484
    iget v1, p0, Ljava/time/LocalTime;->nano:I

    iget v2, p1, Ljava/time/LocalTime;->nano:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1488
    :cond_26
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1532
    if-ne p0, p1, :cond_5

    .line 1533
    return v1

    .line 1535
    :cond_5
    instance-of v3, p1, Ljava/time/LocalTime;

    if-eqz v3, :cond_29

    move-object v0, p1

    .line 1536
    check-cast v0, Ljava/time/LocalTime;

    .line 1537
    .local v0, "other":Ljava/time/LocalTime;
    iget-byte v3, p0, Ljava/time/LocalTime;->hour:B

    iget-byte v4, v0, Ljava/time/LocalTime;->hour:B

    if-ne v3, v4, :cond_27

    iget-byte v3, p0, Ljava/time/LocalTime;->minute:B

    iget-byte v4, v0, Ljava/time/LocalTime;->minute:B

    if-ne v3, v4, :cond_27

    .line 1538
    iget-byte v3, p0, Ljava/time/LocalTime;->second:B

    iget-byte v4, v0, Ljava/time/LocalTime;->second:B

    if-ne v3, v4, :cond_27

    iget v3, p0, Ljava/time/LocalTime;->nano:I

    iget v4, v0, Ljava/time/LocalTime;->nano:I

    if-ne v3, v4, :cond_25

    .line 1537
    :goto_24
    return v1

    :cond_25
    move v1, v2

    .line 1538
    goto :goto_24

    :cond_27
    move v1, v2

    .line 1537
    goto :goto_24

    .line 1540
    .end local v0    # "other":Ljava/time/LocalTime;
    :cond_29
    return v2
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 1406
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1407
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 612
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_9

    .line 613
    invoke-direct {p0, p1}, Ljava/time/LocalTime;->get0(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 615
    :cond_9
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getHour()I
    .registers 2

    .prologue
    .line 683
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    return v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 643
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1f

    .line 644
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    .line 645
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    return-wide v0

    .line 647
    :cond_d
    sget-object v0, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_19

    .line 648
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    .line 650
    :cond_19
    invoke-direct {p0, p1}, Ljava/time/LocalTime;->get0(Ljava/time/temporal/TemporalField;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 652
    :cond_1f
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .registers 2

    .prologue
    .line 692
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    return v0
.end method

.method public getNano()I
    .registers 2

    .prologue
    .line 710
    iget v0, p0, Ljava/time/LocalTime;->nano:I

    return v0
.end method

.method public getSecond()I
    .registers 2

    .prologue
    .line 701
    iget-byte v0, p0, Ljava/time/LocalTime;->second:B

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 1550
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    .line 1551
    .local v0, "nod":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public isAfter(Ljava/time/LocalTime;)Z
    .registers 4
    .param p1, "other"    # Ljava/time/LocalTime;

    .prologue
    const/4 v0, 0x0

    .line 1501
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v1

    if-lez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isBefore(Ljava/time/LocalTime;)Z
    .registers 4
    .param p1, "other"    # Ljava/time/LocalTime;

    .prologue
    const/4 v0, 0x0

    .line 1514
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v1

    if-gez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 512
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_9

    .line 513
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    return v0

    .line 515
    :cond_9
    if-eqz p1, :cond_10

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 3
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 548
    instance-of v0, p1, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_9

    .line 549
    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    return v0

    .line 551
    :cond_9
    if-eqz p1, :cond_10

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;
    .registers 9
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 1200
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_15
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalTime;
    .registers 3
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 1176
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 1179
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 1153
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public minusHours(J)Ljava/time/LocalTime;
    .registers 6
    .param p1, "hoursToSubtract"    # J

    .prologue
    .line 1216
    const-wide/16 v0, 0x18

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMinutes(J)Ljava/time/LocalTime;
    .registers 6
    .param p1, "minutesToSubtract"    # J

    .prologue
    .line 1231
    const-wide/16 v0, 0x5a0

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalTime;->plusMinutes(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public minusNanos(J)Ljava/time/LocalTime;
    .registers 6
    .param p1, "nanosToSubtract"    # J

    .prologue
    .line 1261
    const-wide v0, 0x4e94914f0000L

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Ljava/time/LocalTime;
    .registers 6
    .param p1, "secondsToSubtract"    # J

    .prologue
    .line 1246
    const-wide/32 v0, 0x15180

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;
    .registers 9
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 1039
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_6b

    .line 1040
    invoke-static {}, Ljava/time/LocalTime;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v1

    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_72

    .line 1049
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

    .line 1041
    :pswitch_2e
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1042
    :pswitch_33
    const-wide v0, 0x141dd76000L

    rem-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1043
    :pswitch_42
    const-wide/32 v0, 0x5265c00

    rem-long v0, p1, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1044
    :pswitch_50
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1045
    :pswitch_55
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalTime;->plusMinutes(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1046
    :pswitch_5a
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1047
    :pswitch_5f
    const-wide/16 v0, 0x2

    rem-long v0, p1, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1051
    :cond_6b
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    return-object v0

    .line 1040
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_5a
        :pswitch_33
        :pswitch_42
        :pswitch_55
        :pswitch_2e
        :pswitch_50
    .end packed-switch
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalTime;
    .registers 3
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 982
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 985
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 959
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Ljava/time/LocalTime;
    .registers 8
    .param p1, "hoursToAdd"    # J

    .prologue
    .line 1067
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_7

    .line 1068
    return-object p0

    .line 1070
    :cond_7
    const-wide/16 v2, 0x18

    rem-long v2, p1, v2

    long-to-int v1, v2

    iget-byte v2, p0, Ljava/time/LocalTime;->hour:B

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    rem-int/lit8 v0, v1, 0x18

    .line 1071
    .local v0, "newHour":I
    iget-byte v1, p0, Ljava/time/LocalTime;->minute:B

    iget-byte v2, p0, Ljava/time/LocalTime;->second:B

    iget v3, p0, Ljava/time/LocalTime;->nano:I

    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public plusMinutes(J)Ljava/time/LocalTime;
    .registers 10
    .param p1, "minutesToAdd"    # J

    .prologue
    .line 1086
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_7

    .line 1087
    return-object p0

    .line 1089
    :cond_7
    iget-byte v4, p0, Ljava/time/LocalTime;->hour:B

    mul-int/lit8 v4, v4, 0x3c

    iget-byte v5, p0, Ljava/time/LocalTime;->minute:B

    add-int v0, v4, v5

    .line 1090
    .local v0, "mofd":I
    const-wide/16 v4, 0x5a0

    rem-long v4, p1, v4

    long-to-int v4, v4

    add-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x5a0

    rem-int/lit16 v3, v4, 0x5a0

    .line 1091
    .local v3, "newMofd":I
    if-ne v0, v3, :cond_1c

    .line 1092
    return-object p0

    .line 1094
    :cond_1c
    div-int/lit8 v1, v3, 0x3c

    .line 1095
    .local v1, "newHour":I
    rem-int/lit8 v2, v3, 0x3c

    .line 1096
    .local v2, "newMinute":I
    iget-byte v4, p0, Ljava/time/LocalTime;->second:B

    iget v5, p0, Ljava/time/LocalTime;->nano:I

    invoke-static {v1, v2, v4, v5}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v4

    return-object v4
.end method

.method public plusNanos(J)Ljava/time/LocalTime;
    .registers 16
    .param p1, "nanosToAdd"    # J

    .prologue
    .line 1138
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-nez v8, :cond_7

    .line 1139
    return-object p0

    .line 1141
    :cond_7
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    .line 1142
    .local v6, "nofd":J
    const-wide v8, 0x4e94914f0000L

    rem-long v8, p1, v8

    add-long/2addr v8, v6

    const-wide v10, 0x4e94914f0000L

    add-long/2addr v8, v10

    const-wide v10, 0x4e94914f0000L

    rem-long v4, v8, v10

    .line 1143
    .local v4, "newNofd":J
    cmp-long v8, v6, v4

    if-nez v8, :cond_25

    .line 1144
    return-object p0

    .line 1146
    :cond_25
    const-wide v8, 0x34630b8a000L

    div-long v8, v4, v8

    long-to-int v0, v8

    .line 1147
    .local v0, "newHour":I
    const-wide v8, 0xdf8475800L

    div-long v8, v4, v8

    const-wide/16 v10, 0x3c

    rem-long/2addr v8, v10

    long-to-int v1, v8

    .line 1148
    .local v1, "newMinute":I
    const-wide/32 v8, 0x3b9aca00

    div-long v8, v4, v8

    const-wide/16 v10, 0x3c

    rem-long/2addr v8, v10

    long-to-int v3, v8

    .line 1149
    .local v3, "newSecond":I
    const-wide/32 v8, 0x3b9aca00

    rem-long v8, v4, v8

    long-to-int v2, v8

    .line 1150
    .local v2, "newNano":I
    invoke-static {v0, v1, v3, v2}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v8

    return-object v8
.end method

.method public plusSeconds(J)Ljava/time/LocalTime;
    .registers 12
    .param p1, "secondstoAdd"    # J

    .prologue
    const v8, 0x15180

    .line 1111
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-nez v5, :cond_a

    .line 1112
    return-object p0

    .line 1114
    :cond_a
    iget-byte v5, p0, Ljava/time/LocalTime;->hour:B

    mul-int/lit16 v5, v5, 0xe10

    .line 1115
    iget-byte v6, p0, Ljava/time/LocalTime;->minute:B

    mul-int/lit8 v6, v6, 0x3c

    .line 1114
    add-int/2addr v5, v6

    .line 1115
    iget-byte v6, p0, Ljava/time/LocalTime;->second:B

    .line 1114
    add-int v4, v5, v6

    .line 1116
    .local v4, "sofd":I
    const-wide/32 v6, 0x15180

    rem-long v6, p1, v6

    long-to-int v5, v6

    add-int/2addr v5, v4

    add-int/2addr v5, v8

    rem-int v3, v5, v8

    .line 1117
    .local v3, "newSofd":I
    if-ne v4, v3, :cond_24

    .line 1118
    return-object p0

    .line 1120
    :cond_24
    div-int/lit16 v0, v3, 0xe10

    .line 1121
    .local v0, "newHour":I
    div-int/lit8 v5, v3, 0x3c

    rem-int/lit8 v1, v5, 0x3c

    .line 1122
    .local v1, "newMinute":I
    rem-int/lit8 v2, v3, 0x3c

    .line 1123
    .local v2, "newSecond":I
    iget v5, p0, Ljava/time/LocalTime;->nano:I

    invoke-static {v0, v1, v2, v5}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v5

    return-object v5
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 4
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
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    const/4 v1, 0x0

    .line 1286
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_d

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_e

    .line 1288
    :cond_d
    return-object v1

    .line 1287
    :cond_e
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_d

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_d

    .line 1289
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_21

    .line 1290
    return-object p0

    .line 1291
    :cond_21
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_28

    .line 1292
    return-object v1

    .line 1293
    :cond_28
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_31

    .line 1294
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 1298
    :cond_31
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 580
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toNanoOfDay()J
    .registers 7

    .prologue
    .line 1458
    iget-byte v2, p0, Ljava/time/LocalTime;->hour:B

    int-to-long v2, v2

    const-wide v4, 0x34630b8a000L

    mul-long v0, v2, v4

    .line 1459
    .local v0, "total":J
    iget-byte v2, p0, Ljava/time/LocalTime;->minute:B

    int-to-long v2, v2

    const-wide v4, 0xdf8475800L

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1460
    iget-byte v2, p0, Ljava/time/LocalTime;->second:B

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1461
    iget v2, p0, Ljava/time/LocalTime;->nano:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1462
    return-wide v0
.end method

.method public toSecondOfDay()I
    .registers 3

    .prologue
    .line 1445
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    mul-int/lit16 v0, v1, 0xe10

    .line 1446
    .local v0, "total":I
    iget-byte v1, p0, Ljava/time/LocalTime;->minute:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    .line 1447
    iget-byte v1, p0, Ljava/time/LocalTime;->second:B

    add-int/2addr v0, v1

    .line 1448
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .prologue
    const v9, 0xf4240

    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x12

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1574
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    .line 1575
    .local v1, "hourValue":I
    iget-byte v2, p0, Ljava/time/LocalTime;->minute:B

    .line 1576
    .local v2, "minuteValue":I
    iget-byte v4, p0, Ljava/time/LocalTime;->second:B

    .line 1577
    .local v4, "secondValue":I
    iget v3, p0, Ljava/time/LocalTime;->nano:I

    .line 1578
    .local v3, "nanoValue":I
    if-ge v1, v8, :cond_5d

    const-string/jumbo v5, "0"

    :goto_1a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1579
    if-ge v2, v8, :cond_61

    const-string/jumbo v5, ":0"

    .line 1578
    :goto_27
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1580
    if-gtz v4, :cond_32

    if-lez v3, :cond_58

    .line 1581
    :cond_32
    if-ge v4, v8, :cond_65

    const-string/jumbo v5, ":0"

    :goto_37
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1582
    if-lez v3, :cond_58

    .line 1583
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1584
    rem-int v5, v3, v9

    if-nez v5, :cond_69

    .line 1585
    div-int v5, v3, v9

    add-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    :cond_58
    :goto_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1578
    :cond_5d
    const-string/jumbo v5, ""

    goto :goto_1a

    .line 1579
    :cond_61
    const-string/jumbo v5, ":"

    goto :goto_27

    .line 1581
    :cond_65
    const-string/jumbo v5, ":"

    goto :goto_37

    .line 1586
    :cond_69
    rem-int/lit16 v5, v3, 0x3e8

    if-nez v5, :cond_7c

    .line 1587
    div-int/lit16 v5, v3, 0x3e8

    add-int/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 1589
    :cond_7c
    const v5, 0x3b9aca00

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_58
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;
    .registers 12
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 944
    sget-object v5, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v5, :cond_5

    .line 945
    return-object p0

    .line 947
    :cond_5
    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v4

    .line 948
    .local v4, "unitDur":Ljava/time/Duration;
    invoke-virtual {v4}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v6

    const-wide/32 v8, 0x15180

    cmp-long v5, v6, v8

    if-lez v5, :cond_1d

    .line 949
    new-instance v5, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v6, "Unit is too large to be used for truncation"

    invoke-direct {v5, v6}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 951
    :cond_1d
    invoke-virtual {v4}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    .line 952
    .local v0, "dur":J
    const-wide v6, 0x4e94914f0000L

    rem-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_36

    .line 953
    new-instance v5, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v6, "Unit must divide into a standard day without remainder"

    invoke-direct {v5, v6}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 955
    :cond_36
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    .line 956
    .local v2, "nod":J
    div-long v6, v2, v0

    mul-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    return-object v5
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 11
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 1379
    invoke-static {p1}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v0

    .line 1380
    .local v0, "end":Ljava/time/LocalTime;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_66

    .line 1381
    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 1382
    .local v2, "nanosUntil":J
    invoke-static {}, Ljava/time/LocalTime;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v4

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_6c

    .line 1391
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1383
    :pswitch_3c
    return-wide v2

    .line 1384
    :pswitch_3d
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    return-wide v4

    .line 1385
    :pswitch_42
    const-wide/32 v4, 0xf4240

    div-long v4, v2, v4

    return-wide v4

    .line 1386
    :pswitch_48
    const-wide/32 v4, 0x3b9aca00

    div-long v4, v2, v4

    return-wide v4

    .line 1387
    :pswitch_4e
    const-wide v4, 0xdf8475800L

    div-long v4, v2, v4

    return-wide v4

    .line 1388
    :pswitch_56
    const-wide v4, 0x34630b8a000L

    div-long v4, v2, v4

    return-wide v4

    .line 1389
    :pswitch_5e
    const-wide v4, 0x274a48a78000L

    div-long v4, v2, v4

    return-wide v4

    .line 1393
    .end local v2    # "nanosUntil":J
    :cond_66
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v4

    return-wide v4

    .line 1382
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_56
        :pswitch_3d
        :pswitch_42
        :pswitch_4e
        :pswitch_3c
        :pswitch_48
    .end packed-switch
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalTime;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .prologue
    .line 738
    instance-of v0, p1, Ljava/time/LocalTime;

    if-eqz v0, :cond_7

    .line 739
    check-cast p1, Ljava/time/LocalTime;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    return-object p1

    .line 741
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_7
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;
    .registers 12
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    const-wide/16 v6, 0xc

    const-wide/16 v2, 0x0

    .line 828
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_c8

    move-object v0, p1

    .line 829
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 830
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 831
    invoke-static {}, Ljava/time/LocalTime;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_d0

    .line 848
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 832
    :pswitch_35
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 833
    :pswitch_3b
    invoke-static {p2, p3}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 834
    :pswitch_40
    long-to-int v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 835
    :pswitch_48
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 836
    :pswitch_50
    long-to-int v1, p2

    const v2, 0xf4240

    mul-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 837
    :pswitch_5a
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 838
    :pswitch_63
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->withSecond(I)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 839
    :pswitch_69
    invoke-virtual {p0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v1

    int-to-long v2, v1

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 840
    :pswitch_75
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->withMinute(I)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 841
    :pswitch_7b
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    mul-int/lit8 v1, v1, 0x3c

    iget-byte v2, p0, Ljava/time/LocalTime;->minute:B

    add-int/2addr v1, v2

    int-to-long v2, v1

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalTime;->plusMinutes(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 842
    :pswitch_8a
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    rem-int/lit8 v1, v1, 0xc

    int-to-long v2, v1

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 843
    :pswitch_96
    cmp-long v1, p2, v6

    if-nez v1, :cond_9b

    move-wide p2, v2

    .end local p2    # "newValue":J
    :cond_9b
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    rem-int/lit8 v1, v1, 0xc

    int-to-long v2, v1

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 844
    .restart local p2    # "newValue":J
    :pswitch_a7
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->withHour(I)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 845
    :pswitch_ad
    const-wide/16 v4, 0x18

    cmp-long v1, p2, v4

    if-nez v1, :cond_b9

    :goto_b3
    long-to-int v1, v2

    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->withHour(I)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    :cond_b9
    move-wide v2, p2

    goto :goto_b3

    .line 846
    :pswitch_bb
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    div-int/lit8 v1, v1, 0xc

    int-to-long v2, v1

    sub-long v2, p2, v2

    mul-long/2addr v2, v6

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 850
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_c8
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/LocalTime;

    return-object v1

    .line 831
    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_96
        :pswitch_ad
        :pswitch_8a
        :pswitch_a7
        :pswitch_48
        :pswitch_40
        :pswitch_5a
        :pswitch_50
        :pswitch_7b
        :pswitch_75
        :pswitch_3b
        :pswitch_35
        :pswitch_69
        :pswitch_63
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 713
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 6

    .prologue
    .line 744
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public withHour(I)Ljava/time/LocalTime;
    .registers 6
    .param p1, "hour"    # I

    .prologue
    .line 864
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    if-ne v0, p1, :cond_5

    .line 865
    return-object p0

    .line 867
    :cond_5
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 868
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    iget-byte v1, p0, Ljava/time/LocalTime;->second:B

    iget v2, p0, Ljava/time/LocalTime;->nano:I

    invoke-static {p1, v0, v1, v2}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Ljava/time/LocalTime;
    .registers 6
    .param p1, "minute"    # I

    .prologue
    .line 881
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    if-ne v0, p1, :cond_5

    .line 882
    return-object p0

    .line 884
    :cond_5
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 885
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    iget-byte v1, p0, Ljava/time/LocalTime;->second:B

    iget v2, p0, Ljava/time/LocalTime;->nano:I

    invoke-static {v0, p1, v1, v2}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Ljava/time/LocalTime;
    .registers 6
    .param p1, "nanoOfSecond"    # I

    .prologue
    .line 915
    iget v0, p0, Ljava/time/LocalTime;->nano:I

    if-ne v0, p1, :cond_5

    .line 916
    return-object p0

    .line 918
    :cond_5
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 919
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    iget-byte v1, p0, Ljava/time/LocalTime;->minute:B

    iget-byte v2, p0, Ljava/time/LocalTime;->second:B

    invoke-static {v0, v1, v2, p1}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public withSecond(I)Ljava/time/LocalTime;
    .registers 6
    .param p1, "second"    # I

    .prologue
    .line 898
    iget-byte v0, p0, Ljava/time/LocalTime;->second:B

    if-ne v0, p1, :cond_5

    .line 899
    return-object p0

    .line 901
    :cond_5
    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 902
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    iget-byte v1, p0, Ljava/time/LocalTime;->minute:B

    iget v2, p0, Ljava/time/LocalTime;->nano:I

    invoke-static {v0, v1, p1, v2}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

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
    .line 1643
    iget v0, p0, Ljava/time/LocalTime;->nano:I

    if-nez v0, :cond_30

    .line 1644
    iget-byte v0, p0, Ljava/time/LocalTime;->second:B

    if-nez v0, :cond_1f

    .line 1645
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    if-nez v0, :cond_13

    .line 1646
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1662
    :goto_12
    return-void

    .line 1648
    :cond_13
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1649
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_12

    .line 1652
    :cond_1f
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1653
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1654
    iget-byte v0, p0, Ljava/time/LocalTime;->second:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_12

    .line 1657
    :cond_30
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1658
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1659
    iget-byte v0, p0, Ljava/time/LocalTime;->second:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1660
    iget v0, p0, Ljava/time/LocalTime;->nano:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_12
.end method
