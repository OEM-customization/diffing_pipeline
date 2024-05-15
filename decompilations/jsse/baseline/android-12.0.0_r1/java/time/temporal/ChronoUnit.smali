.class public final enum Ljava/time/temporal/ChronoUnit;
.super Ljava/lang/Enum;
.source "ChronoUnit.java"

# interfaces
.implements Ljava/time/temporal/TemporalUnit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/temporal/ChronoUnit;",
        ">;",
        "Ljava/time/temporal/TemporalUnit;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api CENTURIES:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api DAYS:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api DECADES:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api ERAS:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api FOREVER:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api HALF_DAYS:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api HOURS:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api MICROS:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api MILLENNIA:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api MILLIS:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api MINUTES:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api MONTHS:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api NANOS:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api SECONDS:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api WEEKS:Ljava/time/temporal/ChronoUnit;

.field public static final enum whitelist test-api YEARS:Ljava/time/temporal/ChronoUnit;


# instance fields
.field private final greylist-max-o duration:Ljava/time/Duration;

.field private final greylist-max-o name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 21

    .line 83
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v3

    const-string v4, "NANOS"

    const/4 v5, 0x0

    const-string v6, "Nanos"

    invoke-direct {v0, v4, v5, v6, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    .line 88
    new-instance v3, Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v4

    const-string v6, "MICROS"

    const/4 v7, 0x1

    const-string v8, "Micros"

    invoke-direct {v3, v6, v7, v8, v4}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v3, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    .line 93
    new-instance v4, Ljava/time/temporal/ChronoUnit;

    const-wide/32 v8, 0xf4240

    invoke-static {v8, v9}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v6

    const-string v8, "MILLIS"

    const/4 v9, 0x2

    const-string v10, "Millis"

    invoke-direct {v4, v8, v9, v10, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    .line 99
    new-instance v6, Ljava/time/temporal/ChronoUnit;

    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    const-string v2, "SECONDS"

    const/4 v8, 0x3

    const-string v10, "Seconds"

    invoke-direct {v6, v2, v8, v10, v1}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v6, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    .line 104
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    const-wide/16 v10, 0x3c

    invoke-static {v10, v11}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    const-string v10, "MINUTES"

    const/4 v11, 0x4

    const-string v12, "Minutes"

    invoke-direct {v1, v10, v11, v12, v2}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    .line 109
    new-instance v2, Ljava/time/temporal/ChronoUnit;

    const-wide/16 v12, 0xe10

    invoke-static {v12, v13}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v10

    const-string v12, "HOURS"

    const/4 v13, 0x5

    const-string v14, "Hours"

    invoke-direct {v2, v12, v13, v14, v10}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v2, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    .line 114
    new-instance v10, Ljava/time/temporal/ChronoUnit;

    const-wide/32 v14, 0xa8c0

    invoke-static {v14, v15}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v12

    const-string v14, "HALF_DAYS"

    const/4 v15, 0x6

    const-string v13, "HalfDays"

    invoke-direct {v10, v14, v15, v13, v12}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v10, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    .line 125
    new-instance v12, Ljava/time/temporal/ChronoUnit;

    const-wide/32 v13, 0x15180

    invoke-static {v13, v14}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v13

    const-string v14, "DAYS"

    const/4 v15, 0x7

    const-string v11, "Days"

    invoke-direct {v12, v14, v15, v11, v13}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v12, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 132
    new-instance v11, Ljava/time/temporal/ChronoUnit;

    const-wide/32 v13, 0x93a80

    invoke-static {v13, v14}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v13

    const-string v14, "WEEKS"

    const/16 v15, 0x8

    const-string v8, "Weeks"

    invoke-direct {v11, v14, v15, v8, v13}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v11, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    .line 140
    new-instance v8, Ljava/time/temporal/ChronoUnit;

    const-wide/32 v13, 0x282072

    invoke-static {v13, v14}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v13

    const-string v14, "MONTHS"

    const/16 v15, 0x9

    const-string v9, "Months"

    invoke-direct {v8, v14, v15, v9, v13}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v8, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    .line 149
    new-instance v9, Ljava/time/temporal/ChronoUnit;

    const-wide/32 v13, 0x1e18558

    invoke-static {v13, v14}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v13

    const-string v14, "YEARS"

    const/16 v15, 0xa

    const-string v7, "Years"

    invoke-direct {v9, v14, v15, v7, v13}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v9, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    .line 157
    new-instance v7, Ljava/time/temporal/ChronoUnit;

    const-wide/32 v13, 0x12cf3570

    invoke-static {v13, v14}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v13

    const-string v14, "DECADES"

    const/16 v15, 0xb

    const-string v5, "Decades"

    invoke-direct {v7, v14, v15, v5, v13}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v7, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    .line 165
    new-instance v5, Ljava/time/temporal/ChronoUnit;

    const-wide v13, 0xbc181660L

    invoke-static {v13, v14}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v13

    const-string v14, "CENTURIES"

    const/16 v15, 0xc

    move-object/from16 v16, v7

    const-string v7, "Centuries"

    invoke-direct {v5, v14, v15, v7, v13}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v5, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    .line 173
    new-instance v7, Ljava/time/temporal/ChronoUnit;

    const-wide v13, 0x758f0dfc0L

    invoke-static {v13, v14}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v13

    const-string v14, "MILLENNIA"

    const/16 v15, 0xd

    move-object/from16 v17, v5

    const-string v5, "Millennia"

    invoke-direct {v7, v14, v15, v5, v13}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v7, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    .line 182
    new-instance v5, Ljava/time/temporal/ChronoUnit;

    const-wide v13, 0x701ce172277000L

    invoke-static {v13, v14}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v13

    const-string v14, "ERAS"

    const/16 v15, 0xe

    move-object/from16 v18, v7

    const-string v7, "Eras"

    invoke-direct {v5, v14, v15, v7, v13}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v5, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    .line 190
    new-instance v7, Ljava/time/temporal/ChronoUnit;

    const-wide v13, 0x7fffffffffffffffL

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    const-wide/32 v8, 0x3b9ac9ff

    invoke-static {v13, v14, v8, v9}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v8

    const-string v9, "FOREVER"

    const/16 v13, 0xf

    const-string v14, "Forever"

    invoke-direct {v7, v9, v13, v14, v8}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v7, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    .line 77
    const/16 v8, 0x10

    new-array v8, v8, [Ljava/time/temporal/ChronoUnit;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v3, v8, v0

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v0, 0x3

    aput-object v6, v8, v0

    const/4 v0, 0x4

    aput-object v1, v8, v0

    const/4 v0, 0x5

    aput-object v2, v8, v0

    const/4 v0, 0x6

    aput-object v10, v8, v0

    const/4 v0, 0x7

    aput-object v12, v8, v0

    const/16 v0, 0x8

    aput-object v11, v8, v0

    const/16 v0, 0x9

    aput-object v19, v8, v0

    const/16 v0, 0xa

    aput-object v20, v8, v0

    const/16 v0, 0xb

    aput-object v16, v8, v0

    const/16 v0, 0xc

    aput-object v17, v8, v0

    const/16 v0, 0xd

    aput-object v18, v8, v0

    aput-object v5, v8, v15

    aput-object v7, v8, v13

    sput-object v8, Ljava/time/temporal/ChronoUnit;->$VALUES:[Ljava/time/temporal/ChronoUnit;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V
    .registers 5
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "estimatedDuration"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput-object p3, p0, Ljava/time/temporal/ChronoUnit;->name:Ljava/lang/String;

    .line 197
    iput-object p4, p0, Ljava/time/temporal/ChronoUnit;->duration:Ljava/time/Duration;

    .line 198
    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/temporal/ChronoUnit;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 77
    const-class v0, Ljava/time/temporal/ChronoUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/time/temporal/ChronoUnit;
    .registers 1

    .line 77
    sget-object v0, Ljava/time/temporal/ChronoUnit;->$VALUES:[Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0}, [Ljava/time/temporal/ChronoUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 5
    .param p2, "amount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 266
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-interface {p1, p2, p3, p0}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J
    .registers 5
    .param p1, "temporal1Inclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "temporal2Exclusive"    # Ljava/time/temporal/Temporal;

    .line 272
    invoke-interface {p1, p2, p0}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getDuration()Ljava/time/Duration;
    .registers 2

    .line 211
    iget-object v0, p0, Ljava/time/temporal/ChronoUnit;->duration:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist test-api isDateBased()Z
    .registers 2

    .line 241
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v0}, Ljava/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_e

    sget-object v0, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-eq p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api isDurationEstimated()Z
    .registers 2

    .line 227
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v0}, Ljava/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api isSupportedBy(Ljava/time/temporal/Temporal;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 260
    invoke-interface {p1, p0}, Ljava/time/temporal/Temporal;->isSupported(Ljava/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isTimeBased()Z
    .registers 2

    .line 254
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v0}, Ljava/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Ljava/time/temporal/ChronoUnit;->name:Ljava/lang/String;

    return-object v0
.end method
