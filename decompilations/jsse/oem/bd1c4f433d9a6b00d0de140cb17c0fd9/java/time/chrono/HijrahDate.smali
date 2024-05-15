.class public final Ljava/time/chrono/HijrahDate;
.super Ljava/time/chrono/ChronoLocalDateImpl;
.source "HijrahDate.java"

# interfaces
.implements Ljava/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/chrono/ChronoLocalDateImpl",
        "<",
        "Ljava/time/chrono/HijrahDate;",
        ">;",
        "Ljava/time/chrono/ChronoLocalDate;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field private static final serialVersionUID:J = -0x4846033461a5e4e4L


# instance fields
.field private final transient chrono:Ljava/time/chrono/HijrahChronology;

.field private final transient dayOfMonth:I

.field private final transient monthOfYear:I

.field private final transient prolepticYear:I


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/chrono/HijrahDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/chrono/HijrahDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_182

    :goto_17
    :try_start_17
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_17f

    :goto_20
    :try_start_20
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_17c

    :goto_29
    :try_start_29
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_179

    :goto_32
    :try_start_32
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_176

    :goto_3c
    :try_start_3c
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_173

    :goto_46
    :try_start_46
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_170

    :goto_50
    :try_start_50
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_59} :catch_16d

    :goto_59
    :try_start_59
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_62} :catch_16a

    :goto_62
    :try_start_62
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6b} :catch_167

    :goto_6b
    :try_start_6b
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_164

    :goto_75
    :try_start_75
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_161

    :goto_7f
    :try_start_7f
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_15e

    :goto_89
    :try_start_89
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_15b

    :goto_93
    :try_start_93
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_158

    :goto_9d
    :try_start_9d
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_155

    :goto_a7
    :try_start_a7
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_152

    :goto_b1
    :try_start_b1
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_14f

    :goto_bb
    :try_start_bb
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c5} :catch_14c

    :goto_c5
    :try_start_c5
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_14a

    :goto_cf
    :try_start_cf
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_148

    :goto_d9
    :try_start_d9
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e3} :catch_146

    :goto_e3
    :try_start_e3
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ed} :catch_144

    :goto_ed
    :try_start_ed
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f7} :catch_142

    :goto_f7
    :try_start_f7
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_101} :catch_140

    :goto_101
    :try_start_101
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10b} :catch_13e

    :goto_10b
    :try_start_10b
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_115} :catch_13c

    :goto_115
    :try_start_115
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11f} :catch_13a

    :goto_11f
    :try_start_11f
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_138

    :goto_129
    :try_start_129
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_136

    :goto_133
    sput-object v0, Ljava/time/chrono/HijrahDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    goto/16 :goto_a7

    :catch_158
    move-exception v1

    goto/16 :goto_9d

    :catch_15b
    move-exception v1

    goto/16 :goto_93

    :catch_15e
    move-exception v1

    goto/16 :goto_89

    :catch_161
    move-exception v1

    goto/16 :goto_7f

    :catch_164
    move-exception v1

    goto/16 :goto_75

    :catch_167
    move-exception v1

    goto/16 :goto_6b

    :catch_16a
    move-exception v1

    goto/16 :goto_62

    :catch_16d
    move-exception v1

    goto/16 :goto_59

    :catch_170
    move-exception v1

    goto/16 :goto_50

    :catch_173
    move-exception v1

    goto/16 :goto_46

    :catch_176
    move-exception v1

    goto/16 :goto_3c

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

.method private constructor <init>(Ljava/time/chrono/HijrahChronology;III)V
    .registers 5
    .param p1, "chrono"    # Ljava/time/chrono/HijrahChronology;
    .param p2, "prolepticYear"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 264
    invoke-virtual {p1, p2, p3, p4}, Ljava/time/chrono/HijrahChronology;->getEpochDay(III)J

    .line 266
    iput-object p1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    .line 267
    iput p2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    .line 268
    iput p3, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    .line 269
    iput p4, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    .line 270
    return-void
.end method

.method private constructor <init>(Ljava/time/chrono/HijrahChronology;J)V
    .registers 6
    .param p1, "chrono"    # Ljava/time/chrono/HijrahChronology;
    .param p2, "epochDay"    # J

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 278
    long-to-int v1, p2

    invoke-virtual {p1, v1}, Ljava/time/chrono/HijrahChronology;->getHijrahDateInfo(I)[I

    move-result-object v0

    .line 280
    .local v0, "dateInfo":[I
    iput-object p1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    .line 281
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    .line 282
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    .line 283
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    .line 284
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;
    .registers 2
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 249
    sget-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v0, p0}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method private getDayOfWeek()I
    .registers 7

    .prologue
    .line 494
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    const-wide/16 v4, 0x7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 495
    .local v0, "dow0":I
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private getDayOfYear()I
    .registers 4

    .prologue
    .line 485
    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/HijrahChronology;->getDayOfYear(II)I

    move-result v0

    iget v1, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getEraValue()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 504
    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    if-le v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private getProlepticMonth()J
    .registers 5

    .prologue
    .line 384
    iget v0, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static now()Ljava/time/chrono/HijrahDate;
    .registers 1

    .prologue
    .line 177
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/HijrahDate;->now(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;
    .registers 5
    .param p0, "clock"    # Ljava/time/Clock;

    .prologue
    .line 210
    sget-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-static {p0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ljava/time/chrono/HijrahDate;->ofEpochDay(Ljava/time/chrono/HijrahChronology;J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/chrono/HijrahDate;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 194
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/HijrahDate;->now(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p0, "prolepticYear"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 228
    sget-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v0, p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method static of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;
    .registers 5
    .param p0, "chrono"    # Ljava/time/chrono/HijrahChronology;
    .param p1, "prolepticYear"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 150
    new-instance v0, Ljava/time/chrono/HijrahDate;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;-><init>(Ljava/time/chrono/HijrahChronology;III)V

    return-object v0
.end method

.method static ofEpochDay(Ljava/time/chrono/HijrahChronology;J)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p0, "chrono"    # Ljava/time/chrono/HijrahChronology;
    .param p1, "epochDay"    # J

    .prologue
    .line 160
    new-instance v0, Ljava/time/chrono/HijrahDate;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/chrono/HijrahDate;-><init>(Ljava/time/chrono/HijrahChronology;J)V

    return-object v0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/HijrahDate;
    .registers 6
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahChronology;

    .line 686
    .local v0, "chrono":Ljava/time/chrono/HijrahChronology;
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    .line 687
    .local v3, "year":I
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v2

    .line 688
    .local v2, "month":I
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v1

    .line 689
    .local v1, "dayOfMonth":I
    invoke-virtual {v0, v3, v2, v1}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v4

    return-object v4
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
    .line 655
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;
    .registers 6
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 415
    iget-object v1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v1, p1, p2}, Ljava/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v0

    .line 416
    .local v0, "monthDays":I
    if-le p3, v0, :cond_9

    .line 417
    move p3, v0

    .line 419
    :cond_9
    iget-object v1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-static {v1, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 673
    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 3
    .param p1, "localTime"    # Ljava/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<",
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 620
    if-ne p0, p1, :cond_5

    .line 621
    const/4 v1, 0x1

    return v1

    .line 623
    :cond_5
    instance-of v2, p1, Ljava/time/chrono/HijrahDate;

    if-eqz v2, :cond_2b

    move-object v0, p1

    .line 624
    check-cast v0, Ljava/time/chrono/HijrahDate;

    .line 625
    .local v0, "otherDate":Ljava/time/chrono/HijrahDate;
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v3, v0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    if-ne v2, v3, :cond_2a

    .line 626
    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, v0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    if-ne v2, v3, :cond_2a

    .line 627
    iget v2, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    iget v3, v0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    if-ne v2, v3, :cond_2a

    .line 628
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/chrono/HijrahChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 625
    :cond_2a
    return v1

    .line 630
    .end local v0    # "otherDate":Ljava/time/chrono/HijrahDate;
    :cond_2b
    return v1
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .prologue
    .line 286
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Ljava/time/chrono/HijrahChronology;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Ljava/time/chrono/Era;
    .registers 2

    .prologue
    .line 300
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getEra()Ljava/time/chrono/HijrahEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Ljava/time/chrono/HijrahEra;
    .registers 2

    .prologue
    .line 310
    sget-object v0, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 362
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_88

    .line 363
    invoke-static {}, Ljava/time/chrono/HijrahDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_8e

    .line 378
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

    .line 364
    :pswitch_2e
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfWeek()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 365
    :pswitch_34
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    .line 366
    :pswitch_40
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    .line 367
    :pswitch_4c
    iget v0, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    int-to-long v0, v0

    return-wide v0

    .line 368
    :pswitch_50
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 369
    :pswitch_56
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0

    .line 370
    :pswitch_5b
    iget v0, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    .line 371
    :pswitch_65
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    .line 372
    :pswitch_71
    iget v0, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    int-to-long v0, v0

    return-wide v0

    .line 373
    :pswitch_75
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 374
    :pswitch_7a
    iget v0, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    return-wide v0

    .line 375
    :pswitch_7e
    iget v0, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    return-wide v0

    .line 376
    :pswitch_82
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getEraValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 380
    :cond_88
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 363
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_34
        :pswitch_40
        :pswitch_5b
        :pswitch_65
        :pswitch_4c
        :pswitch_2e
        :pswitch_50
        :pswitch_56
        :pswitch_82
        :pswitch_71
        :pswitch_75
        :pswitch_7e
        :pswitch_7a
    .end packed-switch
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 640
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    .line 641
    .local v2, "yearValue":I
    iget v1, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    .line 642
    .local v1, "monthValue":I
    iget v0, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    .line 643
    .local v0, "dayValue":I
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/chrono/HijrahChronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    and-int/lit16 v4, v2, -0x800

    xor-int/2addr v3, v4

    .line 644
    shl-int/lit8 v4, v2, 0xb

    shl-int/lit8 v5, v1, 0x6

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    .line 643
    xor-int/2addr v3, v4

    return v3
.end method

.method public isLeapYear()Z
    .registers 5

    .prologue
    .line 515
    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/time/chrono/HijrahChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public lengthOfMonth()I
    .registers 4

    .prologue
    .line 323
    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .registers 3

    .prologue
    .line 337
    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    invoke-virtual {v0, v1}, Ljava/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 5

    .prologue
    .line 555
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;
    .registers 5
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 557
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 469
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 555
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic minusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 575
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->minusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method minusDays(J)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p1, "daysToSubtract"    # J

    .prologue
    .line 577
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic minusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 565
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->minusMonths(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method minusMonths(J)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p1, "monthsToSubtract"    # J

    .prologue
    .line 567
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 570
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->minusWeeks(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method minusWeeks(J)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p1, "weeksToSubtract"    # J

    .prologue
    .line 572
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic minusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 560
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->minusYears(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method minusYears(J)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p1, "yearsToSubtract"    # J

    .prologue
    .line 562
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 5

    .prologue
    .line 550
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;
    .registers 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 552
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 459
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 550
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 545
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method plusDays(J)Ljava/time/chrono/HijrahDate;
    .registers 8
    .param p1, "days"    # J

    .prologue
    .line 547
    new-instance v0, Ljava/time/chrono/HijrahDate;

    iget-object v1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/time/chrono/HijrahDate;-><init>(Ljava/time/chrono/HijrahChronology;J)V

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 528
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->plusMonths(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method plusMonths(J)Ljava/time/chrono/HijrahDate;
    .registers 16
    .param p1, "monthsToAdd"    # J

    .prologue
    const-wide/16 v10, 0xc

    .line 530
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_9

    .line 531
    return-object p0

    .line 533
    :cond_9
    iget v6, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v6, v6

    mul-long/2addr v6, v10

    iget v8, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 534
    .local v2, "monthCount":J
    add-long v0, v2, p1

    .line 535
    .local v0, "calcMonths":J
    iget-object v6, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/time/chrono/HijrahChronology;->checkValidYear(J)I

    move-result v5

    .line 536
    .local v5, "newYear":I
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    add-int/lit8 v4, v6, 0x1

    .line 537
    .local v4, "newMonth":I
    iget v6, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v5, v4, v6}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v6

    return-object v6
.end method

.method bridge synthetic plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 540
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->plusWeeks(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method plusWeeks(J)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p1, "weeksToAdd"    # J

    .prologue
    .line 542
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic plusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 518
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->plusYears(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method plusYears(J)Ljava/time/chrono/HijrahDate;
    .registers 8
    .param p1, "years"    # J

    .prologue
    .line 521
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_7

    .line 522
    return-object p0

    .line 524
    :cond_7
    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    long-to-int v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    .line 525
    .local v0, "newYear":I
    iget v1, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v0, v1, v2}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const-wide/16 v4, 0x1

    .line 343
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_5a

    .line 344
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_40

    move-object v0, p1

    .line 345
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 346
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-static {}, Ljava/time/chrono/HijrahDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_60

    .line 353
    :pswitch_1c
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/chrono/HijrahChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 347
    :pswitch_25
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->lengthOfMonth()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v4, v5, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 348
    :pswitch_2f
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v4, v5, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 349
    :pswitch_39
    const-wide/16 v2, 0x5

    invoke-static {v4, v5, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 355
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_40
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

    .line 357
    :cond_5a
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 346
    nop

    :pswitch_data_60
    .packed-switch 0x3
        :pswitch_39
        :pswitch_1c
        :pswitch_25
        :pswitch_1c
        :pswitch_2f
    .end packed-switch
.end method

.method public toEpochDay()J
    .registers 5

    .prologue
    .line 474
    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/chrono/HijrahChronology;->getEpochDay(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    invoke-super {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 5

    .prologue
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .registers 14
    .param p1, "endDate"    # Ljava/time/chrono/ChronoLocalDate;

    .prologue
    .line 589
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    .line 590
    .local v2, "end":Ljava/time/chrono/HijrahDate;
    iget v8, v2, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v9, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0xc

    iget v9, v2, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v10, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-long v4, v8

    .line 591
    .local v4, "totalMonths":J
    iget v8, v2, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    iget v9, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    sub-int v1, v8, v9

    .line 592
    .local v1, "days":I
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_4b

    if-gez v1, :cond_4b

    .line 593
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    .line 594
    invoke-virtual {p0, v4, v5}, Ljava/time/chrono/HijrahDate;->plusMonths(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    .line 595
    .local v0, "calcDate":Ljava/time/chrono/HijrahDate;
    invoke-virtual {v2}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v1, v8

    .line 600
    .end local v0    # "calcDate":Ljava/time/chrono/HijrahDate;
    :cond_35
    :goto_35
    const-wide/16 v8, 0xc

    div-long v6, v4, v8

    .line 601
    .local v6, "years":J
    const-wide/16 v8, 0xc

    rem-long v8, v4, v8

    long-to-int v3, v8

    .line 602
    .local v3, "months":I
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v9

    invoke-virtual {v8, v9, v3, v1}, Ljava/time/chrono/HijrahChronology;->period(III)Ljava/time/chrono/ChronoPeriod;

    move-result-object v8

    return-object v8

    .line 596
    .end local v3    # "months":I
    .end local v6    # "years":J
    :cond_4b
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_35

    if-lez v1, :cond_35

    .line 597
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    .line 598
    invoke-virtual {v2}, Ljava/time/chrono/HijrahDate;->lengthOfMonth()I

    move-result v8

    sub-int/2addr v1, v8

    goto :goto_35
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;
    .registers 6

    .prologue
    .line 387
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/HijrahDate;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .prologue
    .line 430
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/HijrahDate;
    .registers 10
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    const-wide/16 v4, 0x7

    .line 389
    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_db

    move-object v0, p1

    .line 390
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 392
    .local v0, "f":Ljava/time/temporal/ChronoField;
    iget-object v2, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v2, v0}, Ljava/time/chrono/HijrahChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 393
    long-to-int v1, p2

    .line 394
    .local v1, "nvalue":I
    invoke-static {}, Ljava/time/chrono/HijrahDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_e2

    .line 409
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

    .line 395
    :pswitch_3a
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfWeek()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 396
    :pswitch_46
    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 397
    :pswitch_53
    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 398
    :pswitch_60
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    invoke-direct {p0, v2, v3, v1}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 399
    :pswitch_69
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 400
    :pswitch_7c
    new-instance v2, Ljava/time/chrono/HijrahDate;

    iget-object v3, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-direct {v2, v3, p2, p3}, Ljava/time/chrono/HijrahDate;-><init>(Ljava/time/chrono/HijrahChronology;J)V

    return-object v2

    .line 401
    :pswitch_84
    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 402
    :pswitch_92
    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 403
    :pswitch_a0
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v2, v1, v3}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 404
    :pswitch_a9
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getProlepticMonth()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusMonths(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 405
    :pswitch_b4
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_c2

    .end local v1    # "nvalue":I
    :goto_b9
    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v1, v2, v3}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .restart local v1    # "nvalue":I
    :cond_c2
    rsub-int/lit8 v1, v1, 0x1

    goto :goto_b9

    .line 406
    :pswitch_c5
    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v1, v2, v3}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 407
    :pswitch_ce
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    rsub-int/lit8 v2, v2, 0x1

    iget v3, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v4, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v2, v3, v4}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 411
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    .end local v1    # "nvalue":I
    :cond_db
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/HijrahDate;

    return-object v2

    .line 394
    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_46
        :pswitch_53
        :pswitch_84
        :pswitch_92
        :pswitch_60
        :pswitch_3a
        :pswitch_69
        :pswitch_7c
        :pswitch_ce
        :pswitch_a0
        :pswitch_a9
        :pswitch_c5
        :pswitch_b4
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 6

    .prologue
    .line 387
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public withVariant(Ljava/time/chrono/HijrahChronology;)Ljava/time/chrono/HijrahDate;
    .registers 6
    .param p1, "chronology"    # Ljava/time/chrono/HijrahChronology;

    .prologue
    .line 444
    iget-object v1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    if-ne v1, p1, :cond_5

    .line 445
    return-object p0

    .line 448
    :cond_5
    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {p1, v1, v2}, Ljava/time/chrono/HijrahChronology;->getDayOfYear(II)I

    move-result v0

    .line 449
    .local v0, "monthDays":I
    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    if-le v3, v0, :cond_1a

    .end local v0    # "monthDays":I
    :goto_15
    invoke-static {p1, v1, v2, v0}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1

    .restart local v0    # "monthDays":I
    :cond_1a
    iget v0, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    goto :goto_15
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
    .line 678
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 679
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 680
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 681
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 682
    return-void
.end method
