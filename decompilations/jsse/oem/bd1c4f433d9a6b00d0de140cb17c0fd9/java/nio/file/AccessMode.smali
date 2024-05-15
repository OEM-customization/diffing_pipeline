.class public final enum Ljava/nio/file/AccessMode;
.super Ljava/lang/Enum;
.source "AccessMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/nio/file/AccessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/nio/file/AccessMode;

.field public static final enum EXECUTE:Ljava/nio/file/AccessMode;

.field public static final enum READ:Ljava/nio/file/AccessMode;

.field public static final enum WRITE:Ljava/nio/file/AccessMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Ljava/nio/file/AccessMode;

    const-string/jumbo v1, "READ"

    invoke-direct {v0, v1, v2}, Ljava/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    .line 39
    new-instance v0, Ljava/nio/file/AccessMode;

    const-string/jumbo v1, "WRITE"

    invoke-direct {v0, v1, v3}, Ljava/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    .line 43
    new-instance v0, Ljava/nio/file/AccessMode;

    const-string/jumbo v1, "EXECUTE"

    invoke-direct {v0, v1, v4}, Ljava/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Ljava/nio/file/AccessMode;->EXECUTE:Ljava/nio/file/AccessMode;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/nio/file/AccessMode;

    sget-object v1, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/AccessMode;->EXECUTE:Ljava/nio/file/AccessMode;

    aput-object v1, v0, v4

    sput-object v0, Ljava/nio/file/AccessMode;->$VALUES:[Ljava/nio/file/AccessMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/nio/file/AccessMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Ljava/nio/file/AccessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/AccessMode;

    return-object v0
.end method

.method public static values()[Ljava/nio/file/AccessMode;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Ljava/nio/file/AccessMode;->$VALUES:[Ljava/nio/file/AccessMode;

    return-object v0
.end method
