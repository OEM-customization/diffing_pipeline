.class public final Ljava/time/chrono/ThaiBuddhistDate;
.super Ljava/time/chrono/ChronoLocalDateImpl;
.source "ThaiBuddhistDate.java"

# interfaces
.implements Ljava/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/chrono/ChronoLocalDateImpl",
        "<",
        "Ljava/time/chrono/ThaiBuddhistDate;",
        ">;",
        "Ljava/time/chrono/ChronoLocalDate;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field private static final serialVersionUID:J = -0x790bcfffa3423007L


# instance fields
.field private final transient isoDate:Ljava/time/LocalDate;


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/chrono/ThaiBuddhistDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/chrono/ThaiBuddhistDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_18} :catch_182

    :goto_18
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_22} :catch_17f

    :goto_22
    :try_start_22
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_17c

    :goto_2b
    :try_start_2b
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_179

    :goto_35
    :try_start_35
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_3f} :catch_176

    :goto_3f
    :try_start_3f
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_173

    :goto_49
    :try_start_49
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_53} :catch_170

    :goto_53
    :try_start_53
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_5c} :catch_16d

    :goto_5c
    :try_start_5c
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_66} :catch_16a

    :goto_66
    :try_start_66
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_6f} :catch_167

    :goto_6f
    :try_start_6f
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_164

    :goto_79
    :try_start_79
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_82} :catch_161

    :goto_82
    :try_start_82
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8c} :catch_15e

    :goto_8c
    :try_start_8c
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_96} :catch_15b

    :goto_96
    :try_start_96
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a0} :catch_158

    :goto_a0
    :try_start_a0
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_aa} :catch_155

    :goto_aa
    :try_start_aa
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b4} :catch_152

    :goto_b4
    :try_start_b4
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_be} :catch_14f

    :goto_be
    :try_start_be
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_c8} :catch_14c

    :goto_c8
    :try_start_c8
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_d2} :catch_14a

    :goto_d2
    :try_start_d2
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_dc} :catch_148

    :goto_dc
    :try_start_dc
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dc .. :try_end_e6} :catch_146

    :goto_e6
    :try_start_e6
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f0} :catch_144

    :goto_f0
    :try_start_f0
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fa} :catch_142

    :goto_fa
    :try_start_fa
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_104
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fa .. :try_end_104} :catch_140

    :goto_104
    :try_start_104
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_104 .. :try_end_10d} :catch_13e

    :goto_10d
    :try_start_10d
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_117
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_117} :catch_13c

    :goto_117
    :try_start_117
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_121
    .catch Ljava/lang/NoSuchFieldError; {:try_start_117 .. :try_end_121} :catch_13a

    :goto_121
    :try_start_121
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_12a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_121 .. :try_end_12a} :catch_138

    :goto_12a
    :try_start_12a
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12a .. :try_end_133} :catch_136

    :goto_133
    sput-object v0, Ljava/time/chrono/ThaiBuddhistDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    return-object v0

    :catch_136
    move-exception v1

    goto :goto_133

    :catch_138
    move-exception v1

    goto :goto_12a

    :catch_13a
    move-exception v1

    goto :goto_121

    :catch_13c
    move-exception v1

    goto :goto_117

    :catch_13e
    move-exception v1

    goto :goto_10d

    :catch_140
    move-exception v1

    goto :goto_104

    :catch_142
    move-exception v1

    goto :goto_fa

    :catch_144
    move-exception v1

    goto :goto_f0

    :catch_146
    move-exception v1

    goto :goto_e6

    :catch_148
    move-exception v1

    goto :goto_dc

    :catch_14a
    move-exception v1

    goto :goto_d2

    :catch_14c
    move-exception v1

    goto/16 :goto_c8

    :catch_14f
    move-exception v1

    goto/16 :goto_be

    :catch_152
    move-exception v1

    goto/16 :goto_b4

    :catch_155
    move-exception v1

    goto/16 :goto_aa

    :catch_158
    move-exception v1

    goto/16 :goto_a0

    :catch_15b
    move-exception v1

    goto/16 :goto_96

    :catch_15e
    move-exception v1

    goto/16 :goto_8c

    :catch_161
    move-exception v1

    goto/16 :goto_82

    :catch_164
    move-exception v1

    goto/16 :goto_79

    :catch_167
    move-exception v1

    goto/16 :goto_6f

    :catch_16a
    move-exception v1

    goto/16 :goto_66

    :catch_16d
    move-exception v1

    goto/16 :goto_5c

    :catch_170
    move-exception v1

    goto/16 :goto_53

    :catch_173
    move-exception v1

    goto/16 :goto_49

    :catch_176
    move-exception v1

    goto/16 :goto_3f

    :catch_179
    move-exception v1

    goto/16 :goto_35

    :catch_17c
    move-exception v1

    goto/16 :goto_2b

    :catch_17f
    move-exception v1

    goto/16 :goto_22

    :catch_182
    move-exception v1

    goto/16 :goto_18
.end method

.method constructor <init>(Ljava/time/LocalDate;)V
    .registers 3
    .param p1, "isoDate"    # Ljava/time/LocalDate;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 207
    const-string/jumbo v0, "isoDate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    iput-object p1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    .line 209
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 2
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 197
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    invoke-virtual {v0, p0}, Ljava/time/chrono/ThaiBuddhistChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method private getProlepticMonth()J
    .registers 5

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-object v2, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getProlepticYear()I
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x21f

    return v0
.end method

.method public static now()Ljava/time/chrono/ThaiBuddhistDate;
    .registers 1

    .prologue
    .line 127
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/ThaiBuddhistDate;->now(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 3
    .param p0, "clock"    # Ljava/time/Clock;

    .prologue
    .line 158
    new-instance v0, Ljava/time/chrono/ThaiBuddhistDate;

    invoke-static {p0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 143
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/ThaiBuddhistDate;->now(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 5
    .param p0, "prolepticYear"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 176
    new-instance v0, Ljava/time/chrono/ThaiBuddhistDate;

    add-int/lit16 v1, p0, -0x21f

    invoke-static {v1, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 508
    .local v2, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 509
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 510
    .local v0, "dayOfMonth":I
    sget-object v3, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    invoke-virtual {v3, v2, v1, v0}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

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
    .line 479
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 3
    .param p1, "newDate"    # Ljava/time/LocalDate;

    .prologue
    .line 416
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {p1, v0}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .end local p0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    :goto_8
    return-object p0

    .restart local p0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    :cond_9
    new-instance p0, Ljava/time/chrono/ThaiBuddhistDate;

    .end local p0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    invoke-direct {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    goto :goto_8
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 496
    new-instance v0, Ljava/time/chrono/Ser;

    const/16 v1, 0x8

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
            "Ljava/time/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
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
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 451
    if-ne p0, p1, :cond_4

    .line 452
    const/4 v1, 0x1

    return v1

    .line 454
    :cond_4
    instance-of v1, p1, Ljava/time/chrono/ThaiBuddhistDate;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 455
    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    .line 456
    .local v0, "otherDate":Ljava/time/chrono/ThaiBuddhistDate;
    iget-object v1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    iget-object v2, v0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, v2}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 458
    .end local v0    # "otherDate":Ljava/time/chrono/ThaiBuddhistDate;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Ljava/time/chrono/ThaiBuddhistChronology;
    .registers 2

    .prologue
    .line 222
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Ljava/time/chrono/Era;
    .registers 2

    .prologue
    .line 225
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getEra()Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Ljava/time/chrono/ThaiBuddhistEra;
    .registers 3

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_a

    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BE:Ljava/time/chrono/ThaiBuddhistEra;

    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;

    goto :goto_9
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const/4 v2, 0x1

    .line 277
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_3d

    .line 278
    invoke-static {}, Ljava/time/chrono/ThaiBuddhistDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v3

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_42

    .line 290
    iget-object v1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    return-wide v2

    .line 280
    :pswitch_1c
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticMonth()J

    move-result-wide v2

    return-wide v2

    .line 282
    :pswitch_21
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    .line 283
    .local v0, "prolepticYear":I
    if-lt v0, v2, :cond_29

    .end local v0    # "prolepticYear":I
    :goto_27
    int-to-long v2, v0

    return-wide v2

    .restart local v0    # "prolepticYear":I
    :cond_29
    rsub-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 286
    .end local v0    # "prolepticYear":I
    :pswitch_2c
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v1

    int-to-long v2, v1

    return-wide v2

    .line 288
    :pswitch_32
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v1

    if-lt v1, v2, :cond_3b

    move v1, v2

    :goto_39
    int-to-long v2, v1

    return-wide v2

    :cond_3b
    const/4 v1, 0x0

    goto :goto_39

    .line 292
    :cond_3d
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    return-wide v2

    .line 278
    :pswitch_data_42
    .packed-switch 0x4
        :pswitch_32
        :pswitch_1c
        :pswitch_2c
        :pswitch_21
    .end packed-switch
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 468
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/chrono/ThaiBuddhistChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public lengthOfMonth()I
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 5

    .prologue
    .line 390
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 392
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 361
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 390
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic minusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 410
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->minusDays(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method minusDays(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "daysToSubtract"    # J

    .prologue
    .line 412
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic minusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 400
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->minusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method minusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "monthsToSubtract"    # J

    .prologue
    .line 402
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 405
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->minusWeeks(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method minusWeeks(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "weeksToSubtract"    # J

    .prologue
    .line 407
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic minusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 395
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->minusYears(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method minusYears(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "yearsToSubtract"    # J

    .prologue
    .line 397
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 5

    .prologue
    .line 385
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 387
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 351
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 385
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 380
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->plusDays(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method plusDays(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "days"    # J

    .prologue
    .line 382
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 370
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->plusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method plusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "months"    # J

    .prologue
    .line 372
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 375
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->plusWeeks(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method plusWeeks(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "weeksToAdd"    # J

    .prologue
    .line 377
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic plusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 364
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->plusYears(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method plusYears(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "years"    # J

    .prologue
    .line 367
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 12
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const-wide/16 v8, 0x21f

    const-wide/16 v6, 0x1

    .line 254
    instance-of v4, p1, Ljava/time/temporal/ChronoField;

    if-eqz v4, :cond_68

    .line 255
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_4e

    move-object v0, p1

    .line 256
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 257
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-static {}, Ljava/time/chrono/ThaiBuddhistDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_6e

    .line 268
    :pswitch_1e
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/time/chrono/ThaiBuddhistChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    return-object v4

    .line 261
    :pswitch_27
    iget-object v4, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v4, p1}, Ljava/time/LocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    return-object v4

    .line 263
    :pswitch_2e
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v1

    .line 264
    .local v1, "range":Ljava/time/temporal/ValueRange;
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v4

    if-gtz v4, :cond_47

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    add-long/2addr v4, v8

    neg-long v4, v4

    add-long v2, v4, v6

    .line 265
    .local v2, "max":J
    :goto_42
    invoke-static {v6, v7, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    return-object v4

    .line 264
    .end local v2    # "max":J
    :cond_47
    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v4

    add-long v2, v4, v8

    .restart local v2    # "max":J
    goto :goto_42

    .line 270
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    .end local v1    # "range":Ljava/time/temporal/ValueRange;
    .end local v2    # "max":J
    :cond_4e
    new-instance v4, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 272
    :cond_68
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    return-object v4

    .line 257
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_2e
    .end packed-switch
.end method

.method public toEpochDay()J
    .registers 3

    .prologue
    .line 433
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->toEpochDay()J

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
    .registers 7
    .param p1, "endDate"    # Ljava/time/chrono/ChronoLocalDate;

    .prologue
    .line 427
    iget-object v1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;

    move-result-object v0

    .line 428
    .local v0, "period":Ljava/time/Period;
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Period;->getYears()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/Period;->getMonths()I

    move-result v3

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/chrono/ThaiBuddhistChronology;->period(III)Ljava/time/chrono/ChronoPeriod;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;
    .registers 6

    .prologue
    .line 303
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .prologue
    .line 341
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 10
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 306
    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_8f

    move-object v0, p1

    .line 307
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 308
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_10

    .line 309
    return-object p0

    .line 311
    :cond_10
    invoke-static {}, Ljava/time/chrono/ThaiBuddhistDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_96

    .line 329
    :goto_1d
    iget-object v2, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    .line 313
    :pswitch_28
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/chrono/ThaiBuddhistChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 314
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticMonth()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/ThaiBuddhistDate;->plusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    .line 318
    :pswitch_3e
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/chrono/ThaiBuddhistChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 319
    .local v1, "nvalue":I
    invoke-static {}, Ljava/time/chrono/ThaiBuddhistDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a2

    :pswitch_57
    goto :goto_1d

    .line 325
    :pswitch_58
    iget-object v2, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    add-int/lit16 v3, v3, -0x21f

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    .line 321
    :pswitch_6b
    iget-object v2, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_7f

    .end local v1    # "nvalue":I
    :goto_74
    add-int/lit16 v3, v1, -0x21f

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    .restart local v1    # "nvalue":I
    :cond_7f
    rsub-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 323
    :pswitch_82
    iget-object v2, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    add-int/lit16 v3, v1, -0x21f

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    .line 331
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    .end local v1    # "nvalue":I
    :cond_8f
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v2

    .line 311
    :pswitch_data_96
    .packed-switch 0x4
        :pswitch_3e
        :pswitch_28
        :pswitch_3e
        :pswitch_3e
    .end packed-switch

    .line 319
    :pswitch_data_a2
    .packed-switch 0x4
        :pswitch_58
        :pswitch_57
        :pswitch_82
        :pswitch_6b
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 6

    .prologue
    .line 303
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ThaiBuddhistDate;

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
    .line 501
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 502
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 503
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 504
    return-void
.end method
