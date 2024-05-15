.class final Lcom/android/org/conscrypt/CryptoUpcalls;
.super Ljava/lang/Object;
.source "CryptoUpcalls.java"


# static fields
.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/android/org/conscrypt/CryptoUpcalls;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist ecSignDigestWithPrivateKey(Ljava/security/PrivateKey;[B)[B
    .registers 6
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "message"    # [B

    .line 63
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 68
    const-string v1, "NONEwithECDSA"

    invoke-static {p0, p1, v1}, Lcom/android/org/conscrypt/CryptoUpcalls;->signDigestWithPrivateKey(Ljava/security/PrivateKey;[BLjava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 65
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .local v0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-static {p0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 50
    .local v4, "p":Ljava/security/Provider;
    invoke-static {v4}, Lcom/android/org/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 51
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v4    # "p":Ljava/security/Provider;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 54
    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 55
    sget-object v1, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find external provider for algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 57
    :cond_38
    return-object v0
.end method

.method static blacklist rsaDecryptWithPrivateKey(Ljava/security/PrivateKey;I[B)[B
    .registers 4
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "openSSLPadding"    # I
    .param p2, "input"    # [B

    .line 143
    const/4 v0, 0x2

    invoke-static {p0, p1, v0, p2}, Lcom/android/org/conscrypt/CryptoUpcalls;->rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static blacklist rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B
    .registers 14
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "openSSLPadding"    # I
    .param p2, "cipherMode"    # I
    .param p3, "input"    # [B

    .line 148
    const-string v0, "Unsupported cipher algorithm: "

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "keyAlgorithm":Ljava/lang/String;
    const-string v2, "RSA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_26

    .line 150
    sget-object v0, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected key type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 151
    return-object v3

    .line 155
    :cond_26
    packed-switch p1, :pswitch_data_12a

    .line 168
    :pswitch_29
    sget-object v0, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported OpenSSL/BoringSSL padding: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 169
    return-object v3

    .line 165
    :pswitch_40
    const-string v2, "OAEPPadding"

    .line 166
    .local v2, "jcaPadding":Ljava/lang/String;
    goto :goto_49

    .line 162
    .end local v2    # "jcaPadding":Ljava/lang/String;
    :pswitch_43
    const-string v2, "NoPadding"

    .line 163
    .restart local v2    # "jcaPadding":Ljava/lang/String;
    goto :goto_49

    .line 159
    .end local v2    # "jcaPadding":Ljava/lang/String;
    :pswitch_46
    const-string v2, "PKCS1Padding"

    .line 160
    .restart local v2    # "jcaPadding":Ljava/lang/String;
    nop

    .line 172
    :goto_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RSA/ECB/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "transformation":Ljava/lang/String;
    const/4 v5, 0x0

    .line 179
    .local v5, "c":Ljavax/crypto/Cipher;
    :try_start_5b
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    move-object v5, v6

    .line 180
    invoke-virtual {v5, p2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 183
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    move-result v0
    :try_end_6b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5b .. :try_end_6b} :catch_113
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5b .. :try_end_6b} :catch_fd
    .catch Ljava/security/InvalidKeyException; {:try_start_5b .. :try_end_6b} :catch_6f

    if-eqz v0, :cond_6e

    .line 184
    const/4 v5, 0x0

    .line 195
    :cond_6e
    goto :goto_7a

    .line 192
    :catch_6f
    move-exception v0

    .line 193
    .local v0, "e":Ljava/security/InvalidKeyException;
    sget-object v6, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Preferred provider doesn\'t support key:"

    invoke-virtual {v6, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    const/4 v5, 0x0

    .line 199
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :goto_7a
    if-nez v5, :cond_cd

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cipher."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/CryptoUpcalls;->getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 201
    .local v0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_95
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/Provider;

    .line 203
    .local v7, "p":Ljava/security/Provider;
    :try_start_a1
    invoke-static {v4, v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v8

    move-object v5, v8

    .line 204
    invoke-virtual {v5, p2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_a9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a1 .. :try_end_a9} :catch_b0
    .catch Ljava/security/InvalidKeyException; {:try_start_a1 .. :try_end_a9} :catch_ad
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_a1 .. :try_end_a9} :catch_aa

    .line 205
    goto :goto_b4

    .line 210
    :catch_aa
    move-exception v8

    .line 211
    .local v8, "e":Ljavax/crypto/NoSuchPaddingException;
    const/4 v5, 0x0

    goto :goto_b3

    .line 208
    .end local v8    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_ad
    move-exception v8

    .line 209
    .local v8, "e":Ljava/security/InvalidKeyException;
    const/4 v5, 0x0

    .end local v8    # "e":Ljava/security/InvalidKeyException;
    goto :goto_b2

    .line 206
    :catch_b0
    move-exception v8

    .line 207
    .local v8, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v5, 0x0

    .line 212
    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_b2
    nop

    .line 213
    .end local v7    # "p":Ljava/security/Provider;
    :goto_b3
    goto :goto_95

    .line 214
    :cond_b4
    :goto_b4
    if-nez v5, :cond_cd

    .line 215
    sget-object v6, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find provider for algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 216
    return-object v3

    .line 221
    .end local v0    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    :cond_cd
    :try_start_cd
    invoke-virtual {v5, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d1} :catch_d2

    return-object v0

    .line 222
    :catch_d2
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while decrypting message with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " private key using "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 223
    invoke-virtual {v6, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    return-object v3

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_fd
    move-exception v6

    .line 190
    .local v6, "e":Ljavax/crypto/NoSuchPaddingException;
    sget-object v7, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 191
    return-object v3

    .line 186
    .end local v6    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_113
    move-exception v6

    .line 187
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v7, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 188
    return-object v3

    nop

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_46
        :pswitch_29
        :pswitch_43
        :pswitch_40
    .end packed-switch
.end method

.method static blacklist rsaSignDigestWithPrivateKey(Ljava/security/PrivateKey;I[B)[B
    .registers 4
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "openSSLPadding"    # I
    .param p2, "message"    # [B

    .line 139
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/android/org/conscrypt/CryptoUpcalls;->rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static blacklist signDigestWithPrivateKey(Ljava/security/PrivateKey;[BLjava/lang/String;)[B
    .registers 10
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "message"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 80
    .local v1, "signature":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 83
    invoke-virtual {v1}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    move-result v2
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_10} :catch_a3
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_10} :catch_14

    if-eqz v2, :cond_13

    .line 84
    const/4 v1, 0x0

    .line 93
    :cond_13
    goto :goto_21

    .line 89
    .end local v1    # "signature":Ljava/security/Signature;
    :catch_14
    move-exception v1

    .line 90
    .local v1, "e":Ljava/security/InvalidKeyException;
    sget-object v2, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    const-string v3, "Preferred provider doesn\'t support key:"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 92
    const/4 v2, 0x0

    move-object v1, v2

    .line 97
    .local v1, "signature":Ljava/security/Signature;
    :goto_21
    if-nez v1, :cond_78

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/CryptoUpcalls;->getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 99
    .local v2, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    const/4 v3, 0x0

    .line 100
    .local v3, "savedRuntimeException":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider;

    .line 102
    .local v5, "p":Ljava/security/Provider;
    :try_start_49
    invoke-static {p2, v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v6

    move-object v1, v6

    .line 103
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_51
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_49 .. :try_end_51} :catch_58
    .catch Ljava/security/InvalidKeyException; {:try_start_49 .. :try_end_51} :catch_58
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_51} :catch_52

    .line 104
    goto :goto_5c

    .line 107
    :catch_52
    move-exception v6

    .line 108
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    .line 109
    if-nez v3, :cond_5b

    .line 110
    move-object v3, v6

    goto :goto_5b

    .line 105
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_58
    move-exception v6

    .line 106
    .local v6, "e":Ljava/security/GeneralSecurityException;
    const/4 v1, 0x0

    .line 112
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    nop

    .line 113
    .end local v5    # "p":Ljava/security/Provider;
    :cond_5b
    :goto_5b
    goto :goto_3d

    .line 114
    :cond_5c
    :goto_5c
    if-nez v1, :cond_78

    .line 115
    if-nez v3, :cond_77

    .line 118
    sget-object v4, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find provider for algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 119
    return-object v0

    .line 116
    :cond_77
    throw v3

    .line 125
    .end local v2    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    .end local v3    # "savedRuntimeException":Ljava/lang/RuntimeException;
    :cond_78
    :try_start_78
    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    .line 126
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v0
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7f} :catch_80

    return-object v0

    .line 127
    :catch_80
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while signing message with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " private key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    return-object v0

    .line 86
    .end local v1    # "signature":Ljava/security/Signature;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_a3
    move-exception v1

    .line 87
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v2, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported signature algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 88
    return-object v0
.end method
