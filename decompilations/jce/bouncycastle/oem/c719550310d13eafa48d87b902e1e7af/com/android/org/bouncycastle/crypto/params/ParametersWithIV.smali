.class public Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
.super Ljava/lang/Object;
.source "ParametersWithIV.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private iv:[B

.field private parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V
    .registers 5
    .param p1, "parameters"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .param p2, "iv"    # [B

    .prologue
    .line 15
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V
    .registers 7
    .param p1, "parameters"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .param p2, "iv"    # [B
    .param p3, "ivOff"    # I
    .param p4, "ivLen"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, p4, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    .line 25
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 27
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 28
    return-void
.end method


# virtual methods
.method public getIV()[B
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    return-object v0
.end method

.method public getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method
