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
        Ljava/lang/Character$Subset;,
        Ljava/lang/Character$UnicodeBlock;,
        Ljava/lang/Character$UnicodeScript;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2

.field public static final COMBINING_SPACING_MARK:B = 0x8t

.field public static final CONNECTOR_PUNCTUATION:B = 0x17t

.field public static final CONTROL:B = 0xft

.field public static final CURRENCY_SYMBOL:B = 0x1at

.field public static final DASH_PUNCTUATION:B = 0x14t

.field public static final DECIMAL_DIGIT_NUMBER:B = 0x9t

.field private static final DIRECTIONALITY:[B

.field public static final DIRECTIONALITY_ARABIC_NUMBER:B = 0x6t

.field public static final DIRECTIONALITY_BOUNDARY_NEUTRAL:B = 0x9t

.field public static final DIRECTIONALITY_COMMON_NUMBER_SEPARATOR:B = 0x7t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER:B = 0x3t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR:B = 0x4t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR:B = 0x5t

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT:B = 0x0t

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING:B = 0xet

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE:B = 0xft

.field public static final DIRECTIONALITY_NONSPACING_MARK:B = 0x8t

.field public static final DIRECTIONALITY_OTHER_NEUTRALS:B = 0xdt

.field public static final DIRECTIONALITY_PARAGRAPH_SEPARATOR:B = 0xat

.field public static final DIRECTIONALITY_POP_DIRECTIONAL_FORMAT:B = 0x12t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT:B = 0x1t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC:B = 0x2t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING:B = 0x10t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE:B = 0x11t

.field public static final DIRECTIONALITY_SEGMENT_SEPARATOR:B = 0xbt

.field public static final DIRECTIONALITY_UNDEFINED:B = -0x1t

.field public static final DIRECTIONALITY_WHITESPACE:B = 0xct

.field public static final ENCLOSING_MARK:B = 0x7t

.field public static final END_PUNCTUATION:B = 0x16t

.field static final ERROR:I = -0x1

.field public static final FINAL_QUOTE_PUNCTUATION:B = 0x1et

.field public static final FORMAT:B = 0x10t

.field public static final INITIAL_QUOTE_PUNCTUATION:B = 0x1dt

.field public static final LETTER_NUMBER:B = 0xat

.field public static final LINE_SEPARATOR:B = 0xdt

.field public static final LOWERCASE_LETTER:B = 0x2t

.field public static final MATH_SYMBOL:B = 0x19t

.field public static final MAX_CODE_POINT:I = 0x10ffff

.field public static final MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final MAX_LOW_SURROGATE:C = '\udfff'

.field public static final MAX_RADIX:I = 0x24

.field public static final MAX_SURROGATE:C = '\udfff'

.field public static final MAX_VALUE:C = '\uffff'

.field public static final MIN_CODE_POINT:I = 0x0

.field public static final MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final MIN_LOW_SURROGATE:C = '\udc00'

.field public static final MIN_RADIX:I = 0x2

.field public static final MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final MIN_SURROGATE:C = '\ud800'

.field public static final MIN_VALUE:C = '\u0000'

.field public static final MODIFIER_LETTER:B = 0x4t

.field public static final MODIFIER_SYMBOL:B = 0x1bt

.field public static final NON_SPACING_MARK:B = 0x6t

.field public static final OTHER_LETTER:B = 0x5t

.field public static final OTHER_NUMBER:B = 0xbt

.field public static final OTHER_PUNCTUATION:B = 0x18t

.field public static final OTHER_SYMBOL:B = 0x1ct

.field public static final PARAGRAPH_SEPARATOR:B = 0xet

.field public static final PRIVATE_USE:B = 0x12t

.field public static final SIZE:I = 0x10

.field public static final SPACE_SEPARATOR:B = 0xct

.field public static final START_PUNCTUATION:B = 0x15t

.field public static final SURROGATE:B = 0x13t

.field public static final TITLECASE_LETTER:B = 0x3t

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNASSIGNED:B = 0x0t

.field public static final UPPERCASE_LETTER:B = 0x1t

.field private static final serialVersionUID:J = 0x348b47d96b1a2678L


# instance fields
.field private final value:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 176
    const-class v0, [C

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 580
    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Ljava/lang/Character;->DIRECTIONALITY:[B

    .line 124
    return-void

    .line 580
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

.method public constructor <init>(C)V
    .registers 2
    .param p1, "value"    # C

    .prologue
    .line 4561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4562
    iput-char p1, p0, Ljava/lang/Character;->value:C

    .line 4563
    return-void
.end method

.method public static charCount(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 4842
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_6

    const/4 v0, 0x2

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static codePointAt(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .prologue
    .line 4890
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 4891
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p1, v2, :cond_21

    .line 4892
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 4893
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4894
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 4897
    .end local v1    # "c2":C
    :cond_21
    return v0
.end method

.method public static codePointAt([CI)I
    .registers 3
    .param p0, "a"    # [C
    .param p1, "index"    # I

    .prologue
    .line 4922
    array-length v0, p0

    invoke-static {p0, p1, v0}, Ljava/lang/Character;->codePointAtImpl([CII)I

    move-result v0

    return v0
.end method

.method public static codePointAt([CII)I
    .registers 4
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .prologue
    .line 4951
    if-ge p1, p2, :cond_4

    if-gez p2, :cond_a

    .line 4952
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 4951
    :cond_a
    array-length v0, p0

    if-gt p2, v0, :cond_4

    .line 4954
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointAtImpl([CII)I

    move-result v0

    return v0
.end method

.method static codePointAtImpl([CII)I
    .registers 6
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .prologue
    .line 4959
    aget-char v0, p0, p1

    .line 4960
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_19

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_19

    .line 4961
    aget-char v1, p0, p1

    .line 4962
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4963
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 4966
    .end local v1    # "c2":C
    :cond_19
    return v0
.end method

.method public static codePointBefore(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .prologue
    .line 4991
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 4992
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-lez p1, :cond_1f

    .line 4993
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 4994
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4995
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 4998
    .end local v0    # "c1":C
    :cond_1f
    return v1
.end method

.method public static codePointBefore([CI)I
    .registers 3
    .param p0, "a"    # [C
    .param p1, "index"    # I

    .prologue
    .line 5023
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Character;->codePointBeforeImpl([CII)I

    move-result v0

    return v0
.end method

.method public static codePointBefore([CII)I
    .registers 4
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "start"    # I

    .prologue
    .line 5054
    if-le p1, p2, :cond_4

    if-gez p2, :cond_a

    .line 5055
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 5054
    :cond_a
    array-length v0, p0

    if-ge p2, v0, :cond_4

    .line 5057
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointBeforeImpl([CII)I

    move-result v0

    return v0
.end method

.method static codePointBeforeImpl([CII)I
    .registers 6
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "start"    # I

    .prologue
    .line 5062
    add-int/lit8 p1, p1, -0x1

    aget-char v1, p0, p1

    .line 5063
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-le p1, p2, :cond_1b

    .line 5064
    add-int/lit8 p1, p1, -0x1

    aget-char v0, p0, p1

    .line 5065
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5066
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 5069
    .end local v0    # "c1":C
    :cond_1b
    return v1
.end method

.method public static codePointCount(Ljava/lang/CharSequence;II)I
    .registers 8
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 5230
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 5231
    .local v2, "length":I
    if-ltz p1, :cond_8

    if-le p2, v2, :cond_e

    .line 5232
    :cond_8
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 5231
    :cond_e
    if-gt p1, p2, :cond_8

    .line 5234
    sub-int v3, p2, p1

    .line 5235
    .local v3, "n":I
    move v0, p1

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_14
    if-ge v1, p2, :cond_34

    .line 5236
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_32

    if-ge v0, p2, :cond_32

    .line 5237
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    .line 5236
    if-eqz v4, :cond_32

    .line 5238
    add-int/lit8 v3, v3, -0x1

    .line 5239
    add-int/lit8 v0, v0, 0x1

    :cond_32
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_14

    .line 5242
    :cond_34
    return v3
.end method

.method public static codePointCount([CII)I
    .registers 4
    .param p0, "a"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 5265
    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_6

    if-gez p1, :cond_c

    .line 5266
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 5265
    :cond_c
    if-ltz p2, :cond_6

    .line 5268
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointCountImpl([CII)I

    move-result v0

    return v0
.end method

.method static codePointCountImpl([CII)I
    .registers 8
    .param p0, "a"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 5272
    add-int v0, p1, p2

    .line 5273
    .local v0, "endIndex":I
    move v3, p2

    .line 5274
    .local v3, "n":I
    move v1, p1

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_21

    .line 5275
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-char v4, p0, v2

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    if-ge v1, v0, :cond_1f

    .line 5276
    aget-char v4, p0, v1

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    .line 5275
    if-eqz v4, :cond_1f

    .line 5277
    add-int/lit8 v3, v3, -0x1

    .line 5278
    add-int/lit8 v1, v1, 0x1

    :cond_1f
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_5

    .line 5281
    :cond_21
    return v3
.end method

.method public static compare(CC)I
    .registers 3
    .param p0, "x"    # C
    .param p1, "y"    # C

    .prologue
    .line 7332
    sub-int v0, p0, p1

    return v0
.end method

.method public static digit(CI)I
    .registers 3
    .param p0, "ch"    # C
    .param p1, "radix"    # I

    .prologue
    .line 6614
    invoke-static {p0, p1}, Ljava/lang/Character;->digit(II)I

    move-result v0

    return v0
.end method

.method public static digit(II)I
    .registers 5
    .param p0, "codePoint"    # I
    .param p1, "radix"    # I

    .prologue
    const/4 v1, -0x1

    .line 6666
    const/4 v2, 0x2

    if-lt p1, v2, :cond_8

    const/16 v2, 0x24

    if-le p1, v2, :cond_9

    .line 6667
    :cond_8
    return v1

    .line 6669
    :cond_9
    const/16 v2, 0x80

    if-ge p0, v2, :cond_37

    .line 6671
    const/4 v0, -0x1

    .line 6672
    .local v0, "result":I
    const/16 v2, 0x30

    if-gt v2, p0, :cond_1b

    const/16 v2, 0x39

    if-gt p0, v2, :cond_1b

    .line 6673
    add-int/lit8 v0, p0, -0x30

    .line 6679
    :cond_18
    :goto_18
    if-ge v0, p1, :cond_35

    .end local v0    # "result":I
    :goto_1a
    return v0

    .line 6674
    .restart local v0    # "result":I
    :cond_1b
    const/16 v2, 0x61

    if-gt v2, p0, :cond_28

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_28

    .line 6675
    add-int/lit8 v2, p0, -0x61

    add-int/lit8 v0, v2, 0xa

    .line 6674
    goto :goto_18

    .line 6676
    :cond_28
    const/16 v2, 0x41

    if-gt v2, p0, :cond_18

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_18

    .line 6677
    add-int/lit8 v2, p0, -0x41

    add-int/lit8 v0, v2, 0xa

    goto :goto_18

    :cond_35
    move v0, v1

    .line 6679
    goto :goto_1a

    .line 6681
    .end local v0    # "result":I
    :cond_37
    invoke-static {p0, p1}, Ljava/lang/Character;->digitImpl(II)I

    move-result v1

    return v1
.end method

.method static native digitImpl(II)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static forDigit(II)C
    .registers 4
    .param p0, "digit"    # I
    .param p1, "radix"    # I

    .prologue
    const/4 v1, 0x0

    .line 7154
    if-ge p0, p1, :cond_5

    if-gez p0, :cond_6

    .line 7155
    :cond_5
    return v1

    .line 7157
    :cond_6
    const/4 v0, 0x2

    if-lt p1, v0, :cond_d

    const/16 v0, 0x24

    if-le p1, v0, :cond_e

    .line 7158
    :cond_d
    return v1

    .line 7160
    :cond_e
    const/16 v0, 0xa

    if-ge p0, v0, :cond_16

    .line 7161
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    return v0

    .line 7163
    :cond_16
    add-int/lit8 v0, p0, 0x57

    int-to-char v0, v0

    return v0
.end method

.method public static getDirectionality(C)B
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 7204
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0
.end method

.method public static getDirectionality(I)B
    .registers 4
    .param p0, "codePoint"    # I

    .prologue
    const/4 v2, -0x1

    .line 7241
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v1

    if-nez v1, :cond_8

    .line 7242
    return v2

    .line 7245
    :cond_8
    invoke-static {p0}, Ljava/lang/Character;->getDirectionalityImpl(I)B

    move-result v0

    .line 7246
    .local v0, "directionality":B
    if-ltz v0, :cond_18

    sget-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 7247
    sget-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    aget-byte v1, v1, v0

    return v1

    .line 7249
    :cond_18
    return v2
.end method

.method static native getDirectionalityImpl(I)B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static getName(I)Ljava/lang/String;
    .registers 7
    .param p0, "codePoint"    # I

    .prologue
    const/4 v3, 0x0

    .line 7393
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 7394
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 7396
    :cond_d
    invoke-static {p0}, Ljava/lang/Character;->getNameImpl(I)Ljava/lang/String;

    move-result-object v1

    .line 7397
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 7398
    return-object v1

    .line 7399
    :cond_14
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v2

    if-nez v2, :cond_1b

    .line 7400
    return-object v3

    .line 7401
    :cond_1b
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 7402
    .local v0, "block":Ljava/lang/Character$UnicodeBlock;
    if-eqz v0, :cond_50

    .line 7403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Character$UnicodeBlock;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5f

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7404
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 7403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 7406
    :cond_50
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static native getNameImpl(I)Ljava/lang/String;
.end method

.method public static getNumericValue(C)I
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 6722
    invoke-static {p0}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v0

    return v0
.end method

.method public static getNumericValue(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 6756
    const/16 v0, 0x80

    if-ge p0, v0, :cond_27

    .line 6757
    const/16 v0, 0x30

    if-lt p0, v0, :cond_f

    const/16 v0, 0x39

    if-gt p0, v0, :cond_f

    .line 6758
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 6760
    :cond_f
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1a

    .line 6761
    add-int/lit8 v0, p0, -0x57

    return v0

    .line 6763
    :cond_1a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_25

    .line 6764
    add-int/lit8 v0, p0, -0x37

    return v0

    .line 6766
    :cond_25
    const/4 v0, -0x1

    return v0

    .line 6769
    :cond_27
    const v0, 0xff21

    if-lt p0, v0, :cond_37

    const v0, 0xff3a

    if-gt p0, v0, :cond_37

    .line 6770
    const v0, 0xff17

    sub-int v0, p0, v0

    return v0

    .line 6773
    :cond_37
    const v0, 0xff41

    if-lt p0, v0, :cond_47

    const v0, 0xff5a

    if-gt p0, v0, :cond_47

    .line 6774
    const v0, 0xff37

    sub-int v0, p0, v0

    return v0

    .line 6776
    :cond_47
    invoke-static {p0}, Ljava/lang/Character;->getNumericValueImpl(I)I

    move-result v0

    return v0
.end method

.method static native getNumericValueImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static getType(C)I
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 7076
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    return v0
.end method

.method public static getType(I)I
    .registers 3
    .param p0, "codePoint"    # I

    .prologue
    .line 7118
    invoke-static {p0}, Ljava/lang/Character;->getTypeImpl(I)I

    move-result v0

    .line 7120
    .local v0, "type":I
    const/16 v1, 0x10

    if-gt v0, v1, :cond_9

    .line 7121
    return v0

    .line 7123
    :cond_9
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method static native getTypeImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static hashCode(C)I
    .registers 1
    .param p0, "value"    # C

    .prologue
    .line 4630
    return p0
.end method

.method public static highSurrogate(I)C
    .registers 3
    .param p0, "codePoint"    # I

    .prologue
    .line 5097
    ushr-int/lit8 v0, p0, 0xa

    .line 5098
    const v1, 0xd7c0

    .line 5097
    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static isAlphabetic(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 5979
    invoke-static {p0}, Ljava/lang/Character;->isAlphabeticImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isAlphabeticImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static isBmpCodePoint(I)Z
    .registers 3
    .param p0, "codePoint"    # I

    .prologue
    const/4 v0, 0x0

    .line 4708
    ushr-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static isDefined(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 5733
    invoke-static {p0}, Ljava/lang/Character;->isDefined(I)Z

    move-result v0

    return v0
.end method

.method public static isDefined(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 5757
    invoke-static {p0}, Ljava/lang/Character;->isDefinedImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isDefinedImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static isDigit(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 5667
    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isDigit(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 5701
    invoke-static {p0}, Ljava/lang/Character;->isDigitImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isDigitImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static isHighSurrogate(C)Z
    .registers 3
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 4753
    const v1, 0xd800

    if-lt p0, v1, :cond_c

    const v1, 0xdc00

    if-ge p0, v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static isISOControl(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 7007
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    return v0
.end method

.method public static isISOControl(I)Z
    .registers 4
    .param p0, "codePoint"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7028
    const/16 v2, 0x9f

    if-gt p0, v2, :cond_11

    .line 7029
    const/16 v2, 0x7f

    if-ge p0, v2, :cond_e

    ushr-int/lit8 v2, p0, 0x5

    if-nez v2, :cond_f

    .line 7028
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 7029
    goto :goto_e

    :cond_11
    move v0, v1

    .line 7028
    goto :goto_e
.end method

.method public static isIdentifierIgnorable(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 6321
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorable(I)Z

    move-result v0

    return v0
.end method

.method public static isIdentifierIgnorable(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 6351
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorableImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isIdentifierIgnorableImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static isIdeographic(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 5997
    invoke-static {p0}, Ljava/lang/Character;->isIdeographicImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isIdeographicImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static isJavaIdentifierPart(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 6110
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static isJavaIdentifierPart(I)Z
    .registers 9
    .param p0, "codePoint"    # I

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6144
    const/16 v2, 0x40

    if-ge p0, v2, :cond_19

    .line 6145
    shl-long v2, v4, p0

    const-wide v4, 0x3ff00100fffc1ffL

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16

    .line 6146
    :cond_19
    const/16 v2, 0x80

    if-ge p0, v2, :cond_2e

    .line 6147
    add-int/lit8 v2, p0, -0x40

    shl-long v2, v4, v2

    const-wide v4, -0x7800000178000002L

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2c

    :goto_2b
    return v0

    :cond_2c
    move v0, v1

    goto :goto_2b

    .line 6149
    :cond_2e
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v2

    shl-int v2, v0, v2

    .line 6150
    const v3, 0x481077e

    .line 6149
    and-int/2addr v2, v3

    if-nez v2, :cond_40

    .line 6162
    if-ltz p0, :cond_41

    const/16 v2, 0x8

    if-gt p0, v2, :cond_41

    .line 6149
    :cond_40
    :goto_40
    return v0

    .line 6162
    :cond_41
    const/16 v2, 0xe

    if-lt p0, v2, :cond_49

    const/16 v2, 0x1b

    if-le p0, v2, :cond_40

    .line 6163
    :cond_49
    const/16 v2, 0x7f

    if-lt p0, v2, :cond_51

    const/16 v2, 0x9f

    if-le p0, v2, :cond_40

    :cond_51
    move v0, v1

    goto :goto_40
.end method

.method public static isJavaIdentifierStart(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 6030
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static isJavaIdentifierStart(I)Z
    .registers 7
    .param p0, "codePoint"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6060
    const/16 v2, 0x40

    if-ge p0, v2, :cond_d

    .line 6061
    const/16 v2, 0x24

    if-ne p0, v2, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a

    .line 6062
    :cond_d
    const/16 v2, 0x80

    if-ge p0, v2, :cond_26

    .line 6063
    add-int/lit8 v2, p0, -0x40

    const-wide/16 v4, 0x1

    shl-long v2, v4, v2

    const-wide v4, 0x7fffffe87fffffeL

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    :goto_23
    return v0

    :cond_24
    move v0, v1

    goto :goto_23

    .line 6065
    :cond_26
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v2

    shl-int v2, v0, v2

    .line 6066
    const v3, 0x480043e

    .line 6065
    and-int/2addr v2, v3

    if-eqz v2, :cond_33

    :goto_32
    return v0

    :cond_33
    move v0, v1

    goto :goto_32
.end method

.method public static isJavaLetter(C)Z
    .registers 2
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5917
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    return v0
.end method

.method public static isJavaLetterOrDigit(C)Z
    .registers 2
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5953
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    return v0
.end method

.method public static isLetter(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 5799
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method public static isLetter(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 5832
    invoke-static {p0}, Ljava/lang/Character;->isLetterImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isLetterImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static isLetterOrDigit(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 5863
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isLetterOrDigit(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 5884
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigitImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isLetterOrDigitImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static isLowSurrogate(C)Z
    .registers 3
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 4776
    const v1, 0xdc00

    if-lt p0, v1, :cond_c

    const v1, 0xe000

    if-ge p0, v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static isLowerCase(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 5444
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    return v0
.end method

.method public static isLowerCase(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 5476
    invoke-static {p0}, Ljava/lang/Character;->isLowerCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isLowerCaseImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static isMirrored(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 7274
    invoke-static {p0}, Ljava/lang/Character;->isMirrored(I)Z

    move-result v0

    return v0
.end method

.method public static isMirrored(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 7293
    invoke-static {p0}, Ljava/lang/Character;->isMirroredImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isMirroredImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static isSpace(C)Z
    .registers 7
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 6808
    const/16 v1, 0x20

    if-gt p0, v1, :cond_15

    .line 6809
    const-wide v2, 0x100003600L

    shr-long/2addr v2, p0

    .line 6813
    const-wide/16 v4, 0x1

    .line 6809
    and-long/2addr v2, v4

    .line 6813
    const-wide/16 v4, 0x0

    .line 6809
    cmp-long v1, v2, v4

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    .line 6808
    :cond_15
    return v0
.end method

.method public static isSpaceChar(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 6841
    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    return v0
.end method

.method public static isSpaceChar(I)Z
    .registers 4
    .param p0, "codePoint"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 6866
    const/16 v2, 0x20

    if-eq p0, v2, :cond_a

    const/16 v2, 0xa0

    if-ne p0, v2, :cond_b

    .line 6867
    :cond_a
    return v0

    .line 6869
    :cond_b
    const/16 v2, 0x1000

    if-ge p0, v2, :cond_10

    .line 6870
    return v1

    .line 6873
    :cond_10
    const/16 v2, 0x1680

    if-eq p0, v2, :cond_18

    const/16 v2, 0x180e

    if-ne p0, v2, :cond_19

    .line 6874
    :cond_18
    return v0

    .line 6876
    :cond_19
    const/16 v2, 0x2000

    if-ge p0, v2, :cond_1e

    .line 6877
    return v1

    .line 6879
    :cond_1e
    const v2, 0xffff

    if-gt p0, v2, :cond_3e

    .line 6881
    const/16 v2, 0x200a

    if-le p0, v2, :cond_2b

    const/16 v2, 0x2028

    if-ne p0, v2, :cond_2c

    :cond_2b
    :goto_2b
    return v0

    :cond_2c
    const/16 v2, 0x2029

    if-eq p0, v2, :cond_2b

    const/16 v2, 0x202f

    if-eq p0, v2, :cond_2b

    const/16 v2, 0x205f

    if-eq p0, v2, :cond_2b

    .line 6882
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_2b

    move v0, v1

    goto :goto_2b

    .line 6885
    :cond_3e
    invoke-static {p0}, Ljava/lang/Character;->isSpaceCharImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isSpaceCharImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static isSupplementaryCodePoint(I)Z
    .registers 3
    .param p0, "codePoint"    # I

    .prologue
    const/4 v0, 0x0

    .line 4727
    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_a

    .line 4728
    const/high16 v1, 0x110000

    if-ge p0, v1, :cond_a

    const/4 v0, 0x1

    .line 4727
    :cond_a
    return v0
.end method

.method public static isSurrogate(C)Z
    .registers 3
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 4800
    const v1, 0xd800

    if-lt p0, v1, :cond_c

    const v1, 0xe000

    if-ge p0, v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static isSurrogatePair(CC)Z
    .registers 3
    .param p0, "high"    # C
    .param p1, "low"    # C

    .prologue
    .line 4822
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isTitleCase(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 5589
    invoke-static {p0}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v0

    return v0
.end method

.method public static isTitleCase(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 5625
    invoke-static {p0}, Ljava/lang/Character;->isTitleCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isTitleCaseImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static isUnicodeIdentifierPart(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 6254
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierPart(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 6283
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPartImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isUnicodeIdentifierPartImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static isUnicodeIdentifierStart(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 6192
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierStart(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 6216
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStartImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isUnicodeIdentifierStartImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static isUpperCase(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 5514
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    return v0
.end method

.method public static isUpperCase(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 5544
    invoke-static {p0}, Ljava/lang/Character;->isUpperCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isUpperCaseImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static isValidCodePoint(I)Z
    .registers 3
    .param p0, "codePoint"    # I

    .prologue
    .line 4692
    ushr-int/lit8 v0, p0, 0x10

    .line 4693
    .local v0, "plane":I
    const/16 v1, 0x11

    if-ge v0, v1, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public static isWhitespace(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 6923
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method public static isWhitespace(I)Z
    .registers 4
    .param p0, "codePoint"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6957
    const/16 v2, 0x1c

    if-lt p0, v2, :cond_b

    const/16 v2, 0x20

    if-gt p0, v2, :cond_b

    .line 6958
    :cond_a
    return v0

    .line 6957
    :cond_b
    const/16 v2, 0x9

    if-lt p0, v2, :cond_13

    const/16 v2, 0xd

    if-le p0, v2, :cond_a

    .line 6960
    :cond_13
    const/16 v2, 0x1000

    if-ge p0, v2, :cond_18

    .line 6961
    return v1

    .line 6964
    :cond_18
    const/16 v2, 0x1680

    if-eq p0, v2, :cond_20

    const/16 v2, 0x180e

    if-ne p0, v2, :cond_21

    .line 6965
    :cond_20
    return v0

    .line 6967
    :cond_21
    const/16 v2, 0x2000

    if-ge p0, v2, :cond_26

    .line 6968
    return v1

    .line 6971
    :cond_26
    const/16 v2, 0x2007

    if-eq p0, v2, :cond_2e

    const/16 v2, 0x202f

    if-ne p0, v2, :cond_2f

    .line 6972
    :cond_2e
    return v1

    .line 6974
    :cond_2f
    const v2, 0xffff

    if-gt p0, v2, :cond_4b

    .line 6976
    const/16 v2, 0x200a

    if-le p0, v2, :cond_3c

    const/16 v2, 0x2028

    if-ne p0, v2, :cond_3d

    :cond_3c
    :goto_3c
    return v0

    :cond_3d
    const/16 v2, 0x2029

    if-eq p0, v2, :cond_3c

    const/16 v2, 0x205f

    if-eq p0, v2, :cond_3c

    .line 6977
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_3c

    move v0, v1

    goto :goto_3c

    .line 6980
    :cond_4b
    invoke-static {p0}, Ljava/lang/Character;->isWhitespaceImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isWhitespaceImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static lowSurrogate(I)C
    .registers 3
    .param p0, "codePoint"    # I

    .prologue
    .line 5126
    and-int/lit16 v0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .registers 8
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .prologue
    .line 5308
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5309
    .local v1, "length":I
    if-ltz p1, :cond_8

    if-le p1, v1, :cond_e

    .line 5310
    :cond_8
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 5313
    :cond_e
    move v2, p1

    .line 5314
    .local v2, "x":I
    if-ltz p2, :cond_3d

    .line 5316
    const/4 v0, 0x0

    .local v0, "i":I
    move v3, v2

    .end local v2    # "x":I
    .local v3, "x":I
    :goto_13
    if-ge v3, v1, :cond_35

    if-ge v0, p2, :cond_35

    .line 5317
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "x":I
    .restart local v2    # "x":I
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_31

    if-ge v2, v1, :cond_31

    .line 5318
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    .line 5317
    if-eqz v4, :cond_31

    .line 5319
    add-int/lit8 v2, v2, 0x1

    .line 5316
    :cond_31
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "x":I
    .restart local v3    # "x":I
    goto :goto_13

    .line 5322
    :cond_35
    if-ge v0, p2, :cond_69

    .line 5323
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 5327
    .end local v0    # "i":I
    .end local v3    # "x":I
    .restart local v2    # "x":I
    :cond_3d
    move v0, p2

    .restart local v0    # "i":I
    :goto_3e
    if-lez v2, :cond_61

    if-gez v0, :cond_61

    .line 5328
    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_5e

    if-lez v2, :cond_5e

    .line 5329
    add-int/lit8 v4, v2, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    .line 5328
    if-eqz v4, :cond_5e

    .line 5330
    add-int/lit8 v2, v2, -0x1

    .line 5327
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 5333
    :cond_61
    if-gez v0, :cond_6a

    .line 5334
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .end local v2    # "x":I
    .restart local v3    # "x":I
    :cond_69
    move v2, v3

    .line 5337
    .end local v3    # "x":I
    .restart local v2    # "x":I
    :cond_6a
    return v2
.end method

.method public static offsetByCodePoints([CIIII)I
    .registers 6
    .param p0, "a"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "index"    # I
    .param p4, "codePointOffset"    # I

    .prologue
    .line 5375
    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_6

    if-gez p1, :cond_c

    .line 5377
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 5375
    :cond_c
    if-ltz p2, :cond_6

    .line 5376
    if-lt p3, p1, :cond_6

    add-int v0, p1, p2

    if-gt p3, v0, :cond_6

    .line 5379
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/Character;->offsetByCodePointsImpl([CIIII)I

    move-result v0

    return v0
.end method

.method static offsetByCodePointsImpl([CIIII)I
    .registers 10
    .param p0, "a"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "index"    # I
    .param p4, "codePointOffset"    # I

    .prologue
    .line 5384
    move v2, p3

    .line 5385
    .local v2, "x":I
    if-ltz p4, :cond_2d

    .line 5386
    add-int v1, p1, p2

    .line 5388
    .local v1, "limit":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v3, v2

    .end local v2    # "x":I
    .local v3, "x":I
    :goto_7
    if-ge v3, v1, :cond_25

    if-ge v0, p4, :cond_25

    .line 5389
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "x":I
    .restart local v2    # "x":I
    aget-char v4, p0, v3

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_21

    if-ge v2, v1, :cond_21

    .line 5390
    aget-char v4, p0, v2

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    .line 5389
    if-eqz v4, :cond_21

    .line 5391
    add-int/lit8 v2, v2, 0x1

    .line 5388
    :cond_21
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "x":I
    .restart local v3    # "x":I
    goto :goto_7

    .line 5394
    :cond_25
    if-ge v0, p4, :cond_55

    .line 5395
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 5399
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v3    # "x":I
    .restart local v2    # "x":I
    :cond_2d
    move v0, p4

    .restart local v0    # "i":I
    :goto_2e
    if-le v2, p1, :cond_4d

    if-gez v0, :cond_4d

    .line 5400
    add-int/lit8 v2, v2, -0x1

    aget-char v4, p0, v2

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_4a

    if-le v2, p1, :cond_4a

    .line 5401
    add-int/lit8 v4, v2, -0x1

    aget-char v4, p0, v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    .line 5400
    if-eqz v4, :cond_4a

    .line 5402
    add-int/lit8 v2, v2, -0x1

    .line 5399
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 5405
    :cond_4d
    if-gez v0, :cond_56

    .line 5406
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .end local v2    # "x":I
    .restart local v1    # "limit":I
    .restart local v3    # "x":I
    :cond_55
    move v2, v3

    .line 5409
    .end local v1    # "limit":I
    .end local v3    # "x":I
    .restart local v2    # "x":I
    :cond_56
    return v2
.end method

.method public static reverseBytes(C)C
    .registers 3
    .param p0, "ch"    # C

    .prologue
    .line 7361
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static toChars(I[CI)I
    .registers 4
    .param p0, "codePoint"    # I
    .param p1, "dst"    # [C
    .param p2, "dstIndex"    # I

    .prologue
    .line 5161
    invoke-static {p0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5162
    int-to-char v0, p0

    aput-char v0, p1, p2

    .line 5163
    const/4 v0, 0x1

    return v0

    .line 5164
    :cond_b
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5165
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->toSurrogates(I[CI)V

    .line 5166
    const/4 v0, 0x2

    return v0

    .line 5168
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static toChars(I)[C
    .registers 5
    .param p0, "codePoint"    # I

    .prologue
    const/4 v3, 0x0

    .line 5189
    invoke-static {p0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5190
    const/4 v1, 0x1

    new-array v1, v1, [C

    int-to-char v2, p0

    aput-char v2, v1, v3

    return-object v1

    .line 5191
    :cond_e
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 5192
    const/4 v1, 0x2

    new-array v0, v1, [C

    .line 5193
    .local v0, "result":[C
    invoke-static {p0, v0, v3}, Ljava/lang/Character;->toSurrogates(I[CI)V

    .line 5194
    return-object v0

    .line 5196
    .end local v0    # "result":[C
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static toCodePoint(CC)I
    .registers 4
    .param p0, "high"    # C
    .param p1, "low"    # C

    .prologue
    .line 4862
    shl-int/lit8 v0, p0, 0xa

    add-int/2addr v0, p1

    const v1, -0x35fdc00

    add-int/2addr v0, v1

    return v0
.end method

.method public static toLowerCase(C)C
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 6385
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toLowerCase(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 6414
    const/16 v0, 0x41

    if-lt p0, v0, :cond_b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_b

    .line 6415
    add-int/lit8 v0, p0, 0x20

    return v0

    .line 6419
    :cond_b
    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 6420
    return p0

    .line 6423
    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->toLowerCaseImpl(I)I

    move-result v0

    return v0
.end method

.method static native toLowerCaseImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static toString(C)Ljava/lang/String;
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 4674
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toSurrogates(I[CI)V
    .registers 5
    .param p0, "codePoint"    # I
    .param p1, "dst"    # [C
    .param p2, "index"    # I

    .prologue
    .line 5202
    add-int/lit8 v0, p2, 0x1

    invoke-static {p0}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v1

    aput-char v1, p1, v0

    .line 5203
    invoke-static {p0}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    aput-char v0, p1, p2

    .line 5204
    return-void
.end method

.method public static toTitleCase(C)C
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 6530
    invoke-static {p0}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toTitleCase(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 6557
    invoke-static {p0}, Ljava/lang/Character;->toTitleCaseImpl(I)I

    move-result v0

    return v0
.end method

.method static native toTitleCaseImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static toUpperCase(C)C
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 6457
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toUpperCase(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 6486
    const/16 v0, 0x61

    if-lt p0, v0, :cond_b

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_b

    .line 6487
    add-int/lit8 v0, p0, -0x20

    return v0

    .line 6491
    :cond_b
    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 6492
    return p0

    .line 6495
    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->toUpperCaseImpl(I)I

    move-result v0

    return v0
.end method

.method static native toUpperCaseImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static valueOf(C)Ljava/lang/Character;
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 4594
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_9

    .line 4595
    sget-object v0, Ljava/lang/Character$CharacterCache;->cache:[Ljava/lang/Character;

    aget-object v0, v0, p0

    return-object v0

    .line 4597
    :cond_9
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public charValue()C
    .registers 2

    .prologue
    .line 4606
    iget-char v0, p0, Ljava/lang/Character;->value:C

    return v0
.end method

.method public compareTo(Ljava/lang/Character;)I
    .registers 4
    .param p1, "anotherCharacter"    # Ljava/lang/Character;

    .prologue
    .line 7314
    iget-char v0, p0, Ljava/lang/Character;->value:C

    iget-char v1, p1, Ljava/lang/Character;->value:C

    invoke-static {v0, v1}, Ljava/lang/Character;->compare(CC)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 7298
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 4644
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_11

    .line 4645
    iget-char v1, p0, Ljava/lang/Character;->value:C

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 4647
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_11
    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 4617
    iget-char v0, p0, Ljava/lang/Character;->value:C

    invoke-static {v0}, Ljava/lang/Character;->hashCode(C)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4660
    const/4 v1, 0x1

    new-array v0, v1, [C

    iget-char v1, p0, Ljava/lang/Character;->value:C

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 4661
    .local v0, "buf":[C
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
