.class final Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
.super Ljava/lang/Object;
.source "OpenSSLECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "EC"

.field private static final serialVersionUID:J = -0x380500de1e729812L


# instance fields
.field protected transient group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

.field protected transient key:Lcom/android/org/conscrypt/OpenSSLKey;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 3
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .param p2, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x8
    nop

    .line 48
    #disallowed odex opcode
    #iput-object-quick p2, p0, field@0xc
    nop

    .line 49
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 6
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    new-instance v1, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    .line 53
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@11
    nop

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v2

    .line 52
    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x8
    nop

    .line 54
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0xc
    nop

    .line 55
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Ljava/security/spec/ECPrivateKeySpec;)V
    .registers 8
    .param p1, "ecKeySpec"    # Ljava/security/spec/ECPrivateKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    :try_start_3
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@11
    nop

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v2

    #disallowed odex opcode
    #iput-object-quick v2, p0, field@0x8
    nop

    .line 60
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@12
    nop

    move-result-object v1

    .line 61
    .local v1, "privKey":Ljava/math/BigInteger;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@12
    nop

    move-result-object v3

    .line 62
    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@55
    nop

    move-result-object v4

    .line 61
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #disallowed odex opcode
    #iput-object-quick v2, p0, field@0xc
    nop
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_28

    .line 66
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 63
    .end local v1    # "privKey":Ljava/math/BigInteger;
    :catch_28
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static getInstance(Ljava/security/interfaces/ECPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 8
    .param p0, "ecPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    .line 140
    .local v1, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    .line 141
    invoke-static {p0, v1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/android/org/conscrypt/OpenSSLECGroupContext;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    return-object v3

    .line 144
    :cond_13
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    .line 145
    .local v2, "privKey":Ljava/math/BigInteger;
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLKey;

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@12
    nop

    move-result-object v4

    .line 146
    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@55
    nop

    move-result-object v5

    .line 145
    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    return-object v3

    .line 147
    .end local v1    # "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .end local v2    # "privKey":Ljava/math/BigInteger;
    :catch_2a
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getPrivateKey()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 178
    new-instance v0, Ljava/math/BigInteger;

    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@11
    nop

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get_private_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 230
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@20
    nop

    .line 232
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@34
    nop

    move-result-object v0

    check-cast v0, [B

    .line 234
    .local v0, "encoded":[B
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_private_key([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #disallowed odex opcode
    #iput-object-quick v1, p0, field@0xc
    nop

    .line 235
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    .line 236
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@11
    nop

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v4

    .line 235
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    #disallowed odex opcode
    #iput-object-quick v1, p0, field@0x8
    nop

    .line 237
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 6
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    instance-of v1, p0, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_33

    move-object v1, p0

    .line 87
    check-cast v1, Ljava/security/interfaces/ECKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 91
    .end local v0    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_c
    :goto_c
    if-nez v0, :cond_3f

    .line 92
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EC parameters not available. Private: "

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2, p0}, vtable@76
    nop

    move-result-object v2

    .line 93
    const-string/jumbo v3, ", public: "

    .line 92
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

    .line 88
    .restart local v0    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_33
    instance-of v1, p1, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_c

    move-object v1, p1

    .line 89
    check-cast v1, Ljava/security/interfaces/ECKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    goto :goto_c

    .line 95
    .end local v0    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_3f
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1
.end method

.method static wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 8
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "params"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 105
    if-nez p1, :cond_d

    .line 106
    instance-of v2, p0, Ljava/security/interfaces/ECKey;

    if-eqz v2, :cond_d

    move-object v2, p0

    .line 107
    check-cast v2, Ljava/security/interfaces/ECKey;

    invoke-interface {v2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    .line 110
    :cond_d
    if-nez p1, :cond_29

    .line 111
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EC parameters not available: "

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3, p0}, vtable@76
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_29
    :try_start_29
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :try_end_2c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_29 .. :try_end_2c} :catch_3c

    move-result-object v1

    .line 121
    .local v1, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 122
    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@12
    nop

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->getECPrivateKeyWrapper(Ljava/security/PrivateKey;Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    move-result-wide v4

    const/4 v3, 0x1

    .line 121
    invoke-direct {v2, v4, v5, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    return-object v2

    .line 117
    .end local v1    # "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :catch_3c
    move-exception v0

    .line 118
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid EC parameters: "

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3, p1}, vtable@76
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 5
    .param p0, "ecPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :try_end_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_7} :catch_d

    move-result-object v1

    .line 75
    .local v1, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    invoke-static {p0, v1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/android/org/conscrypt/OpenSSLECGroupContext;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    return-object v2

    .line 72
    .end local v1    # "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :catch_d
    move-exception v0

    .line 73
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "Unknown group parameters"

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/android/org/conscrypt/OpenSSLECGroupContext;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 6
    .param p0, "ecPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 128
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@12
    nop

    move-result-object v1

    .line 127
    invoke-static {p0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->getECPrivateKeyWrapper(Ljava/security/PrivateKey;Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    move-result-wide v2

    .line 128
    const/4 v1, 0x1

    .line 127
    invoke-direct {v0, v2, v3, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@18
    nop

    .line 241
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@12
    nop

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {p1, v0}, vtable@37
    nop

    .line 242
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 188
    if-ne p1, p0, :cond_5

    .line 189
    return v4

    .line 192
    :cond_5
    instance-of v6, p1, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    if-eqz v6, :cond_15

    move-object v0, p1

    .line 193
    nop

    nop

    .line 194
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0xc
    nop

    #disallowed odex opcode
    #iget-object-quick v5, v0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@1
    nop

    move-result v4

    return v4

    .line 197
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
    :cond_15
    instance-of v6, p1, Ljava/security/interfaces/ECPrivateKey;

    if-nez v6, :cond_1a

    .line 198
    return v5

    :cond_1a
    move-object v1, p1

    .line 201
    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 202
    .local v1, "other":Ljava/security/interfaces/ECPrivateKey;
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->getPrivateKey()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v7

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v7}, vtable@1
    nop

    move-result v6

    if-nez v6, :cond_2c

    .line 203
    return v5

    .line 206
    :cond_2c
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@15
    nop

    move-result-object v3

    .line 207
    .local v3, "spec":Ljava/security/spec/ECParameterSpec;
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 209
    .local v2, "otherSpec":Ljava/security/spec/ECParameterSpec;
    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@12
    nop

    move-result-object v6

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@12
    nop

    move-result-object v7

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v7}, vtable@1
    nop

    move-result v6

    if-eqz v6, :cond_6b

    .line 210
    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@14
    nop

    move-result-object v6

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@14
    nop

    move-result-object v7

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v7}, vtable@1
    nop

    move-result v6

    .line 209
    if-eqz v6, :cond_6b

    .line 211
    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@15
    nop

    move-result-object v6

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@15
    nop

    move-result-object v7

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v7}, vtable@1
    nop

    move-result v6

    .line 209
    if-eqz v6, :cond_6b

    .line 212
    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@11
    nop

    move-result v6

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@11
    nop

    move-result v7

    if-ne v6, v7, :cond_69

    .line 209
    :goto_68
    return v4

    :cond_69
    move v4, v5

    .line 212
    goto :goto_68

    :cond_6b
    move v4, v5

    .line 209
    goto :goto_68
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    const-string/jumbo v0, "EC"

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 164
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@11
    nop

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_marshal_private_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    const-string/jumbo v0, "PKCS#8"

    return-object v0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 2

    .prologue
    .line 183
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .prologue
    .line 169
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@11
    nop

    move-result-object v0

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->getPrivateKey()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 217
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@11
    nop

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_marshal_private_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "OpenSSLECPrivateKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "params={"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    .line 224
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@11
    nop

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_print_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    .line 225
    const-string/jumbo v1, "}}"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    .line 226
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@7
    nop

    move-result-object v1

    return-object v1
.end method