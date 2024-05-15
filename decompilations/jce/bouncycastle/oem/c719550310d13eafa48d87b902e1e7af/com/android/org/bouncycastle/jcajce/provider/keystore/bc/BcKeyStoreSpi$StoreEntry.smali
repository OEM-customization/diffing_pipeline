.class Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
.super Ljava/lang/Object;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreEntry"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field certChain:[Ljava/security/cert/Certificate;

.field date:Ljava/util/Date;

.field obj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

.field type:I


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 16
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "password"    # [C
    .param p5, "certChain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 138
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 139
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 140
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 142
    const/16 v0, 0x14

    new-array v4, v0, [B

    .line 144
    .local v4, "salt":[B
    iget-object v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 145
    iget-object v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 147
    iget-object v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v5, v0, 0x400

    .line 150
    .local v5, "iterationCount":I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    .local v6, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 153
    .local v9, "dOut":Ljava/io/DataOutputStream;
    array-length v0, v4

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 154
    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 155
    invoke-virtual {v9, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 157
    const-string/jumbo v1, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 158
    .local v8, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v7, v9, v8}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 160
    .local v7, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    .end local v9    # "dOut":Ljava/io/DataOutputStream;
    invoke-direct {v9, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 162
    .restart local v9    # "dOut":Ljava/io/DataOutputStream;
    invoke-static {p1, p3, v9}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-wrap1(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 164
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 166
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 167
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/security/cert/Certificate;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 115
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 118
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "type"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 175
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 176
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 177
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 178
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 179
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "type"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "certChain"    # [Ljava/security/cert/Certificate;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 188
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 190
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 191
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 192
    iput-object p6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 193
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "obj"    # [B
    .param p4, "certChain"    # [Ljava/security/cert/Certificate;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 125
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 126
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 128
    iput-object p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 129
    return-void
.end method


# virtual methods
.method getAlias()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    return-object v0
.end method

.method getCertificateChain()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method getDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    return-object v0
.end method

.method getObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method getObject([C)Ljava/lang/Object;
    .registers 23
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 214
    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_14

    .line 216
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/security/Key;

    if-eqz v1, :cond_14

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-object v1

    .line 222
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_133

    .line 224
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 225
    .local v7, "bIn":Ljava/io/ByteArrayInputStream;
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 229
    .local v13, "dIn":Ljava/io/DataInputStream;
    :try_start_2b
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v5, v1, [B

    .line 231
    .local v5, "salt":[B
    invoke-virtual {v13, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 233
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 235
    .local v6, "iterationCount":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string/jumbo v2, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x2

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v12

    .line 237
    .local v12, "cipher":Ljavax/crypto/Cipher;
    new-instance v10, Ljavax/crypto/CipherInputStream;

    invoke-direct {v10, v13, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4b} :catch_129

    .line 241
    .local v10, "cIn":Ljavax/crypto/CipherInputStream;
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-wrap0(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_57} :catch_59

    move-result-object v1

    return-object v1

    .line 244
    :catch_59
    move-exception v19

    .line 245
    .local v19, "x":Ljava/lang/Exception;
    :try_start_5a
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_65} :catch_129

    .line 246
    .end local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    .local v8, "bIn":Ljava/io/ByteArrayInputStream;
    :try_start_65
    new-instance v14, Ljava/io/DataInputStream;

    invoke-direct {v14, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6a} :catch_13c

    .line 248
    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .local v14, "dIn":Ljava/io/DataInputStream;
    :try_start_6a
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v5, v1, [B

    .line 250
    invoke-virtual {v14, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 252
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string/jumbo v2, "BrokenPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x2

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v12

    .line 256
    new-instance v10, Ljavax/crypto/CipherInputStream;

    .end local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    invoke-direct {v10, v14, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_8a} :catch_13f

    .line 258
    .restart local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    const/16 v17, 0x0

    .line 262
    .local v17, "k":Ljava/security/Key;
    :try_start_8c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-wrap0(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_98} :catch_e0

    move-result-object v17

    .local v17, "k":Ljava/security/Key;
    move-object v13, v14

    .end local v14    # "dIn":Ljava/io/DataInputStream;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    move-object v7, v8

    .line 285
    .end local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    :goto_9b
    if-eqz v17, :cond_120

    .line 287
    :try_start_9d
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 288
    .local v9, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 290
    .local v15, "dOut":Ljava/io/DataOutputStream;
    array-length v1, v5

    invoke-virtual {v15, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 291
    invoke-virtual {v15, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 292
    invoke-virtual {v15, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string/jumbo v2, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x1

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v18

    .line 295
    .local v18, "out":Ljavax/crypto/Cipher;
    new-instance v11, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v11, v15, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 297
    .local v11, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    .end local v15    # "dOut":Ljava/io/DataOutputStream;
    invoke-direct {v15, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 299
    .restart local v15    # "dOut":Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    move-object/from16 v0, v17

    invoke-static {v1, v0, v15}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-wrap1(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 301
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 303
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_df} :catch_129

    .line 305
    return-object v17

    .line 265
    .end local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v9    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "cOut":Ljavax/crypto/CipherOutputStream;
    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .end local v15    # "dOut":Ljava/io/DataOutputStream;
    .end local v18    # "out":Ljavax/crypto/Cipher;
    .restart local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v14    # "dIn":Ljava/io/DataInputStream;
    .local v17, "k":Ljava/security/Key;
    :catch_e0
    move-exception v20

    .line 266
    .local v20, "y":Ljava/lang/Exception;
    :try_start_e1
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_ec} :catch_13f

    .line 267
    .end local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    :try_start_ec
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f1} :catch_143

    .line 269
    .end local v14    # "dIn":Ljava/io/DataInputStream;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    :try_start_f1
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v5, v1, [B

    .line 271
    invoke-virtual {v13, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 273
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string/jumbo v2, "OldPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x2

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v12

    .line 277
    new-instance v10, Ljavax/crypto/CipherInputStream;

    .end local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    invoke-direct {v10, v13, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 279
    .restart local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-wrap0(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v17

    .local v17, "k":Ljava/security/Key;
    goto/16 :goto_9b

    .line 309
    .end local v20    # "y":Ljava/lang/Exception;
    :cond_120
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v2, "no match"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_129} :catch_129

    .line 314
    .end local v5    # "salt":[B
    .end local v6    # "iterationCount":I
    .end local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    .end local v12    # "cipher":Ljavax/crypto/Cipher;
    .end local v17    # "k":Ljava/security/Key;
    .end local v19    # "x":Ljava/lang/Exception;
    :catch_129
    move-exception v16

    .line 315
    .local v16, "e":Ljava/lang/Exception;
    :goto_12a
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v2, "no match"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    .end local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_133
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "forget something!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    .restart local v5    # "salt":[B
    .restart local v6    # "iterationCount":I
    .restart local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    .restart local v12    # "cipher":Ljavax/crypto/Cipher;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    .restart local v19    # "x":Ljava/lang/Exception;
    :catch_13c
    move-exception v16

    .restart local v16    # "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_12a

    .end local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v14    # "dIn":Ljava/io/DataInputStream;
    :catch_13f
    move-exception v16

    .restart local v16    # "e":Ljava/lang/Exception;
    move-object v13, v14

    .end local v14    # "dIn":Ljava/io/DataInputStream;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_12a

    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    .restart local v14    # "dIn":Ljava/io/DataInputStream;
    .local v17, "k":Ljava/security/Key;
    .restart local v20    # "y":Ljava/lang/Exception;
    :catch_143
    move-exception v16

    .restart local v16    # "e":Ljava/lang/Exception;
    move-object v13, v14

    .end local v14    # "dIn":Ljava/io/DataInputStream;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    goto :goto_12a
.end method

.method getType()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    return v0
.end method
