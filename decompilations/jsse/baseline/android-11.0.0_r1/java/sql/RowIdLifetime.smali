.class public final enum Ljava/sql/RowIdLifetime;
.super Ljava/lang/Enum;
.source "RowIdLifetime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/sql/RowIdLifetime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/sql/RowIdLifetime;

.field public static final enum whitelist core-platform-api test-api ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

.field public static final enum whitelist core-platform-api test-api ROWID_VALID_FOREVER:Ljava/sql/RowIdLifetime;

.field public static final enum whitelist core-platform-api test-api ROWID_VALID_OTHER:Ljava/sql/RowIdLifetime;

.field public static final enum whitelist core-platform-api test-api ROWID_VALID_SESSION:Ljava/sql/RowIdLifetime;

.field public static final enum whitelist core-platform-api test-api ROWID_VALID_TRANSACTION:Ljava/sql/RowIdLifetime;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 41
    new-instance v0, Ljava/sql/RowIdLifetime;

    const-string v1, "ROWID_UNSUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

    .line 48
    new-instance v0, Ljava/sql/RowIdLifetime;

    const-string v1, "ROWID_VALID_OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_VALID_OTHER:Ljava/sql/RowIdLifetime;

    .line 54
    new-instance v0, Ljava/sql/RowIdLifetime;

    const-string v1, "ROWID_VALID_SESSION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_VALID_SESSION:Ljava/sql/RowIdLifetime;

    .line 60
    new-instance v0, Ljava/sql/RowIdLifetime;

    const-string v1, "ROWID_VALID_TRANSACTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_VALID_TRANSACTION:Ljava/sql/RowIdLifetime;

    .line 66
    new-instance v0, Ljava/sql/RowIdLifetime;

    const-string v1, "ROWID_VALID_FOREVER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_VALID_FOREVER:Ljava/sql/RowIdLifetime;

    .line 36
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/sql/RowIdLifetime;

    sget-object v7, Ljava/sql/RowIdLifetime;->ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

    aput-object v7, v1, v2

    sget-object v2, Ljava/sql/RowIdLifetime;->ROWID_VALID_OTHER:Ljava/sql/RowIdLifetime;

    aput-object v2, v1, v3

    sget-object v2, Ljava/sql/RowIdLifetime;->ROWID_VALID_SESSION:Ljava/sql/RowIdLifetime;

    aput-object v2, v1, v4

    sget-object v2, Ljava/sql/RowIdLifetime;->ROWID_VALID_TRANSACTION:Ljava/sql/RowIdLifetime;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Ljava/sql/RowIdLifetime;->$VALUES:[Ljava/sql/RowIdLifetime;

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

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/sql/RowIdLifetime;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Ljava/sql/RowIdLifetime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/sql/RowIdLifetime;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/sql/RowIdLifetime;
    .registers 1

    .line 36
    sget-object v0, Ljava/sql/RowIdLifetime;->$VALUES:[Ljava/sql/RowIdLifetime;

    invoke-virtual {v0}, [Ljava/sql/RowIdLifetime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/sql/RowIdLifetime;

    return-object v0
.end method
