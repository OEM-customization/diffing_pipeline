.class public final Lcom/android/org/conscrypt/OpenSSLRandom;
.super Ljava/security/SecureRandomSpi;
.source "OpenSSLRandom.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x760c2179bb8f6dadL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .registers 3
    .param p1, "numBytes"    # I

    .prologue
    .line 45
    new-array v0, p1, [B

    .line 46
    .local v0, "output":[B
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    .line 47
    return-object v0
.end method

.method protected engineNextBytes([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .prologue
    .line 40
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    .line 41
    return-void
.end method

.method protected engineSetSeed([B)V
    .registers 4
    .param p1, "seed"    # [B

    .prologue
    .line 33
    if-nez p1, :cond_b

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "seed == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_b
    return-void
.end method
