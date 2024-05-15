.class public final enum Ljava/nio/file/attribute/AclEntryPermission;
.super Ljava/lang/Enum;
.source "AclEntryPermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/nio/file/attribute/AclEntryPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/nio/file/attribute/AclEntryPermission;

.field public static final ADD_FILE:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final ADD_SUBDIRECTORY:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum APPEND_DATA:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum DELETE:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum DELETE_CHILD:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum EXECUTE:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final LIST_DIRECTORY:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum READ_ACL:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum READ_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum READ_DATA:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum READ_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum SYNCHRONIZE:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_ACL:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_DATA:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_OWNER:Ljava/nio/file/attribute/AclEntryPermission;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string/jumbo v1, "READ_DATA"

    invoke-direct {v0, v1, v3}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->READ_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    .line 42
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string/jumbo v1, "WRITE_DATA"

    invoke-direct {v0, v1, v4}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    .line 45
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    .line 47
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string/jumbo v1, "APPEND_DATA"

    invoke-direct {v0, v1, v5}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->APPEND_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    .line 52
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string/jumbo v1, "READ_NAMED_ATTRS"

    invoke-direct {v0, v1, v6}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->READ_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

    .line 61
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string/jumbo v1, "WRITE_NAMED_ATTRS"

    invoke-direct {v0, v1, v7}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    .line 68
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

    .line 70
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string/jumbo v1, "EXECUTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    .line 73
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->EXECUTE:Ljava/nio/file/attribute/AclEntryPermission;

    .line 75
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string/jumbo v1, "DELETE_CHILD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    .line 78
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->DELETE_CHILD:Ljava/nio/file/attribute/AclEntryPermission;

    .line 80
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string/jumbo v1, "READ_ATTRIBUTES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    .line 83
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->READ_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

    .line 85
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string/jumbo v1, "WRITE_ATTRIBUTES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    .line 88
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

    .line 90
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string/jumbo v1, "DELETE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    .line 93
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->DELETE:Ljava/nio/file/attribute/AclEntryPermission;

    .line 95
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string/jumbo v1, "READ_ACL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    .line 98
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->READ_ACL:Ljava/nio/file/attribute/AclEntryPermission;

    .line 100
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string/jumbo v1, "WRITE_ACL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    .line 103
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_ACL:Ljava/nio/file/attribute/AclEntryPermission;

    .line 105
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string/jumbo v1, "WRITE_OWNER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    .line 108
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_OWNER:Ljava/nio/file/attribute/AclEntryPermission;

    .line 110
    new-instance v0, Ljava/nio/file/attribute/AclEntryPermission;

    const-string/jumbo v1, "SYNCHRONIZE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    .line 114
    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->SYNCHRONIZE:Ljava/nio/file/attribute/AclEntryPermission;

    .line 35
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/nio/file/attribute/AclEntryPermission;

    sget-object v1, Ljava/nio/file/attribute/AclEntryPermission;->READ_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v4

    sget-object v1, Ljava/nio/file/attribute/AclEntryPermission;->APPEND_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v5

    sget-object v1, Ljava/nio/file/attribute/AclEntryPermission;->READ_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v6

    sget-object v1, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v7

    sget-object v1, Ljava/nio/file/attribute/AclEntryPermission;->EXECUTE:Ljava/nio/file/attribute/AclEntryPermission;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/attribute/AclEntryPermission;->DELETE_CHILD:Ljava/nio/file/attribute/AclEntryPermission;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/attribute/AclEntryPermission;->READ_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/attribute/AclEntryPermission;->DELETE:Ljava/nio/file/attribute/AclEntryPermission;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/attribute/AclEntryPermission;->READ_ACL:Ljava/nio/file/attribute/AclEntryPermission;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_ACL:Ljava/nio/file/attribute/AclEntryPermission;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_OWNER:Ljava/nio/file/attribute/AclEntryPermission;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/attribute/AclEntryPermission;->SYNCHRONIZE:Ljava/nio/file/attribute/AclEntryPermission;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->$VALUES:[Ljava/nio/file/attribute/AclEntryPermission;

    .line 119
    sget-object v0, Ljava/nio/file/attribute/AclEntryPermission;->READ_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->LIST_DIRECTORY:Ljava/nio/file/attribute/AclEntryPermission;

    .line 124
    sget-object v0, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->ADD_FILE:Ljava/nio/file/attribute/AclEntryPermission;

    .line 129
    sget-object v0, Ljava/nio/file/attribute/AclEntryPermission;->APPEND_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    sput-object v0, Ljava/nio/file/attribute/AclEntryPermission;->ADD_SUBDIRECTORY:Ljava/nio/file/attribute/AclEntryPermission;

    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/AclEntryPermission;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Ljava/nio/file/attribute/AclEntryPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/AclEntryPermission;

    return-object v0
.end method

.method public static values()[Ljava/nio/file/attribute/AclEntryPermission;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Ljava/nio/file/attribute/AclEntryPermission;->$VALUES:[Ljava/nio/file/attribute/AclEntryPermission;

    return-object v0
.end method
