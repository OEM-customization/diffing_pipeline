.class public final enum Ljava/nio/file/attribute/AclEntryType;
.super Ljava/lang/Enum;
.source "AclEntryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/nio/file/attribute/AclEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/nio/file/attribute/AclEntryType;

.field public static final enum ALARM:Ljava/nio/file/attribute/AclEntryType;

.field public static final enum ALLOW:Ljava/nio/file/attribute/AclEntryType;

.field public static final enum AUDIT:Ljava/nio/file/attribute/AclEntryType;

.field public static final enum DENY:Ljava/nio/file/attribute/AclEntryType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Ljava/nio/file/attribute/AclEntryType;

    const-string/jumbo v1, "ALLOW"

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Ljava/nio/file/attribute/AclEntryType;->ALLOW:Ljava/nio/file/attribute/AclEntryType;

    .line 40
    new-instance v0, Ljava/nio/file/attribute/AclEntryType;

    const-string/jumbo v1, "DENY"

    invoke-direct {v0, v1, v3}, Ljava/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v0, Ljava/nio/file/attribute/AclEntryType;->DENY:Ljava/nio/file/attribute/AclEntryType;

    .line 45
    new-instance v0, Ljava/nio/file/attribute/AclEntryType;

    const-string/jumbo v1, "AUDIT"

    invoke-direct {v0, v1, v4}, Ljava/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v0, Ljava/nio/file/attribute/AclEntryType;->AUDIT:Ljava/nio/file/attribute/AclEntryType;

    .line 51
    new-instance v0, Ljava/nio/file/attribute/AclEntryType;

    const-string/jumbo v1, "ALARM"

    invoke-direct {v0, v1, v5}, Ljava/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    .line 55
    sput-object v0, Ljava/nio/file/attribute/AclEntryType;->ALARM:Ljava/nio/file/attribute/AclEntryType;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/nio/file/attribute/AclEntryType;

    sget-object v1, Ljava/nio/file/attribute/AclEntryType;->ALLOW:Ljava/nio/file/attribute/AclEntryType;

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/attribute/AclEntryType;->DENY:Ljava/nio/file/attribute/AclEntryType;

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/attribute/AclEntryType;->AUDIT:Ljava/nio/file/attribute/AclEntryType;

    aput-object v1, v0, v4

    sget-object v1, Ljava/nio/file/attribute/AclEntryType;->ALARM:Ljava/nio/file/attribute/AclEntryType;

    aput-object v1, v0, v5

    sput-object v0, Ljava/nio/file/attribute/AclEntryType;->$VALUES:[Ljava/nio/file/attribute/AclEntryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/AclEntryType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Ljava/nio/file/attribute/AclEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/AclEntryType;

    return-object v0
.end method

.method public static values()[Ljava/nio/file/attribute/AclEntryType;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Ljava/nio/file/attribute/AclEntryType;->$VALUES:[Ljava/nio/file/attribute/AclEntryType;

    return-object v0
.end method
