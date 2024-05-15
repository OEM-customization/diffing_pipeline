.class Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
.super Ljava/lang/Object;
.source "OpenSSLRSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final serialVersionUID:J = 0x439d6d0855187c6fL


# instance fields
.field transient fetchedParams:Z

.field transient key:Lcom/android/org/conscrypt/OpenSSLKey;

.field modulus:Ljava/math/BigInteger;

.field privateExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 2
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x8
    nop

    .line 50
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V
    .registers 4
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .param p2, "params"    # [[B

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 54
    #disallowed odex opcode
    #invoke-virtual-quick {p0, p2}, vtable@18
    nop

    .line 55
    const/4 v0, 0x1

    #disallowed odex opcode
    #iput-boolean-quick v0, p0, field@0x14
    nop

    .line 56
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/security/spec/RSAPrivateKeySpec;)V
    .registers 3
    .param p1, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->init(Ljava/security/spec/RSAPrivateKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 65
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 13
    .param p0, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 137
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 140
    :cond_b
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v9

    .line 141
    .local v9, "modulus":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v10

    .line 143
    .local v10, "privateExponent":Ljava/math/BigInteger;
    if-nez v9, :cond_1e

    .line 144
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "modulus == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1e
    if-nez v10, :cond_29

    .line 146
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "privateExponent == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_29
    :try_start_29
    new-instance v11, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 151
    #disallowed odex opcode
    #invoke-virtual-quick {v9}, vtable@55
    nop

    move-result-object v0

    .line 153
    #disallowed odex opcode
    #invoke-virtual-quick {v10}, vtable@55
    nop

    move-result-object v2

    .line 152
    const/4 v1, 0x0

    .line 154
    const/4 v3, 0x0

    .line 155
    const/4 v4, 0x0

    .line 156
    const/4 v5, 0x0

    .line 157
    const/4 v6, 0x0

    .line 158
    const/4 v7, 0x0

    .line 150
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_40} :catch_41

    return-object v11

    .line 159
    :catch_41
    move-exception v8

    .line 160
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static getInstance(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    .registers 3
    .param p0, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 93
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_RSA_private_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B

    move-result-object v0

    .line 94
    .local v0, "params":[[B
    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_13

    .line 95
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;

    invoke-direct {v1, p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V

    return-object v1

    .line 97
    :cond_13
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    invoke-direct {v1, p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V

    return-object v1
.end method

.method private static init(Ljava/security/spec/RSAPrivateKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 13
    .param p0, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 68
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    move-result-object v9

    .line 69
    .local v9, "modulus":Ljava/math/BigInteger;
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@12
    nop

    move-result-object v10

    .line 71
    .local v10, "privateExponent":Ljava/math/BigInteger;
    if-nez v9, :cond_13

    .line 72
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v1, "modulus == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_13
    if-nez v10, :cond_1e

    .line 74
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v1, "privateExponent == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1e
    :try_start_1e
    new-instance v11, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 79
    #disallowed odex opcode
    #invoke-virtual-quick {v9}, vtable@55
    nop

    move-result-object v0

    .line 81
    #disallowed odex opcode
    #invoke-virtual-quick {v10}, vtable@55
    nop

    move-result-object v2

    .line 80
    const/4 v1, 0x0

    .line 82
    const/4 v3, 0x0

    .line 83
    const/4 v4, 0x0

    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v7, 0x0

    .line 78
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_35} :catch_36

    return-object v11

    .line 87
    :catch_36
    move-exception v8

    .line 88
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 11
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 261
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@20
    nop

    .line 263
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 264
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@55
    nop

    move-result-object v0

    .line 266
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@55
    nop

    move-result-object v2

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    .line 263
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #disallowed odex opcode
    #iput-object-quick v8, p0, field@0x8
    nop

    .line 272
    const/4 v0, 0x1

    #disallowed odex opcode
    #iput-boolean-quick v0, p0, field@0x14
    nop

    .line 273
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 7
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "modulus":Ljava/math/BigInteger;
    instance-of v1, p0, Ljava/security/interfaces/RSAKey;

    if-eqz v1, :cond_33

    move-object v1, p0

    .line 119
    check-cast v1, Ljava/security/interfaces/RSAKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    .line 123
    .end local v0    # "modulus":Ljava/math/BigInteger;
    :cond_c
    :goto_c
    if-nez v0, :cond_3f

    .line 124
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RSA modulus not available. Private: "

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2, p0}, vtable@76
    nop

    move-result-object v2

    .line 125
    const-string/jumbo v3, ", public: "

    .line 124
    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2, p1}, vtable@76
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@7
    nop

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    .restart local v0    # "modulus":Ljava/math/BigInteger;
    :cond_33
    instance-of v1, p1, Ljava/security/interfaces/RSAKey;

    if-eqz v1, :cond_c

    move-object v1, p1

    .line 121
    check-cast v1, Ljava/security/interfaces/RSAKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    .local v0, "modulus":Ljava/math/BigInteger;
    goto :goto_c

    .line 127
    .end local v0    # "modulus":Ljava/math/BigInteger;
    :cond_3f
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 128
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@55
    nop

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->getRSAPrivateKeyWrapper(Ljava/security/PrivateKey;[B)J

    move-result-wide v2

    const/4 v4, 0x1

    .line 127
    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    return-object v1
.end method

.method static wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 6
    .param p0, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p0}, Lcom/android/org/conscrypt/Platform;->wrapRsaKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 103
    .local v0, "wrapper":Lcom/android/org/conscrypt/OpenSSLKey;
    if-eqz v0, :cond_7

    .line 104
    return-object v0

    .line 106
    :cond_7
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@55
    nop

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->getRSAPrivateKeyWrapper(Ljava/security/PrivateKey;[B)J

    move-result-wide v2

    .line 107
    const/4 v4, 0x1

    .line 106
    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    return-object v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    .line 277
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@18
    nop

    .line 278
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method final declared-synchronized ensureReadParams()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 165
    :try_start_1
    #disallowed odex opcode
    #iget-boolean-quick v0, p0, field@0x14
    nop
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    if-eqz v0, :cond_7

    monitor-exit p0

    .line 166
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 168
    :cond_7
    :try_start_7
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@11
    nop

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->get_RSA_private_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v0}, vtable@18
    nop

    .line 169
    const/4 v0, 0x1

    #disallowed odex opcode
    #iput-boolean-quick v0, p0, field@0x14
    nop
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    monitor-exit p0

    .line 170
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 216
    if-ne p1, p0, :cond_5

    .line 217
    const/4 v2, 0x1

    return v2

    .line 220
    :cond_5
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v3, :cond_17

    move-object v0, p1

    .line 221
    nop

    nop

    .line 222
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@16
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@1
    nop

    move-result v2

    return v2

    .line 225
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :cond_17
    instance-of v3, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v3, :cond_38

    .line 226
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    move-object v1, p1

    .line 227
    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 229
    .local v1, "other":Ljava/security/interfaces/RSAPrivateKey;
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0xc
    nop

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@1
    nop

    move-result v3

    if-eqz v3, :cond_37

    .line 230
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@1
    nop

    move-result v2

    .line 229
    :cond_37
    return v2

    .line 233
    .end local v1    # "other":Ljava/security/interfaces/RSAPrivateKey;
    :cond_38
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    const-string/jumbo v0, "RSA"

    return-object v0
.end method

.method public final getEncoded()[B
    .registers 2

    .prologue
    .line 201
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@11
    nop

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_marshal_private_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    const-string/jumbo v0, "PKCS#8"

    return-object v0
.end method

.method public final getModulus()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 195
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    .line 196
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    return-object v0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 2

    .prologue
    .line 60
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    return-object v0
.end method

.method public final getPrivateExponent()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 189
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    .line 190
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x10
    nop

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 238
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    .line 239
    const/4 v0, 0x1

    .line 241
    .local v0, "hash":I
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@4
    nop

    move-result v1

    add-int/lit8 v0, v1, 0x3

    .line 242
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x10
    nop

    if-eqz v1, :cond_1a

    .line 243
    mul-int/lit8 v1, v0, 0x7

    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@4
    nop

    move-result v2

    add-int v0, v1, v2

    .line 246
    :cond_1a
    return v0
.end method

.method readParams([[B)V
    .registers 5
    .param p1, "params"    # [[B

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 173
    aget-object v0, p1, v1

    if-nez v0, :cond_f

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "modulus == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_f
    aget-object v0, p1, v2

    if-nez v0, :cond_1c

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "privateExponent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1c
    new-instance v0, Ljava/math/BigInteger;

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0xc
    nop

    .line 182
    aget-object v0, p1, v2

    if-eqz v0, :cond_32

    .line 183
    new-instance v0, Ljava/math/BigInteger;

    aget-object v1, p1, v2

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x10
    nop

    .line 185
    :cond_32
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "OpenSSLRSAPrivateKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "sb":Ljava/lang/StringBuilder;
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    .line 254
    const-string/jumbo v1, "modulus="

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    .line 255
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0xc
    nop

    const/16 v2, 0x10

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@56
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    .line 257
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@7
    nop

    move-result-object v1

    return-object v1
.end method
