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
        "Ljava/lang/Enum<",
        "Ljavax/net/ssl/SSLEngineResult$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljavax/net/ssl/SSLEngineResult$Status;

.field public static final enum whitelist core-platform-api test-api BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

.field public static final enum whitelist core-platform-api test-api BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

.field public static final enum whitelist core-platform-api test-api CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

.field public static final enum whitelist core-platform-api test-api OK:Ljavax/net/ssl/SSLEngineResult$Status;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 73
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$Status;

    const-string v1, "BUFFER_UNDERFLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/net/ssl/SSLEngineResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 85
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$Status;

    const-string v1, "BUFFER_OVERFLOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljavax/net/ssl/SSLEngineResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 91
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$Status;

    const-string v1, "OK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljavax/net/ssl/SSLEngineResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 98
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$Status;

    const-string v1, "CLOSED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljavax/net/ssl/SSLEngineResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 63
    const/4 v1, 0x4

    new-array v1, v1, [Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    aput-object v6, v1, v2

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    aput-object v2, v1, v3

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->$VALUES:[Ljavax/net/ssl/SSLEngineResult$Status;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljavax/net/ssl/SSLEngineResult$Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 63
    const-class v0, Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljavax/net/ssl/SSLEngineResult$Status;
    .registers 1

    .line 63
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->$VALUES:[Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v0}, [Ljavax/net/ssl/SSLEngineResult$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0
.end method