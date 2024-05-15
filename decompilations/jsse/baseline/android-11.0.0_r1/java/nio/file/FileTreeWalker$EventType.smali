.class final enum Ljava/nio/file/FileTreeWalker$EventType;
.super Ljava/lang/Enum;
.source "FileTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/FileTreeWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/nio/file/FileTreeWalker$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/nio/file/FileTreeWalker$EventType;

.field public static final enum blacklist END_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

.field public static final enum blacklist ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

.field public static final enum blacklist START_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 113
    new-instance v0, Ljava/nio/file/FileTreeWalker$EventType;

    const-string v1, "START_DIRECTORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/FileTreeWalker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    .line 117
    new-instance v0, Ljava/nio/file/FileTreeWalker$EventType;

    const-string v1, "END_DIRECTORY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/nio/file/FileTreeWalker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    .line 121
    new-instance v0, Ljava/nio/file/FileTreeWalker$EventType;

    const-string v1, "ENTRY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/nio/file/FileTreeWalker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    .line 109
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/nio/file/FileTreeWalker$EventType;

    sget-object v5, Ljava/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    aput-object v5, v1, v2

    sget-object v2, Ljava/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Ljava/nio/file/FileTreeWalker$EventType;->$VALUES:[Ljava/nio/file/FileTreeWalker$EventType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljava/nio/file/FileTreeWalker$EventType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 109
    const-class v0, Ljava/nio/file/FileTreeWalker$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileTreeWalker$EventType;

    return-object v0
.end method

.method public static blacklist values()[Ljava/nio/file/FileTreeWalker$EventType;
    .registers 1

    .line 109
    sget-object v0, Ljava/nio/file/FileTreeWalker$EventType;->$VALUES:[Ljava/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v0}, [Ljava/nio/file/FileTreeWalker$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/FileTreeWalker$EventType;

    return-object v0
.end method
