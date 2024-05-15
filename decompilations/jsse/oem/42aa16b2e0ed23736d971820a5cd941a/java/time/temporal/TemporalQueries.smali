.class public final Ljava/time/temporal/TemporalQueries;
.super Ljava/lang/Object;
.source "TemporalQueries.java"


# static fields
.field static final greylist-max-o CHRONO:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o LOCAL_DATE:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o LOCAL_TIME:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/LocalTime;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o OFFSET:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o PRECISION:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o ZONE:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o ZONE_ID:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 344
    sget-object v0, Ljava/time/temporal/-$$Lambda$TemporalQueries$IZUinmsZUz98YXPe0ftAd27ByiE;->INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalQueries$IZUinmsZUz98YXPe0ftAd27ByiE;

    sput-object v0, Ljava/time/temporal/TemporalQueries;->ZONE_ID:Ljava/time/temporal/TemporalQuery;

    .line 350
    sget-object v0, Ljava/time/temporal/-$$Lambda$TemporalQueries$thd4JmExRUYKd7nNlE7b5oT19ms;->INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalQueries$thd4JmExRUYKd7nNlE7b5oT19ms;

    sput-object v0, Ljava/time/temporal/TemporalQueries;->CHRONO:Ljava/time/temporal/TemporalQuery;

    .line 356
    sget-object v0, Ljava/time/temporal/-$$Lambda$TemporalQueries$okxqZ6ZoOhHd_zSzW7k5qRIaLxM;->INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalQueries$okxqZ6ZoOhHd_zSzW7k5qRIaLxM;

    sput-object v0, Ljava/time/temporal/TemporalQueries;->PRECISION:Ljava/time/temporal/TemporalQuery;

    .line 363
    sget-object v0, Ljava/time/temporal/-$$Lambda$TemporalQueries$bI5NESEXE4DqyC7TnOvbkx1GlvM;->INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalQueries$bI5NESEXE4DqyC7TnOvbkx1GlvM;

    sput-object v0, Ljava/time/temporal/TemporalQueries;->OFFSET:Ljava/time/temporal/TemporalQuery;

    .line 373
    sget-object v0, Ljava/time/temporal/-$$Lambda$TemporalQueries$PBpYKRiwkxqQNlcU-BOJfaQoONg;->INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalQueries$PBpYKRiwkxqQNlcU-BOJfaQoONg;

    sput-object v0, Ljava/time/temporal/TemporalQueries;->ZONE:Ljava/time/temporal/TemporalQuery;

    .line 381
    sget-object v0, Ljava/time/temporal/-$$Lambda$TemporalQueries$JPrXwgedeqexYxypO8VpPKV4l3c;->INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalQueries$JPrXwgedeqexYxypO8VpPKV4l3c;

    sput-object v0, Ljava/time/temporal/TemporalQueries;->LOCAL_DATE:Ljava/time/temporal/TemporalQuery;

    .line 391
    sget-object v0, Ljava/time/temporal/-$$Lambda$TemporalQueries$WGGw7SkRcanjtxRiTk5p0dKf_jc;->INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalQueries$WGGw7SkRcanjtxRiTk5p0dKf_jc;

    sput-object v0, Ljava/time/temporal/TemporalQueries;->LOCAL_TIME:Ljava/time/temporal/TemporalQuery;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public static whitelist core-platform-api test-api chronology()Ljava/time/temporal/TemporalQuery;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation

    .line 207
    sget-object v0, Ljava/time/temporal/TemporalQueries;->CHRONO:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    .registers 2
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 345
    sget-object v0, Ljava/time/temporal/TemporalQueries;->ZONE_ID:Ljava/time/temporal/TemporalQuery;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    return-object v0
.end method

.method static synthetic blacklist lambda$static$1(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;
    .registers 2
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 351
    sget-object v0, Ljava/time/temporal/TemporalQueries;->CHRONO:Ljava/time/temporal/TemporalQuery;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    return-object v0
.end method

.method static synthetic blacklist lambda$static$2(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/TemporalUnit;
    .registers 2
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 357
    sget-object v0, Ljava/time/temporal/TemporalQueries;->PRECISION:Ljava/time/temporal/TemporalQuery;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method static synthetic blacklist lambda$static$3(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;
    .registers 2
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 364
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 365
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0

    .line 367
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$4(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    .registers 3
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 374
    sget-object v0, Ljava/time/temporal/TemporalQueries;->ZONE_ID:Ljava/time/temporal/TemporalQuery;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 375
    .local v0, "zone":Ljava/time/ZoneId;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_14

    :cond_c
    sget-object v1, Ljava/time/temporal/TemporalQueries;->OFFSET:Ljava/time/temporal/TemporalQuery;

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneId;

    :goto_14
    return-object v1
.end method

.method static synthetic blacklist lambda$static$5(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;
    .registers 3
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 382
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 383
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 385
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$6(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;
    .registers 3
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 392
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 393
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 395
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api localDate()Ljava/time/temporal/TemporalQuery;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 314
    sget-object v0, Ljava/time/temporal/TemporalQueries;->LOCAL_DATE:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api localTime()Ljava/time/temporal/TemporalQuery;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/LocalTime;",
            ">;"
        }
    .end annotation

    .line 337
    sget-object v0, Ljava/time/temporal/TemporalQueries;->LOCAL_TIME:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api offset()Ljava/time/temporal/TemporalQuery;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation

    .line 291
    sget-object v0, Ljava/time/temporal/TemporalQueries;->OFFSET:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api precision()Ljava/time/temporal/TemporalQuery;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .line 244
    sget-object v0, Ljava/time/temporal/TemporalQueries;->PRECISION:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api zone()Ljava/time/temporal/TemporalQuery;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation

    .line 268
    sget-object v0, Ljava/time/temporal/TemporalQueries;->ZONE:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api zoneId()Ljava/time/temporal/TemporalQuery;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation

    .line 168
    sget-object v0, Ljava/time/temporal/TemporalQueries;->ZONE_ID:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method
