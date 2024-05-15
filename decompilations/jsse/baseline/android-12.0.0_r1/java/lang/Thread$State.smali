.class public final enum Ljava/lang/Thread$State;
.super Ljava/lang/Enum;
.source "Thread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/Thread$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/Thread$State;

.field public static final enum whitelist test-api BLOCKED:Ljava/lang/Thread$State;

.field public static final enum whitelist test-api NEW:Ljava/lang/Thread$State;

.field public static final enum whitelist test-api RUNNABLE:Ljava/lang/Thread$State;

.field public static final enum whitelist test-api TERMINATED:Ljava/lang/Thread$State;

.field public static final enum whitelist test-api TIMED_WAITING:Ljava/lang/Thread$State;

.field public static final enum whitelist test-api WAITING:Ljava/lang/Thread$State;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 1932
    new-instance v0, Ljava/lang/Thread$State;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    .line 1940
    new-instance v1, Ljava/lang/Thread$State;

    const-string v3, "RUNNABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    .line 1949
    new-instance v3, Ljava/lang/Thread$State;

    const-string v5, "BLOCKED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    .line 1970
    new-instance v5, Ljava/lang/Thread$State;

    const-string v7, "WAITING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    .line 1984
    new-instance v7, Ljava/lang/Thread$State;

    const-string v9, "TIMED_WAITING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    .line 1990
    new-instance v9, Ljava/lang/Thread$State;

    const-string v11, "TERMINATED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    .line 1928
    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Thread$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Ljava/lang/Thread$State;->$VALUES:[Ljava/lang/Thread$State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1928
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/Thread$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1928
    const-class v0, Ljava/lang/Thread$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread$State;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/lang/Thread$State;
    .registers 1

    .line 1928
    sget-object v0, Ljava/lang/Thread$State;->$VALUES:[Ljava/lang/Thread$State;

    invoke-virtual {v0}, [Ljava/lang/Thread$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Thread$State;

    return-object v0
.end method
