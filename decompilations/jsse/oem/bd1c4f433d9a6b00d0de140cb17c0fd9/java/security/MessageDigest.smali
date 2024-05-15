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
.field private static final INITIAL:I = 0x0

.field private static final IN_PROGRESS:I = 0x1


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;

.field private state:I


# direct methods
.method static synthetic -get0(Ljava/security/MessageDigest;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/security/MessageDigest;

    .prologue
    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Ljava/security/MessageDigest;)Ljava/security/Provider;
    .registers 2
    .param p0, "-this"    # Ljava/security/MessageDigest;

    .prologue
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method static synthetic -get2(Ljava/security/MessageDigest;)I
    .registers 2
    .param p0, "-this"    # Ljava/security/MessageDigest;

    .prologue
    iget v0, p0, Ljava/security/MessageDigest;->state:I

    return v0
.end method

.method static synthetic -set0(Ljava/security/MessageDigest;Ljava/security/Provider;)Ljava/security/Provider;
    .registers 2
    .param p0, "-this"    # Ljava/security/MessageDigest;
    .param p1, "-value"    # Ljava/security/Provider;

    .prologue
    iput-object p1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method static synthetic -set1(Ljava/security/MessageDigest;I)I
    .registers 2
    .param p0, "-this"    # Ljava/security/MessageDigest;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Ljava/security/MessageDigest;->state:I

    return p1
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 161
    iput-object p1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 195
    :try_start_0
    const-string/jumbo v4, "MessageDigest"

    .line 196
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    .line 195
    invoke-static {p0, v4, v3}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 197
    .local v2, "objs":[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    instance-of v3, v3, Ljava/security/MessageDigest;

    if-eqz v3, :cond_1e

    .line 198
    const/4 v3, 0x0

    aget-object v1, v2, v3

    check-cast v1, Ljava/security/MessageDigest;

    .line 202
    .local v1, "md":Ljava/security/MessageDigest;
    :goto_16
    const/4 v3, 0x1

    aget-object v3, v2, v3

    check-cast v3, Ljava/security/Provider;

    iput-object v3, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 212
    return-object v1

    .line 200
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_1e
    new-instance v1, Ljava/security/MessageDigest$Delegate;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/security/MessageDigestSpi;

    invoke-direct {v1, v3, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_28} :catch_29

    .restart local v1    # "md":Ljava/security/MessageDigest;
    goto :goto_16

    .line 214
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "objs":[Ljava/lang/Object;
    :catch_29
    move-exception v0

    .line 215
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 8
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 256
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_13

    .line 257
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "missing provider"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_13
    const-string/jumbo v3, "MessageDigest"

    invoke-static {p0, v3, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 259
    .local v2, "objs":[Ljava/lang/Object;
    aget-object v3, v2, v4

    instance-of v3, v3, Ljava/security/MessageDigest;

    if-eqz v3, :cond_2b

    .line 260
    aget-object v1, v2, v4

    check-cast v1, Ljava/security/MessageDigest;

    .line 261
    .local v1, "md":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    check-cast v3, Ljava/security/Provider;

    iput-object v3, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 262
    return-object v1

    .line 265
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_2b
    new-instance v0, Ljava/security/MessageDigest$Delegate;

    aget-object v3, v2, v4

    check-cast v3, Ljava/security/MessageDigestSpi;

    invoke-direct {v0, v3, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    .line 266
    .local v0, "delegate":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    check-cast v3, Ljava/security/Provider;

    iput-object v3, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 267
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    .registers 8
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 304
    if-nez p1, :cond_d

    .line 305
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "missing provider"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 306
    :cond_d
    const-string/jumbo v3, "MessageDigest"

    invoke-static {p0, v3, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v2

    .line 307
    .local v2, "objs":[Ljava/lang/Object;
    aget-object v3, v2, v4

    instance-of v3, v3, Ljava/security/MessageDigest;

    if-eqz v3, :cond_25

    .line 308
    aget-object v1, v2, v4

    check-cast v1, Ljava/security/MessageDigest;

    .line 309
    .local v1, "md":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    check-cast v3, Ljava/security/Provider;

    iput-object v3, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 310
    return-object v1

    .line 313
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_25
    new-instance v0, Ljava/security/MessageDigest$Delegate;

    aget-object v3, v2, v4

    check-cast v3, Ljava/security/MessageDigestSpi;

    invoke-direct {v0, v3, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    .line 314
    .local v0, "delegate":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    check-cast v3, Ljava/security/Provider;

    iput-object v3, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 315
    return-object v0
.end method

.method public static isEqual([B[B)Z
    .registers 8
    .param p0, "digesta"    # [B
    .param p1, "digestb"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 479
    if-ne p0, p1, :cond_5

    return v2

    .line 480
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 481
    :cond_9
    return v3

    .line 483
    :cond_a
    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_f

    .line 484
    return v3

    .line 487
    :cond_f
    const/4 v1, 0x0

    .line 489
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v4, p0

    if-ge v0, v4, :cond_1d

    .line 490
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    or-int/2addr v1, v4

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 492
    :cond_1d
    if-nez v1, :cond_20

    :goto_1f
    return v2

    :cond_20
    move v2, v3

    goto :goto_1f
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 550
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_9

    .line 551
    invoke-super {p0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 553
    :cond_9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public digest([BII)I
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 416
    if-nez p1, :cond_b

    .line 417
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No output buffer given"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :cond_b
    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v1, p3, :cond_18

    .line 420
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 421
    const-string/jumbo v2, "Output buffer too small for specified offset and length"

    .line 420
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_18
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineDigest([BII)I

    move-result v0

    .line 424
    .local v0, "numBytes":I
    const/4 v1, 0x0

    iput v1, p0, Ljava/security/MessageDigest;->state:I

    .line 425
    return v0
.end method

.method public digest()[B
    .registers 3

    .prologue
    .line 396
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineDigest()[B

    move-result-object v0

    .line 397
    .local v0, "result":[B
    const/4 v1, 0x0

    iput v1, p0, Ljava/security/MessageDigest;->state:I

    .line 398
    return-object v0
.end method

.method public digest([B)[B
    .registers 3
    .param p1, "input"    # [B

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 442
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getDigestLength()I
    .registers 6

    .prologue
    .line 528
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineGetDigestLength()I

    move-result v1

    .line 529
    .local v1, "digestLen":I
    if-nez v1, :cond_14

    .line 531
    :try_start_6
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/MessageDigest;

    .line 532
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 533
    .local v0, "digest":[B
    array-length v4, v0
    :try_end_11
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_11} :catch_12

    return v4

    .line 534
    .end local v0    # "digest":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_12
    move-exception v2

    .line 535
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    return v1

    .line 538
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_14
    return v1
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 499
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineReset()V

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 501
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string/jumbo v1, " Message Digest from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-object v1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget v1, p0, Ljava/security/MessageDigest;->state:I

    packed-switch v1, :pswitch_data_38

    .line 465
    :goto_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 458
    :pswitch_29
    const-string/jumbo v1, "<initialized>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 461
    :pswitch_30
    const-string/jumbo v1, "<in progress>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 456
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_29
        :pswitch_30
    .end packed-switch
.end method

.method public update(B)V
    .registers 3
    .param p1, "input"    # B

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(B)V

    .line 335
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 336
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 381
    if-nez p1, :cond_8

    .line 382
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 384
    :cond_8
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 385
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 386
    return-void
.end method

.method public update([B)V
    .registers 4
    .param p1, "input"    # [B

    .prologue
    .line 366
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    .line 367
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 368
    return-void
.end method

.method public update([BII)V
    .registers 6
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 350
    if-nez p1, :cond_b

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No input buffer given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_b
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_18

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_18
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    .line 357
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 358
    return-void
.end method
