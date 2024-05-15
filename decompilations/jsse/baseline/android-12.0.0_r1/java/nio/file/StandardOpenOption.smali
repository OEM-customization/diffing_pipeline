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

.field public static final enum whitelist test-api APPEND:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist test-api CREATE:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist test-api CREATE_NEW:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist test-api DELETE_ON_CLOSE:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist test-api DSYNC:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist test-api READ:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist test-api SPARSE:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist test-api SYNC:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist test-api TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

.field public static final enum whitelist test-api WRITE:Ljava/nio/file/StandardOpenOption;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 38
    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    .line 43
    new-instance v1, Ljava/nio/file/StandardOpenOption;

    const-string v3, "WRITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    .line 52
    new-instance v3, Ljava/nio/file/StandardOpenOption;

    const-string v5, "APPEND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    .line 59
    new-instance v5, Ljava/nio/file/StandardOpenOption;

    const-string v7, "TRUNCATE_EXISTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    .line 68
    new-instance v7, Ljava/nio/file/StandardOpenOption;

    const-string v9, "CREATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    .line 76
    new-instance v9, Ljava/nio/file/StandardOpenOption;

    const-string v11, "CREATE_NEW"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    .line 100
    new-instance v11, Ljava/nio/file/StandardOpenOption;

    const-string v13, "DELETE_ON_CLOSE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ljava/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljava/nio/file/StandardOpenOption;

    .line 108
    new-instance v13, Ljava/nio/file/StandardOpenOption;

    const-string v15, "SPARSE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ljava/nio/file/StandardOpenOption;->SPARSE:Ljava/nio/file/StandardOpenOption;

    .line 116
    new-instance v15, Ljava/nio/file/StandardOpenOption;

    const-string v14, "SYNC"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    .line 124
    new-instance v14, Ljava/nio/file/StandardOpenOption;

    const-string v12, "DSYNC"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ljava/nio/file/StandardOpenOption;->DSYNC:Ljava/nio/file/StandardOpenOption;

    .line 34
    const/16 v12, 0xa

    new-array v12, v12, [Ljava/nio/file/StandardOpenOption;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Ljava/nio/file/StandardOpenOption;->$VALUES:[Ljava/nio/file/StandardOpenOption;

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

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/nio/file/StandardOpenOption;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Ljava/nio/file/StandardOpenOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/nio/file/StandardOpenOption;
    .registers 1

    .line 34
    sget-object v0, Ljava/nio/file/StandardOpenOption;->$VALUES:[Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v0}, [Ljava/nio/file/StandardOpenOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method
