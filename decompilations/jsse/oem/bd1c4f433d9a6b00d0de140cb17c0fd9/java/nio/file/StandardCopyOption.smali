.class public final enum Ljava/nio/file/StandardCopyOption;
.super Ljava/lang/Enum;
.source "StandardCopyOption.java"

# interfaces
.implements Ljava/nio/file/CopyOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/nio/file/StandardCopyOption;",
        ">;",
        "Ljava/nio/file/CopyOption;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/nio/file/StandardCopyOption;

.field public static final enum ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

.field public static final enum COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

.field public static final enum REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Ljava/nio/file/StandardCopyOption;

    const-string/jumbo v1, "REPLACE_EXISTING"

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 39
    new-instance v0, Ljava/nio/file/StandardCopyOption;

    const-string/jumbo v1, "COPY_ATTRIBUTES"

    invoke-direct {v0, v1, v3}, Ljava/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    .line 43
    new-instance v0, Ljava/nio/file/StandardCopyOption;

    const-string/jumbo v1, "ATOMIC_MOVE"

    invoke-direct {v0, v1, v4}, Ljava/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/nio/file/StandardCopyOption;

    sget-object v1, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v1, v0, v4

    sput-object v0, Ljava/nio/file/StandardCopyOption;->$VALUES:[Ljava/nio/file/StandardCopyOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/nio/file/StandardCopyOption;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Ljava/nio/file/StandardCopyOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/StandardCopyOption;

    return-object v0
.end method

.method public static values()[Ljava/nio/file/StandardCopyOption;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Ljava/nio/file/StandardCopyOption;->$VALUES:[Ljava/nio/file/StandardCopyOption;

    return-object v0
.end method
