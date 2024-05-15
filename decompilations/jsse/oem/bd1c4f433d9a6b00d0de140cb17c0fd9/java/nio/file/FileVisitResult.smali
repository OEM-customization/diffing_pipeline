.class public final enum Ljava/nio/file/FileVisitResult;
.super Ljava/lang/Enum;
.source "FileVisitResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/nio/file/FileVisitResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/nio/file/FileVisitResult;

.field public static final enum CONTINUE:Ljava/nio/file/FileVisitResult;

.field public static final enum SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

.field public static final enum SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

.field public static final enum TERMINATE:Ljava/nio/file/FileVisitResult;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Ljava/nio/file/FileVisitResult;

    const-string/jumbo v1, "CONTINUE"

    invoke-direct {v0, v1, v2}, Ljava/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    .line 43
    new-instance v0, Ljava/nio/file/FileVisitResult;

    const-string/jumbo v1, "TERMINATE"

    invoke-direct {v0, v1, v3}, Ljava/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    .line 47
    new-instance v0, Ljava/nio/file/FileVisitResult;

    const-string/jumbo v1, "SKIP_SUBTREE"

    invoke-direct {v0, v1, v4}, Ljava/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    .line 53
    sput-object v0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    .line 54
    new-instance v0, Ljava/nio/file/FileVisitResult;

    const-string/jumbo v1, "SKIP_SIBLINGS"

    invoke-direct {v0, v1, v5}, Ljava/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    .line 61
    sput-object v0, Ljava/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/nio/file/FileVisitResult;

    sget-object v1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    aput-object v1, v0, v4

    sget-object v1, Ljava/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

    aput-object v1, v0, v5

    sput-object v0, Ljava/nio/file/FileVisitResult;->$VALUES:[Ljava/nio/file/FileVisitResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/nio/file/FileVisitResult;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Ljava/nio/file/FileVisitResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public static values()[Ljava/nio/file/FileVisitResult;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Ljava/nio/file/FileVisitResult;->$VALUES:[Ljava/nio/file/FileVisitResult;

    return-object v0
.end method
