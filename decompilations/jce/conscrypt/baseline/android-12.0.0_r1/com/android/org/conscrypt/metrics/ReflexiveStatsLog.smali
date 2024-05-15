.class public Lcom/android/org/conscrypt/metrics/ReflexiveStatsLog;
.super Ljava/lang/Object;
.source "ReflexiveStatsLog.java"


# static fields
.field private static final blacklist c_statsEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist c_statsLog:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist write:Lcom/android/org/conscrypt/metrics/OptionalMethod;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 32
    invoke-static {}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsLog;->initStatsLogClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsLog;->c_statsLog:Ljava/lang/Class;

    .line 33
    invoke-static {}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsLog;->initStatsEventClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsLog;->c_statsEvent:Ljava/lang/Class;

    .line 34
    new-instance v2, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "write"

    invoke-direct {v2, v0, v1, v3}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/android/org/conscrypt/metrics/ReflexiveStatsLog;->write:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist initStatsEventClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 47
    :try_start_0
    const-string v0, "android.util.StatsEvent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 48
    :catch_7
    move-exception v0

    .line 49
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist initStatsLogClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 39
    :try_start_0
    const-string v0, "android.util.StatsLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 40
    :catch_7
    move-exception v0

    .line 41
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist write(Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;)V
    .registers 5
    .param p0, "event"    # Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;

    .line 56
    sget-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsLog;->write:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->getStatsEvent()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
