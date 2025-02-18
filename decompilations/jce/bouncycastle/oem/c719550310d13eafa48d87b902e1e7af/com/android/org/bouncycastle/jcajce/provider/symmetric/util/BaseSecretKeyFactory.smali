.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "BaseSecretKeyFactory.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field protected algName:Ljava/lang/String;

.field protected algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 3
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "algOid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 21
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 33
    instance-of v0, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v0, :cond_12

    .line 35
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    check-cast p1, Ljavax/crypto/spec/SecretKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {p1}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 38
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_12
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 10
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 46
    if-nez p2, :cond_b

    .line 48
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v5, "keySpec parameter is null"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_b
    if-nez p1, :cond_16

    .line 52
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v5, "key parameter is null"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 55
    :cond_16
    const-class v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 57
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v4

    .line 62
    :cond_2a
    const/4 v4, 0x1

    :try_start_2b
    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, [B

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 64
    .local v3, "parameters":[Ljava/lang/Class;
    invoke-virtual {p2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 65
    .local v0, "c":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Object;

    .line 67
    .local v2, "p":[Ljava/lang/Object;
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/spec/KeySpec;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_46} :catch_47

    return-object v4

    .line 72
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    .end local v2    # "p":[Ljava/lang/Object;
    .end local v3    # "parameters":[Ljava/lang/Class;
    :catch_47
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 81
    if-nez p1, :cond_b

    .line 83
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key parameter is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_b
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 88
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key not of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3a
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
