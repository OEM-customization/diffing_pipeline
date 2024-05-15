.class public abstract enum Ljava/util/concurrent/TimeUnit;
.super Ljava/lang/Enum;
.source "TimeUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/TimeUnit$1;,
        Ljava/util/concurrent/TimeUnit$2;,
        Ljava/util/concurrent/TimeUnit$3;,
        Ljava/util/concurrent/TimeUnit$4;,
        Ljava/util/concurrent/TimeUnit$5;,
        Ljava/util/concurrent/TimeUnit$6;,
        Ljava/util/concurrent/TimeUnit$7;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/concurrent/TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/concurrent/TimeUnit;

.field static final C0:J = 0x1L

.field static final C1:J = 0x3e8L

.field static final C2:J = 0xf4240L

.field static final C3:J = 0x3b9aca00L

.field static final C4:J = 0xdf8475800L

.field static final C5:J = 0x34630b8a000L

.field static final C6:J = 0x4e94914f0000L

.field public static final enum DAYS:Ljava/util/concurrent/TimeUnit;

.field public static final enum HOURS:Ljava/util/concurrent/TimeUnit;

.field static final MAX:J = 0x7fffffffffffffffL

.field public static final enum MICROSECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum MILLISECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum MINUTES:Ljava/util/concurrent/TimeUnit;

.field public static final enum NANOSECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum SECONDS:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    new-instance v0, Ljava/util/concurrent/TimeUnit$1;

    const-string/jumbo v1, "NANOSECONDS"

    invoke-direct {v0, v1, v3}, Ljava/util/concurrent/TimeUnit$1;-><init>(Ljava/lang/String;I)V

    .line 81
    sput-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 93
    new-instance v0, Ljava/util/concurrent/TimeUnit$2;

    const-string/jumbo v1, "MICROSECONDS"

    invoke-direct {v0, v1, v4}, Ljava/util/concurrent/TimeUnit$2;-><init>(Ljava/lang/String;I)V

    .line 96
    sput-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 108
    new-instance v0, Ljava/util/concurrent/TimeUnit$3;

    const-string/jumbo v1, "MILLISECONDS"

    invoke-direct {v0, v1, v5}, Ljava/util/concurrent/TimeUnit$3;-><init>(Ljava/lang/String;I)V

    .line 111
    sput-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 123
    new-instance v0, Ljava/util/concurrent/TimeUnit$4;

    const-string/jumbo v1, "SECONDS"

    invoke-direct {v0, v1, v6}, Ljava/util/concurrent/TimeUnit$4;-><init>(Ljava/lang/String;I)V

    .line 126
    sput-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 138
    new-instance v0, Ljava/util/concurrent/TimeUnit$5;

    const-string/jumbo v1, "MINUTES"

    invoke-direct {v0, v1, v7}, Ljava/util/concurrent/TimeUnit$5;-><init>(Ljava/lang/String;I)V

    .line 142
    sput-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 154
    new-instance v0, Ljava/util/concurrent/TimeUnit$6;

    const-string/jumbo v1, "HOURS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/TimeUnit$6;-><init>(Ljava/lang/String;I)V

    .line 158
    sput-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 170
    new-instance v0, Ljava/util/concurrent/TimeUnit$7;

    const-string/jumbo v1, "DAYS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/TimeUnit$7;-><init>(Ljava/lang/String;I)V

    .line 174
    sput-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 77
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v1, v0, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v1, v0, v5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v1, v0, v6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    aput-object v1, v0, v7

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Ljava/util/concurrent/TimeUnit;->$VALUES:[Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V
    .registers 4
    .param p1, "enum$name"    # Ljava/lang/String;
    .param p2, "enum$ordinal"    # I
    .param p3, "-this2"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public static values()[Ljava/util/concurrent/TimeUnit;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Ljava/util/concurrent/TimeUnit;->$VALUES:[Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method static x(JJJ)J
    .registers 8
    .param p0, "d"    # J
    .param p2, "m"    # J
    .param p4, "over"    # J

    .prologue
    .line 202
    cmp-long v0, p0, p4

    if-lez v0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 203
    :cond_a
    neg-long v0, p4

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 204
    :cond_12
    mul-long v0, p0, p2

    return-wide v0
.end method


# virtual methods
.method public convert(JLjava/util/concurrent/TimeUnit;)J
    .registers 5
    .param p1, "sourceDuration"    # J
    .param p3, "sourceUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 231
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method abstract excessNanos(JJ)I
.end method

.method public sleep(J)V
    .registers 10
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 392
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_11

    .line 393
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 394
    .local v0, "ms":J
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 395
    .local v2, "ns":I
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 397
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_11
    return-void
.end method

.method public timedJoin(Ljava/lang/Thread;J)V
    .registers 10
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 374
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-lez v3, :cond_11

    .line 375
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 376
    .local v0, "ms":J
    invoke-virtual {p0, p2, p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 377
    .local v2, "ns":I
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Thread;->join(JI)V

    .line 379
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_11
    return-void
.end method

.method public timedWait(Ljava/lang/Object;J)V
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 354
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-lez v3, :cond_11

    .line 355
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 356
    .local v0, "ms":J
    invoke-virtual {p0, p2, p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 357
    .local v2, "ns":I
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V

    .line 359
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_11
    return-void
.end method

.method public toDays(J)J
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 316
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toHours(J)J
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 305
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toMicros(J)J
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 255
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toMillis(J)J
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 267
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toMinutes(J)J
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 292
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toNanos(J)J
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 243
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toSeconds(J)J
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 279
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method
