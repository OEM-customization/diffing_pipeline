.class public final Ljava/time/chrono/JapaneseDate;
.super Ljava/time/chrono/ChronoLocalDateImpl;
.source "JapaneseDate.java"

# interfaces
.implements Ljava/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/chrono/ChronoLocalDateImpl",
        "<",
        "Ljava/time/chrono/JapaneseDate;",
        ">;",
        "Ljava/time/chrono/ChronoLocalDate;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field static final MEIJI_6_ISODATE:Ljava/time/LocalDate;

.field private static final serialVersionUID:J = -0x43cbddbf9310f03L


# instance fields
.field private transient era:Ljava/time/chrono/JapaneseEra;

.field private final transient isoDate:Ljava/time/LocalDate;

.field private transient yearOfEra:I


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/chrono/JapaneseDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/chrono/JapaneseDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_176

    :goto_3c
    :try_start_3c
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_173

    :goto_46
    :try_start_46
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

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

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_63} :catch_16a

    :goto_63
    :try_start_63
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6c} :catch_167

    :goto_6c
    :try_start_6c
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_76} :catch_164

    :goto_76
    :try_start_76
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_7f} :catch_161

    :goto_7f
    :try_start_7f
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_15e

    :goto_89
    :try_start_89
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_15b

    :goto_93
    :try_start_93
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_158

    :goto_9d
    :try_start_9d
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_155

    :goto_a7
    :try_start_a7
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_152

    :goto_b1
    :try_start_b1
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_14f

    :goto_bb
    :try_start_bb
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c5} :catch_14c

    :goto_c5
    :try_start_c5
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_14a

    :goto_cf
    :try_start_cf
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_148

    :goto_d9
    :try_start_d9
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e3} :catch_146

    :goto_e3
    :try_start_e3
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ed} :catch_144

    :goto_ed
    :try_start_ed
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f7} :catch_142

    :goto_f7
    :try_start_f7
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_101} :catch_140

    :goto_101
    :try_start_101
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_138

    :goto_129
    :try_start_129
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_136

    :goto_133
    sput-object v0, Ljava/time/chrono/JapaneseDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    goto/16 :goto_76

    :catch_167
    move-exception v1

    goto/16 :goto_6c

    :catch_16a
    move-exception v1

    goto/16 :goto_63

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

.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 145
    const/16 v0, 0x751

    invoke-static {v0, v1, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    .line 120
    return-void
.end method

.method constructor <init>(Ljava/time/LocalDate;)V
    .registers 5
    .param p1, "isoDate"    # Ljava/time/LocalDate;

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 324
    sget-object v1, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    invoke-virtual {p1, v1}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 325
    new-instance v1, Ljava/time/DateTimeException;

    const-string/jumbo v2, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_14
    invoke-static {p1}, Ljava/time/chrono/JapaneseDate;->toPrivateJapaneseDate(Ljava/time/LocalDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    .line 328
    .local v0, "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    invoke-static {v1}, Ljava/time/chrono/JapaneseEra;->toJapaneseEra(Lsun/util/calendar/Era;)Ljava/time/chrono/JapaneseEra;

    move-result-object v1

    iput-object v1, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    .line 329
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v1

    iput v1, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    .line 330
    iput-object p1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    .line 331
    return-void
.end method

.method constructor <init>(Ljava/time/chrono/JapaneseEra;ILjava/time/LocalDate;)V
    .registers 6
    .param p1, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p2, "year"    # I
    .param p3, "isoDate"    # Ljava/time/LocalDate;

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 342
    sget-object v0, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    invoke-virtual {p3, v0}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 343
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_14
    iput-object p1, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    .line 346
    iput p2, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    .line 347
    iput-object p3, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    .line 348
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;
    .registers 2
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 314
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    invoke-virtual {v0, p0}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static now()Ljava/time/chrono/JapaneseDate;
    .registers 1

    .prologue
    .line 160
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/JapaneseDate;->now(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;
    .registers 3
    .param p0, "clock"    # Ljava/time/Clock;

    .prologue
    .line 191
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-static {p0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/chrono/JapaneseDate;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 176
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/JapaneseDate;->now(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Ljava/time/chrono/JapaneseDate;
    .registers 5
    .param p0, "prolepticYear"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 249
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public static of(Ljava/time/chrono/JapaneseEra;III)Ljava/time/chrono/JapaneseDate;
    .registers 8
    .param p0, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p1, "yearOfEra"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 221
    const-string/jumbo v2, "era"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    sget-object v2, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    .line 223
    .local v1, "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 224
    sget-object v2, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, v1}, Lsun/util/calendar/LocalGregorianCalendar;->validate(Lsun/util/calendar/CalendarDate;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 225
    new-instance v2, Ljava/time/DateTimeException;

    const-string/jumbo v3, "year, month, and day not valid for Era"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_29
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v2

    invoke-static {v2, p2, p3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    .line 228
    .local v0, "date":Ljava/time/LocalDate;
    new-instance v2, Ljava/time/chrono/JapaneseDate;

    invoke-direct {v2, p0, p1, v0}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/chrono/JapaneseEra;ILjava/time/LocalDate;)V

    return-object v2
.end method

.method static ofYearDay(Ljava/time/chrono/JapaneseEra;II)Ljava/time/chrono/JapaneseDate;
    .registers 9
    .param p0, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p1, "yearOfEra"    # I
    .param p2, "dayOfYear"    # I

    .prologue
    const/4 v5, 0x1

    .line 278
    const-string/jumbo v3, "era"

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v3

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    .line 280
    .local v0, "firstDay":Lsun/util/calendar/CalendarDate;
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    .line 281
    .local v1, "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 282
    if-ne p1, v5, :cond_4b

    .line 283
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v3

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v4

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, p1, v3, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 287
    :goto_2d
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 288
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v3

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v4

    if-ne v3, v4, :cond_42

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    if-eq p1, v3, :cond_4f

    .line 289
    :cond_42
    new-instance v3, Ljava/time/DateTimeException;

    const-string/jumbo v4, "Invalid parameters"

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 285
    :cond_4b
    invoke-virtual {v1, p1, v5, p2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    goto :goto_2d

    .line 291
    :cond_4f
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    .line 292
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v4

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v5

    .line 291
    invoke-static {v3, v4, v5}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    .line 293
    .local v2, "localdate":Ljava/time/LocalDate;
    new-instance v3, Ljava/time/chrono/JapaneseDate;

    invoke-direct {v3, p0, p1, v2}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/chrono/JapaneseEra;ILjava/time/LocalDate;)V

    return-object v3
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseDate;
    .registers 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 753
    .local v2, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 754
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 755
    .local v0, "dayOfMonth":I
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    invoke-virtual {v3, v2, v1, v0}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

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
    .line 724
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toPrivateJapaneseDate(Ljava/time/LocalDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 6
    .param p0, "isoDate"    # Ljava/time/LocalDate;

    .prologue
    const/4 v4, 0x0

    .line 502
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v4}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    .line 503
    .local v0, "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-static {p0}, Ljava/time/chrono/JapaneseEra;->privateEraFrom(Ljava/time/LocalDate;)Lsun/util/calendar/Era;

    move-result-object v1

    .line 504
    .local v1, "sunEra":Lsun/util/calendar/Era;
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v2

    .line 505
    .local v2, "year":I
    if-eqz v1, :cond_1c

    .line 506
    invoke-virtual {v1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v3

    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    .line 508
    :cond_1c
    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v4

    invoke-virtual {v3, v4}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 509
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v0}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 510
    return-object v0
.end method

.method private with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;
    .registers 3
    .param p1, "newDate"    # Ljava/time/LocalDate;

    .prologue
    .line 661
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {p1, v0}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .end local p0    # "this":Ljava/time/chrono/JapaneseDate;
    :goto_8
    return-object p0

    .restart local p0    # "this":Ljava/time/chrono/JapaneseDate;
    :cond_9
    new-instance p0, Ljava/time/chrono/JapaneseDate;

    .end local p0    # "this":Ljava/time/chrono/JapaneseDate;
    invoke-direct {p0, p1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    goto :goto_8
.end method

.method private withYear(I)Ljava/time/chrono/JapaneseDate;
    .registers 3
    .param p1, "year"    # I

    .prologue
    .line 606
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/time/chrono/JapaneseDate;->withYear(Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method private withYear(Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p2, "yearOfEra"    # I

    .prologue
    .line 588
    sget-object v1, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    invoke-virtual {v1, p1, p2}, Ljava/time/chrono/JapaneseChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    .line 589
    .local v0, "year":I
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, v0}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 741
    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x4

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
            "Ljava/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
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
    .line 696
    if-ne p0, p1, :cond_4

    .line 697
    const/4 v1, 0x1

    return v1

    .line 699
    :cond_4
    instance-of v1, p1, Ljava/time/chrono/JapaneseDate;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 700
    check-cast v0, Ljava/time/chrono/JapaneseDate;

    .line 701
    .local v0, "otherDate":Ljava/time/chrono/JapaneseDate;
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    iget-object v2, v0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, v2}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 703
    .end local v0    # "otherDate":Ljava/time/chrono/JapaneseDate;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .prologue
    .line 350
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Ljava/time/chrono/JapaneseChronology;
    .registers 2

    .prologue
    .line 361
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Ljava/time/chrono/Era;
    .registers 2

    .prologue
    .line 364
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Ljava/time/chrono/JapaneseEra;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 467
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_6b

    .line 473
    invoke-static {}, Ljava/time/chrono/JapaneseDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_70

    .line 490
    :pswitch_14
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    return-wide v2

    .line 478
    :pswitch_1b
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

    .line 480
    :pswitch_35
    iget v1, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    int-to-long v2, v1

    return-wide v2

    .line 482
    :pswitch_39
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v1

    int-to-long v2, v1

    return-wide v2

    .line 485
    :pswitch_41
    invoke-static {}, Ljava/time/chrono/JapaneseChronology;->createCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 486
    .local v0, "jcal":Ljava/util/Calendar;
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 487
    iget v1, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    iget-object v2, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v3}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 488
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v2, v1

    return-wide v2

    .line 492
    .end local v0    # "jcal":Ljava/util/Calendar;
    :cond_6b
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    return-wide v2

    .line 473
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_14
        :pswitch_41
        :pswitch_39
        :pswitch_14
        :pswitch_35
    .end packed-switch
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 713
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/chrono/JapaneseChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 431
    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_8

    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_a

    .line 433
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 432
    :cond_a
    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_8

    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_8

    .line 439
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public lengthOfMonth()I
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .registers 5

    .prologue
    .line 392
    invoke-static {}, Ljava/time/chrono/JapaneseChronology;->createCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 393
    .local v0, "jcal":Ljava/util/Calendar;
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 394
    iget v1, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    iget-object v2, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v3}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 395
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    return v1
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 5

    .prologue
    .line 635
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;
    .registers 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 637
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 570
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 635
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic minusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 655
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->minusDays(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method minusDays(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "daysToSubtract"    # J

    .prologue
    .line 657
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic minusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 645
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->minusMonths(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method minusMonths(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "monthsToSubtract"    # J

    .prologue
    .line 647
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 650
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->minusWeeks(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method minusWeeks(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "weeksToSubtract"    # J

    .prologue
    .line 652
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic minusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 640
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->minusYears(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method minusYears(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "yearsToSubtract"    # J

    .prologue
    .line 642
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 5

    .prologue
    .line 630
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;
    .registers 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 632
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 560
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 630
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 625
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->plusDays(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method plusDays(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "days"    # J

    .prologue
    .line 627
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 615
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->plusMonths(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method plusMonths(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "months"    # J

    .prologue
    .line 617
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 620
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->plusWeeks(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method plusWeeks(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "weeksToAdd"    # J

    .prologue
    .line 622
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .prologue
    .line 609
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->plusYears(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method plusYears(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "years"    # J

    .prologue
    .line 612
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 10
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const-wide/16 v6, 0x1

    .line 444
    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_81

    .line 445
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    if-eqz v2, :cond_67

    move-object v0, p1

    .line 446
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 447
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-static {}, Ljava/time/chrono/JapaneseDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_86

    .line 458
    :pswitch_1c
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 448
    :pswitch_25
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->lengthOfMonth()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 449
    :pswitch_2f
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->lengthOfYear()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 452
    :pswitch_39
    invoke-static {}, Ljava/time/chrono/JapaneseChronology;->createCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 453
    .local v1, "jcal":Ljava/util/Calendar;
    iget-object v2, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v2}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 454
    iget v2, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    iget-object v3, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v3}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v4}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 455
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 460
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    .end local v1    # "jcal":Ljava/util/Calendar;
    :cond_67
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

    .line 462
    :cond_81
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 447
    :pswitch_data_86
    .packed-switch 0x5
        :pswitch_25
        :pswitch_2f
        :pswitch_1c
        :pswitch_1c
        :pswitch_39
    .end packed-switch
.end method

.method public toEpochDay()J
    .registers 3

    .prologue
    .line 678
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

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
    .line 672
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;

    move-result-object v0

    .line 673
    .local v0, "period":Ljava/time/Period;
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Period;->getYears()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/Period;->getMonths()I

    move-result v3

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/chrono/JapaneseChronology;->period(III)Ljava/time/chrono/ChronoPeriod;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;
    .registers 6

    .prologue
    .line 513
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .prologue
    .line 550
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/JapaneseDate;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 516
    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_5d

    move-object v0, p1

    .line 517
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 518
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_10

    .line 519
    return-object p0

    .line 521
    :cond_10
    invoke-static {}, Ljava/time/chrono/JapaneseDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_64

    .line 538
    :goto_1d
    iget-object v2, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    .line 525
    :pswitch_28
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 526
    .local v1, "nvalue":I
    invoke-static {}, Ljava/time/chrono/JapaneseDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_6e

    goto :goto_1d

    .line 532
    :pswitch_42
    invoke-static {v1}, Ljava/time/chrono/JapaneseEra;->of(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v2

    iget v3, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    invoke-direct {p0, v2, v3}, Ljava/time/chrono/JapaneseDate;->withYear(Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    .line 528
    :pswitch_4d
    invoke-direct {p0, v1}, Ljava/time/chrono/JapaneseDate;->withYear(I)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    .line 530
    :pswitch_52
    iget-object v2, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2, v1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    .line 540
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    .end local v1    # "nvalue":I
    :cond_5d
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/JapaneseDate;

    return-object v2

    .line 521
    :pswitch_data_64
    .packed-switch 0x7
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch

    .line 526
    :pswitch_data_6e
    .packed-switch 0x7
        :pswitch_42
        :pswitch_52
        :pswitch_4d
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 6

    .prologue
    .line 513
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/JapaneseDate;

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
    .line 746
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 747
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 748
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 749
    return-void
.end method
