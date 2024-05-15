.class public final enum Lcom/sun/nio/file/SensitivityWatchEventModifier;
.super Ljava/lang/Enum;
.source "SensitivityWatchEventModifier.java"

# interfaces
.implements Ljava/nio/file/WatchEvent$Modifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/nio/file/SensitivityWatchEventModifier;",
        ">;",
        "Ljava/nio/file/WatchEvent$Modifier;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/nio/file/SensitivityWatchEventModifier;

.field public static final enum HIGH:Lcom/sun/nio/file/SensitivityWatchEventModifier;

.field public static final enum LOW:Lcom/sun/nio/file/SensitivityWatchEventModifier;

.field public static final enum MEDIUM:Lcom/sun/nio/file/SensitivityWatchEventModifier;


# instance fields
.field private final sensitivity:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 38
    new-instance v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v4, v3}, Lcom/sun/nio/file/SensitivityWatchEventModifier;-><init>(Ljava/lang/String;II)V

    .line 41
    sput-object v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->HIGH:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    .line 42
    new-instance v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    const-string/jumbo v1, "MEDIUM"

    .line 45
    const/16 v2, 0xa

    .line 42
    invoke-direct {v0, v1, v5, v2}, Lcom/sun/nio/file/SensitivityWatchEventModifier;-><init>(Ljava/lang/String;II)V

    .line 45
    sput-object v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->MEDIUM:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    .line 46
    new-instance v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    const-string/jumbo v1, "LOW"

    .line 49
    const/16 v2, 0x1e

    .line 46
    invoke-direct {v0, v1, v3, v2}, Lcom/sun/nio/file/SensitivityWatchEventModifier;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->LOW:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/nio/file/SensitivityWatchEventModifier;

    sget-object v1, Lcom/sun/nio/file/SensitivityWatchEventModifier;->HIGH:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sun/nio/file/SensitivityWatchEventModifier;->MEDIUM:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sun/nio/file/SensitivityWatchEventModifier;->LOW:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->$VALUES:[Lcom/sun/nio/file/SensitivityWatchEventModifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "sensitivity"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->sensitivity:I

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/nio/file/SensitivityWatchEventModifier;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    return-object v0
.end method

.method public static values()[Lcom/sun/nio/file/SensitivityWatchEventModifier;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->$VALUES:[Lcom/sun/nio/file/SensitivityWatchEventModifier;

    return-object v0
.end method


# virtual methods
.method public sensitivityValueInSeconds()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->sensitivity:I

    return v0
.end method
