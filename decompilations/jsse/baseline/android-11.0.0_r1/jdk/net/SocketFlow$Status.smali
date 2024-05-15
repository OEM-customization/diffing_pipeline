.class public final enum Ljdk/net/SocketFlow$Status;
.super Ljava/lang/Enum;
.source "SocketFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/net/SocketFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljdk/net/SocketFlow$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist ALREADY_CREATED:Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist IN_PROGRESS:Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist NOT_CONNECTED:Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist NOT_SUPPORTED:Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist NO_PERMISSION:Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist NO_STATUS:Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist OK:Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist OTHER:Ljdk/net/SocketFlow$Status;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 75
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "NO_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->NO_STATUS:Ljdk/net/SocketFlow$Status;

    .line 79
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "OK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->OK:Ljdk/net/SocketFlow$Status;

    .line 83
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "NO_PERMISSION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->NO_PERMISSION:Ljdk/net/SocketFlow$Status;

    .line 87
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "NOT_CONNECTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->NOT_CONNECTED:Ljdk/net/SocketFlow$Status;

    .line 91
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "NOT_SUPPORTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->NOT_SUPPORTED:Ljdk/net/SocketFlow$Status;

    .line 95
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "ALREADY_CREATED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->ALREADY_CREATED:Ljdk/net/SocketFlow$Status;

    .line 99
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "IN_PROGRESS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->IN_PROGRESS:Ljdk/net/SocketFlow$Status;

    .line 103
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "OTHER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->OTHER:Ljdk/net/SocketFlow$Status;

    .line 70
    const/16 v1, 0x8

    new-array v1, v1, [Ljdk/net/SocketFlow$Status;

    sget-object v10, Ljdk/net/SocketFlow$Status;->NO_STATUS:Ljdk/net/SocketFlow$Status;

    aput-object v10, v1, v2

    sget-object v2, Ljdk/net/SocketFlow$Status;->OK:Ljdk/net/SocketFlow$Status;

    aput-object v2, v1, v3

    sget-object v2, Ljdk/net/SocketFlow$Status;->NO_PERMISSION:Ljdk/net/SocketFlow$Status;

    aput-object v2, v1, v4

    sget-object v2, Ljdk/net/SocketFlow$Status;->NOT_CONNECTED:Ljdk/net/SocketFlow$Status;

    aput-object v2, v1, v5

    sget-object v2, Ljdk/net/SocketFlow$Status;->NOT_SUPPORTED:Ljdk/net/SocketFlow$Status;

    aput-object v2, v1, v6

    sget-object v2, Ljdk/net/SocketFlow$Status;->ALREADY_CREATED:Ljdk/net/SocketFlow$Status;

    aput-object v2, v1, v7

    sget-object v2, Ljdk/net/SocketFlow$Status;->IN_PROGRESS:Ljdk/net/SocketFlow$Status;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Ljdk/net/SocketFlow$Status;->$VALUES:[Ljdk/net/SocketFlow$Status;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljdk/net/SocketFlow$Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 70
    const-class v0, Ljdk/net/SocketFlow$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljdk/net/SocketFlow$Status;

    return-object v0
.end method

.method public static blacklist values()[Ljdk/net/SocketFlow$Status;
    .registers 1

    .line 70
    sget-object v0, Ljdk/net/SocketFlow$Status;->$VALUES:[Ljdk/net/SocketFlow$Status;

    invoke-virtual {v0}, [Ljdk/net/SocketFlow$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljdk/net/SocketFlow$Status;

    return-object v0
.end method
