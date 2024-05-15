.class abstract Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;
.super Lcom/android/org/conscrypt/OpenSSLSignature;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "RSAPSSPadding"
.end annotation


# static fields
.field private static final TRAILER_FIELD_BC_ID:I = 0x1


# instance fields
.field private final contentDigestAlgorithm:Ljava/lang/String;

.field private mgf1DigestAlgorithm:Ljava/lang/String;

.field private mgf1EvpMdRef:J

.field private saltSizeBytes:I


# direct methods
.method constructor <init>(JLjava/lang/String;I)V
    .registers 8
    .param p1, "contentDigestEvpMdRef"    # J
    .param p3, "contentDigestAlgorithm"    # Ljava/lang/String;
    .param p4, "saltSizeBytes"    # I

    .prologue
    .line 359
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;-><init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;Lcom/android/org/conscrypt/OpenSSLSignature;)V

    .line 360
    #disallowed odex opcode
    #iput-object-quick p3, p0, field@0x30
    nop

    .line 361
    #disallowed odex opcode
    #iput-object-quick p3, p0, field@0x34
    nop

    .line 362
    #disallowed odex opcode
    #iput-wide-quick p1, p0, field@0x38
    nop

    .line 363
    #disallowed odex opcode
    #iput-quick p4, p0, field@0x40
    nop

    .line 364
    return-void
.end method


# virtual methods
.method protected final configureEVP_PKEY_CTX(J)V
    .registers 6
    .param p1, "ctx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x6

    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_padding(JI)V

    .line 370
    #disallowed odex opcode
    #iget-wide-quick v0, p0, field@0x38
    nop

    invoke-static {p1, p2, v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_mgf1_md(JJ)V

    .line 371
    #disallowed odex opcode
    #iget-quick v0, p0, field@0x40
    nop

    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_pss_saltlen(JI)V

    .line 372
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 9

    .prologue
    .line 449
    :try_start_0
    const-string/jumbo v0, "PSS"

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v7

    .line 451
    .local v7, "result":Ljava/security/AlgorithmParameters;
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    .line 452
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x30
    nop

    .line 453
    const-string/jumbo v2, "MGF1"

    .line 454
    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x34
    nop

    invoke-direct {v3, v4}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 455
    #disallowed odex opcode
    #iget-quick v4, p0, field@0x40
    nop

    .line 456
    const/4 v5, 0x1

    .line 451
    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 450
    #disallowed odex opcode
    #invoke-virtual-quick {v7, v0}, vtable@16
    nop
    :try_end_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1e} :catch_1f
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 457
    return-object v7

    .line 458
    .end local v7    # "result":Ljava/security/AlgorithmParameters;
    :catch_1f
    move-exception v6

    .line 459
    .local v6, "e":Ljava/security/GeneralSecurityException;
    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Failed to create PSS AlgorithmParameters"

    invoke-direct {v0, v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected final engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 20
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 377
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/security/spec/PSSParameterSpec;

    if-nez v15, :cond_3c

    .line 378
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    .line 379
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unsupported parameter: "

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@76
    nop

    move-result-object v16

    const-string/jumbo v17, ". Only "

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    .line 380
    const-class v17, Ljava/security/spec/PSSParameterSpec;

    #disallowed odex opcode
    #invoke-virtual-quick/range {v17 .. v17}, vtable@50
    nop

    move-result-object v17

    .line 379
    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    .line 380
    const-string/jumbo v17, " supported"

    .line 379
    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v16}, vtable@7
    nop

    move-result-object v16

    .line 378
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_3c
    move-object/from16 v6, p1

    .line 382
    nop

    nop

    .line 384
    .local v6, "spec":Ljava/security/spec/PSSParameterSpec;
    #disallowed odex opcode
    #invoke-virtual-quick {v6}, vtable@11
    nop

    move-result-object v15

    .line 383
    invoke-static {v15}, Lcom/android/org/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 385
    .local v7, "specContentDigest":Ljava/lang/String;
    if-nez v7, :cond_68

    .line 386
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    .line 387
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unsupported content digest algorithm: "

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    #disallowed odex opcode
    #invoke-virtual-quick {v6}, vtable@11
    nop

    move-result-object v17

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v16}, vtable@7
    nop

    move-result-object v16

    .line 386
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 388
    :cond_68
    move-object/from16 v0, p0

    #disallowed odex opcode
    #iget-object-quick v15, v0, field@0x30
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v15, v7}, vtable@23
    nop

    move-result v15

    if-nez v15, :cond_7b

    .line 389
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    .line 390
    const-string/jumbo v16, "Changing content digest algorithm not supported"

    .line 389
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 393
    :cond_7b
    #disallowed odex opcode
    #invoke-virtual-quick {v6}, vtable@12
    nop

    move-result-object v12

    .line 394
    .local v12, "specMgfAlgorithm":Ljava/lang/String;
    const-string/jumbo v15, "MGF1"

    #disallowed odex opcode
    #invoke-virtual-quick {v15, v12}, vtable@23
    nop

    move-result v15

    if-nez v15, :cond_c4

    .line 395
    const-string/jumbo v15, "1.2.840.113549.1.1.8"

    #disallowed odex opcode
    #invoke-virtual-quick {v15, v12}, vtable@1
    nop

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    .line 394
    if-eqz v15, :cond_c4

    .line 396
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    .line 397
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unsupported MGF algorithm: "

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    move-object/from16 v0, v16

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v12}, vtable@77
    nop

    move-result-object v16

    const-string/jumbo v17, ". Only "

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    .line 398
    const-string/jumbo v17, "MGF1"

    .line 397
    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    .line 398
    const-string/jumbo v17, " supported"

    .line 397
    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v16}, vtable@7
    nop

    move-result-object v16

    .line 396
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 401
    :cond_c4
    #disallowed odex opcode
    #invoke-virtual-quick {v6}, vtable@13
    nop

    move-result-object v5

    .line 402
    .local v5, "mgfSpec":Ljava/security/spec/AlgorithmParameterSpec;
    instance-of v15, v5, Ljava/security/spec/MGF1ParameterSpec;

    if-nez v15, :cond_100

    .line 403
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    .line 404
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unsupported MGF parameters: "

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    move-object/from16 v0, v16

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v5}, vtable@76
    nop

    move-result-object v16

    const-string/jumbo v17, ". Only "

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    .line 405
    const-class v17, Ljava/security/spec/MGF1ParameterSpec;

    #disallowed odex opcode
    #invoke-virtual-quick/range {v17 .. v17}, vtable@50
    nop

    move-result-object v17

    .line 404
    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    .line 405
    const-string/jumbo v17, " supported"

    .line 404
    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v16}, vtable@7
    nop

    move-result-object v16

    .line 403
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 407
    :cond_100
    #disallowed odex opcode
    #invoke-virtual-quick {v6}, vtable@13
    nop

    move-result-object v9

    check-cast v9, Ljava/security/spec/MGF1ParameterSpec;

    .line 410
    .local v9, "specMgf1Spec":Ljava/security/spec/MGF1ParameterSpec;
    #disallowed odex opcode
    #invoke-virtual-quick {v9}, vtable@11
    nop

    move-result-object v15

    .line 409
    invoke-static {v15}, Lcom/android/org/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 411
    .local v8, "specMgf1Digest":Ljava/lang/String;
    if-nez v8, :cond_12e

    .line 412
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    .line 413
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unsupported MGF1 digest algorithm: "

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    #disallowed odex opcode
    #invoke-virtual-quick {v9}, vtable@11
    nop

    move-result-object v17

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v16}, vtable@7
    nop

    move-result-object v16

    .line 412
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 417
    :cond_12e
    :try_start_12e
    invoke-static {v8}, Lcom/android/org/conscrypt/EvpMdRef;->getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J
    :try_end_131
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12e .. :try_end_131} :catch_154

    move-result-wide v10

    .line 423
    .local v10, "specMgf1EvpMdRef":J
    #disallowed odex opcode
    #invoke-virtual-quick {v6}, vtable@14
    nop

    move-result v13

    .line 424
    .local v13, "specSaltSizeBytes":I
    if-gez v13, :cond_173

    .line 425
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    .line 426
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Salt length must be non-negative: "

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    move-object/from16 v0, v16

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v13}, vtable@72
    nop

    move-result-object v16

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v16}, vtable@7
    nop

    move-result-object v16

    .line 425
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 419
    .end local v10    # "specMgf1EvpMdRef":J
    .end local v13    # "specSaltSizeBytes":I
    :catch_154
    move-exception v4

    .line 420
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v15, Ljava/security/ProviderException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to obtain EVP_MD for "

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    move-object/from16 v0, v16

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v8}, vtable@77
    nop

    move-result-object v16

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v16}, vtable@7
    nop

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 429
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v10    # "specMgf1EvpMdRef":J
    .restart local v13    # "specSaltSizeBytes":I
    :cond_173
    #disallowed odex opcode
    #invoke-virtual-quick {v6}, vtable@15
    nop

    move-result v14

    .line 430
    .local v14, "specTrailer":I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_1aa

    .line 431
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    .line 432
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unsupported trailer field: "

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    move-object/from16 v0, v16

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v14}, vtable@72
    nop

    move-result-object v16

    const-string/jumbo v17, ". Only "

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    .line 433
    const/16 v17, 0x1

    .line 432
    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@72
    nop

    move-result-object v16

    .line 433
    const-string/jumbo v17, " supported"

    .line 432
    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v17}, vtable@77
    nop

    move-result-object v16

    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v16}, vtable@7
    nop

    move-result-object v16

    .line 431
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 436
    :cond_1aa
    move-object/from16 v0, p0

    #disallowed odex opcode
    #iput-object-quick v8, v0, field@0x34
    nop

    .line 437
    move-object/from16 v0, p0

    #disallowed odex opcode
    #iput-wide-quick v10, v0, field@0x38
    nop

    .line 438
    move-object/from16 v0, p0

    #disallowed odex opcode
    #iput-quick v13, v0, field@0x40
    nop

    .line 440
    #disallowed odex opcode
    #invoke-virtual-quick/range {p0 .. p0}, vtable@26
    nop

    move-result-wide v2

    .line 441
    .local v2, "ctx":J
    const-wide/16 v16, 0x0

    cmp-long v15, v2, v16

    if-eqz v15, :cond_1c5

    .line 442
    move-object/from16 v0, p0

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v2, v3}, vtable@25
    nop

    .line 444
    :cond_1c5
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
