.class public final enum Ljava/net/StandardProtocolFamily;
.super Ljava/lang/Enum;
.source "StandardProtocolFamily.java"

# interfaces
.implements Ljava/net/ProtocolFamily;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/net/StandardProtocolFamily;",
        ">;",
        "Ljava/net/ProtocolFamily;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/net/StandardProtocolFamily;

.field public static final enum whitelist test-api INET:Ljava/net/StandardProtocolFamily;

.field public static final enum whitelist test-api INET6:Ljava/net/StandardProtocolFamily;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 39
    new-instance v0, Ljava/net/StandardProtocolFamily;

    const-string v1, "INET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/StandardProtocolFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    .line 44
    new-instance v1, Ljava/net/StandardProtocolFamily;

    const-string v3, "INET6"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/net/StandardProtocolFamily;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    .line 34
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/net/StandardProtocolFamily;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ljava/net/StandardProtocolFamily;->$VALUES:[Ljava/net/StandardProtocolFamily;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/net/StandardProtocolFamily;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Ljava/net/StandardProtocolFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/net/StandardProtocolFamily;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/net/StandardProtocolFamily;
    .registers 1

    .line 34
    sget-object v0, Ljava/net/StandardProtocolFamily;->$VALUES:[Ljava/net/StandardProtocolFamily;

    invoke-virtual {v0}, [Ljava/net/StandardProtocolFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/StandardProtocolFamily;

    return-object v0
.end method
