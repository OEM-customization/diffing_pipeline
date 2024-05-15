.class public final enum Ljava/nio/file/attribute/AclEntryType;
.super Ljava/lang/Enum;
.source "AclEntryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/nio/file/attribute/AclEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/nio/file/attribute/AclEntryType;

.field public static final enum whitelist test-api ALARM:Ljava/nio/file/attribute/AclEntryType;

.field public static final enum whitelist test-api ALLOW:Ljava/nio/file/attribute/AclEntryType;

.field public static final enum whitelist test-api AUDIT:Ljava/nio/file/attribute/AclEntryType;

.field public static final enum whitelist test-api DENY:Ljava/nio/file/attribute/AclEntryType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 38
    new-instance v0, Ljava/nio/file/attribute/AclEntryType;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryType;->ALLOW:Ljava/nio/file/attribute/AclEntryType;

    .line 43
    new-instance v1, Ljava/nio/file/attribute/AclEntryType;

    const-string v3, "DENY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/nio/file/attribute/AclEntryType;->DENY:Ljava/nio/file/attribute/AclEntryType;

    .line 49
    new-instance v3, Ljava/nio/file/attribute/AclEntryType;

    const-string v5, "AUDIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/nio/file/attribute/AclEntryType;->AUDIT:Ljava/nio/file/attribute/AclEntryType;

    .line 55
    new-instance v5, Ljava/nio/file/attribute/AclEntryType;

    const-string v7, "ALARM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/nio/file/attribute/AclEntryType;->ALARM:Ljava/nio/file/attribute/AclEntryType;

    .line 34
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/nio/file/attribute/AclEntryType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ljava/nio/file/attribute/AclEntryType;->$VALUES:[Ljava/nio/file/attribute/AclEntryType;

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

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/AclEntryType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Ljava/nio/file/attribute/AclEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/AclEntryType;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/nio/file/attribute/AclEntryType;
    .registers 1

    .line 34
    sget-object v0, Ljava/nio/file/attribute/AclEntryType;->$VALUES:[Ljava/nio/file/attribute/AclEntryType;

    invoke-virtual {v0}, [Ljava/nio/file/attribute/AclEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/attribute/AclEntryType;

    return-object v0
.end method
