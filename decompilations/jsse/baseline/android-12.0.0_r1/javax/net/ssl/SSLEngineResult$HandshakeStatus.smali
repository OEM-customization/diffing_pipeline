.class public final enum Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
.super Ljava/lang/Enum;
.source "SSLEngineResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/net/ssl/SSLEngineResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandshakeStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field public static final enum whitelist test-api FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field public static final enum whitelist test-api NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field public static final enum whitelist test-api NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field public static final enum whitelist test-api NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field public static final enum whitelist test-api NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 113
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const-string v1, "NOT_HANDSHAKING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 127
    new-instance v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const-string v3, "FINISHED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 135
    new-instance v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const-string v5, "NEED_TASK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 144
    new-instance v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const-string v7, "NEED_WRAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 150
    new-instance v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const-string v9, "NEED_UNWRAP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 108
    const/4 v9, 0x5

    new-array v9, v9, [Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->$VALUES:[Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 108
    const-class v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 1

    .line 108
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->$VALUES:[Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v0}, [Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0
.end method
