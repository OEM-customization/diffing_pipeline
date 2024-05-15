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
        "Ljava/lang/Comparable<",
        "Ljava/time/OffsetTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final whitelist test-api MAX:Ljava/time/OffsetTime;

.field public static final whitelist test-api MIN:Ljava/time/OffsetTime;

.field private static final whitelist serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field private final greylist-max-o offset:Ljava/time/ZoneOffset;

.field private final greylist-max-o time:Ljava/time/LocalTime;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

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

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V
    .registers 4
    .param p1, "time"    # Ljava/time/LocalTime;
    .param p2, "offset"    # Ljava/time/ZoneOffset;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const-string v0, "time"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/time/LocalTime;

    iput-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    .line 333
    const-string v0, "offset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    .line 334
    return-void
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 281
    instance-of v0, p0, Ljava/time/OffsetTime;

    if-eqz v0, :cond_8

    .line 282
    move-object v0, p0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0

    .line 285
    :cond_8
    :try_start_8
    invoke-static {p0}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v0

    .line 286
    .local v0, "time":Ljava/time/LocalTime;
    invoke-static {p0}, Ljava/time/ZoneOffset;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 287
    .local v1, "offset":Ljava/time/ZoneOffset;
    new-instance v2, Ljava/time/OffsetTime;

    invoke-direct {v2, v0, v1}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V
    :try_end_15
    .catch Ljava/time/DateTimeException; {:try_start_8 .. :try_end_15} :catch_16

    return-object v2

    .line 288
    .end local v0    # "time":Ljava/time/LocalTime;
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :catch_16
    move-exception v0

    .line 289
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain OffsetTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist test-api now()Ljava/time/OffsetTime;
    .registers 1

    .line 160
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/OffsetTime;->now(Ljava/time/Clock;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/Clock;)Ljava/time/OffsetTime;
    .registers 3
    .param p0, "clock"    # Ljava/time/Clock;

    .line 193
    const-string v0, "clock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

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

.method public static whitelist test-api now(Ljava/time/ZoneId;)Ljava/time/OffsetTime;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 177
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/OffsetTime;->now(Ljava/time/Clock;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(IIIILjava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .registers 7
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "nanoOfSecond"    # I
    .param p4, "offset"    # Ljava/time/ZoneOffset;

    .line 230
    new-instance v0, Ljava/time/OffsetTime;

    invoke-static {p0, p1, p2, p3}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .registers 3
    .param p0, "time"    # Ljava/time/LocalTime;
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 207
    new-instance v0, Ljava/time/OffsetTime;

    invoke-direct {v0, p0, p1}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method public static whitelist test-api ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetTime;
    .registers 11
    .param p0, "instant"    # Ljava/time/Instant;
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 250
    const-string v0, "instant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    .line 253
    .local v0, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 254
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 255
    .local v2, "localSecond":J
    const v4, 0x15180

    invoke-static {v2, v3, v4}, Ljava/lang/Math;->floorMod(JI)I

    move-result v4

    .line 256
    .local v4, "secsOfDay":I
    int-to-long v5, v4

    const-wide/32 v7, 0x3b9aca00

    mul-long/2addr v5, v7

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    .line 257
    .local v5, "time":Ljava/time/LocalTime;
    new-instance v6, Ljava/time/OffsetTime;

    invoke-direct {v6, v5, v1}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    return-object v6
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 306
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/OffsetTime;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 320
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    sget-object v0, Ljava/time/OffsetTime$$ExternalSyntheticLambda0;->INSTANCE:Ljava/time/OffsetTime$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/ObjectInput;)Ljava/time/OffsetTime;
    .registers 4
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1406
    invoke-static {p0}, Ljava/time/LocalTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalTime;

    move-result-object v0

    .line 1407
    .local v0, "time":Ljava/time/LocalTime;
    invoke-static {p0}, Ljava/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 1408
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-static {v0, v1}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v2

    return-object v2
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1397
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o toEpochNano()J
    .registers 7

    .line 1224
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    .line 1225
    .local v0, "nod":J
    iget-object v2, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v2, v4

    .line 1226
    .local v2, "offsetNanos":J
    sub-long v4, v0, v2

    return-wide v4
.end method

.method private greylist-max-o with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "time"    # Ljava/time/LocalTime;
    .param p2, "offset"    # Ljava/time/ZoneOffset;

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

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1387
    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 1115
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    .line 1116
    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    iget-object v2, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    .line 1117
    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    .line 1115
    return-object v0
.end method

.method public whitelist test-api atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "date"    # Ljava/time/LocalDate;

    .line 1214
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {p1, v0, v1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 112
    check-cast p1, Ljava/time/OffsetTime;

    invoke-virtual {p0, p1}, Ljava/time/OffsetTime;->compareTo(Ljava/time/OffsetTime;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/OffsetTime;)I
    .registers 6
    .param p1, "other"    # Ljava/time/OffsetTime;

    .line 1259
    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    iget-object v1, p1, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1260
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    iget-object v1, p1, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, v1}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v0

    return v0

    .line 1262
    :cond_13
    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

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

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1331
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1332
    return v0

    .line 1334
    :cond_4
    instance-of v1, p1, Ljava/time/OffsetTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 1335
    move-object v1, p1

    check-cast v1, Ljava/time/OffsetTime;

    .line 1336
    .local v1, "other":Ljava/time/OffsetTime;
    iget-object v3, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    iget-object v4, v1, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    iget-object v4, v1, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0

    .line 1338
    .end local v1    # "other":Ljava/time/OffsetTime;
    :cond_23
    return v2
.end method

.method public whitelist test-api format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 1199
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1200
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 496
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getHour()I
    .registers 2

    .line 613
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

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

.method public whitelist test-api getMinute()I
    .registers 2

    .line 622
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getNano()I
    .registers 2

    .line 640
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getNano()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getOffset()Ljava/time/ZoneOffset;
    .registers 2

    .line 542
    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist test-api getSecond()I
    .registers 2

    .line 631
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

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

.method public whitelist test-api isAfter(Ljava/time/OffsetTime;)Z
    .registers 6
    .param p1, "other"    # Ljava/time/OffsetTime;

    .line 1282
    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api isBefore(Ljava/time/OffsetTime;)Z
    .registers 6
    .param p1, "other"    # Ljava/time/OffsetTime;

    .line 1297
    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api isEqual(Ljava/time/OffsetTime;)Z
    .registers 6
    .param p1, "other"    # Ljava/time/OffsetTime;

    .line 1312
    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 390
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 391
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :cond_12
    :goto_12
    return v1

    .line 393
    :cond_13
    if-eqz p1, :cond_1c

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 3
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 426
    instance-of v0, p1, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_9

    .line 427
    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    return v0

    .line 429
    :cond_9
    if-eqz p1, :cond_13

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;
    .registers 7
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 987
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;
    .registers 3
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 963
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 4

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/OffsetTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Ljava/time/OffsetTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusHours(J)Ljava/time/OffsetTime;
    .registers 5
    .param p1, "hours"    # J

    .line 1003
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->minusHours(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api minusMinutes(J)Ljava/time/OffsetTime;
    .registers 5
    .param p1, "minutes"    # J

    .line 1018
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->minusMinutes(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api minusNanos(J)Ljava/time/OffsetTime;
    .registers 5
    .param p1, "nanos"    # J

    .line 1048
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->minusNanos(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api minusSeconds(J)Ljava/time/OffsetTime;
    .registers 5
    .param p1, "seconds"    # J

    .line 1033
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->minusSeconds(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;
    .registers 6
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

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

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;
    .registers 3
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 843
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 4

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Ljava/time/OffsetTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusHours(J)Ljava/time/OffsetTime;
    .registers 5
    .param p1, "hours"    # J

    .line 892
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusMinutes(J)Ljava/time/OffsetTime;
    .registers 5
    .param p1, "minutes"    # J

    .line 907
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->plusMinutes(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusNanos(J)Ljava/time/OffsetTime;
    .registers 5
    .param p1, "nanos"    # J

    .line 937
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusSeconds(J)Ljava/time/OffsetTime;
    .registers 5
    .param p1, "seconds"    # J

    .line 922
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1073
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_43

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_d

    goto :goto_43

    .line 1075
    :cond_d
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne p1, v3, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    or-int/2addr v0, v1

    if-nez v0, :cond_41

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2a

    goto :goto_41

    .line 1077
    :cond_2a
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_33

    .line 1078
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    return-object v0

    .line 1079
    :cond_33
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3c

    .line 1080
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 1084
    :cond_3c
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1076
    :cond_41
    :goto_41
    const/4 v0, 0x0

    return-object v0

    .line 1074
    :cond_43
    :goto_43
    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

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

.method public whitelist test-api toLocalTime()Ljava/time/LocalTime;
    .registers 2

    .line 603
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 817
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 9
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1172
    invoke-static {p1}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object v0

    .line 1173
    .local v0, "end":Ljava/time/OffsetTime;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_60

    .line 1174
    invoke-direct {v0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v1

    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1175
    .local v1, "nanosUntil":J
    sget-object v3, Ljava/time/OffsetTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v4, p2

    check-cast v4, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_66

    .line 1184
    new-instance v3, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1182
    :pswitch_36
    const-wide v3, 0x274a48a78000L

    div-long v3, v1, v3

    return-wide v3

    .line 1181
    :pswitch_3e
    const-wide v3, 0x34630b8a000L

    div-long v3, v1, v3

    return-wide v3

    .line 1180
    :pswitch_46
    const-wide v3, 0xdf8475800L

    div-long v3, v1, v3

    return-wide v3

    .line 1179
    :pswitch_4e
    const-wide/32 v3, 0x3b9aca00

    div-long v3, v1, v3

    return-wide v3

    .line 1178
    :pswitch_54
    const-wide/32 v3, 0xf4240

    div-long v3, v1, v3

    return-wide v3

    .line 1177
    :pswitch_5a
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    return-wide v3

    .line 1176
    :pswitch_5f
    return-wide v1

    .line 1186
    .end local v1    # "nanosUntil":J
    :cond_60
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_5a
        :pswitch_54
        :pswitch_4e
        :pswitch_46
        :pswitch_3e
        :pswitch_36
    .end packed-switch
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 675
    instance-of v0, p1, Ljava/time/LocalTime;

    if-eqz v0, :cond_e

    .line 676
    move-object v0, p1

    check-cast v0, Ljava/time/LocalTime;

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0

    .line 677
    :cond_e
    instance-of v0, p1, Ljava/time/ZoneOffset;

    if-eqz v0, :cond_1c

    .line 678
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v1, p1

    check-cast v1, Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0

    .line 679
    :cond_1c
    instance-of v0, p1, Ljava/time/OffsetTime;

    if-eqz v0, :cond_24

    .line 680
    move-object v0, p1

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0

    .line 682
    :cond_24
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/OffsetTime;
    .registers 7
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 722
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_27

    .line 723
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1a

    .line 724
    move-object v0, p1

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
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2, p3}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0

    .line 729
    :cond_27
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Ljava/time/OffsetTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 4

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/OffsetTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api withHour(I)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "hour"    # I

    .line 745
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withHour(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withMinute(I)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "minute"    # I

    .line 760
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withMinute(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withNano(I)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "nanoOfSecond"    # I

    .line 790
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withOffsetSameInstant(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .registers 6
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 585
    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 586
    return-object p0

    .line 588
    :cond_9
    invoke-virtual {p1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    .line 589
    .local v0, "difference":I
    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v1

    .line 590
    .local v1, "adjusted":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/OffsetTime;

    invoke-direct {v2, v1, p1}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    return-object v2
.end method

.method public whitelist test-api withOffsetSameLocal(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 563
    if-eqz p1, :cond_c

    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p0

    goto :goto_13

    :cond_c
    new-instance v0, Ljava/time/OffsetTime;

    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-direct {v0, v1, p1}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    :goto_13
    return-object v0
.end method

.method public whitelist test-api withSecond(I)Ljava/time/OffsetTime;
    .registers 4
    .param p1, "second"    # I

    .line 775
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withSecond(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1401
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1402
    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, p1}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 1403
    return-void
.end method
