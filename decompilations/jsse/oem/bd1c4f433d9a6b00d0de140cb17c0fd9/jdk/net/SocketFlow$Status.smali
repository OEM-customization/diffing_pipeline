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
        "Ljava/lang/Enum",
        "<",
        "Ljdk/net/SocketFlow$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljdk/net/SocketFlow$Status;

.field public static final enum ALREADY_CREATED:Ljdk/net/SocketFlow$Status;

.field public static final enum IN_PROGRESS:Ljdk/net/SocketFlow$Status;

.field public static final enum NOT_CONNECTED:Ljdk/net/SocketFlow$Status;

.field public static final enum NOT_SUPPORTED:Ljdk/net/SocketFlow$Status;

.field public static final enum NO_PERMISSION:Ljdk/net/SocketFlow$Status;

.field public static final enum NO_STATUS:Ljdk/net/SocketFlow$Status;

.field public static final enum OK:Ljdk/net/SocketFlow$Status;

.field public static final enum OTHER:Ljdk/net/SocketFlow$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string/jumbo v1, "NO_STATUS"

    invoke-direct {v0, v1, v3}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    .line 73
    sput-object v0, Ljdk/net/SocketFlow$Status;->NO_STATUS:Ljdk/net/SocketFlow$Status;

    .line 74
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v4}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v0, Ljdk/net/SocketFlow$Status;->OK:Ljdk/net/SocketFlow$Status;

    .line 78
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string/jumbo v1, "NO_PERMISSION"

    invoke-direct {v0, v1, v5}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    .line 81
    sput-object v0, Ljdk/net/SocketFlow$Status;->NO_PERMISSION:Ljdk/net/SocketFlow$Status;

    .line 82
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string/jumbo v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v6}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    .line 85
    sput-object v0, Ljdk/net/SocketFlow$Status;->NOT_CONNECTED:Ljdk/net/SocketFlow$Status;

    .line 86
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-direct {v0, v1, v7}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    .line 89
    sput-object v0, Ljdk/net/SocketFlow$Status;->NOT_SUPPORTED:Ljdk/net/SocketFlow$Status;

    .line 90
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string/jumbo v1, "ALREADY_CREATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    .line 93
    sput-object v0, Ljdk/net/SocketFlow$Status;->ALREADY_CREATED:Ljdk/net/SocketFlow$Status;

    .line 94
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string/jumbo v1, "IN_PROGRESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    .line 97
    sput-object v0, Ljdk/net/SocketFlow$Status;->IN_PROGRESS:Ljdk/net/SocketFlow$Status;

    .line 98
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v0, Ljdk/net/SocketFlow$Status;->OTHER:Ljdk/net/SocketFlow$Status;

    .line 68
    const/16 v0, 0x8

    new-array v0, v0, [Ljdk/net/SocketFlow$Status;

    sget-object v1, Ljdk/net/SocketFlow$Status;->NO_STATUS:Ljdk/net/SocketFlow$Status;

    aput-object v1, v0, v3

    sget-object v1, Ljdk/net/SocketFlow$Status;->OK:Ljdk/net/SocketFlow$Status;

    aput-object v1, v0, v4

    sget-object v1, Ljdk/net/SocketFlow$Status;->NO_PERMISSION:Ljdk/net/SocketFlow$Status;

    aput-object v1, v0, v5

    sget-object v1, Ljdk/net/SocketFlow$Status;->NOT_CONNECTED:Ljdk/net/SocketFlow$Status;

    aput-object v1, v0, v6

    sget-object v1, Ljdk/net/SocketFlow$Status;->NOT_SUPPORTED:Ljdk/net/SocketFlow$Status;

    aput-object v1, v0, v7

    sget-object v1, Ljdk/net/SocketFlow$Status;->ALREADY_CREATED:Ljdk/net/SocketFlow$Status;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljdk/net/SocketFlow$Status;->IN_PROGRESS:Ljdk/net/SocketFlow$Status;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljdk/net/SocketFlow$Status;->OTHER:Ljdk/net/SocketFlow$Status;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Ljdk/net/SocketFlow$Status;->$VALUES:[Ljdk/net/SocketFlow$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljdk/net/SocketFlow$Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    const-class v0, Ljdk/net/SocketFlow$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljdk/net/SocketFlow$Status;

    return-object v0
.end method

.method public static values()[Ljdk/net/SocketFlow$Status;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Ljdk/net/SocketFlow$Status;->$VALUES:[Ljdk/net/SocketFlow$Status;

    return-object v0
.end method
