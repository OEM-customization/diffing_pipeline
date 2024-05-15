.class public Lcom/android/org/bouncycastle/crypto/params/ParametersWithID;
.super Ljava/lang/Object;
.source "ParametersWithID.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private id:[B

.field private parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V
    .registers 3
    .param p1, "parameters"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .param p2, "id"    # [B

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithID;->parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 16
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithID;->id:[B

    .line 17
    return-void
.end method


# virtual methods
.method public getID()[B
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithID;->id:[B

    return-object v0
.end method

.method public getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithID;->parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method
