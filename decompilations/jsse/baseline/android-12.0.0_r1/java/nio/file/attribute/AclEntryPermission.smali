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

.field public static final whitelist test-api ADD_FILE:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final whitelist test-api ADD_SUBDIRECTORY:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist test-api APPEND_DATA:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist test-api DELETE:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist test-api DELETE_CHILD:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist test-api EXECUTE:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final whitelist test-api LIST_DIRECTORY:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist test-api READ_ACL:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist test-api READ_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist test-api READ_DATA:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist test-api READ_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist test-api SYNCHRONIZE:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist test-api WRITE_ACL:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist test-api WRITE_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist test-api WRITE_DATA:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist test-api WRITE_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum whitelist test-api WRITE_OWNER:Ljava/nio/file/attribute/AclEntryPermission;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 20

    .line 40
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v1, "READ_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->READ_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    .line 45
    new-instance v1, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v3, "WRITE_DATA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    .line 50
    new-instance v3, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v5, "APPEND_DATA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/nio/file/attribute/AclEntryPermission;->APPEND_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    .line 59
    new-instance v5, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v7, "READ_NAMED_ATTRS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/nio/file/attribute/AclEntryPermission;->READ_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

    .line 68
    new-instance v7, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v9, "WRITE_NAMED_ATTRS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

    .line 73
    new-instance v9, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v11, "EXECUTE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ljava/nio/file/attribute/AclEntryPermission;->EXECUTE:Ljava/nio/file/attribute/AclEntryPermission;

    .line 78
    new-instance v11, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v13, "DELETE_CHILD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ljava/nio/file/attribute/AclEntryPermission;->DELETE_CHILD:Ljava/nio/file/attribute/AclEntryPermission;

    .line 83
    new-instance v13, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v15, "READ_ATTRIBUTES"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ljava/nio/file/attribute/AclEntryPermission;->READ_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

    .line 88
    new-instance v15, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v14, "WRITE_ATTRIBUTES"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

    .line 93
    new-instance v14, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v12, "DELETE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ljava/nio/file/attribute/AclEntryPermission;->DELETE:Ljava/nio/file/attribute/AclEntryPermission;

    .line 98
    new-instance v12, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v10, "READ_ACL"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v12, Ljava/nio/file/attribute/AclEntryPermission;->READ_ACL:Ljava/nio/file/attribute/AclEntryPermission;

    .line 103
    new-instance v10, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v8, "WRITE_ACL"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v10, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_ACL:Ljava/nio/file/attribute/AclEntryPermission;

    .line 108
    new-instance v8, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v6, "WRITE_OWNER"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_OWNER:Ljava/nio/file/attribute/AclEntryPermission;

    .line 114
    new-instance v6, Ljava/nio/file/attribute/AclEntryPermission;

    const-string v4, "SYNCHRONIZE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v6, Ljava/nio/file/attribute/AclEntryPermission;->SYNCHRONIZE:Ljava/nio/file/attribute/AclEntryPermission;

    .line 35
    const/16 v4, 0xe

    new-array v4, v4, [Ljava/nio/file/attribute/AclEntryPermission;

    const/16 v19, 0x0

    aput-object v0, v4, v19

    const/16 v18, 0x1

    aput-object v1, v4, v18

    const/16 v17, 0x2

    aput-object v3, v4, v17

    const/16 v16, 0x3

    aput-object v5, v4, v16

    const/4 v5, 0x4

    aput-object v7, v4, v5

    const/4 v5, 0x5

    aput-object v9, v4, v5

    const/4 v5, 0x6

    aput-object v11, v4, v5

    const/4 v5, 0x7

    aput-object v13, v4, v5

    const/16 v5, 0x8

    aput-object v15, v4, v5

    const/16 v5, 0x9

    aput-object v14, v4, v5

    const/16 v5, 0xa

    aput-object v12, v4, v5

    const/16 v5, 0xb

    aput-object v10, v4, v5

    const/16 v5, 0xc

    aput-object v8, v4, v5

    aput-object v6, v4, v2

    sput-object v4, Ljava/nio/file/attribute/AclEntryPermission;->$VALUES:[Ljava/nio/file/attribute/AclEntryPermission;

    .line 119
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->LIST_DIRECTORY:Ljava/nio/file/attribute/AclEntryPermission;

    .line 124
    sput-object v1, Ljava/nio/file/attribute/AclEntryPermission;->ADD_FILE:Ljava/nio/file/attribute/AclEntryPermission;

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

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/AclEntryPermission;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Ljava/nio/file/attribute/AclEntryPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/AclEntryPermission;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/nio/file/attribute/AclEntryPermission;
    .registers 1

    .line 35
    sget-object v0, Ljava/nio/file/attribute/AclEntryPermission;->$VALUES:[Ljava/nio/file/attribute/AclEntryPermission;

    invoke-virtual {v0}, [Ljava/nio/file/attribute/AclEntryPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/attribute/AclEntryPermission;

    return-object v0
.end method
