.class public final enum Ljava/nio/file/attribute/PosixFilePermission;
.super Ljava/lang/Enum;
.source "PosixFilePermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/nio/file/attribute/PosixFilePermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

.field public static final enum OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string/jumbo v1, "OWNER_READ"

    invoke-direct {v0, v1, v3}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 45
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string/jumbo v1, "OWNER_WRITE"

    invoke-direct {v0, v1, v4}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    .line 48
    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 50
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string/jumbo v1, "OWNER_EXECUTE"

    invoke-direct {v0, v1, v5}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    .line 53
    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 55
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string/jumbo v1, "GROUP_READ"

    invoke-direct {v0, v1, v6}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    .line 58
    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 60
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string/jumbo v1, "GROUP_WRITE"

    invoke-direct {v0, v1, v7}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    .line 63
    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 65
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string/jumbo v1, "GROUP_EXECUTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    .line 68
    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 70
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string/jumbo v1, "OTHERS_READ"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    .line 73
    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 75
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string/jumbo v1, "OTHERS_WRITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    .line 78
    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 80
    new-instance v0, Ljava/nio/file/attribute/PosixFilePermission;

    const-string/jumbo v1, "OTHERS_EXECUTE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    .line 83
    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 38
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v1, v0, v4

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v1, v0, v5

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v1, v0, v6

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v1, v0, v7

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Ljava/nio/file/attribute/PosixFilePermission;->$VALUES:[Ljava/nio/file/attribute/PosixFilePermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static values()[Ljava/nio/file/attribute/PosixFilePermission;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->$VALUES:[Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method
