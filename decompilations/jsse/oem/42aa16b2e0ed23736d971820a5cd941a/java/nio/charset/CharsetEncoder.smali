.class public abstract Ljava/nio/charset/CharsetEncoder;
.super Ljava/lang/Object;
.source "CharsetEncoder.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o ST_CODING:I = 0x1

.field private static final greylist-max-o ST_END:I = 0x2

.field private static final greylist-max-o ST_FLUSHED:I = 0x3

.field private static final greylist-max-o ST_RESET:I

.field private static greylist-max-o stateNames:[Ljava/lang/String;


# instance fields
.field private final greylist-max-o averageBytesPerChar:F

.field private greylist-max-o cachedDecoder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o charset:Ljava/nio/charset/Charset;

.field private greylist-max-o malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final greylist-max-o maxBytesPerChar:F

.field private greylist-max-o replacement:[B

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

    sput-object v0, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

    return-void
.end method

.method protected constructor whitelist core-platform-api test-api <init>(Ljava/nio/charset/Charset;FF)V
    .registers 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F

    .line 253
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    .line 256
    return-void
.end method

.method protected constructor whitelist core-platform-api test-api <init>(Ljava/nio/charset/Charset;FF[B)V
    .registers 11
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B

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

.method protected constructor greylist-max-o <init>(Ljava/nio/charset/Charset;FF[BZ)V
    .registers 8
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B
    .param p5, "trusted"    # Z

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 147
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    .line 206
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    .line 207
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-lez v1, :cond_45

    .line 210
    cmpg-float v0, p3, v0

    if-lez v0, :cond_3d

    .line 213
    const-string v0, "1.4"

    invoke-static {v0}, Ljava/nio/charset/Charset;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 214
    cmpl-float v0, p2, p3

    if-gtz v0, :cond_29

    goto :goto_31

    .line 215
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageBytesPerChar exceeds maxBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_31
    :goto_31
    iput-object p4, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    .line 220
    iput p2, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    .line 221
    iput p3, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    .line 224
    if-nez p5, :cond_3c

    .line 225
    invoke-virtual {p0, p4}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    .line 228
    :cond_3c
    return-void

    .line 211
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive maxBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive averageBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist canEncode(Ljava/nio/CharBuffer;)Z
    .registers 6
    .param p1, "cb"    # Ljava/nio/CharBuffer;

    .line 921
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    .line 922
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    goto :goto_f

    .line 923
    :cond_a
    if-eqz v0, :cond_f

    .line 924
    invoke-direct {p0, v0, v1}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    .line 928
    :cond_f
    :goto_f
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_16

    .line 929
    return v1

    .line 933
    :cond_16
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    .line 934
    .local v0, "ma":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v2

    .line 936
    .local v2, "ua":Ljava/nio/charset/CodingErrorAction;
    :try_start_1e
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 937
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 938
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2b
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1e .. :try_end_2b} :catch_41
    .catchall {:try_start_1e .. :try_end_2b} :catchall_36

    .line 942
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 943
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 944
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 945
    nop

    .line 946
    return v1

    .line 942
    :catchall_36
    move-exception v1

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 943
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 944
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 945
    throw v1

    .line 939
    :catch_41
    move-exception v1

    .line 940
    .local v1, "x":Ljava/nio/charset/CharacterCodingException;
    const/4 v3, 0x0

    .line 942
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 943
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 944
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 940
    return v3
.end method

.method private greylist-max-o throwIllegalStateException(II)V
    .registers 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 1022
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist core-platform-api test-api averageBytesPerChar()F
    .registers 2

    .line 473
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    return v0
.end method

.method public whitelist core-platform-api test-api canEncode(C)Z
    .registers 4
    .param p1, "c"    # C

    .line 976
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 977
    .local v0, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 978
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 979
    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/nio/CharBuffer;)Z

    move-result v1

    return v1
.end method

.method public whitelist core-platform-api test-api canEncode(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 1009
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_c

    .line 1010
    move-object v0, p1

    check-cast v0, Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    .local v0, "cb":Ljava/nio/CharBuffer;
    goto :goto_10

    .line 1014
    .end local v0    # "cb":Ljava/nio/CharBuffer;
    :cond_c
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 1015
    .restart local v0    # "cb":Ljava/nio/CharBuffer;
    :goto_10
    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/nio/CharBuffer;)Z

    move-result v1

    return v1
.end method

.method public final whitelist core-platform-api test-api charset()Ljava/nio/charset/Charset;
    .registers 2

    .line 264
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 814
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 815
    .local v0, "n":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 817
    .local v1, "out":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_18

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_18

    .line 818
    return-object v1

    .line 819
    :cond_18
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 821
    :goto_1b
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    .line 822
    invoke-virtual {p0, p1, v1, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_29

    :cond_27
    sget-object v2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 823
    .local v2, "cr":Ljava/nio/charset/CoderResult;
    :goto_29
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 824
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 826
    :cond_33
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 827
    nop

    .line 838
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 839
    return-object v1

    .line 828
    .restart local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_3e
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 829
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v0, v4, 0x1

    .line 830
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 831
    .local v3, "o":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 832
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 833
    move-object v1, v3

    .line 834
    goto :goto_1b

    .line 836
    .end local v3    # "o":Ljava/nio/ByteBuffer;
    :cond_54
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 837
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_1b
.end method

.method public final whitelist core-platform-api test-api encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
    .registers 10
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .param p2, "out"    # Ljava/nio/ByteBuffer;
    .param p3, "endOfInput"    # Z

    .line 589
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 590
    .local v2, "newState":I
    :goto_7
    iget v3, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    if-eqz v3, :cond_16

    if-eq v3, v1, :cond_16

    if-eqz p3, :cond_11

    if-eq v3, v0, :cond_16

    .line 592
    :cond_11
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    invoke-direct {p0, v0, v2}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    .line 593
    :cond_16
    iput v2, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    .line 599
    :goto_18
    :try_start_18
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetEncoder;->encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0
    :try_end_1c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_18 .. :try_end_1c} :catch_87
    .catch Ljava/nio/BufferOverflowException; {:try_start_18 .. :try_end_1c} :catch_80

    .line 604
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    nop

    .line 606
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 607
    return-object v0

    .line 609
    :cond_24
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 610
    if-eqz p3, :cond_3b

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 611
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_3c

    .line 614
    :cond_3b
    return-object v0

    .line 618
    :cond_3c
    :goto_3c
    const/4 v1, 0x0

    .line 619
    .local v1, "action":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 620
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    goto :goto_50

    .line 621
    :cond_46
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 622
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    goto :goto_50

    .line 624
    :cond_4f
    nop

    .line 626
    :goto_50
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v1, v3, :cond_55

    .line 627
    return-object v0

    .line 629
    :cond_55
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v1, v3, :cond_68

    .line 630
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    array-length v5, v4

    if-ge v3, v5, :cond_65

    .line 631
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v3

    .line 632
    :cond_65
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 635
    :cond_68
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-eq v1, v3, :cond_73

    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v1, v3, :cond_71

    goto :goto_73

    .line 642
    :cond_71
    nop

    .line 643
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    .end local v1    # "action":Ljava/nio/charset/CodingErrorAction;
    goto :goto_18

    .line 638
    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    .restart local v1    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_73
    :goto_73
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 639
    goto :goto_18

    .line 602
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    .end local v1    # "action":Ljava/nio/charset/CodingErrorAction;
    :catch_80
    move-exception v0

    .line 603
    .local v0, "x":Ljava/nio/BufferOverflowException;
    new-instance v1, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v1, v0}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 600
    .end local v0    # "x":Ljava/nio/BufferOverflowException;
    :catch_87
    move-exception v0

    .line 601
    .local v0, "x":Ljava/nio/BufferUnderflowException;
    new-instance v1, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v1, v0}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected abstract whitelist core-platform-api test-api encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public final whitelist core-platform-api test-api flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 5
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .line 687
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_13

    .line 688
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 689
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 690
    iput v1, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    .line 691
    :cond_12
    return-object v0

    .line 694
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_13
    if-eq v0, v1, :cond_18

    .line 695
    invoke-direct {p0, v0, v1}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    .line 697
    :cond_18
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected whitelist core-platform-api test-api implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 3
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .line 715
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected whitelist core-platform-api test-api implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 418
    return-void
.end method

.method protected whitelist core-platform-api test-api implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 462
    return-void
.end method

.method protected whitelist core-platform-api test-api implReplaceWith([B)V
    .registers 2
    .param p1, "newReplacement"    # [B

    .line 337
    return-void
.end method

.method protected whitelist core-platform-api test-api implReset()V
    .registers 1

    .line 740
    return-void
.end method

.method public whitelist core-platform-api test-api isLegalReplacement([B)Z
    .registers 9
    .param p1, "repl"    # [B

    .line 360
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    .line 361
    .local v0, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/nio/charset/CharsetDecoder;>;"
    const/4 v1, 0x0

    .line 362
    .local v1, "dec":Ljava/nio/charset/CharsetDecoder;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/CharsetDecoder;

    move-object v1, v2

    if-nez v2, :cond_f

    goto :goto_13

    .line 368
    :cond_f
    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    goto :goto_2c

    .line 363
    :cond_13
    :goto_13
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 364
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 365
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 366
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    .line 370
    :goto_2c
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 371
    .local v2, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    .line 372
    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 371
    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 373
    .local v3, "cb":Ljava/nio/CharBuffer;
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 374
    .local v5, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v6

    xor-int/2addr v4, v6

    return v4
.end method

.method public whitelist core-platform-api test-api malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .line 385
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api maxBytesPerChar()F
    .registers 2

    .line 485
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    return v0
.end method

.method public final whitelist core-platform-api test-api onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .registers 4
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 402
    if-eqz p1, :cond_8

    .line 404
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 405
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    .line 406
    return-object p0

    .line 403
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .registers 4
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 446
    if-eqz p1, :cond_8

    .line 448
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 449
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    .line 450
    return-object p0

    .line 447
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api replaceWith([B)Ljava/nio/charset/CharsetEncoder;
    .registers 5
    .param p1, "newReplacement"    # [B

    .line 308
    if-eqz p1, :cond_35

    .line 310
    array-length v0, p1

    .line 311
    .local v0, "len":I
    if-eqz v0, :cond_2d

    .line 313
    int-to-float v1, v0

    iget v2, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_25

    .line 319
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 321
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    .line 323
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->implReplaceWith([B)V

    .line 324
    return-object p0

    .line 320
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Replacement too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    .end local v0    # "len":I
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null replacement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api replacement()[B
    .registers 3

    .line 278
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api reset()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    .line 729
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->implReset()V

    .line 730
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    .line 731
    return-object p0
.end method

.method public whitelist core-platform-api test-api unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .line 427
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
