.class public Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;
.source "GCMBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final MAX_INPUT_SIZE:J = 0xfffffffe0L


# instance fields
.field private H:[B

.field private J0:[B

.field private S:[B

.field private S_at:[B

.field private S_atPre:[B

.field private atBlock:[B

.field private atBlockPos:I

.field private atLength:J

.field private atLengthPre:J

.field private blocksRemaining:I

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private counter:[B

.field private exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private initialised:Z

.field private lastKey:[B

.field private macBlock:[B

.field private macSize:I

.field private multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private nonce:[B

.field private totalLength:J


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .param p1, "c"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .registers 5
    .param p1, "c"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "m"    # Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_14

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 71
    const-string/jumbo v1, "cipher required with a block size of 16."

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_14
    if-nez p2, :cond_1b

    .line 77
    new-instance p2, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;

    .end local p2    # "m":Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;
    invoke-direct {p2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;-><init>()V

    .line 80
    .restart local p2    # "m":Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;
    :cond_1b
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 81
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    .line 82
    return-void
.end method

.method private checkStatus()V
    .registers 3

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    if-nez v0, :cond_1a

    .line 628
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_11

    .line 630
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GCM cipher cannot be reused for encryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GCM cipher needs to be initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_1a
    return-void
.end method

.method private gCTRBlock([B[BI)V
    .registers 10
    .param p1, "block"    # [B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCounterBlock()[B

    move-result-object v0

    .line 563
    .local v0, "tmp":[B
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 564
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 566
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_1e

    .end local v0    # "tmp":[B
    :goto_13
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 568
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 569
    return-void

    .restart local v0    # "tmp":[B
    :cond_1e
    move-object v0, p1

    .line 566
    goto :goto_13
.end method

.method private gCTRPartial([BII[BI)V
    .registers 12
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    const/4 v3, 0x0

    .line 573
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCounterBlock()[B

    move-result-object v0

    .line 575
    .local v0, "tmp":[B
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    .line 576
    invoke-static {v0, v3, p4, p5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 578
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_1b

    .end local v0    # "tmp":[B
    :goto_11
    invoke-direct {p0, v1, v0, v3, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 580
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 581
    return-void

    .restart local v0    # "tmp":[B
    :cond_1b
    move-object v0, p1

    .line 578
    goto :goto_11
.end method

.method private gHASH([B[BI)V
    .registers 8
    .param p1, "Y"    # [B
    .param p2, "b"    # [B
    .param p3, "len"    # I

    .prologue
    .line 585
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_1
    if-ge v1, p3, :cond_11

    .line 587
    sub-int v2, p3, v1

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 588
    .local v0, "num":I
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 585
    add-int/lit8 v1, v1, 0x10

    goto :goto_1

    .line 590
    .end local v0    # "num":I
    :cond_11
    return-void
.end method

.method private gHASHBlock([B[B)V
    .registers 4
    .param p1, "Y"    # [B
    .param p2, "b"    # [B

    .prologue
    .line 594
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 595
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 596
    return-void
.end method

.method private gHASHPartial([B[BII)V
    .registers 6
    .param p1, "Y"    # [B
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .prologue
    .line 600
    invoke-static {p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    .line 601
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 602
    return-void
.end method

.method private getNextCounterBlock()[B
    .registers 10

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 606
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    if-nez v2, :cond_16

    .line 608
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Attempt to process too many blocks"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 610
    :cond_16
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    .line 612
    const/4 v0, 0x1

    .line 613
    .local v0, "c":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, 0x1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v8

    ushr-int/lit8 v0, v0, 0x8

    .line 614
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v7

    ushr-int/lit8 v0, v0, 0x8

    .line 615
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v6

    ushr-int/lit8 v0, v0, 0x8

    .line 616
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v5

    .line 618
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 620
    .local v1, "tmp":[B
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    invoke-interface {v2, v3, v4, v1, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 621
    return-object v1
.end method

.method private getTotalInputSizeAfterNewInput(I)J
    .registers 6
    .param p1, "newInputLen"    # I

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private initCipher()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 303
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_16

    .line 305
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 306
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 310
    :cond_16
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    if-lez v0, :cond_2b

    .line 312
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 313
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 316
    :cond_2b
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_38

    .line 318
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 320
    :cond_38
    return-void
.end method

.method private outputBlock([BI)V
    .registers 8
    .param p1, "output"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v4, 0x0

    .line 372
    array-length v0, p1

    add-int/lit8 v1, p2, 0x10

    if-ge v0, v1, :cond_f

    .line 374
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_f
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 378
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    .line 380
    :cond_1a
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gCTRBlock([B[BI)V

    .line 381
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_26

    .line 383
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 390
    :goto_25
    return-void

    .line 387
    :cond_26
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    const/16 v3, 0x10

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 388
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    goto :goto_25
.end method

.method private reset(Z)V
    .registers 8
    .param p1, "clearMac"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 520
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 524
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    .line 525
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    .line 526
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    .line 527
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    .line 528
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 529
    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 530
    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 531
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    .line 532
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    .line 533
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 534
    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 536
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v0, :cond_39

    .line 538
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 541
    :cond_39
    if-eqz p1, :cond_3d

    .line 543
    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 546
    :cond_3d
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_44

    .line 548
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    .line 557
    :cond_43
    :goto_43
    return-void

    .line 552
    :cond_44
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz v0, :cond_43

    .line 554
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    goto :goto_43
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 16
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 397
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_e

    .line 399
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    .line 402
    :cond_e
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 404
    .local v3, "extra":I
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_25

    .line 406
    array-length v0, p1

    add-int v1, p2, v3

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_43

    .line 408
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_25
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v3, v0, :cond_32

    .line 415
    new-instance v0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v1, "data too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_32
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v3, v0

    .line 419
    array-length v0, p1

    add-int v1, p2, v3

    if-ge v0, v1, :cond_43

    .line 421
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_43
    if-lez v3, :cond_4e

    .line 427
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gCTRPartial([BII[BI)V

    .line 430
    :cond_4e
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 432
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget-wide v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_ad

    .line 442
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    if-lez v0, :cond_6c

    .line 444
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/4 v4, 0x0

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 448
    :cond_6c
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_7b

    .line 450
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 454
    :cond_7b
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x8

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x7f

    add-long/2addr v0, v4

    const/4 v2, 0x7

    ushr-long v8, v0, v2

    .line 457
    .local v8, "c":J
    const/16 v0, 0x10

    new-array v6, v0, [B

    .line 458
    .local v6, "H_c":[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    if-nez v0, :cond_9c

    .line 460
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    .line 461
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->init([B)V

    .line 463
    :cond_9c
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    invoke-interface {v0, v8, v9, v6}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->exponentiateX(J[B)V

    .line 466
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {v0, v6}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    .line 469
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 473
    .end local v6    # "H_c":[B
    .end local v8    # "c":J
    :cond_ad
    const/16 v0, 0x10

    new-array v7, v0, [B

    .line 474
    .local v7, "X":[B
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v4, 0x8

    mul-long/2addr v0, v4

    const/4 v2, 0x0

    invoke-static {v0, v1, v7, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 475
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x8

    mul-long/2addr v0, v4

    const/16 v2, 0x8

    invoke-static {v0, v1, v7, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 477
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v0, v7}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 480
    const/16 v0, 0x10

    new-array v12, v0, [B

    .line 481
    .local v12, "tag":[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v12, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 482
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v12, v0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 484
    move v11, v3

    .line 487
    .local v11, "resultLen":I
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 488
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v12, v2, v0, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 490
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_102

    .line 493
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    const/4 v4, 0x0

    invoke-static {v0, v4, p1, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 494
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v11, v0

    .line 507
    :cond_fd
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    .line 509
    return v11

    .line 499
    :cond_102
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v10, v0, [B

    .line 500
    .local v10, "msgMac":[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    const/4 v2, 0x0

    invoke-static {v0, v3, v10, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 501
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v0, v10}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 503
    new-instance v0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v1, "mac check in GCM failed"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/GCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    if-nez v0, :cond_9

    .line 224
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v0, v0, [B

    return-object v0

    .line 226
    :cond_9
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .registers 4
    .param p1, "len"    # I

    .prologue
    .line 231
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int v0, p1, v1

    .line 233
    .local v0, "totalData":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_c

    .line 235
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v1, v0

    return v1

    .line 238
    :cond_c
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_12

    const/4 v1, 0x0

    :goto_11
    return v1

    :cond_12
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int v1, v0, v1

    goto :goto_11
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .registers 4
    .param p1, "len"    # I

    .prologue
    .line 251
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int v0, p1, v1

    .line 252
    .local v0, "totalData":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v1, :cond_11

    .line 254
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_e

    .line 256
    const/4 v1, 0x0

    return v1

    .line 258
    :cond_e
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    .line 260
    :cond_11
    rem-int/lit8 v1, v0, 0x10

    sub-int v1, v0, v1

    return v1
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 15
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    .line 102
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 103
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    .line 106
    const/4 v4, 0x0

    .line 108
    .local v4, "newNonce":[B
    instance-of v7, p2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v7, :cond_63

    move-object v5, p2

    .line 110
    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    .line 112
    .local v5, "param":Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v4

    .line 113
    .local v4, "newNonce":[B
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    .line 115
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v3

    .line 116
    .local v3, "macSizeBits":I
    const/16 v7, 0x20

    if-lt v3, v7, :cond_26

    const/16 v7, 0x80

    if-le v3, v7, :cond_40

    .line 118
    :cond_26
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid value for MAC size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 116
    :cond_40
    rem-int/lit8 v7, v3, 0x8

    if-nez v7, :cond_26

    .line 121
    div-int/lit8 v7, v3, 0x8

    iput v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 122
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    .line 138
    .end local v3    # "macSizeBits":I
    .end local v5    # "param":Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    .local v2, "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :goto_4c
    if-eqz p1, :cond_85

    const/16 v1, 0x10

    .line 139
    .local v1, "bufLength":I
    :goto_50
    new-array v7, v1, [B

    iput-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    .line 141
    if-eqz v4, :cond_5a

    array-length v7, v4

    const/4 v8, 0x1

    if-ge v7, v8, :cond_8a

    .line 143
    :cond_5a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "IV must be at least 1 byte"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 124
    .end local v1    # "bufLength":I
    .end local v2    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .local v4, "newNonce":[B
    :cond_63
    instance-of v7, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v7, :cond_7c

    move-object v6, p2

    .line 126
    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 128
    .local v6, "param":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v4

    .line 129
    .local v4, "newNonce":[B
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    .line 130
    const/16 v7, 0x10

    iput v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 131
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .restart local v2    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_4c

    .line 135
    .end local v2    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .end local v6    # "param":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    .local v4, "newNonce":[B
    :cond_7c
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "invalid parameters passed to GCM"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 138
    .restart local v2    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .local v4, "newNonce":[B
    :cond_85
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/lit8 v1, v7, 0x10

    .restart local v1    # "bufLength":I
    goto :goto_50

    .line 146
    :cond_8a
    if-eqz p1, :cond_bc

    .line 148
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz v7, :cond_bc

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    invoke-static {v7, v4}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 150
    if-nez v2, :cond_a3

    .line 152
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "cannot reuse nonce for GCM encryption"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 154
    :cond_a3
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->lastKey:[B

    if-eqz v7, :cond_bc

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->lastKey:[B

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 156
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "cannot reuse nonce for GCM encryption"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 161
    :cond_bc
    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    .line 162
    if-eqz v2, :cond_c6

    .line 164
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->lastKey:[B

    .line 171
    :cond_c6
    if-eqz v2, :cond_14c

    .line 173
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v8, 0x1

    invoke-interface {v7, v8, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 175
    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    .line 176
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v7, v8, v10, v9, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 179
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v7, v8}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    .line 180
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    .line 187
    :cond_e9
    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    .line 189
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v7, v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_159

    .line 191
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v10, v8, v11, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 192
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/4 v8, 0x1

    const/16 v9, 0xf

    aput-byte v8, v7, v9

    .line 202
    :goto_109
    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    .line 203
    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    .line 204
    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    .line 205
    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    .line 206
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 207
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 208
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 209
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    .line 210
    const/4 v7, -0x2

    iput v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    .line 211
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 212
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 214
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz v7, :cond_14b

    .line 216
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    array-length v8, v8

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9, v8}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    .line 218
    :cond_14b
    return-void

    .line 182
    :cond_14c
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    if-nez v7, :cond_e9

    .line 184
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Key must be specified in initial init"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 196
    :cond_159
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v9, v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASH([B[BI)V

    .line 197
    const/16 v7, 0x10

    new-array v0, v7, [B

    .line 198
    .local v0, "X":[B
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v7, v7

    int-to-long v8, v7

    const-wide/16 v10, 0x8

    mul-long/2addr v8, v10

    const/16 v7, 0x8

    invoke-static {v8, v9, v0, v7}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 199
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-direct {p0, v7, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    goto :goto_109
.end method

.method public processAADByte(B)V
    .registers 6
    .param p1, "in"    # B

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 267
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v0

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    .line 268
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "Input exceeded 68719476704 bytes"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1a
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    aput-byte p1, v0, v1

    .line 272
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3b

    .line 275
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 277
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 279
    :cond_3b
    return-void
.end method

.method public processAADBytes([BII)V
    .registers 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 284
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v2

    const-wide v4, 0xfffffffe0L

    cmp-long v1, v2, v4

    if-lez v1, :cond_16

    .line 285
    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v2, "Input exceeded 68719476704 bytes"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    if-ge v0, p3, :cond_41

    .line 290
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 291
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3e

    .line 294
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 295
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 296
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 288
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 299
    :cond_41
    return-void
.end method

.method public processByte(B[BI)I
    .registers 8
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 327
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v0

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    .line 328
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "Input exceeded 68719476704 bytes"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_1a
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    aput-byte p1, v0, v1

    .line 333
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v1, v1

    if-ne v0, v1, :cond_31

    .line 335
    invoke-direct {p0, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->outputBlock([BI)V

    .line 336
    const/16 v0, 0x10

    return v0

    .line 338
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public processBytes([BII[BI)I
    .registers 12
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 346
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v2

    const-wide v4, 0xfffffffe0L

    cmp-long v2, v2, v4

    if-lez v2, :cond_19

    .line 347
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v3, "Input exceeded 68719476704 bytes"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 351
    :cond_19
    array-length v2, p1

    add-int v3, p2, p3

    if-ge v2, v3, :cond_27

    .line 353
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v3, "Input buffer too short"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 355
    :cond_27
    const/4 v1, 0x0

    .line 357
    .local v1, "resultLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29
    if-ge v0, p3, :cond_4a

    .line 359
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    .line 360
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v3, v3

    if-ne v2, v3, :cond_47

    .line 362
    add-int v2, p5, v1

    invoke-direct {p0, p4, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->outputBlock([BI)V

    .line 363
    add-int/lit8 v1, v1, 0x10

    .line 357
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 367
    :cond_4a
    return v1
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 514
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    .line 515
    return-void
.end method
