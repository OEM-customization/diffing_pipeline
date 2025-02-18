.class public Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;
.super Ljava/lang/Object;
.source "DSAParameterGenerationParameters.java"


# static fields
.field public static final DIGITAL_SIGNATURE_USAGE:I = 0x1

.field public static final KEY_ESTABLISHMENT_USAGE:I = 0x2


# instance fields
.field private final certainty:I

.field private final l:I

.field private final n:I

.field private final random:Ljava/security/SecureRandom;

.field private final usageIndex:I


# direct methods
.method public constructor <init>(IIILjava/security/SecureRandom;)V
    .registers 11
    .param p1, "L"    # I
    .param p2, "N"    # I
    .param p3, "certainty"    # I
    .param p4, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 30
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(IIILjava/security/SecureRandom;I)V
    .registers 6
    .param p1, "L"    # I
    .param p2, "N"    # I
    .param p3, "certainty"    # I
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "usageIndex"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->l:I

    .line 50
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->n:I

    .line 51
    iput p3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->certainty:I

    .line 52
    iput p5, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->usageIndex:I

    .line 53
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->random:Ljava/security/SecureRandom;

    .line 54
    return-void
.end method


# virtual methods
.method public getCertainty()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->certainty:I

    return v0
.end method

.method public getL()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->l:I

    return v0
.end method

.method public getN()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->n:I

    return v0
.end method

.method public getRandom()Ljava/security/SecureRandom;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->random:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getUsageIndex()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->usageIndex:I

    return v0
.end method
