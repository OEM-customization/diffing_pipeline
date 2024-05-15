.class public Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM$AES_128;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM$AES_256;
    }
.end annotation


# instance fields
.field private mustInitialize:Z

.field private previousIv:[B

.field private previousKey:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1263
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    .line 1264
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private arraysAreEqual([B[B)Z
    .registers 8
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1275
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_6

    .line 1276
    return v2

    .line 1279
    :cond_6
    const/4 v0, 0x0

    .line 1280
    .local v0, "diff":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v3, p1

    if-ge v1, v3, :cond_14

    .line 1281
    aget-byte v3, p1, v1

    aget-byte v4, p2, v1

    xor-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 1280
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1283
    :cond_14
    if-nez v0, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2
.end method

.method private checkInitialization()V
    .registers 3

    .prologue
    .line 1267
    #disallowed odex opcode
    #iget-boolean-quick v0, p0, field@0x40
    nop

    if-eqz v0, :cond_d

    .line 1268
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1269
    const-string/jumbo v1, "Cannot re-use same key and IV for multiple encryptions"

    .line 1268
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :cond_d
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .registers 4
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1335
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    if-eq p1, v0, :cond_d

    .line 1336
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v1, "Mode must be GCM"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :cond_d
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method doFinalInternal([BII)I
    .registers 6
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
    .line 1319
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->checkInitialization()V

    .line 1320
    invoke-super {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;->doFinalInternal([BII)I

    move-result v0

    .line 1321
    .local v0, "retVal":I
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@41
    nop

    move-result v1

    if-eqz v1, :cond_10

    .line 1322
    const/4 v1, 0x1

    #disallowed odex opcode
    #iput-boolean-quick v1, p0, field@0x40
    nop

    .line 1324
    :cond_10
    return v0
.end method

.method engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
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
    .line 1290
    invoke-super {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 1292
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@41
    nop

    move-result v0

    if-eqz v0, :cond_39

    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    if-eqz v0, :cond_39

    .line 1293
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x3c
    nop

    if-eqz v0, :cond_33

    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x38
    nop

    if-eqz v0, :cond_33

    .line 1294
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x3c
    nop

    invoke-direct {p0, v0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->arraysAreEqual([B[B)Z

    move-result v0

    .line 1293
    if-eqz v0, :cond_33

    .line 1295
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x38
    nop

    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0xc
    nop

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->arraysAreEqual([B[B)Z

    move-result v0

    .line 1293
    if-eqz v0, :cond_33

    .line 1296
    const/4 v0, 0x1

    #disallowed odex opcode
    #iput-boolean-quick v0, p0, field@0x40
    nop

    .line 1297
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 1298
    const-string/jumbo v1, "In GCM mode key and IV must not be re-used"

    .line 1297
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :cond_33
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x3c
    nop

    .line 1302
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x38
    nop

    .line 1304
    :cond_39
    const/4 v0, 0x0

    #disallowed odex opcode
    #iput-boolean-quick v0, p0, field@0x40
    nop

    .line 1305
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected engineUpdateAAD([BII)V
    .registers 4
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 1329
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->checkInitialization()V

    .line 1330
    invoke-super {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;->engineUpdateAAD([BII)V

    .line 1331
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method getEVP_AEAD(I)J
    .registers 5
    .param p1, "keyLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1342
    const/16 v0, 0x10

    if-ne p1, v0, :cond_9

    .line 1343
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_aead_aes_128_gcm()J

    move-result-wide v0

    return-wide v0

    .line 1344
    :cond_9
    const/16 v0, 0x20

    if-ne p1, v0, :cond_12

    .line 1345
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_aead_aes_256_gcm()J

    move-result-wide v0

    return-wide v0

    .line 1347
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected key length: "

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1, p1}, vtable@72
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@7
    nop

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateInternal([BII[BII)I
    .registers 8
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
    .line 1311
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->checkInitialization()V

    .line 1312
    invoke-super/range {p0 .. p6}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;->updateInternal([BII[BII)I

    move-result v0

    return v0
.end method
