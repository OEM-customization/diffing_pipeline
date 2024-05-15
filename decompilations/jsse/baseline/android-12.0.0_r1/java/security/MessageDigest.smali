.class public abstract Ljava/security/MessageDigest;
.super Ljava/security/MessageDigestSpi;
.source "MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/MessageDigest$Delegate;
    }
.end annotation


# static fields
.field private static final greylist-max-o INITIAL:I = 0x0

.field private static final greylist-max-o IN_PROGRESS:I = 0x1


# instance fields
.field private greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o state:I


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 163
    iput-object p1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    .line 164
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/security/MessageDigest;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/security/MessageDigest;

    .line 133
    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$100(Ljava/security/MessageDigest;)Ljava/security/Provider;
    .registers 2
    .param p0, "x0"    # Ljava/security/MessageDigest;

    .line 133
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method static synthetic blacklist access$102(Ljava/security/MessageDigest;Ljava/security/Provider;)Ljava/security/Provider;
    .registers 2
    .param p0, "x0"    # Ljava/security/MessageDigest;
    .param p1, "x1"    # Ljava/security/Provider;

    .line 133
    iput-object p1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method static synthetic blacklist access$200(Ljava/security/MessageDigest;)I
    .registers 2
    .param p0, "x0"    # Ljava/security/MessageDigest;

    .line 133
    iget v0, p0, Ljava/security/MessageDigest;->state:I

    return v0
.end method

.method static synthetic blacklist access$202(Ljava/security/MessageDigest;I)I
    .registers 2
    .param p0, "x0"    # Ljava/security/MessageDigest;
    .param p1, "x1"    # I

    .line 133
    iput p1, p0, Ljava/security/MessageDigest;->state:I

    return p1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 197
    :try_start_0
    const-string v0, "MessageDigest"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, "objs":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/security/MessageDigest;

    if-eqz v2, :cond_15

    .line 200
    aget-object v1, v0, v1

    check-cast v1, Ljava/security/MessageDigest;

    .local v1, "md":Ljava/security/MessageDigest;
    goto :goto_1f

    .line 202
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_15
    new-instance v2, Ljava/security/MessageDigest$Delegate;

    aget-object v1, v0, v1

    check-cast v1, Ljava/security/MessageDigestSpi;

    invoke-direct {v2, v1, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    move-object v1, v2

    .line 204
    .restart local v1    # "md":Ljava/security/MessageDigest;
    :goto_1f
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/Provider;

    iput-object v2, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;
    :try_end_26
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_26} :catch_27

    .line 214
    return-object v1

    .line 216
    .end local v0    # "objs":[Ljava/lang/Object;
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_27
    move-exception v0

    .line 217
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 258
    if-eqz p1, :cond_35

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_35

    .line 261
    const-string v0, "MessageDigest"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {p0, v0, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 263
    .local v0, "objs":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/security/MessageDigest;

    const/4 v3, 0x1

    if-eqz v2, :cond_24

    .line 264
    aget-object v1, v0, v1

    check-cast v1, Ljava/security/MessageDigest;

    .line 265
    .local v1, "md":Ljava/security/MessageDigest;
    aget-object v2, v0, v3

    check-cast v2, Ljava/security/Provider;

    iput-object v2, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 266
    return-object v1

    .line 268
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_24
    new-instance v2, Ljava/security/MessageDigest$Delegate;

    aget-object v1, v0, v1

    check-cast v1, Ljava/security/MessageDigestSpi;

    invoke-direct {v2, v1, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    move-object v1, v2

    .line 270
    .local v1, "delegate":Ljava/security/MessageDigest;
    aget-object v2, v0, v3

    check-cast v2, Ljava/security/Provider;

    iput-object v2, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 271
    return-object v1

    .line 259
    .end local v0    # "objs":[Ljava/lang/Object;
    .end local v1    # "delegate":Ljava/security/MessageDigest;
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 308
    if-eqz p1, :cond_2f

    .line 311
    const-string v0, "MessageDigest"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {p0, v0, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v0

    .line 313
    .local v0, "objs":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/security/MessageDigest;

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    .line 314
    aget-object v1, v0, v1

    check-cast v1, Ljava/security/MessageDigest;

    .line 315
    .local v1, "md":Ljava/security/MessageDigest;
    aget-object v2, v0, v3

    check-cast v2, Ljava/security/Provider;

    iput-object v2, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 316
    return-object v1

    .line 318
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_1e
    new-instance v2, Ljava/security/MessageDigest$Delegate;

    aget-object v1, v0, v1

    check-cast v1, Ljava/security/MessageDigestSpi;

    invoke-direct {v2, v1, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    move-object v1, v2

    .line 320
    .local v1, "delegate":Ljava/security/MessageDigest;
    aget-object v2, v0, v3

    check-cast v2, Ljava/security/Provider;

    iput-object v2, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 321
    return-object v1

    .line 309
    .end local v0    # "objs":[Ljava/lang/Object;
    .end local v1    # "delegate":Ljava/security/MessageDigest;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api isEqual([B[B)Z
    .registers 8
    .param p0, "digesta"    # [B
    .param p1, "digestb"    # [B

    .line 485
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 486
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_22

    if-nez p1, :cond_a

    goto :goto_22

    .line 489
    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_f

    .line 490
    return v1

    .line 493
    :cond_f
    const/4 v2, 0x0

    .line 495
    .local v2, "result":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    array-length v4, p0

    if-ge v3, v4, :cond_1d

    .line 496
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 495
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 498
    .end local v3    # "i":I
    :cond_1d
    if-nez v2, :cond_20

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    return v0

    .line 487
    .end local v2    # "result":I
    :cond_22
    :goto_22
    return v1
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 556
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_9

    .line 557
    invoke-super {p0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 559
    :cond_9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public whitelist test-api digest([BII)I
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 422
    if-eqz p1, :cond_16

    .line 425
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_e

    .line 429
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineDigest([BII)I

    move-result v0

    .line 430
    .local v0, "numBytes":I
    const/4 v1, 0x0

    iput v1, p0, Ljava/security/MessageDigest;->state:I

    .line 431
    return v0

    .line 426
    .end local v0    # "numBytes":I
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output buffer too small for specified offset and length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No output buffer given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api digest()[B
    .registers 3

    .line 402
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineDigest()[B

    move-result-object v0

    .line 403
    .local v0, "result":[B
    const/4 v1, 0x0

    iput v1, p0, Ljava/security/MessageDigest;->state:I

    .line 404
    return-object v0
.end method

.method public whitelist test-api digest([B)[B
    .registers 3
    .param p1, "input"    # [B

    .line 447
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 448
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 521
    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getDigestLength()I
    .registers 5

    .line 534
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineGetDigestLength()I

    move-result v0

    .line 535
    .local v0, "digestLen":I
    if-nez v0, :cond_14

    .line 537
    :try_start_6
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    .line 538
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 539
    .local v2, "digest":[B
    array-length v3, v2
    :try_end_11
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_11} :catch_12

    return v3

    .line 540
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "digest":[B
    :catch_12
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    return v0

    .line 544
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_14
    return v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 331
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public whitelist test-api reset()V
    .registers 2

    .line 505
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineReset()V

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 507
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v1, " Message Digest from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget-object v1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget v1, p0, Ljava/security/MessageDigest;->state:I

    packed-switch v1, :pswitch_data_34

    goto :goto_2f

    .line 467
    :pswitch_23
    const-string v1, "<in progress>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 464
    :pswitch_29
    const-string v1, "<initialized>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    nop

    .line 471
    :goto_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_29
        :pswitch_23
    .end packed-switch
.end method

.method public whitelist test-api update(B)V
    .registers 3
    .param p1, "input"    # B

    .line 340
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(B)V

    .line 341
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 342
    return-void
.end method

.method public final whitelist test-api update(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 387
    if-eqz p1, :cond_9

    .line 390
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 391
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 392
    return-void

    .line 388
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api update([B)V
    .registers 4
    .param p1, "input"    # [B

    .line 372
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    .line 373
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 374
    return-void
.end method

.method public whitelist test-api update([BII)V
    .registers 6
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 356
    if-eqz p1, :cond_15

    .line 359
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_d

    .line 362
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    .line 363
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 364
    return-void

    .line 360
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No input buffer given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
