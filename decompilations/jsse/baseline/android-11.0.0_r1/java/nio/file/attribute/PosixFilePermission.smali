.class public final enum Ljava/nio/file/attribute/PosixFilePermission;
.super Ljava/lang/Enum;
.source "PosixFilePermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/nio/file/attribute/PosixFilePermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum whitelist core-platform-api test-api GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum whitelist core-platform-api test-api GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum whitelist core-platform-api test-api GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum whitelist core-platform-api test-api OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum whitelist core-platform-api test-api OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum whitelist core-platform-api test-api OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum whitelist core-platform-api test-api OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum whitelist core-platform-api test-api OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum whitelist core-platform-api test-api OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 43
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string v1, "OWNER_READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 48
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string v1, "OWNER_WRITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 53
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string v1, "OWNER_EXECUTE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 58
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string v1, "GROUP_READ"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 63
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string v1, "GROUP_WRITE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 68
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string v1, "GROUP_EXECUTE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 73
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string v1, "OTHERS_READ"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 78
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string v1, "OTHERS_WRITE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 83
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string v1, "OTHERS_EXECUTE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 38
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v11, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v11, v1, v2

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v1, v3

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v1, v4

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v1, v5

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v1, v6

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v1, v7

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v1, v8

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Ljava/nio/file/attribute/PosixFilePermission;->$VALUES:[Ljava/nio/file/attribute/PosixFilePermission;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/nio/file/attribute/PosixFilePermission;
    .registers 1

    .line 38
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->$VALUES:[Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v0}, [Ljava/nio/file/attribute/PosixFilePermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method
