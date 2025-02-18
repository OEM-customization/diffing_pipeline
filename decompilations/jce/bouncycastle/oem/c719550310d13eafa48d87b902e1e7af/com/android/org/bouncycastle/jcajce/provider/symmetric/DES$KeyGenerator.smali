.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 213
    const-string/jumbo v0, "DES"

    new-instance v1, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    const/16 v2, 0x40

    invoke-direct {p0, v0, v2, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 214
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .registers 5

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;->uninitialised:Z

    if-eqz v0, :cond_18

    .line 227
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;->defaultKeySize:I

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;->uninitialised:Z

    .line 231
    :cond_18
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .registers 3
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 220
    invoke-super {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engineInit(ILjava/security/SecureRandom;)V

    .line 221
    return-void
.end method
