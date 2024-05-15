.class public final Ljava/time/OffsetTime;
.super Ljava/lang/Object;
.source "OffsetTime.java"

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
        "Ljava/time/OffsetTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoUnitSwitchesValues:[I = null

.field public static final MAX:Ljava/time/OffsetTime;

.field public static final MIN:Ljava/time/OffsetTime;

.field private static final serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field private final offset:Ljava/time/ZoneOffset;

.field private final time:Ljava/time/LocalTime;


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoUnitSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/OffsetTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/OffsetTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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
    sput-object v0, Ljava/time/OffsetTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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

.method static synthetic -java_time_OffsetTime-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;
    .registers 2

    .prologue
    .line 321
    invoke-static {p0}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 122
    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    sget-object v1, Ljava/time/ZoneOffset;->MAX:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalTime;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    sput-object v0, Ljava/time/OffsetTime;->MIN:Ljava/time/OffsetTime;

    .line 130
    sget-object v0, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    sget-object v1, Ljava/time/ZoneOffset;->MIN:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalTime;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    sput-object v0, Ljava/time/OffsetTime;->MAX:Ljava/time/OffsetTime;

    .line 112
    return-void
.end method

.method private constructor <init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V
    .registers 4
    .param p1, "time"    # Ljava/time/LocalTime;
    .param p2, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const-string/jumbo v0, "time"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    iput-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    .line 333
    const-string/jumbo v0, "offset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    .line 334
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;
    .registers 7
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 281
    instance-of v3, p0, Ljava/time/OffsetTime;

    if-eqz v3, :cond_7

    .line 282
    check-cast p0, Ljava/time/OffsetTime;

    .end local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object p0

    .line 285
    .restart local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v2

    .line 286
    .local v2, "time":Ljava/time/LocalTime;
    invoke-static {p0}, Ljava/time/ZoneOffset;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 287
    .local v1, "offset":Ljava/time/ZoneOffset;
    new-instance v3, Ljava/time/OffsetTime;

    invoke-direct {v3, v2, v1}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V
    :try_end_14
    .catch Ljava/time/DateTimeException; {:try_start_7 .. :try_end_14} :catch_15

    return-object v3

    .line 288
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    .end local v2    # "time":Ljava/time/LocalTime;
    :catch_15
    move-exception v0

    .line 289
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v3, Ljava/time/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to obtain OffsetTime from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 290
    const-string/jumbo v5, " of type "

    .line 289
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 290
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 289
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static now()Ljava/time/OffsetTime;
    .registers 1

    .prologue
    .line 160
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/OffsetTime;->now(Ljava/time/Clock;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/OffsetTime;
    .registers 3
    .param p0, "clock"    # Ljava/time/Clock;

    .prologue
    .line 193
    const-string/jumbo v1, "clock"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    .line 195
    .local v0, "now":Ljava/time/Instant;
    invoke-virtual {p0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/OffsetTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetTime;

    move-result-object v1

    return-object v1
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/OffsetTime;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 177
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/OffsetTime;->now(Ljava/time/Clock;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIILjava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .registers 7
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "nanoOfSecond"    # I
    .param p4, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 230
    new-instance v0, Ljava/time/OffsetTime;

    invoke-static {p0, p1, p2, p3}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method public static of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .registers 3
    .param p0, "time"    # Ljava/time/LocalTime;
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 207
    new-instance v0, Ljava/time/OffsetTime;

    invoke-direct {v0, p0, p1}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method public static ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetTime;
    .registers 12
    .param p0, "instant"    # Ljava/time/Instant;
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 250
    const-string/jumbo v6, "instant"

    invoke-static {p0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v6, "zone"

    invoke-static {p1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    .line 253
    .local v3, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v3, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v2

    .line 254
    .local v2, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v8

    int-to-long v8, v8

    add-long v0, v6, v8

    .line 255
    .local v0, "localSecond":J
    const-wide/32 v6, 0x15180

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v6

    long-to-int v4, v6

    .line 256
    .local v4, "secsOfDay":I
    int-to-long v6, v4

    const-wide/32 v8, 0x3b9aca00

    mul-long/2addr v6, v8

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    .line 257
    .local v5, "time":Ljava/time/LocalTime;
    new-instance v6, Ljava/time/OffsetTime;

    invoke-direct {v6, v5, v2}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    return-object v6
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 306
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/OffsetTime;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 320
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$6:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    .line 321
    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljava/time/OffsetTime;
    .registers 4
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1406
    invoke-static {p0}, Ljava/time/LocalTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalTime;

    move-result-object v1

    .line 1407
    .local v1, "time":Ljava/time/LocalTime;
    invoke-static {p0}, Ljava/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 1408
    .local v0, "offset":Ljava/time/ZoneOffset;
    invoke-static {v1, v0}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

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
    .line 1397
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toEpochNano()J
    .registers 9

    .prologue
    .line 1224
    iget-object v4, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    .line 1225
    .local v0, "nod":J
    iget-object v4, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x3b9aca00

    mul-long v2, v4, v6

    .line 1226
    .local v2, "offsetNanos":J
    sub-long v4, v0, v2

    return-wide v4
.end method

.method private with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "time"    # Ljava/time/LocalTime;
    .param p2, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 343
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, p2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 344
    return-object p0

    .line 346
    :cond_d
    new-instance v0, Ljava/time/OffsetTime;

    invoke-direct {v0, p1, p2}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1387
    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 1116
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    .line 1115
    invoke-interface {p1, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    .line 1117
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    iget-object v2, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    .line 1115
    invoke-interface {v0, v1, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "date"    # Ljava/time/LocalDate;

    .prologue
    .line 1214
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {p1, v0, v1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1229
    check-cast p1, Ljava/time/OffsetTime;

    invoke-virtual {p0, p1}, Ljava/time/OffsetTime;->compareTo(Ljava/time/OffsetTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/OffsetTime;)I
    .registers 8
    .param p1, "other"    # Ljava/time/OffsetTime;

    .prologue
    .line 1259
    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    iget-object v2, p1, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1260
    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    iget-object v2, p1, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v1

    return v1

    .line 1262
    :cond_13
    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    invoke-direct {p1}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 1263
    .local v0, "compare":I
    if-nez v0, :cond_29

    .line 1264
    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    iget-object v2, p1, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v0

    .line 1266
    :cond_29
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1331
    if-ne p0, p1, :cond_5

    .line 1332
    const/4 v1, 0x1

    return v1

    .line 1334
    :cond_5
    instance-of v2, p1, Ljava/time/OffsetTime;

    if-eqz v2, :cond_1f

    move-object v0, p1

    .line 1335
    check-cast v0, Ljava/time/OffsetTime;

    .line 1336
    .local v0, "other":Ljava/time/OffsetTime;
    iget-object v2, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    iget-object v3, v0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    iget-object v2, v0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1e
    return v1

    .line 1338
    .end local v0    # "other":Ljava/time/OffsetTime;
    :cond_1f
    return v1
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 1199
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1200
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 496
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getHour()I
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 524
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_17

    .line 525
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_10

    .line 526
    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 528
    :cond_10
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 530
    :cond_17
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .registers 2

    .prologue
    .line 640
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Ljava/time/ZoneOffset;
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .registers 2

    .prologue
    .line 631
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1348
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Ljava/time/OffsetTime;)Z
    .registers 6
    .param p1, "other"    # Ljava/time/OffsetTime;

    .prologue
    .line 1282
    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isBefore(Ljava/time/OffsetTime;)Z
    .registers 6
    .param p1, "other"    # Ljava/time/OffsetTime;

    .prologue
    .line 1297
    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isEqual(Ljava/time/OffsetTime;)Z
    .registers 6
    .param p1, "other"    # Ljava/time/OffsetTime;

    .prologue
    .line 1312
    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 390
    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_13

    .line 391
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v2, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10

    .line 393
    :cond_13
    if-eqz p1, :cond_19

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v1

    :cond_19
    return v1
.end method

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 3
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 426
    instance-of v0, p1, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_9

    .line 427
    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    return v0

    .line 429
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

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;
    .registers 9
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 987
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v0

    goto :goto_15
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;
    .registers 3
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 963
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 966
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/OffsetTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 940
    invoke-virtual {p0, p1}, Ljava/time/OffsetTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusHours(J)Ljava/time/OffsetTime;
    .registers 6
    .param p1, "hours"    # J

    .prologue
    .line 1003
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->minusHours(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMinutes(J)Ljava/time/OffsetTime;
    .registers 6
    .param p1, "minutes"    # J

    .prologue
    .line 1018
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->minusMinutes(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusNanos(J)Ljava/time/OffsetTime;
    .registers 6
    .param p1, "nanos"    # J

    .prologue
    .line 1048
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->minusNanos(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Ljava/time/OffsetTime;
    .registers 6
    .param p1, "seconds"    # J

    .prologue
    .line 1033
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->minusSeconds(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;
    .registers 7
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 873
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_11

    .line 874
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2, p3}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0

    .line 876
    :cond_11
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;
    .registers 3
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 843
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 5

    .prologue
    .line 846
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 820
    invoke-virtual {p0, p1}, Ljava/time/OffsetTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Ljava/time/OffsetTime;
    .registers 6
    .param p1, "hours"    # J

    .prologue
    .line 892
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Ljava/time/OffsetTime;
    .registers 6
    .param p1, "minutes"    # J

    .prologue
    .line 907
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->plusMinutes(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Ljava/time/OffsetTime;
    .registers 6
    .param p1, "nanos"    # J

    .prologue
    .line 937
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Ljava/time/OffsetTime;
    .registers 6
    .param p1, "seconds"    # J

    .prologue
    .line 922
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 6
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1073
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_e

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_11

    .line 1074
    :cond_e
    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    return-object v0

    .line 1075
    :cond_11
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_29

    move v0, v1

    :goto_18
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne p1, v3, :cond_2b

    :goto_1e
    or-int/2addr v0, v1

    if-nez v0, :cond_27

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2d

    .line 1076
    :cond_27
    const/4 v0, 0x0

    return-object v0

    :cond_29
    move v0, v2

    .line 1075
    goto :goto_18

    :cond_2b
    move v1, v2

    goto :goto_1e

    .line 1077
    :cond_2d
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_36

    .line 1078
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    return-object v0

    .line 1079
    :cond_36
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3f

    .line 1080
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 1084
    :cond_3f
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 458
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_14

    .line 459
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    .line 460
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 462
    :cond_d
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 464
    :cond_14
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toLocalTime()Ljava/time/LocalTime;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 817
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 11
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 1172
    invoke-static {p1}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object v0

    .line 1173
    .local v0, "end":Ljava/time/OffsetTime;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_66

    .line 1174
    invoke-direct {v0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v4

    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 1175
    .local v2, "nanosUntil":J
    invoke-static {}, Ljava/time/OffsetTime;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v4

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_6c

    .line 1184
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

    .line 1176
    :pswitch_3c
    return-wide v2

    .line 1177
    :pswitch_3d
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    return-wide v4

    .line 1178
    :pswitch_42
    const-wide/32 v4, 0xf4240

    div-long v4, v2, v4

    return-wide v4

    .line 1179
    :pswitch_48
    const-wide/32 v4, 0x3b9aca00

    div-long v4, v2, v4

    return-wide v4

    .line 1180
    :pswitch_4e
    const-wide v4, 0xdf8475800L

    div-long v4, v2, v4

    return-wide v4

    .line 1181
    :pswitch_56
    const-wide v4, 0x34630b8a000L

    div-long v4, v2, v4

    return-wide v4

    .line 1182
    :pswitch_5e
    const-wide v4, 0x274a48a78000L

    div-long v4, v2, v4

    return-wide v4

    .line 1186
    .end local v2    # "nanosUntil":J
    :cond_66
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v4

    return-wide v4

    .line 1175
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

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/OffsetTime;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .prologue
    .line 675
    instance-of v0, p1, Ljava/time/LocalTime;

    if-eqz v0, :cond_d

    .line 676
    check-cast p1, Ljava/time/LocalTime;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, p1, v0}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0

    .line 677
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_d
    instance-of v0, p1, Ljava/time/ZoneOffset;

    if-eqz v0, :cond_1a

    .line 678
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    check-cast p1, Ljava/time/ZoneOffset;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    invoke-direct {p0, v0, p1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0

    .line 679
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_1a
    instance-of v0, p1, Ljava/time/OffsetTime;

    if-eqz v0, :cond_21

    .line 680
    check-cast p1, Ljava/time/OffsetTime;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    return-object p1

    .line 682
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_21
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/OffsetTime;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 722
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_27

    .line 723
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v1, :cond_1a

    move-object v0, p1

    .line 724
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 725
    .local v0, "f":Ljava/time/temporal/ChronoField;
    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v1

    return-object v1

    .line 727
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_1a
    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1, p2, p3}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object v1

    iget-object v2, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v1, v2}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v1

    return-object v1

    .line 729
    :cond_27
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/OffsetTime;

    return-object v1
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    .line 643
    invoke-virtual {p0, p1}, Ljava/time/OffsetTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 6

    .prologue
    .line 685
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/OffsetTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withHour(I)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "hour"    # I

    .prologue
    .line 745
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withHour(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "minute"    # I

    .prologue
    .line 760
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withMinute(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "nanoOfSecond"    # I

    .prologue
    .line 790
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withOffsetSameInstant(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .registers 8
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 585
    iget-object v2, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {p1, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 586
    return-object p0

    .line 588
    :cond_9
    invoke-virtual {p1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    iget-object v3, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int v1, v2, v3

    .line 589
    .local v1, "difference":I
    iget-object v2, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v0

    .line 590
    .local v0, "adjusted":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/OffsetTime;

    invoke-direct {v2, v0, p1}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    return-object v2
.end method

.method public withOffsetSameLocal(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 563
    if-eqz p1, :cond_b

    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .end local p0    # "this":Ljava/time/OffsetTime;
    :goto_a
    return-object p0

    .restart local p0    # "this":Ljava/time/OffsetTime;
    :cond_b
    new-instance v0, Ljava/time/OffsetTime;

    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-direct {v0, v1, p1}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public withSecond(I)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "second"    # I

    .prologue
    .line 775
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withSecond(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

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
    .line 1401
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1402
    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, p1}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 1403
    return-void
.end method
