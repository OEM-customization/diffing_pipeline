.class public final Ljava/time/YearMonth;
.super Ljava/lang/Object;
.source "YearMonth.java"

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
        "Ljava/time/YearMonth;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field private static final synthetic -java-time-temporal-ChronoUnitSwitchesValues:[I = null

.field private static final PARSER:Ljava/time/format/DateTimeFormatter;

.field private static final serialVersionUID:J = 0x3a0e6ceaf57ebbc6L


# instance fields
.field private final month:I

.field private final year:I


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/YearMonth;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/YearMonth;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_18} :catch_184

    :goto_18
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_22} :catch_181

    :goto_22
    :try_start_22
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_17e

    :goto_2c
    :try_start_2c
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_36} :catch_17b

    :goto_36
    :try_start_36
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_40} :catch_178

    :goto_40
    :try_start_40
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4a} :catch_175

    :goto_4a
    :try_start_4a
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_172

    :goto_54
    :try_start_54
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5e} :catch_16f

    :goto_5e
    :try_start_5e
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_68} :catch_16c

    :goto_68
    :try_start_68
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_72} :catch_169

    :goto_72
    :try_start_72
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7c} :catch_166

    :goto_7c
    :try_start_7c
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_85} :catch_163

    :goto_85
    :try_start_85
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_8f} :catch_160

    :goto_8f
    :try_start_8f
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_99} :catch_15d

    :goto_99
    :try_start_99
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_a3} :catch_15a

    :goto_a3
    :try_start_a3
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_ad} :catch_157

    :goto_ad
    :try_start_ad
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b7} :catch_154

    :goto_b7
    :try_start_b7
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_c1} :catch_151

    :goto_c1
    :try_start_c1
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c1 .. :try_end_cb} :catch_14e

    :goto_cb
    :try_start_cb
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d5} :catch_14c

    :goto_d5
    :try_start_d5
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5 .. :try_end_df} :catch_14a

    :goto_df
    :try_start_df
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_df .. :try_end_e8} :catch_148

    :goto_e8
    :try_start_e8
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_f2} :catch_146

    :goto_f2
    :try_start_f2
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fc} :catch_144

    :goto_fc
    :try_start_fc
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_106
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_106} :catch_142

    :goto_106
    :try_start_106
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_106 .. :try_end_10f} :catch_140

    :goto_10f
    :try_start_10f
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_119
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10f .. :try_end_119} :catch_13e

    :goto_119
    :try_start_119
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_123
    .catch Ljava/lang/NoSuchFieldError; {:try_start_119 .. :try_end_123} :catch_13c

    :goto_123
    :try_start_123
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_123 .. :try_end_12c} :catch_13a

    :goto_12c
    :try_start_12c
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_135
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_135} :catch_138

    :goto_135
    sput-object v0, Ljava/time/YearMonth;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    return-object v0

    :catch_138
    move-exception v1

    goto :goto_135

    :catch_13a
    move-exception v1

    goto :goto_12c

    :catch_13c
    move-exception v1

    goto :goto_123

    :catch_13e
    move-exception v1

    goto :goto_119

    :catch_140
    move-exception v1

    goto :goto_10f

    :catch_142
    move-exception v1

    goto :goto_106

    :catch_144
    move-exception v1

    goto :goto_fc

    :catch_146
    move-exception v1

    goto :goto_f2

    :catch_148
    move-exception v1

    goto :goto_e8

    :catch_14a
    move-exception v1

    goto :goto_df

    :catch_14c
    move-exception v1

    goto :goto_d5

    :catch_14e
    move-exception v1

    goto/16 :goto_cb

    :catch_151
    move-exception v1

    goto/16 :goto_c1

    :catch_154
    move-exception v1

    goto/16 :goto_b7

    :catch_157
    move-exception v1

    goto/16 :goto_ad

    :catch_15a
    move-exception v1

    goto/16 :goto_a3

    :catch_15d
    move-exception v1

    goto/16 :goto_99

    :catch_160
    move-exception v1

    goto/16 :goto_8f

    :catch_163
    move-exception v1

    goto/16 :goto_85

    :catch_166
    move-exception v1

    goto/16 :goto_7c

    :catch_169
    move-exception v1

    goto/16 :goto_72

    :catch_16c
    move-exception v1

    goto/16 :goto_68

    :catch_16f
    move-exception v1

    goto/16 :goto_5e

    :catch_172
    move-exception v1

    goto/16 :goto_54

    :catch_175
    move-exception v1

    goto/16 :goto_4a

    :catch_178
    move-exception v1

    goto/16 :goto_40

    :catch_17b
    move-exception v1

    goto/16 :goto_36

    :catch_17e
    move-exception v1

    goto/16 :goto_2c

    :catch_181
    move-exception v1

    goto/16 :goto_22

    :catch_184
    move-exception v1

    goto/16 :goto_18
.end method

.method private static synthetic -getjava-time-temporal-ChronoUnitSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/YearMonth;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/YearMonth;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_cd

    :goto_17
    :try_start_17
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_ca

    :goto_21
    :try_start_21
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2a} :catch_c7

    :goto_2a
    :try_start_2a
    sget-object v1, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_33} :catch_c4

    :goto_33
    :try_start_33
    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_c1

    :goto_3d
    :try_start_3d
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_bf

    :goto_47
    :try_start_47
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_51} :catch_bd

    :goto_51
    :try_start_51
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5b} :catch_bb

    :goto_5b
    :try_start_5b
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_64} :catch_b9

    :goto_64
    :try_start_64
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_b7

    :goto_6e
    :try_start_6e
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_b5

    :goto_78
    :try_start_78
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_81} :catch_b3

    :goto_81
    :try_start_81
    sget-object v1, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8b} :catch_b1

    :goto_8b
    :try_start_8b
    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_95} :catch_af

    :goto_95
    :try_start_95
    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_9f} :catch_ad

    :goto_9f
    :try_start_9f
    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a8} :catch_ab

    :goto_a8
    sput-object v0, Ljava/time/YearMonth;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    return-object v0

    :catch_ab
    move-exception v1

    goto :goto_a8

    :catch_ad
    move-exception v1

    goto :goto_9f

    :catch_af
    move-exception v1

    goto :goto_95

    :catch_b1
    move-exception v1

    goto :goto_8b

    :catch_b3
    move-exception v1

    goto :goto_81

    :catch_b5
    move-exception v1

    goto :goto_78

    :catch_b7
    move-exception v1

    goto :goto_6e

    :catch_b9
    move-exception v1

    goto :goto_64

    :catch_bb
    move-exception v1

    goto :goto_5b

    :catch_bd
    move-exception v1

    goto :goto_51

    :catch_bf
    move-exception v1

    goto :goto_47

    :catch_c1
    move-exception v1

    goto/16 :goto_3d

    :catch_c4
    move-exception v1

    goto/16 :goto_33

    :catch_c7
    move-exception v1

    goto/16 :goto_2a

    :catch_ca
    move-exception v1

    goto/16 :goto_21

    :catch_cd
    move-exception v1

    goto/16 :goto_17
.end method

.method static synthetic -java_time_YearMonth-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;
    .registers 2

    .prologue
    .line 289
    invoke-static {p0}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 135
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 136
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    const/4 v3, 0x4

    const/16 v4, 0xa

    .line 135
    invoke-virtual {v0, v1, v3, v4, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 137
    const/16 v1, 0x2d

    .line 135
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 138
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x2

    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/YearMonth;->PARSER:Ljava/time/format/DateTimeFormatter;

    .line 125
    return-void
.end method

.method private constructor <init>(II)V
    .registers 3
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput p1, p0, Ljava/time/YearMonth;->year:I

    .line 301
    iput p2, p0, Ljava/time/YearMonth;->month:I

    .line 302
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 246
    instance-of v1, p0, Ljava/time/YearMonth;

    if-eqz v1, :cond_7

    .line 247
    check-cast p0, Ljava/time/YearMonth;

    .end local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object p0

    .line 249
    .restart local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_7
    const-string/jumbo v1, "temporal"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    :try_start_d
    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-static {p0}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 252
    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object p0

    .line 254
    :cond_1d
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v2}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;
    :try_end_2c
    .catch Ljava/time/DateTimeException; {:try_start_d .. :try_end_2c} :catch_2e

    move-result-object v1

    return-object v1

    .line 255
    :catch_2e
    move-exception v0

    .line 256
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to obtain YearMonth from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 257
    const-string/jumbo v3, " of type "

    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getProlepticMonth()J
    .registers 5

    .prologue
    .line 494
    iget v0, p0, Ljava/time/YearMonth;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Ljava/time/YearMonth;->month:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static now()Ljava/time/YearMonth;
    .registers 1

    .prologue
    .line 163
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/YearMonth;->now(Ljava/time/Clock;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/YearMonth;
    .registers 4
    .param p0, "clock"    # Ljava/time/Clock;

    .prologue
    .line 193
    invoke-static {p0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    .line 194
    .local v0, "now":Ljava/time/LocalDate;
    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/YearMonth;->of(ILjava/time/Month;)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/YearMonth;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 179
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/YearMonth;->now(Ljava/time/Clock;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static of(II)Ljava/time/YearMonth;
    .registers 6
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 220
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 221
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 222
    new-instance v0, Ljava/time/YearMonth;

    invoke-direct {v0, p0, p1}, Ljava/time/YearMonth;-><init>(II)V

    return-object v0
.end method

.method public static of(ILjava/time/Month;)Ljava/time/YearMonth;
    .registers 3
    .param p0, "year"    # I
    .param p1, "month"    # Ljava/time/Month;

    .prologue
    .line 207
    const-string/jumbo v0, "month"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    invoke-virtual {p1}, Ljava/time/Month;->getValue()I

    move-result v0

    invoke-static {p0, v0}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/YearMonth;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 274
    sget-object v0, Ljava/time/YearMonth;->PARSER:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/YearMonth;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/YearMonth;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 288
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$8:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    .line 289
    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/YearMonth;
    .registers 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1239
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 1240
    .local v1, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 1241
    .local v0, "month":B
    invoke-static {v1, v0}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;

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
    .line 1230
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private with(II)Ljava/time/YearMonth;
    .registers 4
    .param p1, "newYear"    # I
    .param p2, "newMonth"    # I

    .prologue
    .line 313
    iget v0, p0, Ljava/time/YearMonth;->year:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Ljava/time/YearMonth;->month:I

    if-ne v0, p2, :cond_9

    .line 314
    return-object p0

    .line 316
    :cond_9
    new-instance v0, Ljava/time/YearMonth;

    invoke-direct {v0, p1, p2}, Ljava/time/YearMonth;-><init>(II)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1220
    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 985
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 986
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_15
    sget-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-direct {p0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atDay(I)Ljava/time/LocalDate;
    .registers 4
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 1089
    iget v0, p0, Ljava/time/YearMonth;->year:I

    iget v1, p0, Ljava/time/YearMonth;->month:I

    invoke-static {v0, v1, p1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public atEndOfMonth()Ljava/time/LocalDate;
    .registers 4

    .prologue
    .line 1107
    iget v0, p0, Ljava/time/YearMonth;->year:I

    iget v1, p0, Ljava/time/YearMonth;->month:I

    invoke-virtual {p0}, Ljava/time/YearMonth;->lengthOfMonth()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1110
    check-cast p1, Ljava/time/YearMonth;

    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->compareTo(Ljava/time/YearMonth;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/YearMonth;)I
    .registers 5
    .param p1, "other"    # Ljava/time/YearMonth;

    .prologue
    .line 1122
    iget v1, p0, Ljava/time/YearMonth;->year:I

    iget v2, p1, Ljava/time/YearMonth;->year:I

    sub-int v0, v1, v2

    .line 1123
    .local v0, "cmp":I
    if-nez v0, :cond_e

    .line 1124
    iget v1, p0, Ljava/time/YearMonth;->month:I

    iget v2, p1, Ljava/time/YearMonth;->month:I

    sub-int v0, v1, v2

    .line 1126
    :cond_e
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1160
    if-ne p0, p1, :cond_5

    .line 1161
    return v1

    .line 1163
    :cond_5
    instance-of v3, p1, Ljava/time/YearMonth;

    if-eqz v3, :cond_1b

    move-object v0, p1

    .line 1164
    check-cast v0, Ljava/time/YearMonth;

    .line 1165
    .local v0, "other":Ljava/time/YearMonth;
    iget v3, p0, Ljava/time/YearMonth;->year:I

    iget v4, v0, Ljava/time/YearMonth;->year:I

    if-ne v3, v4, :cond_19

    iget v3, p0, Ljava/time/YearMonth;->month:I

    iget v4, v0, Ljava/time/YearMonth;->month:I

    if-ne v3, v4, :cond_19

    :goto_18
    return v1

    :cond_19
    move v1, v2

    goto :goto_18

    .line 1167
    .end local v0    # "other":Ljava/time/YearMonth;
    :cond_1b
    return v2
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 1066
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1067
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const/4 v1, 0x1

    .line 480
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_52

    .line 481
    invoke-static {}, Ljava/time/YearMonth;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_58

    .line 488
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

    .line 482
    :pswitch_2f
    iget v0, p0, Ljava/time/YearMonth;->month:I

    int-to-long v0, v0

    return-wide v0

    .line 483
    :pswitch_33
    invoke-direct {p0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 484
    :pswitch_38
    iget v0, p0, Ljava/time/YearMonth;->year:I

    if-ge v0, v1, :cond_42

    iget v0, p0, Ljava/time/YearMonth;->year:I

    rsub-int/lit8 v0, v0, 0x1

    :goto_40
    int-to-long v0, v0

    return-wide v0

    :cond_42
    iget v0, p0, Ljava/time/YearMonth;->year:I

    goto :goto_40

    .line 485
    :pswitch_45
    iget v0, p0, Ljava/time/YearMonth;->year:I

    int-to-long v0, v0

    return-wide v0

    .line 486
    :pswitch_49
    iget v0, p0, Ljava/time/YearMonth;->year:I

    if-ge v0, v1, :cond_50

    const/4 v0, 0x0

    :goto_4e
    int-to-long v0, v0

    return-wide v0

    :cond_50
    move v0, v1

    goto :goto_4e

    .line 490
    :cond_52
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 481
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_49
        :pswitch_2f
        :pswitch_33
        :pswitch_45
        :pswitch_38
    .end packed-switch
.end method

.method public getMonth()Ljava/time/Month;
    .registers 2

    .prologue
    .line 537
    iget v0, p0, Ljava/time/YearMonth;->month:I

    invoke-static {v0}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .registers 2

    .prologue
    .line 522
    iget v0, p0, Ljava/time/YearMonth;->month:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 508
    iget v0, p0, Ljava/time/YearMonth;->year:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1177
    iget v0, p0, Ljava/time/YearMonth;->year:I

    iget v1, p0, Ljava/time/YearMonth;->month:I

    shl-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Ljava/time/YearMonth;)Z
    .registers 4
    .param p1, "other"    # Ljava/time/YearMonth;

    .prologue
    const/4 v0, 0x0

    .line 1136
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->compareTo(Ljava/time/YearMonth;)I

    move-result v1

    if-lez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isBefore(Ljava/time/YearMonth;)Z
    .registers 4
    .param p1, "other"    # Ljava/time/YearMonth;

    .prologue
    const/4 v0, 0x0

    .line 1146
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->compareTo(Ljava/time/YearMonth;)I

    move-result v1

    if-gez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isLeapYear()Z
    .registers 5

    .prologue
    .line 560
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    iget v1, p0, Ljava/time/YearMonth;->year:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 349
    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1d

    .line 350
    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    if-eq p1, v2, :cond_e

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p1, v2, :cond_f

    :cond_e
    :goto_e
    return v0

    .line 351
    :cond_f
    sget-object v2, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    if-eq p1, v2, :cond_e

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    if-eq p1, v2, :cond_e

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-eq p1, v2, :cond_e

    move v0, v1

    goto :goto_e

    .line 353
    :cond_1d
    if-eqz p1, :cond_23

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v1

    :cond_23
    return v1
.end method

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 385
    instance-of v2, p1, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_21

    .line 386
    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v2, :cond_e

    sget-object v2, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    sget-object v2, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v2, :cond_e

    sget-object v2, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v2, :cond_e

    sget-object v2, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v2, :cond_e

    sget-object v2, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v2, :cond_e

    move v0, v1

    goto :goto_e

    .line 388
    :cond_21
    if-eqz p1, :cond_27

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v1

    :cond_27
    return v1
.end method

.method public isValidDay(I)Z
    .registers 5
    .param p1, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 573
    if-lt p1, v0, :cond_b

    invoke-virtual {p0}, Ljava/time/YearMonth;->lengthOfMonth()I

    move-result v2

    if-gt p1, v2, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method public lengthOfMonth()I
    .registers 3

    .prologue
    .line 585
    invoke-virtual {p0}, Ljava/time/YearMonth;->getMonth()Ljava/time/Month;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/YearMonth;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/time/Month;->length(Z)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .registers 2

    .prologue
    .line 596
    invoke-virtual {p0}, Ljava/time/YearMonth;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x16d

    goto :goto_8
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;
    .registers 9
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 898
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v0

    goto :goto_15
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;
    .registers 3
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 874
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 877
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/YearMonth;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public minusMonths(J)Ljava/time/YearMonth;
    .registers 8
    .param p1, "monthsToSubtract"    # J

    .prologue
    .line 924
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v0

    goto :goto_15
.end method

.method public minusYears(J)Ljava/time/YearMonth;
    .registers 8
    .param p1, "yearsToSubtract"    # J

    .prologue
    .line 911
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    goto :goto_15
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;
    .registers 9
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 800
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_6a

    .line 801
    invoke-static {}, Ljava/time/YearMonth;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v1

    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_72

    .line 809
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

    .line 802
    :pswitch_2e
    invoke-virtual {p0, p1, p2}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 803
    :pswitch_33
    invoke-virtual {p0, p1, p2}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 804
    :pswitch_38
    const-wide/16 v0, 0xa

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 805
    :pswitch_43
    const-wide/16 v0, 0x64

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 806
    :pswitch_4e
    const-wide/16 v0, 0x3e8

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 807
    :pswitch_59
    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/time/YearMonth;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 811
    :cond_6a
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0

    .line 801
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_43
        :pswitch_38
        :pswitch_59
        :pswitch_4e
        :pswitch_2e
        :pswitch_33
    .end packed-switch
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;
    .registers 3
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 744
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 747
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 721
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Ljava/time/YearMonth;
    .registers 16
    .param p1, "monthsToAdd"    # J

    .prologue
    const-wide/16 v10, 0xc

    .line 841
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_9

    .line 842
    return-object p0

    .line 844
    :cond_9
    iget v6, p0, Ljava/time/YearMonth;->year:I

    int-to-long v6, v6

    mul-long/2addr v6, v10

    iget v8, p0, Ljava/time/YearMonth;->month:I

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 845
    .local v2, "monthCount":J
    add-long v0, v2, p1

    .line 846
    .local v0, "calcMonths":J
    sget-object v6, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v5

    .line 847
    .local v5, "newYear":I
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    add-int/lit8 v4, v6, 0x1

    .line 848
    .local v4, "newMonth":I
    invoke-direct {p0, v5, v4}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

    move-result-object v6

    return-object v6
.end method

.method public plusYears(J)Ljava/time/YearMonth;
    .registers 8
    .param p1, "yearsToAdd"    # J

    .prologue
    .line 824
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_7

    .line 825
    return-object p0

    .line 827
    :cond_7
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    iget v2, p0, Ljava/time/YearMonth;->year:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 828
    .local v0, "newYear":I
    iget v1, p0, Ljava/time/YearMonth;->month:I

    invoke-direct {p0, v0, v1}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

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
    .line 949
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 950
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0

    .line 951
    :cond_9
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 952
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 954
    :cond_12
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const-wide/16 v2, 0x1

    .line 417
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1c

    .line 418
    invoke-virtual {p0}, Ljava/time/YearMonth;->getYear()I

    move-result v0

    if-gtz v0, :cond_14

    const-wide/32 v0, 0x3b9aca00

    invoke-static {v2, v3, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    const-wide/32 v0, 0x3b9ac9ff

    invoke-static {v2, v3, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    goto :goto_13

    .line 420
    :cond_1c
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1190
    iget v2, p0, Ljava/time/YearMonth;->year:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1191
    .local v0, "absYear":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1192
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_46

    .line 1193
    iget v2, p0, Ljava/time/YearMonth;->year:I

    if-gez v2, :cond_3a

    .line 1194
    iget v2, p0, Ljava/time/YearMonth;->year:I

    add-int/lit16 v2, v2, -0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1201
    :goto_22
    iget v2, p0, Ljava/time/YearMonth;->month:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_4c

    const-string/jumbo v2, "-0"

    :goto_2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1202
    iget v3, p0, Ljava/time/YearMonth;->month:I

    .line 1201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1196
    :cond_3a
    iget v2, p0, Ljava/time/YearMonth;->year:I

    add-int/lit16 v2, v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 1199
    :cond_46
    iget v2, p0, Ljava/time/YearMonth;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 1201
    :cond_4c
    const-string/jumbo v2, "-"

    goto :goto_2b
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 11
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 1040
    invoke-static {p1}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object v0

    .line 1041
    .local v0, "end":Ljava/time/YearMonth;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_5f

    .line 1042
    invoke-direct {v0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v4

    invoke-direct {p0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 1043
    .local v2, "monthsUntil":J
    invoke-static {}, Ljava/time/YearMonth;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v4

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_64

    .line 1051
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

    .line 1044
    :pswitch_3c
    return-wide v2

    .line 1045
    :pswitch_3d
    const-wide/16 v4, 0xc

    div-long v4, v2, v4

    return-wide v4

    .line 1046
    :pswitch_42
    const-wide/16 v4, 0x78

    div-long v4, v2, v4

    return-wide v4

    .line 1047
    :pswitch_47
    const-wide/16 v4, 0x4b0

    div-long v4, v2, v4

    return-wide v4

    .line 1048
    :pswitch_4c
    const-wide/16 v4, 0x2ee0

    div-long v4, v2, v4

    return-wide v4

    .line 1049
    :pswitch_51
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v1}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    return-wide v4

    .line 1053
    .end local v2    # "monthsUntil":J
    :cond_5f
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v4

    return-wide v4

    .line 1043
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_47
        :pswitch_42
        :pswitch_51
        :pswitch_4c
        :pswitch_3c
        :pswitch_3d
    .end packed-switch
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/YearMonth;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .prologue
    .line 624
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/YearMonth;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 677
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_6b

    move-object v0, p1

    .line 678
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 679
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 680
    invoke-static {}, Ljava/time/YearMonth;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_72

    .line 687
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

    .line 681
    :pswitch_31
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->withMonth(I)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 682
    :pswitch_37
    invoke-direct {p0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 683
    :pswitch_42
    iget v1, p0, Ljava/time/YearMonth;->year:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_4b

    const-wide/16 v2, 0x1

    sub-long p2, v2, p2

    .end local p2    # "newValue":J
    :cond_4b
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->withYear(I)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 684
    .restart local p2    # "newValue":J
    :pswitch_51
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->withYear(I)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 685
    :pswitch_57
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-nez v1, :cond_62

    .end local p0    # "this":Ljava/time/YearMonth;
    :goto_61
    return-object p0

    .restart local p0    # "this":Ljava/time/YearMonth;
    :cond_62
    iget v1, p0, Ljava/time/YearMonth;->year:I

    rsub-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->withYear(I)Ljava/time/YearMonth;

    move-result-object p0

    goto :goto_61

    .line 689
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_6b
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/YearMonth;

    return-object v1

    .line 680
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_57
        :pswitch_31
        :pswitch_37
        :pswitch_51
        :pswitch_42
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 6

    .prologue
    .line 627
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/YearMonth;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Ljava/time/YearMonth;
    .registers 6
    .param p1, "month"    # I

    .prologue
    .line 717
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 718
    iget v0, p0, Ljava/time/YearMonth;->year:I

    invoke-direct {p0, v0, p1}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Ljava/time/YearMonth;
    .registers 6
    .param p1, "year"    # I

    .prologue
    .line 703
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 704
    iget v0, p0, Ljava/time/YearMonth;->month:I

    invoke-direct {p0, p1, v0}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

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
    .line 1234
    iget v0, p0, Ljava/time/YearMonth;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1235
    iget v0, p0, Ljava/time/YearMonth;->month:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1236
    return-void
.end method
