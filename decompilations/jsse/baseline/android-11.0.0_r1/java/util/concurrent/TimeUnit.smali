.class public abstract enum Ljava/util/concurrent/TimeUnit;
.super Ljava/lang/Enum;
.source "TimeUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/util/concurrent/TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/concurrent/TimeUnit;

.field static final greylist-max-o C0:J = 0x1L

.field static final greylist-max-o C1:J = 0x3e8L

.field static final greylist-max-o C2:J = 0xf4240L

.field static final greylist-max-o C3:J = 0x3b9aca00L

.field static final greylist-max-o C4:J = 0xdf8475800L

.field static final greylist-max-o C5:J = 0x34630b8a000L

.field static final greylist-max-o C6:J = 0x4e94914f0000L

.field public static final enum whitelist core-platform-api test-api DAYS:Ljava/util/concurrent/TimeUnit;

.field public static final enum whitelist core-platform-api test-api HOURS:Ljava/util/concurrent/TimeUnit;

.field static final greylist-max-o MAX:J = 0x7fffffffffffffffL

.field public static final enum whitelist core-platform-api test-api MICROSECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum whitelist core-platform-api test-api MILLISECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum whitelist core-platform-api test-api MINUTES:Ljava/util/concurrent/TimeUnit;

.field public static final enum whitelist core-platform-api test-api NANOSECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum whitelist core-platform-api test-api SECONDS:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 77
    new-instance v0, Ljava/util/concurrent/TimeUnit$1;

    const-string v1, "NANOSECONDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/TimeUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 92
    new-instance v0, Ljava/util/concurrent/TimeUnit$2;

    const-string v1, "MICROSECONDS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/util/concurrent/TimeUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 107
    new-instance v0, Ljava/util/concurrent/TimeUnit$3;

    const-string v1, "MILLISECONDS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/util/concurrent/TimeUnit$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 122
    new-instance v0, Ljava/util/concurrent/TimeUnit$4;

    const-string v1, "SECONDS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava/util/concurrent/TimeUnit$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 138
    new-instance v0, Ljava/util/concurrent/TimeUnit$5;

    const-string v1, "MINUTES"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljava/util/concurrent/TimeUnit$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 154
    new-instance v0, Ljava/util/concurrent/TimeUnit$6;

    const-string v1, "HOURS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ljava/util/concurrent/TimeUnit$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 170
    new-instance v0, Ljava/util/concurrent/TimeUnit$7;

    const-string v1, "DAYS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ljava/util/concurrent/TimeUnit$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 73
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/util/concurrent/TimeUnit;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v9, v1, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v2, v1, v3

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v2, v1, v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v2, v1, v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    aput-object v2, v1, v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Ljava/util/concurrent/TimeUnit;->$VALUES:[Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/util/concurrent/TimeUnit$1;

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    const-class v0, Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/util/concurrent/TimeUnit;
    .registers 1

    .line 73
    sget-object v0, Ljava/util/concurrent/TimeUnit;->$VALUES:[Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, [Ljava/util/concurrent/TimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method static greylist-max-o x(JJJ)J
    .registers 8
    .param p0, "d"    # J
    .param p2, "m"    # J
    .param p4, "over"    # J

    .line 198
    cmp-long v0, p0, p4

    if-lez v0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 199
    :cond_a
    neg-long v0, p4

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 200
    :cond_12
    mul-long v0, p0, p2

    return-wide v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api convert(JLjava/util/concurrent/TimeUnit;)J
    .registers 5
    .param p1, "sourceDuration"    # J
    .param p3, "sourceUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 227
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method abstract greylist-max-o excessNanos(JJ)I
.end method

.method public whitelist core-platform-api test-api sleep(J)V
    .registers 6
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 388
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_11

    .line 389
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 390
    .local v0, "ms":J
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 391
    .local v2, "ns":I
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 393
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_11
    return-void
.end method

.method public whitelist core-platform-api test-api timedJoin(Ljava/lang/Thread;J)V
    .registers 7
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 370
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_11

    .line 371
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 372
    .local v0, "ms":J
    invoke-virtual {p0, p2, p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 373
    .local v2, "ns":I
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Thread;->join(JI)V

    .line 375
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_11
    return-void
.end method

.method public whitelist core-platform-api test-api timedWait(Ljava/lang/Object;J)V
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 350
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_11

    .line 351
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 352
    .local v0, "ms":J
    invoke-virtual {p0, p2, p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 353
    .local v2, "ns":I
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V

    .line 355
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_11
    return-void
.end method

.method public whitelist core-platform-api test-api toDays(J)J
    .registers 4
    .param p1, "duration"    # J

    .line 312
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api toHours(J)J
    .registers 4
    .param p1, "duration"    # J

    .line 301
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api toMicros(J)J
    .registers 4
    .param p1, "duration"    # J

    .line 251
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api toMillis(J)J
    .registers 4
    .param p1, "duration"    # J

    .line 263
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api toMinutes(J)J
    .registers 4
    .param p1, "duration"    # J

    .line 288
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api toNanos(J)J
    .registers 4
    .param p1, "duration"    # J

    .line 239
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api toSeconds(J)J
    .registers 4
    .param p1, "duration"    # J

    .line 275
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method
