.class public abstract Ljava/nio/charset/CharsetEncoder;
.super Ljava/lang/Object;
.source "CharsetEncoder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_CODING:I = 0x1

.field private static final ST_END:I = 0x2

.field private static final ST_FLUSHED:I = 0x3

.field private static final ST_RESET:I

.field private static stateNames:[Ljava/lang/String;


# instance fields
.field private final averageBytesPerChar:F

.field private cachedDecoder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final charset:Ljava/nio/charset/Charset;

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final maxBytesPerChar:F

.field private replacement:[B

.field private state:I

.field private unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-class v0, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/charset/CharsetEncoder;->-assertionsDisabled:Z

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
    sput-object v0, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

    .line 138
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .registers 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F

    .prologue
    .line 253
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x3f

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 251
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    .line 254
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF[B)V
    .registers 11
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B

    .prologue
    .line 193
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[BZ)V

    .line 194
    return-void
.end method

.method constructor <init>(Ljava/nio/charset/Charset;FF[BZ)V
    .registers 8
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B
    .param p5, "trusted"    # Z

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 145
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 148
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 147
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    .line 203
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    .line 204
    cmpg-float v0, p2, v1

    if-gtz v0, :cond_21

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive averageBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_21
    cmpg-float v0, p3, v1

    if-gtz v0, :cond_2e

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive maxBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_2e
    const-string/jumbo v0, "1.4"

    invoke-static {v0}, Ljava/nio/charset/Charset;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 211
    cmpl-float v0, p2, p3

    if-lez v0, :cond_44

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "averageBytesPerChar exceeds maxBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_44
    iput-object p4, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    .line 217
    iput p2, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    .line 218
    iput p3, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    .line 220
    if-nez p5, :cond_4f

    .line 222
    invoke-virtual {p0, p4}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    .line 226
    :cond_4f
    return-void
.end method

.method private canEncode(Ljava/nio/CharBuffer;)Z
    .registers 10
    .param p1, "cb"    # Ljava/nio/CharBuffer;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 916
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_9

    .line 917
    return v7

    .line 920
    :cond_9
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_35

    .line 921
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 924
    :cond_11
    :goto_11
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    .line 925
    .local v1, "ma":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v2

    .line 927
    .local v2, "ua":Ljava/nio/charset/CodingErrorAction;
    :try_start_19
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 928
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 931
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 932
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_2a
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_19 .. :try_end_2a} :catch_3f
    .catchall {:try_start_19 .. :try_end_2a} :catchall_4a

    move-result v4

    .line 936
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 937
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 938
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 932
    return v4

    .line 922
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "ma":Ljava/nio/charset/CodingErrorAction;
    .end local v2    # "ua":Ljava/nio/charset/CodingErrorAction;
    :cond_35
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    if-eqz v4, :cond_11

    .line 923
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    invoke-direct {p0, v4, v7}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    goto :goto_11

    .line 933
    .restart local v1    # "ma":Ljava/nio/charset/CodingErrorAction;
    .restart local v2    # "ua":Ljava/nio/charset/CodingErrorAction;
    :catch_3f
    move-exception v3

    .line 936
    .local v3, "x":Ljava/nio/charset/CharacterCodingException;
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 937
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 938
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 940
    return v6

    .line 935
    .end local v3    # "x":Ljava/nio/charset/CharacterCodingException;
    :catchall_4a
    move-exception v4

    .line 936
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 937
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 938
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 935
    throw v4
.end method

.method private throwIllegalStateException(II)V
    .registers 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1014
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1015
    const-string/jumbo v2, ", new state = "

    .line 1014
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1015
    sget-object v2, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p2

    .line 1014
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final averageBytesPerChar()F
    .registers 2

    .prologue
    .line 467
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    return v0
.end method

.method public canEncode(C)Z
    .registers 4
    .param p1, "c"    # C

    .prologue
    .line 970
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 971
    .local v0, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 972
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 973
    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/nio/CharBuffer;)Z

    move-result v1

    return v1
.end method

.method public canEncode(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 1003
    instance-of v1, p1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_f

    .line 1004
    check-cast p1, Ljava/nio/CharBuffer;

    .end local p1    # "cs":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 1007
    .local v0, "cb":Ljava/nio/CharBuffer;
    :goto_a
    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/nio/CharBuffer;)Z

    move-result v1

    return v1

    .line 1006
    .end local v0    # "cb":Ljava/nio/CharBuffer;
    .restart local p1    # "cs":Ljava/lang/CharSequence;
    :cond_f
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .restart local v0    # "cb":Ljava/nio/CharBuffer;
    goto :goto_a
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .registers 8
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 808
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 809
    .local v1, "n":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 811
    .local v3, "out":Ljava/nio/ByteBuffer;
    if-nez v1, :cond_18

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    if-nez v4, :cond_18

    .line 812
    return-object v3

    .line 813
    :cond_18
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 815
    :goto_1b
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 816
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 817
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    :goto_26
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 818
    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 820
    :cond_30
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 832
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 833
    return-object v3

    .line 816
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_3a
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_26

    .line 822
    :cond_3d
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 823
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v1, v4, 0x1

    .line 824
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 825
    .local v2, "o":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 826
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 827
    move-object v3, v2

    .line 828
    goto :goto_1b

    .line 830
    .end local v2    # "o":Ljava/nio/ByteBuffer;
    :cond_53
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_1b
.end method

.method public final encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
    .registers 13
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .param p2, "out"    # Ljava/nio/ByteBuffer;
    .param p3, "endOfInput"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 583
    if-eqz p3, :cond_2a

    const/4 v2, 0x2

    .line 584
    .local v2, "newState":I
    :goto_5
    iget v7, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    if-eqz v7, :cond_1d

    iget v7, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    if-eq v7, v5, :cond_1d

    .line 585
    if-eqz p3, :cond_2c

    iget v7, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2c

    :goto_14
    xor-int/lit8 v5, v5, 0x1

    .line 584
    if-eqz v5, :cond_1d

    .line 586
    iget v5, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    invoke-direct {p0, v5, v2}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    .line 587
    :cond_1d
    iput v2, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    .line 593
    :cond_1f
    :goto_1f
    :try_start_1f
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetEncoder;->encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_22
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1f .. :try_end_22} :catch_35
    .catch Ljava/nio/BufferOverflowException; {:try_start_1f .. :try_end_22} :catch_2e

    move-result-object v1

    .line 600
    .local v1, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 601
    return-object v1

    .line 583
    .end local v1    # "cr":Ljava/nio/charset/CoderResult;
    .end local v2    # "newState":I
    :cond_2a
    const/4 v2, 0x1

    .restart local v2    # "newState":I
    goto :goto_5

    :cond_2c
    move v5, v6

    .line 585
    goto :goto_14

    .line 596
    :catch_2e
    move-exception v3

    .line 597
    .local v3, "x":Ljava/nio/BufferOverflowException;
    new-instance v5, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v5, v3}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 594
    .end local v3    # "x":Ljava/nio/BufferOverflowException;
    :catch_35
    move-exception v4

    .line 595
    .local v4, "x":Ljava/nio/BufferUnderflowException;
    new-instance v5, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v5, v4}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 603
    .end local v4    # "x":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "cr":Ljava/nio/charset/CoderResult;
    :cond_3c
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 604
    if-eqz p3, :cond_60

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_60

    .line 605
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 612
    :cond_52
    const/4 v0, 0x0

    .line 613
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 614
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 620
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_5b
    :goto_5b
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_78

    .line 621
    return-object v1

    .line 608
    :cond_60
    return-object v1

    .line 615
    .restart local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_61
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 616
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    goto :goto_5b

    .line 618
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    :cond_6a
    sget-boolean v5, Ljava/nio/charset/CharsetEncoder;->-assertionsDisabled:Z

    if-nez v5, :cond_5b

    new-instance v5, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 623
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_78
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_8d

    .line 624
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget-object v6, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    array-length v6, v6

    if-ge v5, v6, :cond_88

    .line 625
    sget-object v5, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v5

    .line 626
    :cond_88
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 629
    :cond_8d
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-eq v0, v5, :cond_95

    .line 630
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_a3

    .line 632
    :cond_95
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_1f

    .line 636
    :cond_a3
    sget-boolean v5, Ljava/nio/charset/CharsetEncoder;->-assertionsDisabled:Z

    if-nez v5, :cond_1f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method protected abstract encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public final flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 6
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x3

    .line 681
    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 682
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 683
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 684
    iput v3, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    .line 685
    :cond_12
    return-object v0

    .line 688
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_13
    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    if-eq v1, v3, :cond_1c

    .line 689
    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    invoke-direct {p0, v1, v3}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    .line 691
    :cond_1c
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v1
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 3
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 709
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 412
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 456
    return-void
.end method

.method protected implReplaceWith([B)V
    .registers 2
    .param p1, "newReplacement"    # [B

    .prologue
    .line 331
    return-void
.end method

.method protected implReset()V
    .registers 1

    .prologue
    .line 734
    return-void
.end method

.method public isLegalReplacement([B)Z
    .registers 9
    .param p1, "repl"    # [B

    .prologue
    .line 354
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    .line 355
    .local v4, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/nio/charset/CharsetDecoder;>;"
    const/4 v3, 0x0

    .line 356
    .local v3, "dec":Ljava/nio/charset/CharsetDecoder;
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dec":Ljava/nio/charset/CharsetDecoder;
    check-cast v3, Ljava/nio/charset/CharsetDecoder;

    .local v3, "dec":Ljava/nio/charset/CharsetDecoder;
    if-nez v3, :cond_45

    .line 357
    .end local v3    # "dec":Ljava/nio/charset/CharsetDecoder;
    :cond_d
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    .line 358
    .restart local v3    # "dec":Ljava/nio/charset/CharsetDecoder;
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v5}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 359
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v5}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 360
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    .line 364
    :goto_26
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 365
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-float v5, v5

    .line 366
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v6

    .line 365
    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 367
    .local v1, "cb":Ljava/nio/CharBuffer;
    const/4 v5, 0x1

    invoke-virtual {v3, v0, v1, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 368
    .local v2, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    return v5

    .line 362
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "cb":Ljava/nio/CharBuffer;
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_45
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    goto :goto_26
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final maxBytesPerChar()F
    .registers 2

    .prologue
    .line 479
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .registers 4
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 396
    if-nez p1, :cond_b

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_b
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 399
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    .line 400
    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .registers 4
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 440
    if-nez p1, :cond_b

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_b
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 443
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    .line 444
    return-object p0
.end method

.method public final replaceWith([B)Ljava/nio/charset/CharsetEncoder;
    .registers 5
    .param p1, "newReplacement"    # [B

    .prologue
    .line 301
    if-nez p1, :cond_b

    .line 302
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Null replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_b
    array-length v0, p1

    .line 304
    .local v0, "len":I
    if-nez v0, :cond_17

    .line 305
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_17
    int-to-float v1, v0

    iget v2, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_27

    .line 307
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Replacement too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_27
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result v1

    if-nez v1, :cond_36

    .line 313
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :cond_36
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    .line 316
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    .line 317
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->implReplaceWith([B)V

    .line 318
    return-object p0
.end method

.method public final replacement()[B
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    iget-object v1, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    .prologue
    .line 723
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->implReset()V

    .line 724
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    .line 725
    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
