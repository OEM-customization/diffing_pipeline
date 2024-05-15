.class public Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;
.super Ljava/lang/Object;
.source "ReflexiveStatsEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    }
.end annotation


# static fields
.field private static final blacklist c_statsEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist newBuilder:Lcom/android/org/conscrypt/metrics/OptionalMethod;


# instance fields
.field private blacklist statsEvent:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 31
    invoke-static {}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->initStatsEventClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->c_statsEvent:Ljava/lang/Class;

    .line 32
    new-instance v1, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const-string v3, "newBuilder"

    invoke-direct {v1, v0, v3, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->newBuilder:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    .line 33
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "statsEvent"    # Ljava/lang/Object;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->statsEvent:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Object;Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$1;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist access$100()Lcom/android/org/conscrypt/metrics/OptionalMethod;
    .registers 1

    .line 26
    sget-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->newBuilder:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    return-object v0
.end method

.method public static blacklist buildEvent(IZIII)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;
    .registers 7
    .param p0, "atomId"    # I
    .param p1, "success"    # Z
    .param p2, "protocol"    # I
    .param p3, "cipherSuite"    # I
    .param p4, "duration"    # I

    .line 59
    invoke-static {}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->newBuilder()Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    move-result-object v0

    .line 60
    .local v0, "builder":Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    invoke-virtual {v0, p0}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->setAtomId(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 61
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeBoolean(Z)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 62
    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 63
    invoke-virtual {v0, p3}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 64
    invoke-virtual {v0, p4}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 65
    invoke-virtual {v0}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->usePooledBuffer()V

    .line 66
    invoke-virtual {v0}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->build()Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;

    move-result-object v1

    return-object v1
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

    .line 37
    :try_start_0
    const-string v0, "android.util.StatsEvent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 38
    :catch_7
    move-exception v0

    .line 39
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist newBuilder()Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    .registers 2

    .line 54
    new-instance v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;-><init>(Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$1;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getStatsEvent()Ljava/lang/Object;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->statsEvent:Ljava/lang/Object;

    return-object v0
.end method
