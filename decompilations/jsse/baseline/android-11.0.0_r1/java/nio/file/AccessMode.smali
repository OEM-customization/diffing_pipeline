.class public final enum Ljava/nio/file/AccessMode;
.super Ljava/lang/Enum;
.source "AccessMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/nio/file/AccessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/nio/file/AccessMode;

.field public static final enum whitelist core-platform-api test-api EXECUTE:Ljava/nio/file/AccessMode;

.field public static final enum whitelist core-platform-api test-api READ:Ljava/nio/file/AccessMode;

.field public static final enum whitelist core-platform-api test-api WRITE:Ljava/nio/file/AccessMode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 38
    new-instance v0, Ljava/nio/file/AccessMode;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    .line 42
    new-instance v0, Ljava/nio/file/AccessMode;

    const-string v1, "WRITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    .line 46
    new-instance v0, Ljava/nio/file/AccessMode;

    const-string v1, "EXECUTE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/AccessMode;->EXECUTE:Ljava/nio/file/AccessMode;

    .line 34
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/nio/file/AccessMode;

    sget-object v5, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    aput-object v5, v1, v2

    sget-object v2, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Ljava/nio/file/AccessMode;->$VALUES:[Ljava/nio/file/AccessMode;

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

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/nio/file/AccessMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Ljava/nio/file/AccessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/AccessMode;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/nio/file/AccessMode;
    .registers 1

    .line 34
    sget-object v0, Ljava/nio/file/AccessMode;->$VALUES:[Ljava/nio/file/AccessMode;

    invoke-virtual {v0}, [Ljava/nio/file/AccessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/AccessMode;

    return-object v0
.end method
