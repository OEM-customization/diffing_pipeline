.class public final Ljava/nio/file/attribute/FileTime;
.super Ljava/lang/Object;
.source "FileTime.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/file/attribute/FileTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -java-util-concurrent-TimeUnitSwitchesValues:[I = null

.field private static final DAYS_PER_10000_YEARS:J = 0x37bb49L

.field private static final HOURS_PER_DAY:J = 0x18L

.field private static final MAX_SECOND:J = 0x701cd2fa9578ffL

.field private static final MICROS_PER_SECOND:J = 0xf4240L

.field private static final MILLIS_PER_SECOND:J = 0x3e8L

.field private static final MINUTES_PER_HOUR:J = 0x3cL

.field private static final MIN_SECOND:J = -0x701cefeb9bec00L

.field private static final NANOS_PER_MICRO:I = 0x3e8

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field private static final SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final SECONDS_PER_10000_YEARS:J = 0x497968bd80L

.field private static final SECONDS_PER_DAY:J = 0x15180L

.field private static final SECONDS_PER_HOUR:J = 0xe10L

.field private static final SECONDS_PER_MINUTE:J = 0x3cL


# instance fields
.field private instant:Ljava/time/Instant;

.field private final unit:Ljava/util/concurrent/TimeUnit;

.field private final value:J

.field private valueAsString:Ljava/lang/String;


# direct methods
.method private static synthetic -getjava-util-concurrent-TimeUnitSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/nio/file/attribute/FileTime;->-java-util-concurrent-TimeUnitSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/nio/file/attribute/FileTime;->-java-util-concurrent-TimeUnitSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljava/util/concurrent/TimeUnit;->values()[Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_5c

    :goto_17
    :try_start_17
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_5a

    :goto_20
    :try_start_20
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_58

    :goto_29
    :try_start_29
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_56

    :goto_32
    :try_start_32
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_54

    :goto_3b
    :try_start_3b
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_52

    :goto_44
    :try_start_44
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_50

    :goto_4d
    sput-object v0, Ljava/nio/file/attribute/FileTime;->-java-util-concurrent-TimeUnitSwitchesValues:[I

    return-object v0

    :catch_50
    move-exception v1

    goto :goto_4d

    :catch_52
    move-exception v1

    goto :goto_44

    :catch_54
    move-exception v1

    goto :goto_3b

    :catch_56
    move-exception v1

    goto :goto_32

    :catch_58
    move-exception v1

    goto :goto_29

    :catch_5a
    move-exception v1

    goto :goto_20

    :catch_5c
    move-exception v1

    goto :goto_17
.end method

.method private constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/time/Instant;)V
    .registers 6
    .param p1, "value"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "instant"    # Ljava/time/Instant;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Ljava/nio/file/attribute/FileTime;->value:J

    .line 79
    iput-object p3, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 80
    iput-object p4, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    .line 81
    return-void
.end method

.method private append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "w"    # I
    .param p3, "d"    # I

    .prologue
    .line 377
    :goto_0
    if-lez p2, :cond_e

    .line 378
    div-int v0, p3, p2

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    rem-int/2addr p3, p2

    .line 380
    div-int/lit8 p2, p2, 0xa

    goto :goto_0

    .line 382
    :cond_e
    return-object p1
.end method

.method public static from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;
    .registers 5
    .param p0, "value"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 96
    const-string/jumbo v0, "unit"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/nio/file/attribute/FileTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/time/Instant;)V

    return-object v0
.end method

.method public static from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;
    .registers 5
    .param p0, "instant"    # Ljava/time/Instant;

    .prologue
    .line 124
    const-string/jumbo v0, "instant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/nio/file/attribute/FileTime;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1, p0}, Ljava/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/time/Instant;)V

    return-object v0
.end method

.method public static fromMillis(J)Ljava/nio/file/attribute/FileTime;
    .registers 6
    .param p0, "value"    # J

    .prologue
    .line 110
    new-instance v0, Ljava/nio/file/attribute/FileTime;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/time/Instant;)V

    return-object v0
.end method

.method private static scale(JJJ)J
    .registers 8
    .param p0, "d"    # J
    .param p2, "m"    # J
    .param p4, "over"    # J

    .prologue
    .line 209
    cmp-long v0, p0, p4

    if-lez v0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 210
    :cond_a
    neg-long v0, p4

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 211
    :cond_12
    mul-long v0, p0, p2

    return-wide v0
.end method

.method private toDays()J
    .registers 5

    .prologue
    .line 309
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_d

    .line 310
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0

    .line 312
    :cond_d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private toExcessNanos(J)J
    .registers 10
    .param p1, "days"    # J

    .prologue
    .line 317
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_16

    .line 318
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Ljava/nio/file/attribute/FileTime;->value:J

    iget-object v1, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0

    .line 320
    :cond_16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    .line 321
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 320
    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 325
    check-cast p1, Ljava/nio/file/attribute/FileTime;

    invoke-virtual {p0, p1}, Ljava/nio/file/attribute/FileTime;->compareTo(Ljava/nio/file/attribute/FileTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/file/attribute/FileTime;)I
    .registers 16
    .param p1, "other"    # Ljava/nio/file/attribute/FileTime;

    .prologue
    .line 339
    iget-object v1, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_13

    iget-object v1, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v10, p1, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-ne v1, v10, :cond_13

    .line 340
    iget-wide v10, p0, Ljava/nio/file/attribute/FileTime;->value:J

    iget-wide v12, p1, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    return v1

    .line 343
    :cond_13
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    .line 344
    .local v6, "secs":J
    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v8

    .line 345
    .local v8, "secsOther":J
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 346
    .local v0, "cmp":I
    if-eqz v0, :cond_2a

    .line 347
    return v0

    .line 349
    :cond_2a
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->getNano()I

    move-result v1

    int-to-long v10, v1

    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->getNano()I

    move-result v1

    int-to-long v12, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 350
    if-eqz v0, :cond_43

    .line 351
    return v0

    .line 353
    :cond_43
    const-wide v10, 0x701cd2fa9578ffL

    cmp-long v1, v6, v10

    if-eqz v1, :cond_57

    const-wide v10, -0x701cefeb9bec00L

    cmp-long v1, v6, v10

    if-eqz v1, :cond_57

    .line 354
    const/4 v1, 0x0

    return v1

    .line 359
    :cond_57
    invoke-direct {p0}, Ljava/nio/file/attribute/FileTime;->toDays()J

    move-result-wide v2

    .line 360
    .local v2, "days":J
    invoke-direct {p1}, Ljava/nio/file/attribute/FileTime;->toDays()J

    move-result-wide v4

    .line 361
    .local v4, "daysOther":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_70

    .line 362
    invoke-direct {p0, v2, v3}, Ljava/nio/file/attribute/FileTime;->toExcessNanos(J)J

    move-result-wide v10

    invoke-direct {p1, v4, v5}, Ljava/nio/file/attribute/FileTime;->toExcessNanos(J)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    return v1

    .line 364
    :cond_70
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 291
    instance-of v1, p1, Ljava/nio/file/attribute/FileTime;

    if-eqz v1, :cond_e

    check-cast p1, Ljava/nio/file/attribute/FileTime;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/file/attribute/FileTime;->compareTo(Ljava/nio/file/attribute/FileTime;)I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 305
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->hashCode()I

    move-result v0

    return v0
.end method

.method public to(Ljava/util/concurrent/TimeUnit;)J
    .registers 12
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 142
    const-string/jumbo v6, "unit"

    invoke-static {p1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    iget-object v6, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v6, :cond_13

    .line 144
    iget-wide v6, p0, Ljava/nio/file/attribute/FileTime;->value:J

    iget-object v8, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    return-wide v6

    .line 146
    :cond_13
    iget-object v6, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    invoke-virtual {v6}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 147
    .local v4, "secs":J
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2e

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v4, v6

    if-nez v6, :cond_2f

    .line 148
    :cond_2e
    return-wide v4

    .line 150
    :cond_2f
    iget-object v6, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    invoke-virtual {v6}, Ljava/time/Instant;->getNano()I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 151
    .local v0, "nanos":J
    add-long v2, v4, v0

    .line 153
    .local v2, "r":J
    xor-long v6, v4, v2

    xor-long v8, v0, v2

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_58

    .line 154
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_52

    const-wide/high16 v6, -0x8000000000000000L

    :goto_51
    return-wide v6

    :cond_52
    const-wide v6, 0x7fffffffffffffffL

    goto :goto_51

    .line 156
    :cond_58
    return-wide v2
.end method

.method public toInstant()Ljava/time/Instant;
    .registers 13

    .prologue
    const-wide/32 v10, 0x3b9aca00

    const-wide/32 v4, 0xf4240

    const-wide/16 v2, 0x3e8

    .line 231
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    if-nez v0, :cond_42

    .line 232
    const-wide/16 v8, 0x0

    .line 233
    .local v8, "secs":J
    const/4 v6, 0x0

    .line 234
    .local v6, "nanos":I
    invoke-static {}, Ljava/nio/file/attribute/FileTime;->-getjava-util-concurrent-TimeUnitSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ac

    .line 264
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unit not handled"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 236
    :pswitch_27
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    const-wide/32 v2, 0x15180

    .line 237
    const-wide v4, 0x611722833944L

    .line 236
    invoke-static/range {v0 .. v5}, Ljava/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v8

    .line 266
    :goto_35
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v0, v8, v0

    if-gtz v0, :cond_95

    .line 267
    sget-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    iput-object v0, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    .line 273
    .end local v6    # "nanos":I
    .end local v8    # "secs":J
    :cond_42
    :goto_42
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    return-object v0

    .line 240
    .restart local v6    # "nanos":I
    .restart local v8    # "secs":J
    :pswitch_45
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    const-wide/16 v2, 0xe10

    .line 241
    const-wide v4, 0x91a2b3c4d5e6fL

    .line 240
    invoke-static/range {v0 .. v5}, Ljava/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v8

    goto :goto_35

    .line 244
    :pswitch_53
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    const-wide/16 v2, 0x3c

    .line 245
    const-wide v4, 0x222222222222222L

    .line 244
    invoke-static/range {v0 .. v5}, Ljava/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v8

    goto :goto_35

    .line 248
    :pswitch_61
    iget-wide v8, p0, Ljava/nio/file/attribute/FileTime;->value:J

    goto :goto_35

    .line 251
    :pswitch_64
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v8

    .line 252
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 253
    const v1, 0xf4240

    .line 252
    mul-int v6, v0, v1

    .line 254
    goto :goto_35

    .line 256
    :pswitch_77
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v8

    .line 257
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit16 v6, v0, 0x3e8

    .line 259
    goto :goto_35

    .line 261
    :pswitch_87
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v8

    .line 262
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v6, v0

    .line 263
    goto :goto_35

    .line 268
    :cond_95
    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v0, v8, v0

    if-ltz v0, :cond_a3

    .line 269
    sget-object v0, Ljava/time/Instant;->MAX:Ljava/time/Instant;

    iput-object v0, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    goto :goto_42

    .line 271
    :cond_a3
    int-to-long v0, v6

    invoke-static {v8, v9, v0, v1}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    goto :goto_42

    .line 234
    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_27
        :pswitch_45
        :pswitch_77
        :pswitch_64
        :pswitch_53
        :pswitch_87
        :pswitch_61
    .end packed-switch
.end method

.method public toMillis()J
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x3e8

    .line 170
    iget-object v3, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v3, :cond_11

    .line 171
    iget-object v3, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    return-wide v8

    .line 173
    :cond_11
    iget-object v3, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    invoke-virtual {v3}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    .line 174
    .local v6, "secs":J
    iget-object v3, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    invoke-virtual {v3}, Ljava/time/Instant;->getNano()I

    move-result v2

    .line 176
    .local v2, "nanos":I
    mul-long v4, v6, v10

    .line 177
    .local v4, "r":J
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 178
    .local v0, "ax":J
    or-long v8, v0, v10

    const/16 v3, 0x1f

    ushr-long/2addr v8, v3

    cmp-long v3, v8, v12

    if-eqz v3, :cond_3f

    .line 179
    div-long v8, v4, v10

    cmp-long v3, v8, v6

    if-eqz v3, :cond_3f

    .line 180
    cmp-long v3, v6, v12

    if-gez v3, :cond_39

    const-wide/high16 v8, -0x8000000000000000L

    :goto_38
    return-wide v8

    :cond_39
    const-wide v8, 0x7fffffffffffffffL

    goto :goto_38

    .line 183
    :cond_3f
    const v3, 0xf4240

    div-int v3, v2, v3

    int-to-long v8, v3

    add-long/2addr v8, v4

    return-wide v8
.end method

.method public toString()Ljava/lang/String;
    .registers 23

    .prologue
    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_1a9

    .line 413
    const-wide/16 v12, 0x0

    .line 414
    .local v12, "secs":J
    const/4 v10, 0x0

    .line 415
    .local v10, "nanos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    move-object/from16 v18, v0

    if-nez v18, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v18, v0

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v18

    if-ltz v18, :cond_13a

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/nio/file/attribute/FileTime;->value:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v12

    .line 422
    :goto_35
    const/4 v15, 0x0

    .line 423
    .local v15, "year":I
    const-wide v18, -0xe79747c00L

    cmp-long v18, v12, v18

    if-ltz v18, :cond_14c

    .line 425
    const-wide v18, 0x497968bd80L

    sub-long v18, v12, v18

    const-wide v20, 0xe79747c00L

    add-long v16, v18, v20

    .line 426
    .local v16, "zeroSecs":J
    const-wide v18, 0x497968bd80L

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v18

    const-wide/16 v20, 0x1

    add-long v6, v18, v20

    .line 427
    .local v6, "hi":J
    const-wide v18, 0x497968bd80L

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v8

    .line 428
    .local v8, "lo":J
    const-wide v18, 0xe79747c00L

    sub-long v18, v8, v18

    sget-object v20, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v10, v2}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 429
    .local v5, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getYear()I

    move-result v18

    long-to-int v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v19, v0

    add-int v15, v18, v19

    .line 438
    :goto_83
    if-gtz v15, :cond_87

    .line 439
    add-int/lit8 v15, v15, -0x1

    .line 441
    :cond_87
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getNano()I

    move-result v4

    .line 442
    .local v4, "fraction":I
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v18, 0x40

    move/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 443
    .local v11, "sb":Ljava/lang/StringBuilder;
    if-gez v15, :cond_183

    const-string/jumbo v18, "-"

    :goto_99
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 445
    const/16 v18, 0x2710

    move/from16 v0, v18

    if-ge v15, v0, :cond_188

    .line 446
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v18

    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 450
    :goto_b7
    const/16 v18, 0x2d

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v18

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 452
    const/16 v18, 0x2d

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v18

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 454
    const/16 v18, 0x54

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getHour()I

    move-result v18

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 456
    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v18

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 458
    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v18

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 460
    if-eqz v4, :cond_198

    .line 461
    const/16 v18, 0x2e

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    const v14, 0x5f5e100

    .line 464
    .local v14, "w":I
    :goto_131
    rem-int/lit8 v18, v4, 0xa

    if-nez v18, :cond_193

    .line 465
    div-int/lit8 v4, v4, 0xa

    .line 466
    div-int/lit8 v14, v14, 0xa

    goto :goto_131

    .line 418
    .end local v4    # "fraction":I
    .end local v5    # "ldt":Ljava/time/LocalDateTime;
    .end local v6    # "hi":J
    .end local v8    # "lo":J
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "w":I
    .end local v15    # "year":I
    .end local v16    # "zeroSecs":J
    :cond_13a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v12

    .line 419
    invoke-virtual/range {p0 .. p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/time/Instant;->getNano()I

    move-result v10

    goto/16 :goto_35

    .line 432
    .restart local v15    # "year":I
    :cond_14c
    const-wide v18, 0xe79747c00L

    add-long v16, v12, v18

    .line 433
    .restart local v16    # "zeroSecs":J
    const-wide v18, 0x497968bd80L

    div-long v6, v16, v18

    .line 434
    .restart local v6    # "hi":J
    const-wide v18, 0x497968bd80L

    rem-long v8, v16, v18

    .line 435
    .restart local v8    # "lo":J
    const-wide v18, 0xe79747c00L

    sub-long v18, v8, v18

    sget-object v20, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v10, v2}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 436
    .restart local v5    # "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getYear()I

    move-result v18

    long-to-int v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v19, v0

    add-int v15, v18, v19

    goto/16 :goto_83

    .line 443
    .restart local v4    # "fraction":I
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_183
    const-string/jumbo v18, ""

    goto/16 :goto_99

    .line 448
    :cond_188
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b7

    .line 468
    .restart local v14    # "w":I
    :cond_193
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v4}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 470
    .end local v14    # "w":I
    :cond_198
    const/16 v18, 0x5a

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    .line 473
    .end local v4    # "fraction":I
    .end local v5    # "ldt":Ljava/time/LocalDateTime;
    .end local v6    # "hi":J
    .end local v8    # "lo":J
    .end local v10    # "nanos":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "secs":J
    .end local v15    # "year":I
    .end local v16    # "zeroSecs":J
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    move-object/from16 v18, v0

    return-object v18
.end method
