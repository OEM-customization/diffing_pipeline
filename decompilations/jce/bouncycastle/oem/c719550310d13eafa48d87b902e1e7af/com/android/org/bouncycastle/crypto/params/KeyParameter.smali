.class public Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
.super Ljava/lang/Object;
.source "KeyParameter.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private key:[B


# direct methods
.method public constructor <init>([B)V
    .registers 4
    .param p1, "key"    # [B

    .prologue
    .line 13
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 14
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6
    .param p1, "key"    # [B
    .param p2, "keyOff"    # I
    .param p3, "keyLen"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 24
    return-void
.end method


# virtual methods
.method public getKey()[B
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    return-object v0
.end method
