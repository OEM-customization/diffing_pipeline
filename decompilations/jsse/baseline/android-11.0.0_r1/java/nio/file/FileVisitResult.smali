.class public final enum Ljava/nio/file/FileVisitResult;
.super Ljava/lang/Enum;
.source "FileVisitResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/nio/file/FileVisitResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/nio/file/FileVisitResult;

.field public static final enum whitelist core-platform-api test-api CONTINUE:Ljava/nio/file/FileVisitResult;

.field public static final enum whitelist core-platform-api test-api SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

.field public static final enum whitelist core-platform-api test-api SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

.field public static final enum whitelist core-platform-api test-api TERMINATE:Ljava/nio/file/FileVisitResult;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 42
    new-instance v0, Ljava/nio/file/FileVisitResult;

    const-string v1, "CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    .line 46
    new-instance v0, Ljava/nio/file/FileVisitResult;

    const-string v1, "TERMINATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    .line 53
    new-instance v0, Ljava/nio/file/FileVisitResult;

    const-string v1, "SKIP_SUBTREE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    .line 61
    new-instance v0, Ljava/nio/file/FileVisitResult;

    const-string v1, "SKIP_SIBLINGS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

    .line 36
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/nio/file/FileVisitResult;

    sget-object v6, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    aput-object v6, v1, v2

    sget-object v2, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    aput-object v2, v1, v3

    sget-object v2, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Ljava/nio/file/FileVisitResult;->$VALUES:[Ljava/nio/file/FileVisitResult;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/nio/file/FileVisitResult;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Ljava/nio/file/FileVisitResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/nio/file/FileVisitResult;
    .registers 1

    .line 36
    sget-object v0, Ljava/nio/file/FileVisitResult;->$VALUES:[Ljava/nio/file/FileVisitResult;

    invoke-virtual {v0}, [Ljava/nio/file/FileVisitResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/FileVisitResult;

    return-object v0
.end method
