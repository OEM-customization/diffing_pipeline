.class public final enum Ljava/sql/ClientInfoStatus;
.super Ljava/lang/Enum;
.source "ClientInfoStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/sql/ClientInfoStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/sql/ClientInfoStatus;

.field public static final enum REASON_UNKNOWN:Ljava/sql/ClientInfoStatus;

.field public static final enum REASON_UNKNOWN_PROPERTY:Ljava/sql/ClientInfoStatus;

.field public static final enum REASON_VALUE_INVALID:Ljava/sql/ClientInfoStatus;

.field public static final enum REASON_VALUE_TRUNCATED:Ljava/sql/ClientInfoStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Ljava/sql/ClientInfoStatus;

    const-string/jumbo v1, "REASON_UNKNOWN"

    invoke-direct {v0, v1, v2}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Ljava/sql/ClientInfoStatus;->REASON_UNKNOWN:Ljava/sql/ClientInfoStatus;

    .line 44
    new-instance v0, Ljava/sql/ClientInfoStatus;

    const-string/jumbo v1, "REASON_UNKNOWN_PROPERTY"

    invoke-direct {v0, v1, v3}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v0, Ljava/sql/ClientInfoStatus;->REASON_UNKNOWN_PROPERTY:Ljava/sql/ClientInfoStatus;

    .line 51
    new-instance v0, Ljava/sql/ClientInfoStatus;

    const-string/jumbo v1, "REASON_VALUE_INVALID"

    invoke-direct {v0, v1, v4}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    .line 55
    sput-object v0, Ljava/sql/ClientInfoStatus;->REASON_VALUE_INVALID:Ljava/sql/ClientInfoStatus;

    .line 57
    new-instance v0, Ljava/sql/ClientInfoStatus;

    const-string/jumbo v1, "REASON_VALUE_TRUNCATED"

    invoke-direct {v0, v1, v5}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    .line 61
    sput-object v0, Ljava/sql/ClientInfoStatus;->REASON_VALUE_TRUNCATED:Ljava/sql/ClientInfoStatus;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/sql/ClientInfoStatus;

    sget-object v1, Ljava/sql/ClientInfoStatus;->REASON_UNKNOWN:Ljava/sql/ClientInfoStatus;

    aput-object v1, v0, v2

    sget-object v1, Ljava/sql/ClientInfoStatus;->REASON_UNKNOWN_PROPERTY:Ljava/sql/ClientInfoStatus;

    aput-object v1, v0, v3

    sget-object v1, Ljava/sql/ClientInfoStatus;->REASON_VALUE_INVALID:Ljava/sql/ClientInfoStatus;

    aput-object v1, v0, v4

    sget-object v1, Ljava/sql/ClientInfoStatus;->REASON_VALUE_TRUNCATED:Ljava/sql/ClientInfoStatus;

    aput-object v1, v0, v5

    sput-object v0, Ljava/sql/ClientInfoStatus;->$VALUES:[Ljava/sql/ClientInfoStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/ClientInfoStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Ljava/sql/ClientInfoStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/sql/ClientInfoStatus;

    return-object v0
.end method

.method public static values()[Ljava/sql/ClientInfoStatus;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Ljava/sql/ClientInfoStatus;->$VALUES:[Ljava/sql/ClientInfoStatus;

    return-object v0
.end method
