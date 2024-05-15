.class public abstract Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;
.super Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DirectRSA"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "padding"    # I

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;-><init>(I)V

    .line 360
    return-void
.end method


# virtual methods
.method doCryptoOperation([B[B)I
    .registers 9
    .param p1, "tmpBuf"    # [B
    .param p2, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .prologue
    .line 366
    iget-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->encrypting:Z

    if-eqz v3, :cond_24

    .line 367
    iget-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->usingPrivateKey:Z

    if-eqz v3, :cond_16

    .line 369
    array-length v3, p1

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 368
    invoke-static {v3, p1, p2, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v2

    .line 389
    .local v2, "resultSize":I
    :goto_15
    return v2

    .line 372
    .end local v2    # "resultSize":I
    :cond_16
    array-length v3, p1

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 371
    invoke-static {v3, p1, p2, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v2

    .restart local v2    # "resultSize":I
    goto :goto_15

    .line 376
    .end local v2    # "resultSize":I
    :cond_24
    :try_start_24
    iget-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->usingPrivateKey:Z

    if-eqz v3, :cond_36

    .line 378
    array-length v3, p1

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 377
    invoke-static {v3, p1, p2, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v2

    .restart local v2    # "resultSize":I
    goto :goto_15

    .line 381
    .end local v2    # "resultSize":I
    :cond_36
    array-length v3, p1

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 380
    invoke-static {v3, p1, p2, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_42
    .catch Ljava/security/SignatureException; {:try_start_24 .. :try_end_42} :catch_44

    move-result v2

    .restart local v2    # "resultSize":I
    goto :goto_15

    .line 383
    .end local v2    # "resultSize":I
    :catch_44
    move-exception v0

    .line 384
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 385
    .local v1, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 386
    throw v1
.end method
