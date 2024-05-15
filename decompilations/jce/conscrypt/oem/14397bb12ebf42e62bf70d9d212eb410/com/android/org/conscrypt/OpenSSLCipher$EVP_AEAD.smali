.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;
.super Lcom/android/org/conscrypt/OpenSSLCipher;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EVP_AEAD"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAG_SIZE_BITS:I = 0x80

.field private static lastGlobalMessageSize:I


# instance fields
.field private aad:[B

.field buf:[B

.field bufCount:I

.field evpAead:J

.field private tagLengthInBytes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 975
    const/16 v0, 0x20

    sput v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->lastGlobalMessageSize:I

    .line 965
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .registers 3
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .prologue
    .line 1003
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/OpenSSLCipher;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 1004
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private expand(I)V
    .registers 6
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 1008
    #disallowed odex opcode
    #iget-quick v1, p0, field@0x30
    nop

    add-int/2addr v1, p1

    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x24
    nop

    array-length v2, v2

    if-gt v1, v2, :cond_a

    .line 1009
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 1012
    :cond_a
    #disallowed odex opcode
    #iget-quick v1, p0, field@0x30
    nop

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 1013
    .local v0, "newbuf":[B
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x24
    nop

    #disallowed odex opcode
    #iget-quick v2, p0, field@0x30
    nop

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1014
    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x24
    nop

    .line 1015
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private reset()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1018
    #disallowed odex opcode
    #iput-object-quick v1, p0, field@0x20
    nop

    .line 1019
    sget v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->lastGlobalMessageSize:I

    .line 1020
    .local v0, "lastBufSize":I
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x24
    nop

    if-nez v1, :cond_11

    .line 1021
    new-array v1, v0, [B

    #disallowed odex opcode
    #iput-object-quick v1, p0, field@0x24
    nop

    .line 1028
    :cond_e
    :goto_e
    #disallowed odex opcode
    #iput-quick v3, p0, field@0x30
    nop

    .line 1029
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 1022
    :cond_11
    #disallowed odex opcode
    #iget-quick v1, p0, field@0x30
    nop

    if-lez v1, :cond_e

    #disallowed odex opcode
    #iget-quick v1, p0, field@0x30
    nop

    if-eq v1, v0, :cond_e

    .line 1023
    #disallowed odex opcode
    #iget-quick v1, p0, field@0x30
    nop

    sput v1, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->lastGlobalMessageSize:I

    .line 1024
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x24
    nop

    array-length v1, v1

    #disallowed odex opcode
    #iget-quick v2, p0, field@0x30
    nop

    if-eq v1, v2, :cond_e

    .line 1025
    #disallowed odex opcode
    #iget-quick v1, p0, field@0x30
    nop

    new-array v1, v1, [B

    #disallowed odex opcode
    #iput-object-quick v1, p0, field@0x24
    nop

    goto :goto_e
.end method

.method private throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 14
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1111
    :try_start_0
    const-string/jumbo v7, "javax.crypto.AEADBadTagException"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    .line 1112
    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 1111
    #disallowed odex opcode
    #invoke-virtual-quick {v7, v8}, vtable@22
    nop
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_28

    move-result-object v1

    .line 1117
    .local v1, "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    .line 1119
    .local v2, "badTagException":Ljavax/crypto/BadPaddingException;
    const/4 v7, 0x1

    :try_start_15
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v7}, vtable@59
    nop

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljavax/crypto/BadPaddingException;

    move-object v2, v0

    .line 1120
    .local v2, "badTagException":Ljavax/crypto/BadPaddingException;
    #disallowed odex opcode
    #invoke-virtual-quick {v2, p2}, vtable@18
    nop
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_25} :catch_3c
    .catch Ljava/lang/InstantiationException; {:try_start_15 .. :try_end_25} :catch_3e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_25} :catch_2a

    .line 1129
    .end local v2    # "badTagException":Ljavax/crypto/BadPaddingException;
    :goto_25
    if-eqz v2, :cond_3b

    .line 1130
    throw v2

    .line 1113
    .end local v1    # "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_28
    move-exception v6

    .line 1114
    .local v6, "ignored":Ljava/lang/Exception;
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 1125
    .end local v6    # "ignored":Ljava/lang/Exception;
    .restart local v1    # "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_2a
    move-exception v5

    .line 1126
    .local v5, "e2":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljavax/crypto/BadPaddingException;

    invoke-direct {v7}, Ljavax/crypto/BadPaddingException;-><init>()V

    .line 1127
    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@23
    nop

    move-result-object v8

    .line 1126
    #disallowed odex opcode
    #invoke-virtual-quick {v7, v8}, vtable@18
    nop

    move-result-object v7

    check-cast v7, Ljavax/crypto/BadPaddingException;

    throw v7

    .line 1132
    .end local v5    # "e2":Ljava/lang/reflect/InvocationTargetException;
    :cond_3b
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 1121
    :catch_3c
    move-exception v3

    .local v3, "e2":Ljava/lang/IllegalAccessException;
    goto :goto_25

    .line 1123
    .end local v3    # "e2":Ljava/lang/IllegalAccessException;
    :catch_3e
    move-exception v4

    .local v4, "e2":Ljava/lang/InstantiationException;
    goto :goto_25
.end method


# virtual methods
.method checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 4
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 1156
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-eq p1, v0, :cond_d

    .line 1157
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string/jumbo v1, "Must be NoPadding for AEAD ciphers"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    :cond_d
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method doFinalInternal([BII)I
    .registers 17
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .param p3, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1139
    :try_start_0
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@41
    nop

    move-result v0

    if-eqz v0, :cond_1f

    .line 1140
    #disallowed odex opcode
    #iget-wide-quick v0, p0, field@0x28
    nop

    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    .line 1141
    #disallowed odex opcode
    #iget-quick v3, p0, field@0x34
    nop

    #disallowed odex opcode
    #iget-object-quick v6, p0, field@0xc
    nop

    #disallowed odex opcode
    #iget-object-quick v7, p0, field@0x24
    nop

    #disallowed odex opcode
    #iget-quick v9, p0, field@0x30
    nop

    #disallowed odex opcode
    #iget-object-quick v10, p0, field@0x20
    nop

    const/4 v8, 0x0

    move-object v4, p1

    move v5, p2

    .line 1140
    invoke-static/range {v0 .. v10}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_CTX_seal(J[BI[BI[B[BII[B)I
    :try_end_1a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_1a} :catch_35

    move-result v11

    .line 1150
    .local v11, "bytesWritten":I
    :goto_1b
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->reset()V

    .line 1151
    return v11

    .line 1143
    .end local v11    # "bytesWritten":I
    :cond_1f
    :try_start_1f
    #disallowed odex opcode
    #iget-wide-quick v0, p0, field@0x28
    nop

    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    .line 1144
    #disallowed odex opcode
    #iget-quick v3, p0, field@0x34
    nop

    #disallowed odex opcode
    #iget-object-quick v6, p0, field@0xc
    nop

    #disallowed odex opcode
    #iget-object-quick v7, p0, field@0x24
    nop

    #disallowed odex opcode
    #iget-quick v9, p0, field@0x30
    nop

    #disallowed odex opcode
    #iget-object-quick v10, p0, field@0x20
    nop

    const/4 v8, 0x0

    move-object v4, p1

    move v5, p2

    .line 1143
    invoke-static/range {v0 .. v10}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_CTX_open(J[BI[BI[B[BII[B)I
    :try_end_33
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1f .. :try_end_33} :catch_35

    move-result v11

    .restart local v11    # "bytesWritten":I
    goto :goto_1b

    .line 1146
    .end local v11    # "bytesWritten":I
    :catch_35
    move-exception v12

    .line 1147
    .local v12, "e":Ljavax/crypto/BadPaddingException;
    #disallowed odex opcode
    #invoke-virtual-quick {v12}, vtable@15
    nop

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v12}, vtable@13
    nop

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1148
    throw v12
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1184
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0xc
    nop

    if-nez v3, :cond_6

    .line 1185
    return-object v5

    .line 1188
    :cond_6
    #disallowed odex opcode
    #iget-quick v3, p0, field@0x34
    nop

    mul-int/lit8 v3, v3, 0x8

    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0xc
    nop

    invoke-static {v3, v4}, Lcom/android/org/conscrypt/Platform;->toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    .line 1189
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    if-nez v2, :cond_17

    .line 1193
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v3

    return-object v3

    .line 1197
    :cond_17
    :try_start_17
    const-string/jumbo v3, "GCM"

    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 1198
    .local v1, "params":Ljava/security/AlgorithmParameters;
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@16
    nop
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_21} :catch_22
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_17 .. :try_end_21} :catch_22

    .line 1199
    return-object v1

    .line 1200
    .end local v1    # "params":Ljava/security/AlgorithmParameters;
    :catch_22
    move-exception v0

    .line 1202
    .local v0, "e":Ljava/security/GeneralSecurityException;
    return-object v5
.end method

.method engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 13
    .param p1, "encodedKey"    # [B
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 1037
    if-nez p2, :cond_25

    .line 1038
    const/4 v3, 0x0

    .line 1039
    .local v3, "iv":[B
    const/16 v5, 0x80

    .line 1055
    .end local v3    # "iv":[B
    .local v5, "tagLenBits":I
    :goto_5
    rem-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_46

    .line 1056
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    .line 1057
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Tag length must be a multiple of 8; was "

    #disallowed odex opcode
    #invoke-virtual-quick {v7, v8}, vtable@77
    nop

    move-result-object v7

    #disallowed odex opcode
    #iget-quick v8, p0, field@0x34
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v7, v8}, vtable@72
    nop

    move-result-object v7

    #disallowed odex opcode
    #invoke-virtual-quick {v7}, vtable@7
    nop

    move-result-object v7

    .line 1056
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1041
    .end local v5    # "tagLenBits":I
    :cond_25
    invoke-static {p2}, Lcom/android/org/conscrypt/Platform;->fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/conscrypt/GCMParameters;

    move-result-object v2

    .line 1042
    .local v2, "gcmParams":Lcom/android/org/conscrypt/GCMParameters;
    if-eqz v2, :cond_34

    .line 1043
    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@18
    nop

    move-result-object v3

    .line 1044
    .local v3, "iv":[B
    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@19
    nop

    move-result v5

    .restart local v5    # "tagLenBits":I
    goto :goto_5

    .line 1045
    .end local v3    # "iv":[B
    .end local v5    # "tagLenBits":I
    :cond_34
    instance-of v6, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v6, :cond_42

    move-object v4, p2

    .line 1046
    nop

    nop

    .line 1047
    .local v4, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    #disallowed odex opcode
    #invoke-virtual-quick {v4}, vtable@11
    nop

    move-result-object v3

    .line 1048
    .restart local v3    # "iv":[B
    const/16 v5, 0x80

    .restart local v5    # "tagLenBits":I
    goto :goto_5

    .line 1050
    .end local v3    # "iv":[B
    .end local v4    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "tagLenBits":I
    :cond_42
    const/4 v3, 0x0

    .line 1051
    .local v3, "iv":[B
    const/16 v5, 0x80

    .restart local v5    # "tagLenBits":I
    goto :goto_5

    .line 1060
    .end local v2    # "gcmParams":Lcom/android/org/conscrypt/GCMParameters;
    .end local v3    # "iv":[B
    :cond_46
    div-int/lit8 v6, v5, 0x8

    #disallowed odex opcode
    #iput-quick v6, p0, field@0x34
    nop

    .line 1062
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@41
    nop

    move-result v0

    .line 1064
    .local v0, "encrypting":Z
    array-length v6, p1

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v6}, vtable@45
    nop

    move-result-wide v6

    #disallowed odex opcode
    #iput-wide-quick v6, p0, field@0x28
    nop

    .line 1066
    #disallowed odex opcode
    #iget-wide-quick v6, p0, field@0x28
    nop

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_nonce_length(J)I

    move-result v1

    .line 1067
    .local v1, "expectedIvLength":I
    if-nez v3, :cond_95

    if-eqz v1, :cond_95

    .line 1068
    if-nez v0, :cond_84

    .line 1069
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IV must be specified in "

    #disallowed odex opcode
    #invoke-virtual-quick {v7, v8}, vtable@77
    nop

    move-result-object v7

    #disallowed odex opcode
    #iget-object-quick v8, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v7, v8}, vtable@76
    nop

    move-result-object v7

    .line 1070
    const-string/jumbo v8, " mode"

    .line 1069
    #disallowed odex opcode
    #invoke-virtual-quick {v7, v8}, vtable@77
    nop

    move-result-object v7

    #disallowed odex opcode
    #invoke-virtual-quick {v7}, vtable@7
    nop

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1073
    :cond_84
    new-array v3, v1, [B

    .line 1074
    .local v3, "iv":[B
    if-eqz p3, :cond_91

    .line 1075
    #disallowed odex opcode
    #invoke-virtual-quick {p3, v3}, vtable@28
    nop

    .line 1086
    .end local v3    # "iv":[B
    :cond_8b
    :goto_8b
    #disallowed odex opcode
    #iput-object-quick v3, p0, field@0xc
    nop

    .line 1087
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->reset()V

    .line 1088
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 1077
    .restart local v3    # "iv":[B
    :cond_91
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    goto :goto_8b

    .line 1079
    .end local v3    # "iv":[B
    :cond_95
    if-nez v1, :cond_bc

    if-eqz v3, :cond_bc

    .line 1080
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IV not used in "

    #disallowed odex opcode
    #invoke-virtual-quick {v7, v8}, vtable@77
    nop

    move-result-object v7

    #disallowed odex opcode
    #iget-object-quick v8, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v7, v8}, vtable@76
    nop

    move-result-object v7

    const-string/jumbo v8, " mode"

    #disallowed odex opcode
    #invoke-virtual-quick {v7, v8}, vtable@77
    nop

    move-result-object v7

    #disallowed odex opcode
    #invoke-virtual-quick {v7}, vtable@7
    nop

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1081
    :cond_bc
    if-eqz v3, :cond_8b

    array-length v6, v3

    if-eq v6, v1, :cond_8b

    .line 1082
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Expected IV length of "

    #disallowed odex opcode
    #invoke-virtual-quick {v7, v8}, vtable@77
    nop

    move-result-object v7

    #disallowed odex opcode
    #invoke-virtual-quick {v7, v1}, vtable@72
    nop

    move-result-object v7

    .line 1083
    const-string/jumbo v8, " but was "

    .line 1082
    #disallowed odex opcode
    #invoke-virtual-quick {v7, v8}, vtable@77
    nop

    move-result-object v7

    .line 1083
    array-length v8, v3

    .line 1082
    #disallowed odex opcode
    #invoke-virtual-quick {v7, v8}, vtable@72
    nop

    move-result-object v7

    #disallowed odex opcode
    #invoke-virtual-quick {v7}, vtable@7
    nop

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected engineUpdateAAD([BII)V
    .registers 9
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    const/4 v4, 0x0

    .line 1170
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x20
    nop

    if-nez v2, :cond_e

    .line 1171
    add-int v2, p2, p3

    invoke-static {p1, p2, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    #disallowed odex opcode
    #iput-object-quick v2, p0, field@0x20
    nop

    .line 1179
    :goto_d
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 1173
    :cond_e
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x20
    nop

    array-length v2, v2

    add-int v0, v2, p3

    .line 1174
    .local v0, "newSize":I
    new-array v1, v0, [B

    .line 1175
    .local v1, "newaad":[B
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x20
    nop

    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x20
    nop

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1176
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x20
    nop

    array-length v2, v2

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1177
    #disallowed odex opcode
    #iput-object-quick v1, p0, field@0x20
    nop

    goto :goto_d
.end method

.method abstract getEVP_AEAD(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method getOutputSizeForFinal(I)I
    .registers 6
    .param p1, "inputLen"    # I

    .prologue
    .line 1163
    #disallowed odex opcode
    #iget-quick v0, p0, field@0x30
    nop

    add-int v1, v0, p1

    .line 1164
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@41
    nop

    move-result v0

    if-eqz v0, :cond_12

    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x28
    nop

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_max_overhead(J)I

    move-result v0

    .line 1163
    :goto_10
    add-int/2addr v0, v1

    return v0

    .line 1164
    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method updateInternal([BII[BII)I
    .registers 10
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .param p6, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1093
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x24
    nop

    if-nez v0, :cond_e

    .line 1094
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1097
    :cond_e
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    .line 1098
    if-lez p3, :cond_23

    .line 1099
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->expand(I)V

    .line 1100
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x24
    nop

    #disallowed odex opcode
    #iget-quick v1, p0, field@0x30
    nop

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1101
    #disallowed odex opcode
    #iget-quick v0, p0, field@0x30
    nop

    add-int/2addr v0, p3

    #disallowed odex opcode
    #iput-quick v0, p0, field@0x30
    nop

    .line 1103
    :cond_23
    return v2
.end method
