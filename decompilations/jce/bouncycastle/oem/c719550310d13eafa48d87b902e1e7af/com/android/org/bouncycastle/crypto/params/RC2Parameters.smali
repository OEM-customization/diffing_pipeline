.class public Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;
.super Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
.source "RC2Parameters.java"


# instance fields
.field private bits:I


# direct methods
.method public constructor <init>([B)V
    .registers 4
    .param p1, "key"    # [B

    .prologue
    .line 11
    array-length v0, p1

    const/16 v1, 0x80

    if-le v0, v1, :cond_b

    const/16 v0, 0x400

    :goto_7
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    .line 12
    return-void

    .line 11
    :cond_b
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    goto :goto_7
.end method

.method public constructor <init>([BI)V
    .registers 3
    .param p1, "key"    # [B
    .param p2, "bits"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 19
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;->bits:I

    .line 20
    return-void
.end method


# virtual methods
.method public getEffectiveKeyBits()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;->bits:I

    return v0
.end method
