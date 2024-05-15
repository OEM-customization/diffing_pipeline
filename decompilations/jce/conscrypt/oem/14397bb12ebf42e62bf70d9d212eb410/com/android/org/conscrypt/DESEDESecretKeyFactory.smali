.class public Lcom/android/org/conscrypt/DESEDESecretKeyFactory;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "DESEDESecretKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 8
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 37
    if-nez p1, :cond_b

    .line 38
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "Null KeySpec"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 40
    :cond_b
    instance-of v3, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v3, :cond_2e

    move-object v2, p1

    .line 41
    nop

    nop

    .line 43
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_12
    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@12
    nop

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavax/crypto/spec/DESedeKeySpec;->isParityAdjusted([BI)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 44
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    .line 45
    const-string/jumbo v4, "SecretKeySpec is not a parity-adjusted DESEDE key"

    .line 44
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_26
    .catch Ljava/security/InvalidKeyException; {:try_start_12 .. :try_end_26} :catch_26

    .line 47
    :catch_26
    move-exception v1

    .line 48
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 50
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :cond_2d
    return-object v2

    .line 51
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :cond_2e
    instance-of v3, p1, Ljavax/crypto/spec/DESedeKeySpec;

    if-eqz v3, :cond_42

    move-object v0, p1

    .line 52
    nop

    nop

    .line 53
    .local v0, "desKeySpec":Ljavax/crypto/spec/DESedeKeySpec;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@11
    nop

    move-result-object v4

    const-string/jumbo v5, "DESEDE"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 55
    .end local v0    # "desKeySpec":Ljavax/crypto/spec/DESedeKeySpec;
    :cond_42
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported KeySpec class: "

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@77
    nop

    move-result-object v4

    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@3
    nop

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@50
    nop

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@77
    nop

    move-result-object v4

    #disallowed odex opcode
    #invoke-virtual-quick {v4}, vtable@7
    nop

    move-result-object v4

    .line 55
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 7
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p2, "aClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 63
    if-nez p1, :cond_b

    .line 64
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v2, "Null SecretKey"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_b
    const-class v1, Ljavax/crypto/spec/SecretKeySpec;

    if-ne p2, v1, :cond_3e

    .line 68
    :try_start_f
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavax/crypto/spec/DESedeKeySpec;->isParityAdjusted([BI)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 69
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v2, "SecretKey is not a parity-adjusted DESEDE key"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_23
    .catch Ljava/security/InvalidKeyException; {:try_start_f .. :try_end_23} :catch_23

    .line 71
    :catch_23
    move-exception v0

    .line 72
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 74
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :cond_2a
    instance-of v1, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v1, :cond_31

    .line 75
    nop

    nop

    .end local p1    # "secretKey":Ljavax/crypto/SecretKey;
    return-object p1

    .line 77
    .restart local p1    # "secretKey":Ljavax/crypto/SecretKey;
    :cond_31
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    const-string/jumbo v3, "DESEDE"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 79
    :cond_3e
    const-class v1, Ljavax/crypto/spec/DESedeKeySpec;

    if-ne p2, v1, :cond_53

    .line 81
    :try_start_42
    new-instance v1, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V
    :try_end_4b
    .catch Ljava/security/InvalidKeyException; {:try_start_42 .. :try_end_4b} :catch_4c

    return-object v1

    .line 82
    :catch_4c
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 86
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :cond_53
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported KeySpec class: "

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2, p2}, vtable@76
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@7
    nop

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_b

    .line 93
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Null SecretKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_b
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
