.class final Lcom/android/org/conscrypt/CryptoUpcalls;
.super Ljava/lang/Object;
.source "CryptoUpcalls.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v1, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-static {p0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_c
    if-ge v2, v4, :cond_1c

    aget-object v0, v3, v2

    .line 51
    .local v0, "p":Ljava/security/Provider;
    invoke-static {v0}, Lcom/android/org/conscrypt/CryptoUpcalls;->isOurProvider(Ljava/security/Provider;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 52
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 55
    .end local v0    # "p":Ljava/security/Provider;
    :cond_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 56
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not find external provider for algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    :cond_3b
    return-object v1
.end method

.method private static isOurProvider(Ljava/security/Provider;)Z
    .registers 3
    .param p0, "p"    # Ljava/security/Provider;

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    const-class v1, Lcom/android/org/conscrypt/CryptoUpcalls;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Package;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static rawSignDigestWithPrivateKey(Ljava/security/PrivateKey;[B)[B
    .registers 16
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "message"    # [B

    .prologue
    const/4 v13, 0x0

    .line 66
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "keyAlgorithm":Ljava/lang/String;
    const-string/jumbo v10, "RSA"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 72
    const-string/jumbo v0, "NONEwithRSA"

    .line 85
    .local v0, "algorithm":Ljava/lang/String;
    :goto_11
    :try_start_11
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v9

    .line 86
    .local v9, "signature":Ljava/security/Signature;
    invoke-virtual {v9, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 89
    invoke-virtual {v9}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/conscrypt/CryptoUpcalls;->isOurProvider(Ljava/security/Provider;)Z
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_1f} :catch_aa
    .catch Ljava/security/InvalidKeyException; {:try_start_11 .. :try_end_1f} :catch_9b

    move-result v10

    if-eqz v10, :cond_23

    .line 90
    const/4 v9, 0x0

    .line 103
    .end local v9    # "signature":Ljava/security/Signature;
    :cond_23
    :goto_23
    if-nez v9, :cond_c9

    .line 104
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Signature."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/conscrypt/CryptoUpcalls;->getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 105
    .local v8, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "p$iterator":Ljava/util/Iterator;
    :goto_41
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_54

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    .line 107
    .local v6, "p":Ljava/security/Provider;
    :try_start_4d
    invoke-static {v0, v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v9

    .line 108
    .restart local v9    # "signature":Ljava/security/Signature;
    invoke-virtual {v9, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_54
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4d .. :try_end_54} :catch_c5
    .catch Ljava/security/InvalidKeyException; {:try_start_4d .. :try_end_54} :catch_c5

    .line 114
    .end local v6    # "p":Ljava/security/Provider;
    .end local v9    # "signature":Ljava/security/Signature;
    :cond_54
    if-nez v9, :cond_c9

    .line 115
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Could not find provider for algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    return-object v13

    .line 73
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v7    # "p$iterator":Ljava/util/Iterator;
    .end local v8    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    :cond_70
    const-string/jumbo v10, "EC"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7d

    .line 74
    const-string/jumbo v0, "NONEwithECDSA"

    .restart local v0    # "algorithm":Ljava/lang/String;
    goto :goto_11

    .line 76
    .end local v0    # "algorithm":Ljava/lang/String;
    :cond_7d
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unexpected key type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 95
    .restart local v0    # "algorithm":Ljava/lang/String;
    :catch_9b
    move-exception v3

    .line 96
    .local v3, "e":Ljava/security/InvalidKeyException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v11, "Preferred provider doesn\'t support key:"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v3}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 98
    const/4 v9, 0x0

    .local v9, "signature":Ljava/security/Signature;
    goto/16 :goto_23

    .line 92
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    .end local v9    # "signature":Ljava/security/Signature;
    :catch_aa
    move-exception v4

    .line 93
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported signature algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    return-object v13

    .line 110
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v6    # "p":Ljava/security/Provider;
    .restart local v7    # "p$iterator":Ljava/util/Iterator;
    .restart local v8    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    :catch_c5
    move-exception v2

    .line 111
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const/4 v9, 0x0

    .restart local v9    # "signature":Ljava/security/Signature;
    goto/16 :goto_41

    .line 122
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .end local v6    # "p":Ljava/security/Provider;
    .end local v7    # "p$iterator":Ljava/util/Iterator;
    .end local v8    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    .end local v9    # "signature":Ljava/security/Signature;
    :cond_c9
    :try_start_c9
    invoke-virtual {v9, p1}, Ljava/security/Signature;->update([B)V

    .line 123
    invoke-virtual {v9}, Ljava/security/Signature;->sign()[B
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cf} :catch_d1

    move-result-object v10

    return-object v10

    .line 124
    :catch_d1
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception while signing message with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 126
    const-string/jumbo v12, " private key:"

    .line 125
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    return-object v13
.end method

.method static rsaDecryptWithPrivateKey(Ljava/security/PrivateKey;I[B)[B
    .registers 16
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "openSSLPadding"    # I
    .param p2, "input"    # [B

    .prologue
    .line 134
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "keyAlgorithm":Ljava/lang/String;
    const-string/jumbo v10, "RSA"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_28

    .line 136
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unexpected key type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    const/4 v10, 0x0

    return-object v10

    .line 141
    :cond_28
    packed-switch p1, :pswitch_data_130

    .line 152
    :pswitch_2b
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported OpenSSL/BoringSSL padding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    const/4 v10, 0x0

    return-object v10

    .line 143
    :pswitch_46
    const-string/jumbo v4, "PKCS1Padding"

    .line 156
    .local v4, "jcaPadding":Ljava/lang/String;
    :goto_49
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "RSA/ECB/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "transformation":Ljava/lang/String;
    const/4 v0, 0x0

    .line 163
    .local v0, "c":Ljavax/crypto/Cipher;
    :try_start_5e
    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 164
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v10, 0x2

    invoke-virtual {v0, v10, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 167
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/conscrypt/CryptoUpcalls;->isOurProvider(Ljava/security/Provider;)Z
    :try_end_6d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5e .. :try_end_6d} :catch_d6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5e .. :try_end_6d} :catch_d6
    .catch Ljava/security/InvalidKeyException; {:try_start_5e .. :try_end_6d} :catch_c8

    move-result v10

    if-eqz v10, :cond_71

    .line 168
    const/4 v0, 0x0

    .line 181
    .end local v0    # "c":Ljavax/crypto/Cipher;
    :cond_71
    :goto_71
    if-nez v0, :cond_f5

    .line 182
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Cipher."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/conscrypt/CryptoUpcalls;->getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 183
    .local v8, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "p$iterator":Ljava/util/Iterator;
    :goto_8f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    .line 185
    .local v6, "p":Ljava/security/Provider;
    :try_start_9b
    invoke-static {v9, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 186
    .restart local v0    # "c":Ljavax/crypto/Cipher;
    const/4 v10, 0x2

    invoke-virtual {v0, v10, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_a3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9b .. :try_end_a3} :catch_f2
    .catch Ljava/security/InvalidKeyException; {:try_start_9b .. :try_end_a3} :catch_f2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_9b .. :try_end_a3} :catch_f2

    .line 193
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v6    # "p":Ljava/security/Provider;
    :cond_a3
    if-nez v0, :cond_f5

    .line 194
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Could not find provider for algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    const/4 v10, 0x0

    return-object v10

    .line 146
    .end local v4    # "jcaPadding":Ljava/lang/String;
    .end local v7    # "p$iterator":Ljava/util/Iterator;
    .end local v8    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    .end local v9    # "transformation":Ljava/lang/String;
    :pswitch_c0
    const-string/jumbo v4, "NoPadding"

    .restart local v4    # "jcaPadding":Ljava/lang/String;
    goto :goto_49

    .line 149
    .end local v4    # "jcaPadding":Ljava/lang/String;
    :pswitch_c4
    const-string/jumbo v4, "OAEPPadding"

    .restart local v4    # "jcaPadding":Ljava/lang/String;
    goto :goto_49

    .line 173
    .restart local v9    # "transformation":Ljava/lang/String;
    :catch_c8
    move-exception v3

    .line 174
    .local v3, "e":Ljava/security/InvalidKeyException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v11, "Preferred provider doesn\'t support key:"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v3}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 176
    const/4 v0, 0x0

    .local v0, "c":Ljavax/crypto/Cipher;
    goto :goto_71

    .line 170
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_d6
    move-exception v2

    .line 171
    .local v2, "e":Ljava/security/GeneralSecurityException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported cipher algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    const/4 v10, 0x0

    return-object v10

    .line 189
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .restart local v6    # "p":Ljava/security/Provider;
    .restart local v7    # "p$iterator":Ljava/util/Iterator;
    .restart local v8    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    :catch_f2
    move-exception v2

    .line 190
    .restart local v2    # "e":Ljava/security/GeneralSecurityException;
    const/4 v0, 0x0

    .restart local v0    # "c":Ljavax/crypto/Cipher;
    goto :goto_8f

    .line 200
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .end local v6    # "p":Ljava/security/Provider;
    .end local v7    # "p$iterator":Ljava/util/Iterator;
    .end local v8    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    :cond_f5
    :try_start_f5
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_f8} :catch_fa

    move-result-object v10

    return-object v10

    .line 201
    :catch_fa
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception while decrypting message with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 203
    const-string/jumbo v12, " private key using "

    .line 202
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 203
    const-string/jumbo v12, ":"

    .line 202
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    const/4 v10, 0x0

    return-object v10

    .line 141
    nop

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_46
        :pswitch_2b
        :pswitch_c0
        :pswitch_c4
    .end packed-switch
.end method
