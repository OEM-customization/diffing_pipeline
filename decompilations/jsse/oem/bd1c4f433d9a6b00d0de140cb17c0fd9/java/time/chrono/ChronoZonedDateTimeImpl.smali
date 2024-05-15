.class final Ljava/time/chrono/ChronoZonedDateTimeImpl;
.super Ljava/lang/Object;
.source "ChronoZonedDateTimeImpl.java"

# interfaces
.implements Ljava/time/chrono/ChronoZonedDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/time/chrono/ChronoLocalDate;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/time/chrono/ChronoZonedDateTime",
        "<TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field private static final serialVersionUID:J = -0x4905b7f16d4b26a7L


# instance fields
.field private final transient dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation
.end field

.field private final transient offset:Ljava/time/ZoneOffset;

.field private final transient zone:Ljava/time/ZoneId;


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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
    sput-object v0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

.method private constructor <init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V
    .registers 5
    .param p2, "offset"    # Ljava/time/ZoneOffset;
    .param p3, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/ZoneId;",
            ")V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    .local p1, "dateTime":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const-string/jumbo v0, "dateTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iput-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    .line 220
    const-string/jumbo v0, "offset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    .line 221
    const-string/jumbo v0, "zone"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    iput-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    .line 222
    return-void
.end method

.method private create(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;
    .registers 4
    .param p1, "instant"    # Ljava/time/Instant;
    .param p2, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofInstant(Ljava/time/chrono/Chronology;Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method static ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;
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
            "Ljava/time/chrono/ChronoZonedDateTimeImpl",
            "<TR;>;"
        }
    .end annotation

    .prologue
    move-object v0, p1

    .line 202
    check-cast v0, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    .line 203
    .local v0, "other":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TR;>;"
    invoke-virtual {v0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 204
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

    .line 205
    const-string/jumbo v3, ", actual: "

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 205
    invoke-virtual {v0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_3e
    return-object v0
.end method

.method static ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 11
    .param p1, "zone"    # Ljava/time/ZoneId;
    .param p2, "preferredOffset"    # Ljava/time/ZoneOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">(",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TR;>;",
            "Ljava/time/ZoneId;",
            "Ljava/time/ZoneOffset;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .local p0, "localDateTime":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TR;>;"
    const/4 v7, 0x0

    .line 136
    const-string/jumbo v5, "localDateTime"

    invoke-static {p0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v5, "zone"

    invoke-static {p1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    instance-of v5, p1, Ljava/time/ZoneOffset;

    if-eqz v5, :cond_1a

    .line 139
    new-instance v6, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-object v5, p1

    check-cast v5, Ljava/time/ZoneOffset;

    invoke-direct {v6, p0, v5, p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v6

    .line 141
    :cond_1a
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    .line 142
    .local v2, "rules":Ljava/time/zone/ZoneRules;
    invoke-static {p0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 143
    .local v0, "isoLDT":Ljava/time/LocalDateTime;
    invoke-virtual {v2, v0}, Ljava/time/zone/ZoneRules;->getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v4

    .line 145
    .local v4, "validOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/time/ZoneOffset;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3f

    .line 146
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneOffset;

    .line 158
    .local v1, "offset":Ljava/time/ZoneOffset;
    :goto_33
    const-string/jumbo v5, "offset"

    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    new-instance v5, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    invoke-direct {v5, p0, v1, p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v5

    .line 147
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :cond_3f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5a

    .line 148
    invoke-virtual {v2, v0}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v3

    .line 149
    .local v3, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDuration()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p0

    .line 150
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    .restart local v1    # "offset":Ljava/time/ZoneOffset;
    goto :goto_33

    .line 152
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    .end local v3    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_5a
    if-eqz p2, :cond_64

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 153
    move-object v1, p2

    .restart local v1    # "offset":Ljava/time/ZoneOffset;
    goto :goto_33

    .line 155
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :cond_64
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneOffset;

    .restart local v1    # "offset":Ljava/time/ZoneOffset;
    goto :goto_33
.end method

.method static ofInstant(Ljava/time/chrono/Chronology;Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;
    .registers 10
    .param p0, "chrono"    # Ljava/time/chrono/Chronology;
    .param p1, "instant"    # Ljava/time/Instant;
    .param p2, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTimeImpl",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    .line 172
    .local v3, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v3, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v2

    .line 173
    .local v2, "offset":Ljava/time/ZoneOffset;
    const-string/jumbo v4, "offset"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/time/Instant;->getNano()I

    move-result v6

    invoke-static {v4, v5, v6, v2}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 175
    .local v1, "ldt":Ljava/time/LocalDateTime;
    invoke-interface {p0, v1}, Ljava/time/chrono/Chronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    .line 176
    .local v0, "cldt":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<*>;"
    new-instance v4, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    invoke-direct {v4, v0, v2, p2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v4
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 5
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
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
    .line 357
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTime;

    .line 358
    .local v0, "dateTime":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneOffset;

    .line 359
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/ZoneId;

    .line 360
    .local v2, "zone":Ljava/time/ZoneId;
    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/time/chrono/ChronoZonedDateTime;->withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

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
    .line 347
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 337
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 552
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    check-cast p1, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->compareTo(Ljava/time/chrono/ChronoZonedDateTime;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 367
    if-ne p0, p1, :cond_5

    .line 368
    return v0

    .line 370
    :cond_5
    instance-of v2, p1, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v2, :cond_14

    .line 371
    check-cast p1, Ljava/time/chrono/ChronoZonedDateTime;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->compareTo(Ljava/time/chrono/ChronoZonedDateTime;)I

    move-result v2

    if-nez v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11

    .line 373
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_14
    return v1
.end method

.method public getOffset()Ljava/time/ZoneOffset;
    .registers 2

    .prologue
    .line 227
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getZone()Ljava/time/ZoneId;
    .registers 2

    .prologue
    .line 262
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 378
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDateTime;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v1

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
    .line 279
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
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

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 452
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoZonedDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 442
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 7
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_f

    .line 303
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0

    .line 305
    :cond_f
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 299
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 424
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 383
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-interface {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    if-eq v1, v2, :cond_50

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_50
    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 7
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 311
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    const-string/jumbo v1, "endExclusive"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/time/chrono/Chronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    .line 314
    .local v0, "end":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_23

    .line 315
    iget-object v1, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    .line 316
    iget-object v1, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-interface {v0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v2

    return-wide v2

    .line 318
    :cond_23
    const-string/jumbo v1, "unit"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v2

    return-wide v2
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 10
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "J)",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_45

    move-object v0, p1

    .line 286
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 287
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-static {}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_52

    .line 294
    iget-object v2, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v2, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    iget-object v3, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    iget-object v4, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-static {v2, v3, v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v2

    return-object v2

    .line 288
    :pswitch_23
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toEpochSecond()J

    move-result-wide v2

    sub-long v2, p2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v2, v3, v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v2

    return-object v2

    .line 290
    :pswitch_30
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 291
    .local v1, "offset":Ljava/time/ZoneOffset;
    iget-object v2, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v2, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v2

    iget-object v3, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-direct {p0, v2, v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->create(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v2

    return-object v2

    .line 296
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :cond_45
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v2

    return-object v2

    .line 287
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_23
        :pswitch_30
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 404
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 6

    .prologue
    .line 282
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withEarlierOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    invoke-static {p0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 233
    .local v1, "trans":Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 234
    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v0

    .line 235
    .local v0, "earlierOffset":Ljava/time/ZoneOffset;
    iget-object v2, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 236
    new-instance v2, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    iget-object v3, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v4, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-direct {v2, v3, v0, v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v2

    .line 239
    .end local v0    # "earlierOffset":Ljava/time/ZoneOffset;
    :cond_2e
    return-object p0
.end method

.method public withLaterOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    invoke-static {p0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 245
    .local v1, "trans":Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v1, :cond_2a

    .line 246
    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    .line 247
    .local v0, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 248
    new-instance v2, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    iget-object v3, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v4, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-direct {v2, v3, v0, v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v2

    .line 251
    .end local v0    # "offset":Ljava/time/ZoneOffset;
    :cond_2a
    return-object p0
.end method

.method public withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4
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
    .line 272
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    const-string/jumbo v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, p1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .end local p0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :goto_e
    return-object p0

    .restart local p0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :cond_f
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v1, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->create(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object p0

    goto :goto_e
.end method

.method public withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4
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
    .line 267
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v1, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-static {v0, p1, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;

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
    .line 351
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 354
    return-void
.end method
