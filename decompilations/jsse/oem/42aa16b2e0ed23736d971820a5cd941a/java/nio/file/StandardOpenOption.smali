.class public final enum Ljava/nio/file/StandardOpenOption;
.super Ljava/lang/Enum;
.source "StandardOpenOption.java"

# interfaces
.implements Ljava/nio/file/OpenOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/nio/file/StandardOpenOption;",
        ">;",
        "Ljava/nio/file/OpenOption;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist core-platform-api test-api APPEND:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist core-platform-api test-api CREATE:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist core-platform-api test-api CREATE_NEW:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist core-platform-api test-api DELETE_ON_CLOSE:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist core-platform-api test-api DSYNC:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist core-platform-api test-api READ:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist core-platform-api test-api SPARSE:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist core-platform-api test-api SYNC:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist core-platform-api test-api TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist core-platform-api test-api WRITE:Ljava/nio/file/StandardOpenOption;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 38
    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    .line 43
    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string v1, "WRITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    .line 52
    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string v1, "APPEND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    .line 59
    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string v1, "TRUNCATE_EXISTING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    .line 68
    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string v1, "CREATE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    .line 76
    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string v1, "CREATE_NEW"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    .line 100
    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string v1, "DELETE_ON_CLOSE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljava/nio/file/StandardOpenOption;

    .line 108
    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string v1, "SPARSE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->SPARSE:Ljava/nio/file/StandardOpenOption;

    .line 116
    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string v1, "SYNC"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    .line 124
    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string v1, "DSYNC"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->DSYNC:Ljava/nio/file/StandardOpenOption;

    .line 34
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/nio/file/StandardOpenOption;

    sget-object v12, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v12, v1, v2

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v1, v3

    sget-object v2, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v1, v4

    sget-object v2, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v1, v5

    sget-object v2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v1, v6

    sget-object v2, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v1, v7

    sget-object v2, Ljava/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v1, v8

    sget-object v2, Ljava/nio/file/StandardOpenOption;->SPARSE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v1, v9

    sget-object v2, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Ljava/nio/file/StandardOpenOption;->$VALUES:[Ljava/nio/file/StandardOpenOption;

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

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/nio/file/StandardOpenOption;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Ljava/nio/file/StandardOpenOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/nio/file/StandardOpenOption;
    .registers 1

    .line 34
    sget-object v0, Ljava/nio/file/StandardOpenOption;->$VALUES:[Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v0}, [Ljava/nio/file/StandardOpenOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method
