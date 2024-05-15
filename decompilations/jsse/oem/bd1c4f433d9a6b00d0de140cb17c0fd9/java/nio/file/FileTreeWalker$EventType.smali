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
        "Ljava/lang/Enum",
        "<",
        "Ljava/nio/file/FileTreeWalker$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/nio/file/FileTreeWalker$EventType;

.field public static final enum END_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

.field public static final enum ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

.field public static final enum START_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v0, Ljava/nio/file/FileTreeWalker$EventType;

    const-string/jumbo v1, "START_DIRECTORY"

    invoke-direct {v0, v1, v2}, Ljava/nio/file/FileTreeWalker$EventType;-><init>(Ljava/lang/String;I)V

    .line 113
    sput-object v0, Ljava/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    .line 114
    new-instance v0, Ljava/nio/file/FileTreeWalker$EventType;

    const-string/jumbo v1, "END_DIRECTORY"

    invoke-direct {v0, v1, v3}, Ljava/nio/file/FileTreeWalker$EventType;-><init>(Ljava/lang/String;I)V

    .line 117
    sput-object v0, Ljava/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    .line 118
    new-instance v0, Ljava/nio/file/FileTreeWalker$EventType;

    const-string/jumbo v1, "ENTRY"

    invoke-direct {v0, v1, v4}, Ljava/nio/file/FileTreeWalker$EventType;-><init>(Ljava/lang/String;I)V

    .line 121
    sput-object v0, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/nio/file/FileTreeWalker$EventType;

    sget-object v1, Ljava/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    aput-object v1, v0, v4

    sput-object v0, Ljava/nio/file/FileTreeWalker$EventType;->$VALUES:[Ljava/nio/file/FileTreeWalker$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/nio/file/FileTreeWalker$EventType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const-class v0, Ljava/nio/file/FileTreeWalker$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileTreeWalker$EventType;

    return-object v0
.end method

.method public static values()[Ljava/nio/file/FileTreeWalker$EventType;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Ljava/nio/file/FileTreeWalker$EventType;->$VALUES:[Ljava/nio/file/FileTreeWalker$EventType;

    return-object v0
.end method
