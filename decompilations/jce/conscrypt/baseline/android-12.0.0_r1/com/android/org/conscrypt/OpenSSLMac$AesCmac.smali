.class public final Lcom/android/org/conscrypt/OpenSSLMac$AesCmac;
.super Lcom/android/org/conscrypt/OpenSSLMac;
.source "OpenSSLMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AesCmac"
.end annotation


# instance fields
.field private blacklist ctx:Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 251
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLMac;-><init>(ILcom/android/org/conscrypt/OpenSSLMac$1;)V

    .line 252
    return-void
.end method


# virtual methods
.method protected blacklist doFinal()[B
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac$AesCmac;->ctx:Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;

    .line 272
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->CMAC_Final(Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;)[B

    move-result-object v1

    return-object v1
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 277
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac$AesCmac;->ctx:Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;

    .line 278
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->CMAC_Update(Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;[BII)V

    .line 279
    return-void
.end method

.method protected blacklist resetContext()V
    .registers 4

    .line 256
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->CMAC_CTX_new()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;-><init>(J)V

    .line 257
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMac$AesCmac;->keyBytes:[B

    if-eqz v1, :cond_12

    .line 258
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMac$AesCmac;->keyBytes:[B

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->CMAC_Init(Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;[B)V

    .line 260
    :cond_12
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac$AesCmac;->ctx:Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;

    .line 261
    return-void
.end method

.method protected blacklist updateDirect(JI)V
    .registers 5
    .param p1, "ptr"    # J
    .param p3, "len"    # I

    .line 265
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac$AesCmac;->ctx:Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;

    .line 266
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->CMAC_UpdateDirect(Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;JI)V

    .line 267
    return-void
.end method
