.class public abstract Ljava/nio/charset/CharsetDecoder;
.super Ljava/lang/Object;
.source "CharsetDecoder.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o ST_CODING:I = 0x1

.field private static final greylist-max-o ST_END:I = 0x2

.field private static final greylist-max-o ST_FLUSHED:I = 0x3

.field private static final greylist-max-o ST_RESET:I

.field private static greylist-max-o stateNames:[Ljava/lang/String;


# instance fields
.field private final greylist-max-o averageCharsPerByte:F

.field private final greylist-max-o charset:Ljava/nio/charset/Charset;

.field private greylist-max-o malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final greylist-max-o maxCharsPerByte:F

.field private greylist-max-o replacement:Ljava/lang/String;

.field private greylist-max-o state:I

.field private greylist-max-o unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 138
    nop

    .line 159
    const-string v0, "RESET"

    const-string v1, "CODING"

    const-string v2, "CODING_END"

    const-string v3, "FLUSHED"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    return-void
.end method

.method protected constructor whitelist core-platform-api test-api <init>(Ljava/nio/charset/Charset;FF)V
    .registers 5
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "maxCharsPerByte"    # F

    .line 235
    const-string v0, "\ufffd"

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FFLjava/lang/String;)V

    .line 238
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/nio/charset/Charset;FFLjava/lang/String;)V
    .registers 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "maxCharsPerByte"    # F
    .param p4, "replacement"    # Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 147
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 192
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->charset:Ljava/nio/charset/Charset;

    .line 193
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-lez v1, :cond_3d

    .line 196
    cmpg-float v0, p3, v0

    if-lez v0, :cond_35

    .line 199
    const-string v0, "1.4"

    invoke-static {v0}, Ljava/nio/charset/Charset;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 200
    cmpl-float v0, p2, p3

    if-gtz v0, :cond_26

    goto :goto_2e

    .line 201
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageCharsPerByte exceeds maxCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_2e
    :goto_2e
    iput-object p4, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    .line 206
    iput p2, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    .line 207
    iput p3, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    .line 210
    return-void

    .line 197
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive maxCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive averageCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIllegalStateException(II)V
    .registers 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 994
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist core-platform-api test-api averageCharsPerByte()F
    .registers 2

    .line 455
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    return v0
.end method

.method public final whitelist core-platform-api test-api charset()Ljava/nio/charset/Charset;
    .registers 2

    .line 246
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .registers 7
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 796
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 797
    .local v0, "n":I
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 799
    .local v1, "out":Ljava/nio/CharBuffer;
    if-nez v0, :cond_18

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_18

    .line 800
    return-object v1

    .line 801
    :cond_18
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 803
    :goto_1b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    .line 804
    invoke-virtual {p0, p1, v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_29

    :cond_27
    sget-object v2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 805
    .local v2, "cr":Ljava/nio/charset/CoderResult;
    :goto_29
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 806
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 808
    :cond_33
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 809
    nop

    .line 820
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 821
    return-object v1

    .line 810
    .restart local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_3e
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 811
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v0, v4, 0x1

    .line 812
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 813
    .local v3, "o":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 814
    invoke-virtual {v3, v1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 815
    move-object v1, v3

    .line 816
    goto :goto_1b

    .line 818
    .end local v3    # "o":Ljava/nio/CharBuffer;
    :cond_54
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 819
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_1b
.end method

.method public final whitelist core-platform-api test-api decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;
    .registers 9
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Ljava/nio/CharBuffer;
    .param p3, "endOfInput"    # Z

    .line 571
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 572
    .local v2, "newState":I
    :goto_7
    iget v3, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    if-eqz v3, :cond_16

    if-eq v3, v1, :cond_16

    if-eqz p3, :cond_11

    if-eq v3, v0, :cond_16

    .line 574
    :cond_11
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    invoke-direct {p0, v0, v2}, Ljava/nio/charset/CharsetDecoder;->throwIllegalStateException(II)V

    .line 575
    :cond_16
    iput v2, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 581
    :goto_18
    :try_start_18
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetDecoder;->decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0
    :try_end_1c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_18 .. :try_end_1c} :catch_8c
    .catch Ljava/nio/BufferOverflowException; {:try_start_18 .. :try_end_1c} :catch_85

    .line 586
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    nop

    .line 588
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 589
    return-object v0

    .line 591
    :cond_24
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 592
    if-eqz p3, :cond_3b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 593
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_3c

    .line 596
    :cond_3b
    return-object v0

    .line 600
    :cond_3c
    :goto_3c
    const/4 v1, 0x0

    .line 601
    .local v1, "action":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 602
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    goto :goto_50

    .line 603
    :cond_46
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 604
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    goto :goto_50

    .line 606
    :cond_4f
    nop

    .line 608
    :goto_50
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v1, v3, :cond_55

    .line 609
    return-object v0

    .line 611
    :cond_55
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v1, v3, :cond_6d

    .line 612
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    iget-object v4, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_68

    .line 613
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v3

    .line 614
    :cond_68
    iget-object v3, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    .line 617
    :cond_6d
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-eq v1, v3, :cond_78

    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v1, v3, :cond_76

    goto :goto_78

    .line 624
    :cond_76
    nop

    .line 625
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    .end local v1    # "action":Ljava/nio/charset/CodingErrorAction;
    goto :goto_18

    .line 620
    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    .restart local v1    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_78
    :goto_78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 621
    goto :goto_18

    .line 584
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    .end local v1    # "action":Ljava/nio/charset/CodingErrorAction;
    :catch_85
    move-exception v0

    .line 585
    .local v0, "x":Ljava/nio/BufferOverflowException;
    new-instance v1, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v1, v0}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 582
    .end local v0    # "x":Ljava/nio/BufferOverflowException;
    :catch_8c
    move-exception v0

    .line 583
    .local v0, "x":Ljava/nio/BufferUnderflowException;
    new-instance v1, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v1, v0}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected abstract whitelist core-platform-api test-api decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public whitelist core-platform-api test-api detectedCharset()Ljava/nio/charset/Charset;
    .registers 2

    .line 895
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist core-platform-api test-api flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 5
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .line 669
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_13

    .line 670
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 671
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 672
    iput v1, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 673
    :cond_12
    return-object v0

    .line 676
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_13
    if-eq v0, v1, :cond_18

    .line 677
    invoke-direct {p0, v0, v1}, Ljava/nio/charset/CharsetDecoder;->throwIllegalStateException(II)V

    .line 679
    :cond_18
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected whitelist core-platform-api test-api implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 3
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .line 697
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected whitelist core-platform-api test-api implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 400
    return-void
.end method

.method protected whitelist core-platform-api test-api implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 444
    return-void
.end method

.method protected whitelist core-platform-api test-api implReplaceWith(Ljava/lang/String;)V
    .registers 2
    .param p1, "newReplacement"    # Ljava/lang/String;

    .line 319
    return-void
.end method

.method protected whitelist core-platform-api test-api implReset()V
    .registers 1

    .line 722
    return-void
.end method

.method public whitelist core-platform-api test-api isAutoDetecting()Z
    .registers 2

    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api isCharsetDetected()Z
    .registers 2

    .line 867
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .line 367
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api maxCharsPerByte()F
    .registers 2

    .line 467
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    return v0
.end method

.method public final whitelist core-platform-api test-api onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .registers 4
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 384
    if-eqz p1, :cond_8

    .line 386
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 387
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    .line 388
    return-object p0

    .line 385
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .registers 4
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 428
    if-eqz p1, :cond_8

    .line 430
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 431
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    .line 432
    return-object p0

    .line 429
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .registers 5
    .param p1, "newReplacement"    # Ljava/lang/String;

    .line 290
    if-eqz p1, :cond_25

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 293
    .local v0, "len":I
    if-eqz v0, :cond_1d

    .line 295
    int-to-float v1, v0

    iget v2, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_15

    .line 298
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    .line 305
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implReplaceWith(Ljava/lang/String;)V

    .line 306
    return-object p0

    .line 296
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Replacement too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    .end local v0    # "len":I
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null replacement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api replacement()Ljava/lang/String;
    .registers 2

    .line 257
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api reset()Ljava/nio/charset/CharsetDecoder;
    .registers 2

    .line 711
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->implReset()V

    .line 712
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 713
    return-object p0
.end method

.method public whitelist core-platform-api test-api unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .line 409
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
