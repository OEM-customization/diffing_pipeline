.class public final enum Ljava/net/Authenticator$RequestorType;
.super Ljava/lang/Enum;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/net/Authenticator$RequestorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/net/Authenticator$RequestorType;

.field public static final enum whitelist core-platform-api test-api PROXY:Ljava/net/Authenticator$RequestorType;

.field public static final enum whitelist core-platform-api test-api SERVER:Ljava/net/Authenticator$RequestorType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 83
    new-instance v0, Ljava/net/Authenticator$RequestorType;

    const-string v1, "PROXY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/Authenticator$RequestorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 87
    new-instance v0, Ljava/net/Authenticator$RequestorType;

    const-string v1, "SERVER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/net/Authenticator$RequestorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 79
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/net/Authenticator$RequestorType;

    sget-object v4, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Ljava/net/Authenticator$RequestorType;->$VALUES:[Ljava/net/Authenticator$RequestorType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/net/Authenticator$RequestorType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 79
    const-class v0, Ljava/net/Authenticator$RequestorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/net/Authenticator$RequestorType;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/net/Authenticator$RequestorType;
    .registers 1

    .line 79
    sget-object v0, Ljava/net/Authenticator$RequestorType;->$VALUES:[Ljava/net/Authenticator$RequestorType;

    invoke-virtual {v0}, [Ljava/net/Authenticator$RequestorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Authenticator$RequestorType;

    return-object v0
.end method
