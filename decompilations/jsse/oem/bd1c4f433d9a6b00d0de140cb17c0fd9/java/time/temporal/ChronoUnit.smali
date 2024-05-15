.class public final enum Ljava/time/temporal/ChronoUnit;
.super Ljava/lang/Enum;
.source "ChronoUnit.java"

# interfaces
.implements Ljava/time/temporal/TemporalUnit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/temporal/ChronoUnit;",
        ">;",
        "Ljava/time/temporal/TemporalUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/temporal/ChronoUnit;

.field public static final enum CENTURIES:Ljava/time/temporal/ChronoUnit;

.field public static final enum DAYS:Ljava/time/temporal/ChronoUnit;

.field public static final enum DECADES:Ljava/time/temporal/ChronoUnit;

.field public static final enum ERAS:Ljava/time/temporal/ChronoUnit;

.field public static final enum FOREVER:Ljava/time/temporal/ChronoUnit;

.field public static final enum HALF_DAYS:Ljava/time/temporal/ChronoUnit;

.field public static final enum HOURS:Ljava/time/temporal/ChronoUnit;

.field public static final enum MICROS:Ljava/time/temporal/ChronoUnit;

.field public static final enum MILLENNIA:Ljava/time/temporal/ChronoUnit;

.field public static final enum MILLIS:Ljava/time/temporal/ChronoUnit;

.field public static final enum MINUTES:Ljava/time/temporal/ChronoUnit;

.field public static final enum MONTHS:Ljava/time/temporal/ChronoUnit;

.field public static final enum NANOS:Ljava/time/temporal/ChronoUnit;

.field public static final enum SECONDS:Ljava/time/temporal/ChronoUnit;

.field public static final enum WEEKS:Ljava/time/temporal/ChronoUnit;

.field public static final enum YEARS:Ljava/time/temporal/ChronoUnit;


# instance fields
.field private final duration:Ljava/time/Duration;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 79
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "NANOS"

    .line 83
    const-string/jumbo v2, "Nanos"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v3

    .line 79
    invoke-direct {v0, v1, v8, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 83
    sput-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    .line 84
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "MICROS"

    .line 88
    const-string/jumbo v2, "Micros"

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v3

    .line 84
    invoke-direct {v0, v1, v9, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 88
    sput-object v0, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    .line 89
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "MILLIS"

    .line 93
    const-string/jumbo v2, "Millis"

    const-wide/32 v4, 0xf4240

    invoke-static {v4, v5}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v3

    .line 89
    invoke-direct {v0, v1, v10, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 93
    sput-object v0, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    .line 94
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "SECONDS"

    .line 99
    const-string/jumbo v2, "Seconds"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 94
    invoke-direct {v0, v1, v11, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 99
    sput-object v0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    .line 100
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "MINUTES"

    .line 104
    const-string/jumbo v2, "Minutes"

    const-wide/16 v4, 0x3c

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 100
    invoke-direct {v0, v1, v12, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 104
    sput-object v0, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    .line 105
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "HOURS"

    .line 109
    const-string/jumbo v2, "Hours"

    const-wide/16 v4, 0xe10

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 105
    const/4 v4, 0x5

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 109
    sput-object v0, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    .line 110
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "HALF_DAYS"

    .line 114
    const-string/jumbo v2, "HalfDays"

    const-wide/32 v4, 0xa8c0

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 110
    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 114
    sput-object v0, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    .line 115
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "DAYS"

    .line 125
    const-string/jumbo v2, "Days"

    const-wide/32 v4, 0x15180

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 115
    const/4 v4, 0x7

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 125
    sput-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 126
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "WEEKS"

    .line 132
    const-string/jumbo v2, "Weeks"

    const-wide/32 v4, 0x93a80

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 126
    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 132
    sput-object v0, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    .line 133
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "MONTHS"

    .line 140
    const-string/jumbo v2, "Months"

    const-wide/32 v4, 0x282072

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 133
    const/16 v4, 0x9

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 140
    sput-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    .line 141
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "YEARS"

    .line 149
    const-string/jumbo v2, "Years"

    const-wide/32 v4, 0x1e18558

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 141
    const/16 v4, 0xa

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 149
    sput-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    .line 150
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "DECADES"

    .line 157
    const-string/jumbo v2, "Decades"

    const-wide/32 v4, 0x12cf3570

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 150
    const/16 v4, 0xb

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 157
    sput-object v0, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    .line 158
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "CENTURIES"

    .line 165
    const-string/jumbo v2, "Centuries"

    const-wide v4, 0xbc181660L

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 158
    const/16 v4, 0xc

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 165
    sput-object v0, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    .line 166
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "MILLENNIA"

    .line 173
    const-string/jumbo v2, "Millennia"

    const-wide v4, 0x758f0dfc0L

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 166
    const/16 v4, 0xd

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 173
    sput-object v0, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    .line 174
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "ERAS"

    .line 182
    const-string/jumbo v2, "Eras"

    const-wide v4, 0x701ce172277000L

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 174
    const/16 v4, 0xe

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 182
    sput-object v0, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    .line 183
    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "FOREVER"

    .line 190
    const-string/jumbo v2, "Forever"

    const-wide/32 v4, 0x3b9ac9ff

    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7, v4, v5}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v3

    .line 183
    const/16 v4, 0xf

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 190
    sput-object v0, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/time/temporal/ChronoUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v8

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v9

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v10

    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v11

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v12

    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Ljava/time/temporal/ChronoUnit;->$VALUES:[Ljava/time/temporal/ChronoUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V
    .registers 5
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "estimatedDuration"    # Ljava/time/Duration;

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput-object p3, p0, Ljava/time/temporal/ChronoUnit;->name:Ljava/lang/String;

    .line 197
    iput-object p4, p0, Ljava/time/temporal/ChronoUnit;->duration:Ljava/time/Duration;

    .line 198
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/temporal/ChronoUnit;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Ljava/time/temporal/ChronoUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public static values()[Ljava/time/temporal/ChronoUnit;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Ljava/time/temporal/ChronoUnit;->$VALUES:[Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method


# virtual methods
.method public addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 6
    .param p2, "amount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-interface {p1, p2, p3, p0}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J
    .registers 5
    .param p1, "temporal1Inclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "temporal2Exclusive"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 272
    invoke-interface {p1, p2, p0}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()Ljava/time/Duration;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Ljava/time/temporal/ChronoUnit;->duration:Ljava/time/Duration;

    return-object v0
.end method

.method public isDateBased()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 241
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v1}, Ljava/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_e

    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-eq p0, v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public isDurationEstimated()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 227
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v1}, Ljava/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public isSupportedBy(Ljava/time/temporal/Temporal;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 260
    invoke-interface {p1, p0}, Ljava/time/temporal/Temporal;->isSupported(Ljava/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public isTimeBased()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 254
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v1}, Ljava/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Ljava/time/temporal/ChronoUnit;->name:Ljava/lang/String;

    return-object v0
.end method
