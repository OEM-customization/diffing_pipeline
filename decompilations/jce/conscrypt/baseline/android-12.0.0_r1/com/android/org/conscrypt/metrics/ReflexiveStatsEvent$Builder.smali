.class public final Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
.super Ljava/lang/Object;
.source "ReflexiveStatsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist build:Lcom/android/org/conscrypt/metrics/OptionalMethod;

.field private static final blacklist c_statsEvent_Builder:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist setAtomId:Lcom/android/org/conscrypt/metrics/OptionalMethod;

.field private static final blacklist usePooledBuffer:Lcom/android/org/conscrypt/metrics/OptionalMethod;

.field private static final blacklist writeBoolean:Lcom/android/org/conscrypt/metrics/OptionalMethod;

.field private static final blacklist writeInt:Lcom/android/org/conscrypt/metrics/OptionalMethod;


# instance fields
.field private blacklist builder:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 81
    invoke-static {}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->initStatsEventBuilderClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->c_statsEvent_Builder:Ljava/lang/Class;

    .line 82
    new-instance v1, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "setAtomId"

    invoke-direct {v1, v0, v4, v3}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->setAtomId:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    .line 83
    new-instance v1, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string v4, "writeBoolean"

    invoke-direct {v1, v0, v4, v3}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeBoolean:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    .line 84
    new-instance v1, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    const-string v3, "writeInt"

    invoke-direct {v1, v0, v3, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    .line 85
    new-instance v1, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    new-array v2, v5, [Ljava/lang/Class;

    const-string v3, "build"

    invoke-direct {v1, v0, v3, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->build:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    .line 86
    new-instance v1, Lcom/android/org/conscrypt/metrics/OptionalMethod;

    new-array v2, v5, [Ljava/lang/Class;

    const-string v3, "usePooledBuffer"

    invoke-direct {v1, v0, v3, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->usePooledBuffer:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    .line 87
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    # getter for: Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->newBuilder:Lcom/android/org/conscrypt/metrics/OptionalMethod;
    invoke-static {}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;->access$100()Lcom/android/org/conscrypt/metrics/OptionalMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->builder:Ljava/lang/Object;

    .line 101
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$1;

    .line 72
    invoke-direct {p0}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;-><init>()V

    return-void
.end method

.method private static blacklist initStatsEventBuilderClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 91
    :try_start_0
    const-string v0, "android.util.StatsEvent$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 92
    :catch_7
    move-exception v0

    .line 93
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist build()Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;
    .registers 4

    .line 123
    sget-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->build:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    iget-object v1, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->builder:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    .local v0, "statsEvent":Ljava/lang/Object;
    new-instance v1, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent;-><init>(Ljava/lang/Object;Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$1;)V

    return-object v1
.end method

.method public blacklist setAtomId(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    .registers 7
    .param p1, "atomId"    # I

    .line 104
    sget-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->setAtomId:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    iget-object v1, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->builder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-object p0
.end method

.method public blacklist usePooledBuffer()V
    .registers 4

    .line 119
    sget-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->usePooledBuffer:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    iget-object v1, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->builder:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public blacklist writeBoolean(Z)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    .registers 7
    .param p1, "value"    # Z

    .line 109
    sget-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeBoolean:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    iget-object v1, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->builder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-object p0
.end method

.method public blacklist writeInt(I)Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    .registers 7
    .param p1, "value"    # I

    .line 114
    sget-object v0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt:Lcom/android/org/conscrypt/metrics/OptionalMethod;

    iget-object v1, p0, Lcom/android/org/conscrypt/metrics/ReflexiveStatsEvent$Builder;->builder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-object p0
.end method
