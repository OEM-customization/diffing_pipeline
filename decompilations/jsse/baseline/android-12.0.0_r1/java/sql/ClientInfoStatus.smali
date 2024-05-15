.class public final enum Ljava/sql/ClientInfoStatus;
.super Ljava/lang/Enum;
.source "ClientInfoStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/sql/ClientInfoStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/sql/ClientInfoStatus;

.field public static final enum whitelist test-api REASON_UNKNOWN:Ljava/sql/ClientInfoStatus;

.field public static final enum whitelist test-api REASON_UNKNOWN_PROPERTY:Ljava/sql/ClientInfoStatus;

.field public static final enum whitelist test-api REASON_VALUE_INVALID:Ljava/sql/ClientInfoStatus;

.field public static final enum whitelist test-api REASON_VALUE_TRUNCATED:Ljava/sql/ClientInfoStatus;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 42
    new-instance v0, Ljava/sql/ClientInfoStatus;

    const-string v1, "REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/ClientInfoStatus;->REASON_UNKNOWN:Ljava/sql/ClientInfoStatus;

    .line 49
    new-instance v1, Ljava/sql/ClientInfoStatus;

    const-string v3, "REASON_UNKNOWN_PROPERTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/sql/ClientInfoStatus;->REASON_UNKNOWN_PROPERTY:Ljava/sql/ClientInfoStatus;

    .line 55
    new-instance v3, Ljava/sql/ClientInfoStatus;

    const-string v5, "REASON_VALUE_INVALID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/sql/ClientInfoStatus;->REASON_VALUE_INVALID:Ljava/sql/ClientInfoStatus;

    .line 61
    new-instance v5, Ljava/sql/ClientInfoStatus;

    const-string v7, "REASON_VALUE_TRUNCATED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/sql/ClientInfoStatus;->REASON_VALUE_TRUNCATED:Ljava/sql/ClientInfoStatus;

    .line 36
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/sql/ClientInfoStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ljava/sql/ClientInfoStatus;->$VALUES:[Ljava/sql/ClientInfoStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/sql/ClientInfoStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Ljava/sql/ClientInfoStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/sql/ClientInfoStatus;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/sql/ClientInfoStatus;
    .registers 1

    .line 36
    sget-object v0, Ljava/sql/ClientInfoStatus;->$VALUES:[Ljava/sql/ClientInfoStatus;

    invoke-virtual {v0}, [Ljava/sql/ClientInfoStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/sql/ClientInfoStatus;

    return-object v0
.end method
