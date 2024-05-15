.class public final enum Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
.super Ljava/lang/Enum;
.source "VerifiedSCT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/VerifiedSCT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum INVALID_SIGNATURE:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    const-string/jumbo v1, "VALID"

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    .line 30
    new-instance v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    const-string/jumbo v1, "INVALID_SIGNATURE"

    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    .line 31
    new-instance v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    const-string/jumbo v1, "UNKNOWN_LOG"

    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    .line 32
    new-instance v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    const-string/jumbo v1, "INVALID_SCT"

    invoke-direct {v0, v1, v5}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->$VALUES:[Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->$VALUES:[Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v0
.end method
