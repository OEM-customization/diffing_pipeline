.class public Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;
.super Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 954
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    .line 955
    return-void
.end method


# virtual methods
.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 16
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 964
    if-nez p1, :cond_8

    .line 966
    return-void

    .line 969
    :cond_8
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 970
    .local v0, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 972
    .local v1, "version":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_22

    .line 974
    if-eqz v1, :cond_22

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    goto :goto_22

    .line 976
    :cond_1a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Wrong version of key store."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 980
    :cond_22
    :goto_22
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v2, v2, [B

    .line 982
    .local v2, "salt":[B
    array-length v3, v2

    const/16 v4, 0x14

    const-string v5, "Key store corrupted."

    if-ne v3, v4, :cond_8e

    .line 987
    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 989
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 991
    .local v9, "iterationCount":I
    if-ltz v9, :cond_88

    const/high16 v3, 0x10000

    if-gt v9, v3, :cond_88

    .line 997
    if-nez v1, :cond_42

    .line 999
    const-string v3, "OldPBEWithSHAAndTwofish-CBC"

    move-object v10, v3

    .local v3, "cipherAlg":Ljava/lang/String;
    goto :goto_45

    .line 1003
    .end local v3    # "cipherAlg":Ljava/lang/String;
    :cond_42
    const-string v3, "PBEWithSHAAndTwofish-CBC"

    move-object v10, v3

    .line 1006
    .local v10, "cipherAlg":Ljava/lang/String;
    :goto_45
    const/4 v5, 0x2

    move-object v3, p0

    move-object v4, v10

    move-object v6, p2

    move-object v7, v2

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 1007
    .local v3, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, v0, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 1009
    .local v4, "cIn":Ljavax/crypto/CipherInputStream;
    new-instance v5, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 1010
    .local v5, "dig":Lcom/android/org/bouncycastle/crypto/Digest;
    new-instance v6, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;

    invoke-direct {v6, v4, v5}, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 1012
    .local v6, "dgIn":Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;
    invoke-virtual {p0, v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->loadStore(Ljava/io/InputStream;)V

    .line 1015
    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v7, v7, [B

    .line 1016
    .local v7, "hash":[B
    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 1020
    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    new-array v8, v8, [B

    .line 1021
    .local v8, "oldHash":[B
    invoke-static {v4, v8}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 1023
    invoke-static {v7, v8}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v11

    if-eqz v11, :cond_7b

    .line 1028
    return-void

    .line 1025
    :cond_7b
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    .line 1026
    new-instance v11, Ljava/io/IOException;

    const-string v12, "KeyStore integrity check failed."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 993
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "cIn":Ljavax/crypto/CipherInputStream;
    .end local v5    # "dig":Lcom/android/org/bouncycastle/crypto/Digest;
    .end local v6    # "dgIn":Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;
    .end local v7    # "hash":[B
    .end local v8    # "oldHash":[B
    .end local v10    # "cipherAlg":Ljava/lang/String;
    :cond_88
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 984
    .end local v9    # "iterationCount":I
    :cond_8e
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 12
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1034
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1035
    .local v0, "dOut":Ljava/io/DataOutputStream;
    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 1036
    .local v1, "salt":[B
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    and-int/lit16 v2, v2, 0x3ff

    add-int/lit16 v8, v2, 0x400

    .line 1038
    .local v8, "iterationCount":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1040
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->version:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1041
    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1042
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1043
    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1045
    const-string v3, "PBEWithSHAAndTwofish-CBC"

    const/4 v4, 0x1

    move-object v2, p0

    move-object v5, p2

    move-object v6, v1

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 1047
    .local v2, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v3, v0, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 1048
    .local v3, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v4, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;

    new-instance v5, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 1050
    .local v4, "dgOut":Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;
    new-instance v5, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v5, v3, v4}, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->saveStore(Ljava/io/OutputStream;)V

    .line 1052
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->getDigest()[B

    move-result-object v5

    .line 1054
    .local v5, "dig":[B
    invoke-virtual {v3, v5}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 1056
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 1057
    return-void
.end method
