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
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum blacklist INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum blacklist INVALID_SIGNATURE:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum blacklist UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum blacklist VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 32
    new-instance v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    const-string v1, "VALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    .line 33
    new-instance v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    const-string v1, "INVALID_SIGNATURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    .line 34
    new-instance v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    const-string v1, "UNKNOWN_LOG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    .line 35
    new-instance v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    const-string v1, "INVALID_SCT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    .line 31
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    sget-object v6, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->$VALUES:[Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .registers 1

    .line 31
    sget-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->$VALUES:[Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v0
.end method
