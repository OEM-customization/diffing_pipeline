.class public abstract Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;
.super Ljava/lang/Object;
.source "StreamBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;
.implements Lcom/android/org/bouncycastle/crypto/StreamCipher;


# instance fields
.field private final cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 2
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 15
    return-void
.end method


# virtual methods
.method protected abstract calculateByte(B)B
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public processBytes([BII[BI)I
    .registers 13
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 35
    add-int v5, p5, p3

    array-length v6, p4

    if-le v5, v6, :cond_e

    .line 37
    new-instance v5, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v6, "output buffer too short"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 40
    :cond_e
    add-int v5, p2, p3

    array-length v6, p1

    if-le v5, v6, :cond_1c

    .line 42
    new-instance v5, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v6, "input buffer too small"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 45
    :cond_1c
    move v1, p2

    .line 46
    .local v1, "inStart":I
    add-int v0, p2, p3

    .line 47
    .local v0, "inEnd":I
    move v3, p5

    .local v3, "outStart":I
    move v4, v3

    .end local v3    # "outStart":I
    .local v4, "outStart":I
    move v2, v1

    .line 49
    .end local v1    # "inStart":I
    .local v2, "inStart":I
    :goto_22
    if-ge v2, v0, :cond_33

    .line 51
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "outStart":I
    .restart local v3    # "outStart":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "inStart":I
    .restart local v1    # "inStart":I
    aget-byte v5, p1, v2

    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    move-result v5

    aput-byte v5, p4, v4

    move v4, v3

    .end local v3    # "outStart":I
    .restart local v4    # "outStart":I
    move v2, v1

    .end local v1    # "inStart":I
    .restart local v2    # "inStart":I
    goto :goto_22

    .line 54
    :cond_33
    return p3
.end method

.method public final returnByte(B)B
    .registers 3
    .param p1, "in"    # B

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    move-result v0

    return v0
.end method
