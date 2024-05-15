.class public final enum Ljava/nio/file/LinkOption;
.super Ljava/lang/Enum;
.source "LinkOption.java"

# interfaces
.implements Ljava/nio/file/OpenOption;
.implements Ljava/nio/file/CopyOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/nio/file/LinkOption;",
        ">;",
        "Ljava/nio/file/OpenOption;",
        "Ljava/nio/file/CopyOption;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/nio/file/LinkOption;

.field public static final enum NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 35
    new-instance v0, Ljava/nio/file/LinkOption;

    const-string/jumbo v1, "NOFOLLOW_LINKS"

    invoke-direct {v0, v1, v2}, Ljava/nio/file/LinkOption;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v1, v0, v2

    sput-object v0, Ljava/nio/file/LinkOption;->$VALUES:[Ljava/nio/file/LinkOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/nio/file/LinkOption;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Ljava/nio/file/LinkOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/LinkOption;

    return-object v0
.end method

.method public static values()[Ljava/nio/file/LinkOption;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Ljava/nio/file/LinkOption;->$VALUES:[Ljava/nio/file/LinkOption;

    return-object v0
.end method
