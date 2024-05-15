.class public abstract Ljava/nio/charset/CharsetDecoder;
.super Ljava/lang/Object;
.source "CharsetDecoder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_CODING:I = 0x1

.field private static final ST_END:I = 0x2

.field private static final ST_FLUSHED:I = 0x3

.field private static final ST_RESET:I

.field private static stateNames:[Ljava/lang/String;


# instance fields
.field private final averageCharsPerByte:F

.field private final charset:Ljava/nio/charset/Charset;

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final maxCharsPerByte:F

.field private replacement:Ljava/lang/String;

.field private state:I

.field private unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-class v0, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/charset/CharsetDecoder;->-assertionsDisabled:Z

    .line 160
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "RESET"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "CODING"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "CODING_END"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "FLUSHED"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 159
    sput-object v0, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    .line 138
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .registers 5
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "maxCharsPerByte"    # F

    .prologue
    .line 237
    const-string/jumbo v0, "\ufffd"

    .line 235
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FFLjava/lang/String;)V

    .line 238
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;FFLjava/lang/String;)V
    .registers 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "maxCharsPerByte"    # F
    .param p4, "replacement"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 145
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 148
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 147
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 192
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->charset:Ljava/nio/charset/Charset;

    .line 193
    cmpg-float v0, p2, v1

    if-gtz v0, :cond_1e

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive averageCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1e
    cmpg-float v0, p3, v1

    if-gtz v0, :cond_2b

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive maxCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2b
    const-string/jumbo v0, "1.4"

    invoke-static {v0}, Ljava/nio/charset/Charset;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 200
    cmpl-float v0, p2, p3

    if-lez v0, :cond_41

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "averageCharsPerByte exceeds maxCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_41
    iput-object p4, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    .line 206
    iput p2, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    .line 207
    iput p3, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    .line 210
    return-void
.end method

.method private throwIllegalStateException(II)V
    .registers 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 982
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 983
    const-string/jumbo v2, ", new state = "

    .line 982
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 983
    sget-object v2, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p2

    .line 982
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final averageCharsPerByte()F
    .registers 2

    .prologue
    .line 449
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    return v0
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .registers 8
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 790
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 791
    .local v1, "n":I
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 793
    .local v3, "out":Ljava/nio/CharBuffer;
    if-nez v1, :cond_18

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-nez v4, :cond_18

    .line 794
    return-object v3

    .line 795
    :cond_18
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 797
    :goto_1b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 798
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 799
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    :goto_26
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 800
    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 802
    :cond_30
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 814
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 815
    return-object v3

    .line 798
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_3a
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_26

    .line 804
    :cond_3d
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 805
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v1, v4, 0x1

    .line 806
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 807
    .local v2, "o":Ljava/nio/CharBuffer;
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 808
    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 809
    move-object v3, v2

    .line 810
    goto :goto_1b

    .line 812
    .end local v2    # "o":Ljava/nio/CharBuffer;
    :cond_53
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_1b
.end method

.method public final decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;
    .registers 13
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Ljava/nio/CharBuffer;
    .param p3, "endOfInput"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 565
    if-eqz p3, :cond_2a

    const/4 v2, 0x2

    .line 566
    .local v2, "newState":I
    :goto_5
    iget v7, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    if-eqz v7, :cond_1d

    iget v7, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    if-eq v7, v5, :cond_1d

    .line 567
    if-eqz p3, :cond_2c

    iget v7, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2c

    :goto_14
    xor-int/lit8 v5, v5, 0x1

    .line 566
    if-eqz v5, :cond_1d

    .line 568
    iget v5, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    invoke-direct {p0, v5, v2}, Ljava/nio/charset/CharsetDecoder;->throwIllegalStateException(II)V

    .line 569
    :cond_1d
    iput v2, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 575
    :cond_1f
    :goto_1f
    :try_start_1f
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetDecoder;->decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_22
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1f .. :try_end_22} :catch_35
    .catch Ljava/nio/BufferOverflowException; {:try_start_1f .. :try_end_22} :catch_2e

    move-result-object v1

    .line 582
    .local v1, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 583
    return-object v1

    .line 565
    .end local v1    # "cr":Ljava/nio/charset/CoderResult;
    .end local v2    # "newState":I
    :cond_2a
    const/4 v2, 0x1

    .restart local v2    # "newState":I
    goto :goto_5

    :cond_2c
    move v5, v6

    .line 567
    goto :goto_14

    .line 578
    :catch_2e
    move-exception v3

    .line 579
    .local v3, "x":Ljava/nio/BufferOverflowException;
    new-instance v5, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v5, v3}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 576
    .end local v3    # "x":Ljava/nio/BufferOverflowException;
    :catch_35
    move-exception v4

    .line 577
    .local v4, "x":Ljava/nio/BufferUnderflowException;
    new-instance v5, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v5, v4}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 585
    .end local v4    # "x":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "cr":Ljava/nio/charset/CoderResult;
    :cond_3c
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 586
    if-eqz p3, :cond_60

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_60

    .line 587
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 594
    :cond_52
    const/4 v0, 0x0

    .line 595
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 596
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 602
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_5b
    :goto_5b
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_78

    .line 603
    return-object v1

    .line 590
    :cond_60
    return-object v1

    .line 597
    .restart local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_61
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 598
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    goto :goto_5b

    .line 600
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    :cond_6a
    sget-boolean v5, Ljava/nio/charset/CharsetDecoder;->-assertionsDisabled:Z

    if-nez v5, :cond_5b

    new-instance v5, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 605
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_78
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_90

    .line 606
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    iget-object v6, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_8b

    .line 607
    sget-object v5, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v5

    .line 608
    :cond_8b
    iget-object v5, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    .line 611
    :cond_90
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-eq v0, v5, :cond_98

    .line 612
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_a6

    .line 614
    :cond_98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_1f

    .line 618
    :cond_a6
    sget-boolean v5, Ljava/nio/charset/CharsetDecoder;->-assertionsDisabled:Z

    if-nez v5, :cond_1f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method protected abstract decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public detectedCharset()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 889
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 6
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .prologue
    const/4 v3, 0x3

    .line 663
    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 664
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 665
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 666
    iput v3, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 667
    :cond_12
    return-object v0

    .line 670
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_13
    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    if-eq v1, v3, :cond_1c

    .line 671
    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    invoke-direct {p0, v1, v3}, Ljava/nio/charset/CharsetDecoder;->throwIllegalStateException(II)V

    .line 673
    :cond_1c
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v1
.end method

.method protected implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 3
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .prologue
    .line 691
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 394
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 438
    return-void
.end method

.method protected implReplaceWith(Ljava/lang/String;)V
    .registers 2
    .param p1, "newReplacement"    # Ljava/lang/String;

    .prologue
    .line 313
    return-void
.end method

.method protected implReset()V
    .registers 1

    .prologue
    .line 716
    return-void
.end method

.method public isAutoDetecting()Z
    .registers 2

    .prologue
    .line 831
    const/4 v0, 0x0

    return v0
.end method

.method public isCharsetDetected()Z
    .registers 2

    .prologue
    .line 861
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final maxCharsPerByte()F
    .registers 2

    .prologue
    .line 461
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .registers 4
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 378
    if-nez p1, :cond_b

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_b
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 381
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    .line 382
    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .registers 4
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 422
    if-nez p1, :cond_b

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_b
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 425
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    .line 426
    return-object p0
.end method

.method public final replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .registers 5
    .param p1, "newReplacement"    # Ljava/lang/String;

    .prologue
    .line 285
    if-nez p1, :cond_b

    .line 286
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Null replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 288
    .local v0, "len":I
    if-nez v0, :cond_1a

    .line 289
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_1a
    int-to-float v1, v0

    iget v2, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2a

    .line 291
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Replacement too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_2a
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    .line 299
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetDecoder;->implReplaceWith(Ljava/lang/String;)V

    .line 300
    return-object p0
.end method

.method public final replacement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetDecoder;
    .registers 2

    .prologue
    .line 705
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->implReset()V

    .line 706
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 707
    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
