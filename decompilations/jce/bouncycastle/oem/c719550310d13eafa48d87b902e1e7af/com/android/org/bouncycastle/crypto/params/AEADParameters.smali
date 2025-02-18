.class public Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
.super Ljava/lang/Object;
.source "AEADParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private associatedText:[B

.field private key:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B)V
    .registers 5
    .param p1, "key"    # Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .param p2, "macSize"    # I
    .param p3, "nonce"    # [B

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V
    .registers 5
    .param p1, "key"    # Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .param p2, "macSize"    # I
    .param p3, "nonce"    # [B
    .param p4, "associatedText"    # [B

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->key:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 36
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    .line 37
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->macSize:I

    .line 38
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    .line 39
    return-void
.end method


# virtual methods
.method public getAssociatedText()[B
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    return-object v0
.end method

.method public getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->key:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->macSize:I

    return v0
.end method

.method public getNonce()[B
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    return-object v0
.end method
