.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 307
    const-string/jumbo v0, "DESede"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 308
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 6
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 361
    instance-of v1, p1, Ljavax/crypto/spec/DESedeKeySpec;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 363
    check-cast v0, Ljavax/crypto/spec/DESedeKeySpec;

    .line 364
    .local v0, "desKeySpec":Ljavax/crypto/spec/DESedeKeySpec;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DESedeKeySpec;->getKey()[B

    move-result-object v2

    const-string/jumbo v3, "DESede"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 367
    .end local v0    # "desKeySpec":Ljavax/crypto/spec/DESedeKeySpec;
    :cond_14
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    return-object v1
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 9
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    .line 315
    if-nez p2, :cond_d

    .line 317
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "keySpec parameter is null"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 319
    :cond_d
    if-nez p1, :cond_18

    .line 321
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "key parameter is null"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    :cond_18
    const-class v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 326
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyFactory;->algName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 328
    :cond_2c
    const-class v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 330
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 334
    .local v0, "bytes":[B
    :try_start_38
    array-length v3, v0

    if-ne v3, v4, :cond_54

    .line 336
    const/16 v3, 0x18

    new-array v2, v3, [B

    .line 338
    .local v2, "longKey":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 339
    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x8

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 341
    new-instance v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    return-object v3

    .line 345
    .end local v2    # "longKey":[B
    :cond_54
    new-instance v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v3, v0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_59} :catch_5a

    return-object v3

    .line 349
    :catch_5a
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 354
    .end local v0    # "bytes":[B
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_65
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "Invalid KeySpec"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
