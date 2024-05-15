.class public final enum Lcom/sun/nio/file/ExtendedWatchEventModifier;
.super Ljava/lang/Enum;
.source "ExtendedWatchEventModifier.java"

# interfaces
.implements Ljava/nio/file/WatchEvent$Modifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/nio/file/ExtendedWatchEventModifier;",
        ">;",
        "Ljava/nio/file/WatchEvent$Modifier;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/nio/file/ExtendedWatchEventModifier;

.field public static final enum FILE_TREE:Lcom/sun/nio/file/ExtendedWatchEventModifier;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/sun/nio/file/ExtendedWatchEventModifier;

    const-string/jumbo v1, "FILE_TREE"

    invoke-direct {v0, v1, v2}, Lcom/sun/nio/file/ExtendedWatchEventModifier;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lcom/sun/nio/file/ExtendedWatchEventModifier;->FILE_TREE:Lcom/sun/nio/file/ExtendedWatchEventModifier;

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sun/nio/file/ExtendedWatchEventModifier;

    sget-object v1, Lcom/sun/nio/file/ExtendedWatchEventModifier;->FILE_TREE:Lcom/sun/nio/file/ExtendedWatchEventModifier;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/nio/file/ExtendedWatchEventModifier;->$VALUES:[Lcom/sun/nio/file/ExtendedWatchEventModifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/nio/file/ExtendedWatchEventModifier;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/sun/nio/file/ExtendedWatchEventModifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/nio/file/ExtendedWatchEventModifier;

    return-object v0
.end method

.method public static values()[Lcom/sun/nio/file/ExtendedWatchEventModifier;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/sun/nio/file/ExtendedWatchEventModifier;->$VALUES:[Lcom/sun/nio/file/ExtendedWatchEventModifier;

    return-object v0
.end method
