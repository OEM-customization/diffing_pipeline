.class public final enum Ljavax/net/ssl/SSLEngineResult$Status;
.super Ljava/lang/Enum;
.source "SSLEngineResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/net/ssl/SSLEngineResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/net/ssl/SSLEngineResult$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/net/ssl/SSLEngineResult$Status;

.field public static final enum BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

.field public static final enum BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

.field public static final enum CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

.field public static final enum OK:Ljavax/net/ssl/SSLEngineResult$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$Status;

    const-string/jumbo v1, "BUFFER_UNDERFLOW"

    invoke-direct {v0, v1, v2}, Ljavax/net/ssl/SSLEngineResult$Status;-><init>(Ljava/lang/String;I)V

    .line 73
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 75
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$Status;

    const-string/jumbo v1, "BUFFER_OVERFLOW"

    invoke-direct {v0, v1, v3}, Ljavax/net/ssl/SSLEngineResult$Status;-><init>(Ljava/lang/String;I)V

    .line 85
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 87
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$Status;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v4}, Ljavax/net/ssl/SSLEngineResult$Status;-><init>(Ljava/lang/String;I)V

    .line 91
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 93
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$Status;

    const-string/jumbo v1, "CLOSED"

    invoke-direct {v0, v1, v5}, Ljavax/net/ssl/SSLEngineResult$Status;-><init>(Ljava/lang/String;I)V

    .line 98
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    aput-object v1, v0, v5

    sput-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->$VALUES:[Ljavax/net/ssl/SSLEngineResult$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/net/ssl/SSLEngineResult$Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0
.end method

.method public static values()[Ljavax/net/ssl/SSLEngineResult$Status;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->$VALUES:[Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0
.end method
