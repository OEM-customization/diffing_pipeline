.class public final enum Ljava/nio/file/attribute/AclEntryPermission;
.super Ljava/lang/Enum;
.source "AclEntryPermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/nio/file/attribute/AclEntryPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/nio/file/attribute/AclEntryPermission;

.field public static final whitelist core-platform-api test-api ADD_FILE:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final whitelist core-platform-api test-api ADD_SUBDIRECTORY:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist core-platform-api test-api APPEND_DATA:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist core-platform-api test-api DELETE:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist core-platform-api test-api DELETE_CHILD:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist core-platform-api test-api EXECUTE:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final whitelist core-platform-api test-api LIST_DIRECTORY:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist core-platform-api test-api READ_ACL:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist core-platform-api test-api READ_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist core-platform-api test-api READ_DATA:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist core-platform-api test-api READ_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist core-platform-api test-api SYNCHRONIZE:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist core-platform-api test-api WRITE_ACL:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist core-platform-api test-api WRITE_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist core-platform-api test-api WRITE_DATA:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist core-platform-api test-api WRITE_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist core-platform-api test-api WRITE_OWNER:Ljava/nio/file/attribute/AclEntryPermission;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 17

    .line 40
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "READ_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->READ_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    .line 45
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_DATA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    .line 50
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "APPEND_DATA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->APPEND_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    .line 59
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "READ_NAMED_ATTRS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->READ_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

    .line 68
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_NAMED_ATTRS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

    .line 73
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "EXECUTE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->EXECUTE:Ljava/nio/file/attribute/AclEntryPermission;

    .line 78
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "DELETE_CHILD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->DELETE_CHILD:Ljava/nio/file/attribute/AclEntryPermission;

    .line 83
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "READ_ATTRIBUTES"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->READ_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

    .line 88
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_ATTRIBUTES"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

    .line 93
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "DELETE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->DELETE:Ljava/nio/file/attribute/AclEntryPermission;

    .line 98
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "READ_ACL"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->READ_ACL:Ljava/nio/file/attribute/AclEntryPermission;

    .line 103
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_ACL"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_ACL:Ljava/nio/file/attribute/AclEntryPermission;

    .line 108
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_OWNER"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_OWNER:Ljava/nio/file/attribute/AclEntryPermission;

    .line 114
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "SYNCHRONIZE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->SYNCHRONIZE:Ljava/nio/file/attribute/AclEntryPermission;

    .line 35
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/nio/file/attribute/AclEntryPermission;

    sget-object v16, Ljava/nio/file/attribute/AclEntryPermission;->READ_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v16, v1, v2

    sget-object v2, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v2, v1, v3

    sget-object v3, Ljava/nio/file/attribute/AclEntryPermission;->APPEND_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v3, v1, v4

    sget-object v4, Ljava/nio/file/attribute/AclEntryPermission;->READ_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v4, v1, v5

    sget-object v4, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v4, v1, v6

    sget-object v4, Ljava/nio/file/attribute/AclEntryPermission;->EXECUTE:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v4, v1, v7

    sget-object v4, Ljava/nio/file/attribute/AclEntryPermission;->DELETE_CHILD:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v4, v1, v8

    sget-object v4, Ljava/nio/file/attribute/AclEntryPermission;->READ_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v4, v1, v9

    sget-object v4, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v4, v1, v10

    sget-object v4, Ljava/nio/file/attribute/AclEntryPermission;->DELETE:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v4, v1, v11

    sget-object v4, Ljava/nio/file/attribute/AclEntryPermission;->READ_ACL:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v4, v1, v12

    sget-object v4, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_ACL:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v4, v1, v13

    sget-object v4, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_OWNER:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v4, v1, v14

    aput-object v0, v1, v15

    sput-object v1, Ljava/nio/file/attribute/AclEntryPermission;->$VALUES:[Ljava/nio/file/attribute/AclEntryPermission;

    .line 119
    sput-object v16, Ljava/nio/file/attribute/AclEntryPermission;->LIST_DIRECTORY:Ljava/nio/file/attribute/AclEntryPermission;

    .line 124
    sput-object v2, Ljava/nio/file/attribute/AclEntryPermission;->ADD_FILE:Ljava/nio/file/attribute/AclEntryPermission;

    .line 129
    sput-object v3, Ljava/nio/file/attribute/AclEntryPermission;->ADD_SUBDIRECTORY:Ljava/nio/file/attribute/AclEntryPermission;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/AclEntryPermission;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Ljava/nio/file/attribute/AclEntryPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/AclEntryPermission;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/nio/file/attribute/AclEntryPermission;
    .registers 1

    .line 35
    sget-object v0, Ljava/nio/file/attribute/AclEntryPermission;->$VALUES:[Ljava/nio/file/attribute/AclEntryPermission;

    invoke-virtual {v0}, [Ljava/nio/file/attribute/AclEntryPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/attribute/AclEntryPermission;

    return-object v0
.end method
