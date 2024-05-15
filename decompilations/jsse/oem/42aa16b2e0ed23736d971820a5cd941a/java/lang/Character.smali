.class public final Ljava/lang/Character;
.super Ljava/lang/Object;
.source "Character.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Character$CharacterCache;,
        Ljava/lang/Character$UnicodeScript;,
        Ljava/lang/Character$UnicodeBlock;,
        Ljava/lang/Character$Subset;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist core-platform-api test-api BYTES:I = 0x2

.field public static final whitelist core-platform-api test-api COMBINING_SPACING_MARK:B = 0x8t

.field public static final whitelist core-platform-api test-api CONNECTOR_PUNCTUATION:B = 0x17t

.field public static final whitelist core-platform-api test-api CONTROL:B = 0xft

.field public static final whitelist core-platform-api test-api CURRENCY_SYMBOL:B = 0x1at

.field public static final whitelist core-platform-api test-api DASH_PUNCTUATION:B = 0x14t

.field public static final whitelist core-platform-api test-api DECIMAL_DIGIT_NUMBER:B = 0x9t

.field private static final greylist-max-o DIRECTIONALITY:[B

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_ARABIC_NUMBER:B = 0x6t

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_BOUNDARY_NEUTRAL:B = 0x9t

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_COMMON_NUMBER_SEPARATOR:B = 0x7t

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_EUROPEAN_NUMBER:B = 0x3t

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR:B = 0x4t

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR:B = 0x5t

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_LEFT_TO_RIGHT:B = 0x0t

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING:B = 0xet

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE:B = 0xft

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_NONSPACING_MARK:B = 0x8t

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_OTHER_NEUTRALS:B = 0xdt

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_PARAGRAPH_SEPARATOR:B = 0xat

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_POP_DIRECTIONAL_FORMAT:B = 0x12t

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_RIGHT_TO_LEFT:B = 0x1t

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC:B = 0x2t

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING:B = 0x10t

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE:B = 0x11t

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_SEGMENT_SEPARATOR:B = 0xbt

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_UNDEFINED:B = -0x1t

.field public static final whitelist core-platform-api test-api DIRECTIONALITY_WHITESPACE:B = 0xct

.field public static final whitelist core-platform-api test-api ENCLOSING_MARK:B = 0x7t

.field public static final whitelist core-platform-api test-api END_PUNCTUATION:B = 0x16t

.field static final greylist-max-o ERROR:I = -0x1

.field public static final whitelist core-platform-api test-api FINAL_QUOTE_PUNCTUATION:B = 0x1et

.field public static final whitelist core-platform-api test-api FORMAT:B = 0x10t

.field public static final whitelist core-platform-api test-api INITIAL_QUOTE_PUNCTUATION:B = 0x1dt

.field public static final whitelist core-platform-api test-api LETTER_NUMBER:B = 0xat

.field public static final whitelist core-platform-api test-api LINE_SEPARATOR:B = 0xdt

.field public static final whitelist core-platform-api test-api LOWERCASE_LETTER:B = 0x2t

.field public static final whitelist core-platform-api test-api MATH_SYMBOL:B = 0x19t

.field public static final whitelist core-platform-api test-api MAX_CODE_POINT:I = 0x10ffff

.field public static final whitelist core-platform-api test-api MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final whitelist core-platform-api test-api MAX_LOW_SURROGATE:C = '\udfff'

.field public static final whitelist core-platform-api test-api MAX_RADIX:I = 0x24

.field public static final whitelist core-platform-api test-api MAX_SURROGATE:C = '\udfff'

.field public static final whitelist core-platform-api test-api MAX_VALUE:C = '\uffff'

.field public static final whitelist core-platform-api test-api MIN_CODE_POINT:I = 0x0

.field public static final whitelist core-platform-api test-api MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final whitelist core-platform-api test-api MIN_LOW_SURROGATE:C = '\udc00'

.field public static final whitelist core-platform-api test-api MIN_RADIX:I = 0x2

.field public static final whitelist core-platform-api test-api MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final whitelist core-platform-api test-api MIN_SURROGATE:C = '\ud800'

.field public static final whitelist core-platform-api test-api MIN_VALUE:C = '\u0000'

.field public static final whitelist core-platform-api test-api MODIFIER_LETTER:B = 0x4t

.field public static final whitelist core-platform-api test-api MODIFIER_SYMBOL:B = 0x1bt

.field public static final whitelist core-platform-api test-api NON_SPACING_MARK:B = 0x6t

.field public static final whitelist core-platform-api test-api OTHER_LETTER:B = 0x5t

.field public static final whitelist core-platform-api test-api OTHER_NUMBER:B = 0xbt

.field public static final whitelist core-platform-api test-api OTHER_PUNCTUATION:B = 0x18t

.field public static final whitelist core-platform-api test-api OTHER_SYMBOL:B = 0x1ct

.field public static final whitelist core-platform-api test-api PARAGRAPH_SEPARATOR:B = 0xet

.field public static final whitelist core-platform-api test-api PRIVATE_USE:B = 0x12t

.field public static final whitelist core-platform-api test-api SIZE:I = 0x10

.field public static final whitelist core-platform-api test-api SPACE_SEPARATOR:B = 0xct

.field public static final whitelist core-platform-api test-api START_PUNCTUATION:B = 0x15t

.field public static final whitelist core-platform-api test-api SURROGATE:B = 0x13t

.field public static final whitelist core-platform-api test-api TITLECASE_LETTER:B = 0x3t

.field public static final whitelist core-platform-api test-api TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api UNASSIGNED:B = 0x0t

.field public static final whitelist core-platform-api test-api UPPERCASE_LETTER:B = 0x1t

.field private static final whitelist serialVersionUID:J = 0x348b47d96b1a2678L


# instance fields
.field private final greylist-max-p value:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 177
    const-string v0, "char"

    invoke-static {v0}, Ljava/lang/Class;->getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 584
    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Ljava/lang/Character;->DIRECTIONALITY:[B

    return-void

    :array_12
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x2t
        0x10t
        0x11t
        0x12t
        0x8t
        0x9t
    .end array-data
.end method

.method public constructor whitelist core-platform-api test-api <init>(C)V
    .registers 2
    .param p1, "value"    # C

    .line 4572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4573
    iput-char p1, p0, Ljava/lang/Character;->value:C

    .line 4574
    return-void
.end method

.method public static whitelist core-platform-api test-api charCount(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .line 4853
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0
.end method

.method public static whitelist core-platform-api test-api codePointAt(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 4901
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 4902
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_21

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p1, v1, :cond_21

    .line 4903
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 4904
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4905
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 4908
    .end local v1    # "c2":C
    :cond_21
    return v0
.end method

.method public static whitelist core-platform-api test-api codePointAt([CI)I
    .registers 3
    .param p0, "a"    # [C
    .param p1, "index"    # I

    .line 4933
    array-length v0, p0

    invoke-static {p0, p1, v0}, Ljava/lang/Character;->codePointAtImpl([CII)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api codePointAt([CII)I
    .registers 4
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 4962
    if-ge p1, p2, :cond_c

    if-ltz p2, :cond_c

    array-length v0, p0

    if-gt p2, v0, :cond_c

    .line 4965
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointAtImpl([CII)I

    move-result v0

    return v0

    .line 4963
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static greylist-max-o codePointAtImpl([CII)I
    .registers 6
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 4970
    aget-char v0, p0, p1

    .line 4971
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_19

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_19

    .line 4972
    aget-char v1, p0, p1

    .line 4973
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4974
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 4977
    .end local v1    # "c2":C
    :cond_19
    return v0
.end method

.method public static whitelist core-platform-api test-api codePointBefore(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 5002
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 5003
    .local v0, "c2":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1f

    if-lez p1, :cond_1f

    .line 5004
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 5005
    .local v1, "c1":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5006
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 5009
    .end local v1    # "c1":C
    :cond_1f
    return v0
.end method

.method public static whitelist core-platform-api test-api codePointBefore([CI)I
    .registers 3
    .param p0, "a"    # [C
    .param p1, "index"    # I

    .line 5034
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Character;->codePointBeforeImpl([CII)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api codePointBefore([CII)I
    .registers 4
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "start"    # I

    .line 5065
    if-le p1, p2, :cond_c

    if-ltz p2, :cond_c

    array-length v0, p0

    if-ge p2, v0, :cond_c

    .line 5068
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointBeforeImpl([CII)I

    move-result v0

    return v0

    .line 5066
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static greylist-max-o codePointBeforeImpl([CII)I
    .registers 6
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "start"    # I

    .line 5073
    add-int/lit8 p1, p1, -0x1

    aget-char v0, p0, p1

    .line 5074
    .local v0, "c2":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-le p1, p2, :cond_1b

    .line 5075
    add-int/lit8 p1, p1, -0x1

    aget-char v1, p0, p1

    .line 5076
    .local v1, "c1":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5077
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 5080
    .end local v1    # "c1":C
    :cond_1b
    return v0
.end method

.method public static whitelist core-platform-api test-api codePointCount(Ljava/lang/CharSequence;II)I
    .registers 7
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 5241
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5242
    .local v0, "length":I
    if-ltz p1, :cond_2f

    if-gt p2, v0, :cond_2f

    if-gt p1, p2, :cond_2f

    .line 5245
    sub-int v1, p2, p1

    .line 5246
    .local v1, "n":I
    move v2, p1

    .local v2, "i":I
    :goto_d
    if-ge v2, p2, :cond_2e

    .line 5247
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-ge v3, p2, :cond_2c

    .line 5248
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 5249
    add-int/lit8 v1, v1, -0x1

    .line 5250
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_d

    .line 5246
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_2c
    move v2, v3

    goto :goto_d

    .line 5253
    .end local v3    # "i":I
    :cond_2e
    return v1

    .line 5243
    .end local v1    # "n":I
    :cond_2f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public static whitelist core-platform-api test-api codePointCount([CII)I
    .registers 4
    .param p0, "a"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 5276
    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_d

    if-ltz p1, :cond_d

    if-ltz p2, :cond_d

    .line 5279
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointCountImpl([CII)I

    move-result v0

    return v0

    .line 5277
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static greylist-max-o codePointCountImpl([CII)I
    .registers 7
    .param p0, "a"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 5283
    add-int v0, p1, p2

    .line 5284
    .local v0, "endIndex":I
    move v1, p2

    .line 5285
    .local v1, "n":I
    move v2, p1

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_21

    .line 5286
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-char v2, p0, v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-ge v3, v0, :cond_1f

    aget-char v2, p0, v3

    .line 5287
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5288
    add-int/lit8 v1, v1, -0x1

    .line 5289
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 5285
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1f
    move v2, v3

    goto :goto_4

    .line 5292
    .end local v3    # "i":I
    :cond_21
    return v1
.end method

.method public static whitelist core-platform-api test-api compare(CC)I
    .registers 3
    .param p0, "x"    # C
    .param p1, "y"    # C

    .line 7537
    sub-int v0, p0, p1

    return v0
.end method

.method public static whitelist core-platform-api test-api digit(CI)I
    .registers 3
    .param p0, "ch"    # C
    .param p1, "radix"    # I

    .line 6765
    invoke-static {p0, p1}, Ljava/lang/Character;->digit(II)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api digit(II)I
    .registers 5
    .param p0, "codePoint"    # I
    .param p1, "radix"    # I

    .line 6823
    const/4 v0, -0x1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_3b

    const/16 v1, 0x24

    if-le p1, v1, :cond_9

    goto :goto_3b

    .line 6826
    :cond_9
    const/16 v1, 0x80

    if-ge p0, v1, :cond_36

    .line 6828
    const/4 v1, -0x1

    .line 6829
    .local v1, "result":I
    const/16 v2, 0x30

    if-gt v2, p0, :cond_19

    const/16 v2, 0x39

    if-gt p0, v2, :cond_19

    .line 6830
    add-int/lit8 v1, p0, -0x30

    goto :goto_32

    .line 6831
    :cond_19
    const/16 v2, 0x61

    if-gt v2, p0, :cond_26

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_26

    .line 6832
    add-int/lit8 v2, p0, -0x61

    add-int/lit8 v1, v2, 0xa

    goto :goto_32

    .line 6833
    :cond_26
    const/16 v2, 0x41

    if-gt v2, p0, :cond_32

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_32

    .line 6834
    add-int/lit8 v2, p0, -0x41

    add-int/lit8 v1, v2, 0xa

    .line 6836
    :cond_32
    :goto_32
    if-ge v1, p1, :cond_35

    move v0, v1

    :cond_35
    return v0

    .line 6838
    .end local v1    # "result":I
    :cond_36
    invoke-static {p0, p1}, Ljava/lang/Character;->digitImpl(II)I

    move-result v0

    return v0

    .line 6824
    :cond_3b
    :goto_3b
    return v0
.end method

.method static native greylist-max-o digitImpl(II)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api forDigit(II)C
    .registers 4
    .param p0, "digit"    # I
    .param p1, "radix"    # I

    .line 7343
    const/4 v0, 0x0

    if-ge p0, p1, :cond_1b

    if-gez p0, :cond_6

    goto :goto_1b

    .line 7346
    :cond_6
    const/4 v1, 0x2

    if-lt p1, v1, :cond_1a

    const/16 v1, 0x24

    if-le p1, v1, :cond_e

    goto :goto_1a

    .line 7349
    :cond_e
    const/16 v0, 0xa

    if-ge p0, v0, :cond_16

    .line 7350
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    return v0

    .line 7352
    :cond_16
    add-int/lit8 v0, p0, 0x57

    int-to-char v0, v0

    return v0

    .line 7347
    :cond_1a
    :goto_1a
    return v0

    .line 7344
    :cond_1b
    :goto_1b
    return v0
.end method

.method public static whitelist core-platform-api test-api getDirectionality(C)B
    .registers 2
    .param p0, "ch"    # C

    .line 7393
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api getDirectionality(I)B
    .registers 5
    .param p0, "codePoint"    # I

    .line 7436
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 7437
    return v1

    .line 7440
    :cond_8
    invoke-static {p0}, Ljava/lang/Character;->getDirectionalityImpl(I)B

    move-result v0

    .line 7441
    .local v0, "directionality":B
    if-ltz v0, :cond_16

    sget-object v2, Ljava/lang/Character;->DIRECTIONALITY:[B

    array-length v3, v2

    if-ge v0, v3, :cond_16

    .line 7442
    aget-byte v1, v2, v0

    return v1

    .line 7444
    :cond_16
    return v1
.end method

.method static native greylist-max-o getDirectionalityImpl(I)B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api getName(I)Ljava/lang/String;
    .registers 7
    .param p0, "codePoint"    # I

    .line 7638
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 7643
    invoke-static {p0}, Ljava/lang/Character;->getNameImpl(I)Ljava/lang/String;

    move-result-object v0

    .line 7644
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 7645
    return-object v0

    .line 7646
    :cond_d
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v1

    if-nez v1, :cond_15

    .line 7647
    const/4 v1, 0x0

    return-object v1

    .line 7648
    :cond_15
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    .line 7649
    .local v1, "block":Ljava/lang/Character$UnicodeBlock;
    if-eqz v1, :cond_46

    .line 7650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Character$UnicodeBlock;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5f

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7651
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7650
    return-object v2

    .line 7653
    :cond_46
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 7639
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "block":Ljava/lang/Character$UnicodeBlock;
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static native greylist-max-o getNameImpl(I)Ljava/lang/String;
.end method

.method public static whitelist core-platform-api test-api getNumericValue(C)I
    .registers 2
    .param p0, "ch"    # C

    .line 6880
    invoke-static {p0}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api getNumericValue(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .line 6920
    const/16 v0, 0x80

    if-ge p0, v0, :cond_27

    .line 6921
    const/16 v0, 0x30

    if-lt p0, v0, :cond_f

    const/16 v0, 0x39

    if-gt p0, v0, :cond_f

    .line 6922
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 6924
    :cond_f
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1a

    .line 6925
    add-int/lit8 v0, p0, -0x57

    return v0

    .line 6927
    :cond_1a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_25

    .line 6928
    add-int/lit8 v0, p0, -0x37

    return v0

    .line 6930
    :cond_25
    const/4 v0, -0x1

    return v0

    .line 6933
    :cond_27
    const v0, 0xff21

    if-lt p0, v0, :cond_37

    const v0, 0xff3a

    if-gt p0, v0, :cond_37

    .line 6934
    const v0, 0xff17

    sub-int v0, p0, v0

    return v0

    .line 6937
    :cond_37
    const v0, 0xff41

    if-lt p0, v0, :cond_47

    const v0, 0xff5a

    if-gt p0, v0, :cond_47

    .line 6938
    const v0, 0xff37

    sub-int v0, p0, v0

    return v0

    .line 6940
    :cond_47
    invoke-static {p0}, Ljava/lang/Character;->getNumericValueImpl(I)I

    move-result v0

    return v0
.end method

.method static native greylist-max-o getNumericValueImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api getType(C)I
    .registers 2
    .param p0, "ch"    # C

    .line 7258
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api getType(I)I
    .registers 3
    .param p0, "codePoint"    # I

    .line 7306
    invoke-static {p0}, Ljava/lang/Character;->getTypeImpl(I)I

    move-result v0

    .line 7308
    .local v0, "type":I
    const/16 v1, 0x10

    if-gt v0, v1, :cond_9

    .line 7309
    return v0

    .line 7311
    :cond_9
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method static native greylist-max-o getTypeImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api hashCode(C)I
    .registers 1
    .param p0, "value"    # C

    .line 4641
    return p0
.end method

.method public static whitelist core-platform-api test-api highSurrogate(I)C
    .registers 3
    .param p0, "codePoint"    # I

    .line 5108
    ushr-int/lit8 v0, p0, 0xa

    const v1, 0xd7c0

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isAlphabetic(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 6063
    invoke-static {p0}, Ljava/lang/Character;->isAlphabeticImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isAlphabeticImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api isBmpCodePoint(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 4719
    ushr-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist core-platform-api test-api isDefined(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 5773
    invoke-static {p0}, Ljava/lang/Character;->isDefined(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isDefined(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 5803
    invoke-static {p0}, Ljava/lang/Character;->isDefinedImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isDefinedImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api isDigit(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 5700
    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isDigit(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 5740
    invoke-static {p0}, Ljava/lang/Character;->isDigitImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isDigitImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api isHighSurrogate(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 4764
    const v0, 0xd800

    if-lt p0, v0, :cond_c

    const v0, 0xdc00

    if-ge p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist core-platform-api test-api isISOControl(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 7189
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isISOControl(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 7210
    const/16 v0, 0x9f

    if-gt p0, v0, :cond_e

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_c

    ushr-int/lit8 v0, p0, 0x5

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist core-platform-api test-api isIdentifierIgnorable(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 6444
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorable(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isIdentifierIgnorable(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 6480
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorableImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isIdentifierIgnorableImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api isIdeographic(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 6087
    invoke-static {p0}, Ljava/lang/Character;->isIdeographicImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isIdeographicImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api isJavaIdentifierPart(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 6211
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isJavaIdentifierPart(I)Z
    .registers 10
    .param p0, "codePoint"    # I

    .line 6252
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const/16 v4, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge p0, v4, :cond_17

    .line 6253
    const-wide v7, 0x3ff00100fffc1ffL

    shl-long/2addr v2, p0

    and-long/2addr v2, v7

    cmp-long v0, v2, v0

    if-eqz v0, :cond_16

    move v5, v6

    :cond_16
    return v5

    .line 6254
    :cond_17
    const/16 v4, 0x80

    if-ge p0, v4, :cond_2a

    .line 6255
    const-wide v7, -0x7800000178000002L

    add-int/lit8 v4, p0, -0x40

    shl-long/2addr v2, v4

    and-long/2addr v2, v7

    cmp-long v0, v2, v0

    if-eqz v0, :cond_29

    move v5, v6

    :cond_29
    return v5

    .line 6257
    :cond_2a
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    shl-int v0, v6, v0

    const v1, 0x481077e

    and-int/2addr v0, v1

    if-nez v0, :cond_4c

    if-ltz p0, :cond_3c

    const/16 v0, 0x8

    if-le p0, v0, :cond_4c

    :cond_3c
    const/16 v0, 0xe

    if-lt p0, v0, :cond_44

    const/16 v0, 0x1b

    if-le p0, v0, :cond_4c

    :cond_44
    const/16 v0, 0x7f

    if-lt p0, v0, :cond_4d

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_4d

    :cond_4c
    move v5, v6

    :cond_4d
    return v5
.end method

.method public static whitelist core-platform-api test-api isJavaIdentifierStart(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 6122
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isJavaIdentifierStart(I)Z
    .registers 8
    .param p0, "codePoint"    # I

    .line 6159
    const/16 v0, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p0, v0, :cond_c

    .line 6160
    const/16 v0, 0x24

    if-ne p0, v0, :cond_b

    move v1, v2

    :cond_b
    return v1

    .line 6161
    :cond_c
    const/16 v0, 0x80

    if-ge p0, v0, :cond_23

    .line 6162
    const-wide v3, 0x7fffffe87fffffeL

    const-wide/16 v5, 0x1

    add-int/lit8 v0, p0, -0x40

    shl-long/2addr v5, v0

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_22

    move v1, v2

    :cond_22
    return v1

    .line 6164
    :cond_23
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    shl-int v0, v2, v0

    const v3, 0x480043e

    and-int/2addr v0, v3

    if-eqz v0, :cond_30

    move v1, v2

    :cond_30
    return v1
.end method

.method public static whitelist core-platform-api test-api isJavaLetter(C)Z
    .registers 2
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5989
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isJavaLetterOrDigit(C)Z
    .registers 2
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6025
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isLetter(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 5846
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isLetter(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 5890
    invoke-static {p0}, Ljava/lang/Character;->isLetterImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isLetterImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api isLetterOrDigit(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 5922
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isLetterOrDigit(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 5955
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigitImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isLetterOrDigitImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api isLowSurrogate(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 4787
    const v0, 0xdc00

    if-lt p0, v0, :cond_c

    const v0, 0xe000

    if-ge p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist core-platform-api test-api isLowerCase(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 5455
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isLowerCase(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 5494
    invoke-static {p0}, Ljava/lang/Character;->isLowerCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isLowerCaseImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api isMirrored(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 7471
    invoke-static {p0}, Ljava/lang/Character;->isMirrored(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isMirrored(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 7496
    invoke-static {p0}, Ljava/lang/Character;->isMirroredImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isMirroredImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api isSpace(C)Z
    .registers 5
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6973
    const/16 v0, 0x20

    if-gt p0, v0, :cond_15

    const-wide v0, 0x100003600L

    shr-long/2addr v0, p0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public static whitelist core-platform-api test-api isSpaceChar(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 7006
    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isSpaceChar(I)Z
    .registers 4
    .param p0, "codePoint"    # I

    .line 7040
    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p0, v1, :cond_44

    const/16 v1, 0xa0

    if-ne p0, v1, :cond_a

    goto :goto_44

    .line 7043
    :cond_a
    const/16 v1, 0x1000

    const/4 v2, 0x0

    if-ge p0, v1, :cond_10

    .line 7044
    return v2

    .line 7047
    :cond_10
    const/16 v1, 0x1680

    if-eq p0, v1, :cond_43

    const/16 v1, 0x180e

    if-ne p0, v1, :cond_19

    goto :goto_43

    .line 7050
    :cond_19
    const/16 v1, 0x2000

    if-ge p0, v1, :cond_1e

    .line 7051
    return v2

    .line 7053
    :cond_1e
    const v1, 0xffff

    if-gt p0, v1, :cond_3e

    .line 7055
    const/16 v1, 0x200a

    if-le p0, v1, :cond_3d

    const/16 v1, 0x2028

    if-eq p0, v1, :cond_3d

    const/16 v1, 0x2029

    if-eq p0, v1, :cond_3d

    const/16 v1, 0x202f

    if-eq p0, v1, :cond_3d

    const/16 v1, 0x205f

    if-eq p0, v1, :cond_3d

    const/16 v1, 0x3000

    if-ne p0, v1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v2

    :cond_3d
    :goto_3d
    return v0

    .line 7059
    :cond_3e
    invoke-static {p0}, Ljava/lang/Character;->isSpaceCharImpl(I)Z

    move-result v0

    return v0

    .line 7048
    :cond_43
    :goto_43
    return v0

    .line 7041
    :cond_44
    :goto_44
    return v0
.end method

.method static native greylist-max-o isSpaceCharImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api isSupplementaryCodePoint(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 4738
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_a

    const/high16 v0, 0x110000

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static whitelist core-platform-api test-api isSurrogate(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 4811
    const v0, 0xd800

    if-lt p0, v0, :cond_c

    const v0, 0xe000

    if-ge p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist core-platform-api test-api isSurrogatePair(CC)Z
    .registers 3
    .param p0, "high"    # C
    .param p1, "low"    # C

    .line 4833
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist core-platform-api test-api isTitleCase(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 5615
    invoke-static {p0}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isTitleCase(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 5657
    invoke-static {p0}, Ljava/lang/Character;->isTitleCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isTitleCaseImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api isUnicodeIdentifierPart(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 6370
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isUnicodeIdentifierPart(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 6405
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPartImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isUnicodeIdentifierPartImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api isUnicodeIdentifierStart(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 6301
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isUnicodeIdentifierStart(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 6331
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStartImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isUnicodeIdentifierStartImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api isUpperCase(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 5533
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isUpperCase(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 5570
    invoke-static {p0}, Ljava/lang/Character;->isUpperCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isUpperCaseImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api isValidCodePoint(I)Z
    .registers 3
    .param p0, "codePoint"    # I

    .line 4703
    ushr-int/lit8 v0, p0, 0x10

    .line 4704
    .local v0, "plane":I
    const/16 v1, 0x11

    if-ge v0, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static whitelist core-platform-api test-api isWhitespace(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 7098
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api isWhitespace(I)Z
    .registers 4
    .param p0, "codePoint"    # I

    .line 7138
    const/4 v0, 0x1

    const/16 v1, 0x1c

    if-lt p0, v1, :cond_9

    const/16 v1, 0x20

    if-le p0, v1, :cond_11

    :cond_9
    const/16 v1, 0x9

    if-lt p0, v1, :cond_12

    const/16 v1, 0xd

    if-gt p0, v1, :cond_12

    .line 7139
    :cond_11
    return v0

    .line 7141
    :cond_12
    const/16 v1, 0x1000

    const/4 v2, 0x0

    if-ge p0, v1, :cond_18

    .line 7142
    return v2

    .line 7145
    :cond_18
    const/16 v1, 0x1680

    if-eq p0, v1, :cond_51

    const/16 v1, 0x180e

    if-ne p0, v1, :cond_21

    goto :goto_51

    .line 7148
    :cond_21
    const/16 v1, 0x2000

    if-ge p0, v1, :cond_26

    .line 7149
    return v2

    .line 7152
    :cond_26
    const/16 v1, 0x2007

    if-eq p0, v1, :cond_50

    const/16 v1, 0x202f

    if-ne p0, v1, :cond_2f

    goto :goto_50

    .line 7155
    :cond_2f
    const v1, 0xffff

    if-gt p0, v1, :cond_4b

    .line 7157
    const/16 v1, 0x200a

    if-le p0, v1, :cond_4a

    const/16 v1, 0x2028

    if-eq p0, v1, :cond_4a

    const/16 v1, 0x2029

    if-eq p0, v1, :cond_4a

    const/16 v1, 0x205f

    if-eq p0, v1, :cond_4a

    const/16 v1, 0x3000

    if-ne p0, v1, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v2

    :cond_4a
    :goto_4a
    return v0

    .line 7161
    :cond_4b
    invoke-static {p0}, Ljava/lang/Character;->isWhitespaceImpl(I)Z

    move-result v0

    return v0

    .line 7153
    :cond_50
    :goto_50
    return v2

    .line 7146
    :cond_51
    :goto_51
    return v0
.end method

.method static native greylist-max-o isWhitespaceImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api lowSurrogate(I)C
    .registers 3
    .param p0, "codePoint"    # I

    .line 5137
    and-int/lit16 v0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static whitelist core-platform-api test-api offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .registers 7
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .line 5319
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5320
    .local v0, "length":I
    if-ltz p1, :cond_66

    if-gt p1, v0, :cond_66

    .line 5324
    move v1, p1

    .line 5325
    .local v1, "x":I
    if-ltz p2, :cond_39

    .line 5327
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v1, v0, :cond_30

    if-ge v2, p2, :cond_30

    .line 5328
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "x":I
    .local v3, "x":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2c

    if-ge v3, v0, :cond_2c

    .line 5329
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 5330
    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_2d

    .line 5327
    :cond_2c
    move v1, v3

    .end local v3    # "x":I
    .restart local v1    # "x":I
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 5333
    :cond_30
    if-lt v2, p2, :cond_33

    .line 5336
    .end local v2    # "i":I
    goto :goto_5f

    .line 5334
    .restart local v2    # "i":I
    :cond_33
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 5338
    .end local v2    # "i":I
    :cond_39
    move v2, p2

    .restart local v2    # "i":I
    :goto_3a
    if-lez v1, :cond_5d

    if-gez v2, :cond_5d

    .line 5339
    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_5a

    if-lez v1, :cond_5a

    add-int/lit8 v3, v1, -0x1

    .line 5340
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 5341
    add-int/lit8 v1, v1, -0x1

    .line 5338
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 5344
    :cond_5d
    if-ltz v2, :cond_60

    .line 5348
    .end local v2    # "i":I
    :goto_5f
    return v1

    .line 5345
    .restart local v2    # "i":I
    :cond_60
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 5321
    .end local v1    # "x":I
    .end local v2    # "i":I
    :cond_66
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public static whitelist core-platform-api test-api offsetByCodePoints([CIIII)I
    .registers 6
    .param p0, "a"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "index"    # I
    .param p4, "codePointOffset"    # I

    .line 5386
    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_13

    if-ltz p1, :cond_13

    if-ltz p2, :cond_13

    if-lt p3, p1, :cond_13

    add-int v0, p1, p2

    if-gt p3, v0, :cond_13

    .line 5390
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/Character;->offsetByCodePointsImpl([CIIII)I

    move-result v0

    return v0

    .line 5388
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static greylist-max-o offsetByCodePointsImpl([CIIII)I
    .registers 9
    .param p0, "a"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "index"    # I
    .param p4, "codePointOffset"    # I

    .line 5395
    move v0, p3

    .line 5396
    .local v0, "x":I
    if-ltz p4, :cond_2f

    .line 5397
    add-int v1, p1, p2

    .line 5399
    .local v1, "limit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v0, v1, :cond_26

    if-ge v2, p4, :cond_26

    .line 5400
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "x":I
    .local v3, "x":I
    aget-char v0, p0, v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_22

    if-ge v3, v1, :cond_22

    aget-char v0, p0, v3

    .line 5401
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5402
    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_23

    .line 5399
    :cond_22
    move v0, v3

    .end local v3    # "x":I
    .restart local v0    # "x":I
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5405
    :cond_26
    if-lt v2, p4, :cond_29

    .line 5408
    .end local v1    # "limit":I
    .end local v2    # "i":I
    goto :goto_51

    .line 5406
    .restart local v1    # "limit":I
    .restart local v2    # "i":I
    :cond_29
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 5410
    .end local v1    # "limit":I
    .end local v2    # "i":I
    :cond_2f
    move v1, p4

    .local v1, "i":I
    :goto_30
    if-le v0, p1, :cond_4f

    if-gez v1, :cond_4f

    .line 5411
    add-int/lit8 v0, v0, -0x1

    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4c

    if-le v0, p1, :cond_4c

    add-int/lit8 v2, v0, -0x1

    aget-char v2, p0, v2

    .line 5412
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 5413
    add-int/lit8 v0, v0, -0x1

    .line 5410
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 5416
    :cond_4f
    if-ltz v1, :cond_52

    .line 5420
    .end local v1    # "i":I
    :goto_51
    return v0

    .line 5417
    .restart local v1    # "i":I
    :cond_52
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public static whitelist core-platform-api test-api reverseBytes(C)C
    .registers 3
    .param p0, "ch"    # C

    .line 7606
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static whitelist core-platform-api test-api toChars(I[CI)I
    .registers 4
    .param p0, "codePoint"    # I
    .param p1, "dst"    # [C
    .param p2, "dstIndex"    # I

    .line 5172
    invoke-static {p0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5173
    int-to-char v0, p0

    aput-char v0, p1, p2

    .line 5174
    const/4 v0, 0x1

    return v0

    .line 5175
    :cond_b
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5176
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->toSurrogates(I[CI)V

    .line 5177
    const/4 v0, 0x2

    return v0

    .line 5179
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static whitelist core-platform-api test-api toChars(I)[C
    .registers 4
    .param p0, "codePoint"    # I

    .line 5200
    invoke-static {p0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 5201
    const/4 v0, 0x1

    new-array v0, v0, [C

    int-to-char v2, p0

    aput-char v2, v0, v1

    return-object v0

    .line 5202
    :cond_e
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5203
    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 5204
    .local v0, "result":[C
    invoke-static {p0, v0, v1}, Ljava/lang/Character;->toSurrogates(I[CI)V

    .line 5205
    return-object v0

    .line 5207
    .end local v0    # "result":[C
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static whitelist core-platform-api test-api toCodePoint(CC)I
    .registers 4
    .param p0, "high"    # C
    .param p1, "low"    # C

    .line 4873
    shl-int/lit8 v0, p0, 0xa

    add-int/2addr v0, p1

    const v1, -0x35fdc00

    add-int/2addr v0, v1

    return v0
.end method

.method public static whitelist core-platform-api test-api toLowerCase(C)C
    .registers 2
    .param p0, "ch"    # C

    .line 6515
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static whitelist core-platform-api test-api toLowerCase(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .line 6550
    const/16 v0, 0x41

    if-lt p0, v0, :cond_b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_b

    .line 6551
    add-int/lit8 v0, p0, 0x20

    return v0

    .line 6555
    :cond_b
    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 6556
    return p0

    .line 6559
    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->toLowerCaseImpl(I)I

    move-result v0

    return v0
.end method

.method static native greylist-max-o toLowerCaseImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api toString(C)Ljava/lang/String;
    .registers 2
    .param p0, "c"    # C

    .line 4685
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o toSurrogates(I[CI)V
    .registers 5
    .param p0, "codePoint"    # I
    .param p1, "dst"    # [C
    .param p2, "index"    # I

    .line 5213
    add-int/lit8 v0, p2, 0x1

    invoke-static {p0}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v1

    aput-char v1, p1, v0

    .line 5214
    invoke-static {p0}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    aput-char v0, p1, p2

    .line 5215
    return-void
.end method

.method public static whitelist core-platform-api test-api toTitleCase(C)C
    .registers 2
    .param p0, "ch"    # C

    .line 6674
    invoke-static {p0}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static whitelist core-platform-api test-api toTitleCase(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .line 6707
    invoke-static {p0}, Ljava/lang/Character;->toTitleCaseImpl(I)I

    move-result v0

    return v0
.end method

.method static native greylist-max-o toTitleCaseImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api toUpperCase(C)C
    .registers 2
    .param p0, "ch"    # C

    .line 6594
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static whitelist core-platform-api test-api toUpperCase(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .line 6629
    const/16 v0, 0x61

    if-lt p0, v0, :cond_b

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_b

    .line 6630
    add-int/lit8 v0, p0, -0x20

    return v0

    .line 6634
    :cond_b
    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 6635
    return p0

    .line 6638
    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->toUpperCaseImpl(I)I

    move-result v0

    return v0
.end method

.method static native greylist-max-o toUpperCaseImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api valueOf(C)Ljava/lang/Character;
    .registers 2
    .param p0, "c"    # C

    .line 4605
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_9

    .line 4606
    sget-object v0, Ljava/lang/Character$CharacterCache;->cache:[Ljava/lang/Character;

    aget-object v0, v0, p0

    return-object v0

    .line 4608
    :cond_9
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api charValue()C
    .registers 2

    .line 4617
    iget-char v0, p0, Ljava/lang/Character;->value:C

    return v0
.end method

.method public whitelist core-platform-api test-api compareTo(Ljava/lang/Character;)I
    .registers 4
    .param p1, "anotherCharacter"    # Ljava/lang/Character;

    .line 7519
    iget-char v0, p0, Ljava/lang/Character;->value:C

    iget-char v1, p1, Ljava/lang/Character;->value:C

    invoke-static {v0, v1}, Ljava/lang/Character;->compare(CC)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 124
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result p1

    return p1
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 4655
    instance-of v0, p1, Ljava/lang/Character;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 4656
    iget-char v0, p0, Ljava/lang/Character;->value:C

    move-object v2, p1

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 4658
    :cond_12
    return v1
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 4628
    iget-char v0, p0, Ljava/lang/Character;->value:C

    invoke-static {v0}, Ljava/lang/Character;->hashCode(C)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 4671
    const/4 v0, 0x1

    new-array v0, v0, [C

    iget-char v1, p0, Ljava/lang/Character;->value:C

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 4672
    .local v0, "buf":[C
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
