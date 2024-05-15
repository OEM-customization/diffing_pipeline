.class public final enum Ljava/nio/file/attribute/AclEntryFlag;
.super Ljava/lang/Enum;
.source "AclEntryFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/nio/file/attribute/AclEntryFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/nio/file/attribute/AclEntryFlag;

.field public static final enum whitelist test-api DIRECTORY_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;

.field public static final enum whitelist test-api FILE_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;

.field public static final enum whitelist test-api INHERIT_ONLY:Ljava/nio/file/attribute/AclEntryFlag;

.field public static final enum whitelist test-api NO_PROPAGATE_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 44
    new-instance v0, Ljava/nio/file/attribute/AclEntryFlag;

    const-string v1, "FILE_INHERIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryFlag;->FILE_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;

    .line 50
    new-instance v1, Ljava/nio/file/attribute/AclEntryFlag;

    const-string v3, "DIRECTORY_INHERIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/nio/file/attribute/AclEntryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/nio/file/attribute/AclEntryFlag;->DIRECTORY_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;

    .line 57
    new-instance v3, Ljava/nio/file/attribute/AclEntryFlag;

    const-string v5, "NO_PROPAGATE_INHERIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/nio/file/attribute/AclEntryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/nio/file/attribute/AclEntryFlag;->NO_PROPAGATE_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;

    .line 64
    new-instance v5, Ljava/nio/file/attribute/AclEntryFlag;

    const-string v7, "INHERIT_ONLY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/nio/file/attribute/AclEntryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/nio/file/attribute/AclEntryFlag;->INHERIT_ONLY:Ljava/nio/file/attribute/AclEntryFlag;

    .line 38
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/nio/file/attribute/AclEntryFlag;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ljava/nio/file/attribute/AclEntryFlag;->$VALUES:[Ljava/nio/file/attribute/AclEntryFlag;

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

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/AclEntryFlag;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Ljava/nio/file/attribute/AclEntryFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/AclEntryFlag;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/nio/file/attribute/AclEntryFlag;
    .registers 1

    .line 38
    sget-object v0, Ljava/nio/file/attribute/AclEntryFlag;->$VALUES:[Ljava/nio/file/attribute/AclEntryFlag;

    invoke-virtual {v0}, [Ljava/nio/file/attribute/AclEntryFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/attribute/AclEntryFlag;

    return-object v0
.end method
