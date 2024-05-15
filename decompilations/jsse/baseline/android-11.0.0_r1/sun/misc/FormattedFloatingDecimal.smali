.class public Lsun/misc/FormattedFloatingDecimal;
.super Ljava/lang/Object;
.source "FormattedFloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/FormattedFloatingDecimal$Form;
    }
.end annotation


# static fields
.field static final synthetic greylist $assertionsDisabled:Z

.field private static final blacklist threadLocalCharBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist decExponentRounded:I

.field private blacklist exponent:[C

.field private blacklist mantissa:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    nop

    .line 45
    new-instance v0, Lsun/misc/FormattedFloatingDecimal$1;

    invoke-direct {v0}, Lsun/misc/FormattedFloatingDecimal$1;-><init>()V

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->threadLocalCharBuffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor blacklist <init>(ILsun/misc/FormattedFloatingDecimal$Form;Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;)V
    .registers 15
    .param p1, "precision"    # I
    .param p2, "form"    # Lsun/misc/FormattedFloatingDecimal$Form;
    .param p3, "fdConverter"    # Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-interface {p3}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->isExceptional()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 59
    invoke-interface {p3}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->toJavaFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    .line 61
    return-void

    .line 63
    :cond_17
    invoke-static {}, Lsun/misc/FormattedFloatingDecimal;->getBuffer()[C

    move-result-object v0

    .line 64
    .local v0, "digits":[C
    invoke-interface {p3, v0}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->getDigits([C)I

    move-result v7

    .line 65
    .local v7, "nDigits":I
    invoke-interface {p3}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->getDecimalExponent()I

    move-result v8

    .line 67
    .local v8, "decExp":I
    invoke-interface {p3}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->isNegative()Z

    move-result v9

    .line 68
    .local v9, "isNegative":Z
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$2;->$SwitchMap$sun$misc$FormattedFloatingDecimal$Form:[I

    invoke-virtual {p2}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_88

    const/4 v2, 0x2

    if-eq v1, v2, :cond_76

    const/4 v2, 0x3

    if-eq v1, v2, :cond_64

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3d

    .line 100
    goto/16 :goto_95

    .line 85
    :cond_3d
    invoke-static {v8, v0, v7, p1}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I[CII)I

    move-result v10

    .line 88
    .local v10, "exp":I
    add-int/lit8 v1, v10, -0x1

    const/4 v2, -0x4

    if-lt v1, v2, :cond_56

    add-int/lit8 v1, v10, -0x1

    if-lt v1, p1, :cond_4b

    goto :goto_56

    .line 94
    :cond_4b
    sub-int/2addr p1, v10

    .line 95
    move-object v1, p0

    move v2, p1

    move-object v3, v0

    move v4, v7

    move v5, v10

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lsun/misc/FormattedFloatingDecimal;->fillDecimal(I[CIIZ)V

    goto :goto_61

    .line 90
    :cond_56
    :goto_56
    add-int/lit8 p1, p1, -0x1

    .line 91
    move-object v1, p0

    move v2, p1

    move-object v3, v0

    move v4, v7

    move v5, v10

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lsun/misc/FormattedFloatingDecimal;->fillScientific(I[CIIZ)V

    .line 97
    :goto_61
    iput v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    .line 98
    goto :goto_95

    .line 80
    .end local v10    # "exp":I
    :cond_64
    add-int/lit8 v1, p1, 0x1

    invoke-static {v8, v0, v7, v1}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I[CII)I

    move-result v10

    .line 81
    .restart local v10    # "exp":I
    move-object v1, p0

    move v2, p1

    move-object v3, v0

    move v4, v7

    move v5, v10

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lsun/misc/FormattedFloatingDecimal;->fillScientific(I[CIIZ)V

    .line 82
    iput v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    .line 83
    goto :goto_95

    .line 75
    .end local v10    # "exp":I
    :cond_76
    add-int v1, v8, p1

    invoke-static {v8, v0, v7, v1}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I[CII)I

    move-result v10

    .line 76
    .restart local v10    # "exp":I
    move-object v1, p0

    move v2, p1

    move-object v3, v0

    move v4, v7

    move v5, v10

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lsun/misc/FormattedFloatingDecimal;->fillDecimal(I[CIIZ)V

    .line 77
    iput v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    .line 78
    goto :goto_95

    .line 70
    .end local v10    # "exp":I
    :cond_88
    move v10, v8

    .line 71
    .restart local v10    # "exp":I
    iput v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    .line 72
    move-object v1, p0

    move v2, p1

    move-object v3, v0

    move v4, v7

    move v5, v10

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lsun/misc/FormattedFloatingDecimal;->fillCompatible(I[CIIZ)V

    .line 73
    nop

    .line 102
    .end local v10    # "exp":I
    :goto_95
    return-void
.end method

.method private static blacklist applyPrecision(I[CII)I
    .registers 11
    .param p0, "decExp"    # I
    .param p1, "digits"    # [C
    .param p2, "nDigits"    # I
    .param p3, "prec"    # I

    .line 121
    if-ge p3, p2, :cond_4e

    if-gez p3, :cond_5

    goto :goto_4e

    .line 125
    :cond_5
    const/16 v0, 0x31

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-nez p3, :cond_1f

    .line 128
    aget-char v5, p1, v2

    if-lt v5, v1, :cond_1b

    .line 129
    aput-char v0, p1, v2

    .line 130
    invoke-static {p1, v4, p2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 131
    add-int/lit8 v0, p0, 0x1

    return v0

    .line 133
    :cond_1b
    invoke-static {p1, v2, p2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 134
    return p0

    .line 137
    :cond_1f
    aget-char v5, p1, p3

    .line 138
    .local v5, "q":I
    if-lt v5, v1, :cond_4a

    .line 139
    move v1, p3

    .line 140
    .local v1, "i":I
    add-int/lit8 v1, v1, -0x1

    aget-char v5, p1, v1

    .line 141
    const/16 v6, 0x39

    if-ne v5, v6, :cond_3f

    .line 142
    :goto_2c
    if-ne v5, v6, :cond_35

    if-lez v1, :cond_35

    .line 143
    add-int/lit8 v1, v1, -0x1

    aget-char v5, p1, v1

    goto :goto_2c

    .line 145
    :cond_35
    if-ne v5, v6, :cond_3f

    .line 147
    aput-char v0, p1, v2

    .line 148
    invoke-static {p1, v4, p2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 149
    add-int/lit8 v0, p0, 0x1

    return v0

    .line 152
    :cond_3f
    add-int/lit8 v0, v5, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v1

    .line 153
    add-int/lit8 v0, v1, 0x1

    invoke-static {p1, v0, p2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 154
    .end local v1    # "i":I
    goto :goto_4d

    .line 155
    :cond_4a
    invoke-static {p1, p3, p2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 157
    :goto_4d
    return p0

    .line 123
    .end local v5    # "q":I
    :cond_4e
    :goto_4e
    return p0
.end method

.method private static blacklist create(ZI)[C
    .registers 5
    .param p0, "isNegative"    # Z
    .param p1, "size"    # I

    .line 249
    if-eqz p0, :cond_c

    .line 250
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [C

    .line 251
    .local v0, "r":[C
    const/4 v1, 0x0

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    .line 252
    return-object v0

    .line 254
    .end local v0    # "r":[C
    :cond_c
    new-array v0, p1, [C

    return-object v0
.end method

.method private blacklist fillCompatible(I[CIIZ)V
    .registers 15
    .param p1, "precision"    # I
    .param p2, "digits"    # [C
    .param p3, "nDigits"    # I
    .param p4, "exp"    # I
    .param p5, "isNegative"    # Z

    .line 164
    move v0, p5

    .line 165
    .local v0, "startIndex":I
    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-lez p4, :cond_71

    const/16 v6, 0x8

    if-ge p4, v6, :cond_71

    .line 167
    if-ge p3, p4, :cond_37

    .line 168
    sub-int v6, p4, p3

    .line 169
    .local v6, "extraZeros":I
    add-int v7, p3, v6

    add-int/2addr v7, v3

    invoke-static {p5, v7}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 170
    invoke-static {p2, v2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v3, v0, p3

    add-int v7, v0, p3

    add-int/2addr v7, v6

    invoke-static {v2, v3, v7, v4}, Ljava/util/Arrays;->fill([CIIC)V

    .line 172
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v3, v0, p3

    add-int/2addr v3, v6

    aput-char v1, v2, v3

    .line 173
    add-int v1, v0, p3

    add-int/2addr v1, v6

    add-int/2addr v1, v5

    aput-char v4, v2, v1

    .line 174
    .end local v6    # "extraZeros":I
    goto/16 :goto_14f

    :cond_37
    if-ge p4, p3, :cond_59

    .line 175
    sub-int v3, p3, p4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 176
    .local v3, "t":I
    add-int/lit8 v4, p4, 0x1

    add-int/2addr v4, v3

    invoke-static {p5, v4}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v4

    iput-object v4, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 177
    invoke-static {p2, v2, v4, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v4, v0, p4

    aput-char v1, v2, v4

    .line 179
    add-int v1, v0, p4

    add-int/2addr v1, v5

    invoke-static {p2, p4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    .end local v3    # "t":I
    goto/16 :goto_14f

    .line 181
    :cond_59
    add-int/lit8 v3, p3, 0x2

    invoke-static {p5, v3}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 182
    invoke-static {p2, v2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v3, v0, p3

    aput-char v1, v2, v3

    .line 184
    add-int v1, v0, p3

    add-int/2addr v1, v5

    aput-char v4, v2, v1

    goto/16 :goto_14f

    .line 186
    :cond_71
    if-gtz p4, :cond_ce

    const/4 v6, -0x3

    if-le p4, v6, :cond_ce

    .line 187
    neg-int v3, p4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 188
    .local v3, "zeros":I
    add-int v6, p1, p4

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 190
    .local v6, "t":I
    if-lez v3, :cond_ad

    .line 191
    add-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v6

    invoke-static {p5, v5}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v5

    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 192
    aput-char v4, v5, v0

    .line 193
    add-int/lit8 v7, v0, 0x1

    aput-char v1, v5, v7

    .line 194
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v3

    invoke-static {v5, v1, v7, v4}, Ljava/util/Arrays;->fill([CIIC)V

    .line 195
    if-lez v6, :cond_cc

    .line 197
    iget-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v3

    invoke-static {p2, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_cc

    .line 199
    :cond_ad
    if-lez v6, :cond_c4

    .line 200
    add-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v6

    invoke-static {p5, v5}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v5

    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 201
    aput-char v4, v5, v0

    .line 202
    add-int/lit8 v4, v0, 0x1

    aput-char v1, v5, v4

    .line 204
    add-int/lit8 v1, v0, 0x2

    invoke-static {p2, v2, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_cc

    .line 206
    :cond_c4
    invoke-static {p5, v5}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v1

    iput-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 207
    aput-char v4, v1, v0

    .line 209
    .end local v3    # "zeros":I
    .end local v6    # "t":I
    :cond_cc
    :goto_cc
    goto/16 :goto_14f

    .line 210
    :cond_ce
    const/4 v6, 0x3

    if-le p3, v5, :cond_e9

    .line 211
    add-int/lit8 v7, p3, 0x1

    invoke-static {p5, v7}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v7

    iput-object v7, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 212
    aget-char v8, p2, v2

    aput-char v8, v7, v0

    .line 213
    add-int/lit8 v8, v0, 0x1

    aput-char v1, v7, v8

    .line 214
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v8, p3, -0x1

    invoke-static {p2, v5, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_fb

    .line 216
    :cond_e9
    invoke-static {p5, v6}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v7

    iput-object v7, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 217
    aget-char v8, p2, v2

    aput-char v8, v7, v0

    .line 218
    add-int/lit8 v8, v0, 0x1

    aput-char v1, v7, v8

    .line 219
    add-int/lit8 v1, v0, 0x2

    aput-char v4, v7, v1

    .line 222
    :goto_fb
    if-gtz p4, :cond_fe

    move v2, v5

    :cond_fe
    move v1, v2

    .line 223
    .local v1, "isNegExp":Z
    if-eqz v1, :cond_105

    .line 224
    neg-int v2, p4

    add-int/2addr v2, v5

    .line 225
    .local v2, "e":I
    const/4 v7, 0x1

    .local v7, "expStartIntex":I
    goto :goto_108

    .line 227
    .end local v2    # "e":I
    .end local v7    # "expStartIntex":I
    :cond_105
    add-int/lit8 v2, p4, -0x1

    .line 228
    .restart local v2    # "e":I
    const/4 v7, 0x0

    .line 231
    .restart local v7    # "expStartIntex":I
    :goto_108
    const/16 v8, 0x9

    if-gt v2, v8, :cond_118

    .line 232
    invoke-static {v1, v5}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    .line 233
    add-int/lit8 v4, v2, 0x30

    int-to-char v4, v4

    aput-char v4, v3, v7

    goto :goto_14f

    .line 234
    :cond_118
    const/16 v5, 0x63

    if-gt v2, v5, :cond_131

    .line 235
    invoke-static {v1, v3}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    .line 236
    div-int/lit8 v5, v2, 0xa

    add-int/2addr v5, v4

    int-to-char v5, v5

    aput-char v5, v3, v7

    .line 237
    add-int/lit8 v5, v7, 0x1

    rem-int/lit8 v6, v2, 0xa

    add-int/2addr v6, v4

    int-to-char v4, v6

    aput-char v4, v3, v5

    goto :goto_14f

    .line 239
    :cond_131
    invoke-static {v1, v6}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    .line 240
    div-int/lit8 v5, v2, 0x64

    add-int/2addr v5, v4

    int-to-char v5, v5

    aput-char v5, v3, v7

    .line 241
    rem-int/lit8 v2, v2, 0x64

    .line 242
    add-int/lit8 v5, v7, 0x1

    div-int/lit8 v6, v2, 0xa

    add-int/2addr v6, v4

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 243
    add-int/lit8 v5, v7, 0x2

    rem-int/lit8 v6, v2, 0xa

    add-int/2addr v6, v4

    int-to-char v4, v6

    aput-char v4, v3, v5

    .line 246
    .end local v1    # "isNegExp":Z
    .end local v2    # "e":I
    .end local v7    # "expStartIntex":I
    :goto_14f
    return-void
.end method

.method private blacklist fillDecimal(I[CIIZ)V
    .registers 14
    .param p1, "precision"    # I
    .param p2, "digits"    # [C
    .param p3, "nDigits"    # I
    .param p4, "exp"    # I
    .param p5, "isNegative"    # Z

    .line 263
    move v0, p5

    .line 264
    .local v0, "startIndex":I
    const/16 v1, 0x2e

    const/4 v2, 0x1

    const/16 v3, 0x30

    const/4 v4, 0x0

    if-lez p4, :cond_44

    .line 266
    if-ge p3, p4, :cond_1f

    .line 267
    invoke-static {p5, p4}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v1

    iput-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 268
    invoke-static {p2, v4, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iget-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v2, v0, p3

    add-int v4, v0, p4

    invoke-static {v1, v2, v4, v3}, Ljava/util/Arrays;->fill([CIIC)V

    goto/16 :goto_9c

    .line 274
    :cond_1f
    sub-int v3, p3, p4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 275
    .local v3, "t":I
    if-lez v3, :cond_2a

    add-int/lit8 v5, v3, 0x1

    goto :goto_2b

    :cond_2a
    move v5, v4

    :goto_2b
    add-int/2addr v5, p4

    invoke-static {p5, v5}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v5

    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 276
    invoke-static {p2, v4, v5, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    if-lez v3, :cond_43

    .line 281
    iget-object v4, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v5, v0, p4

    aput-char v1, v4, v5

    .line 282
    add-int v1, v0, p4

    add-int/2addr v1, v2

    invoke-static {p2, p4, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    .end local v3    # "t":I
    :cond_43
    goto :goto_9c

    .line 285
    :cond_44
    if-gtz p4, :cond_9c

    .line 286
    neg-int v5, p4

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 287
    .local v5, "zeros":I
    add-int v6, p1, p4

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 289
    .local v6, "t":I
    if-lez v5, :cond_7d

    .line 290
    add-int/lit8 v2, v5, 0x2

    add-int/2addr v2, v6

    invoke-static {p5, v2}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v2

    iput-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 291
    aput-char v3, v2, v0

    .line 292
    add-int/lit8 v7, v0, 0x1

    aput-char v1, v2, v7

    .line 293
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v5

    invoke-static {v2, v1, v7, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 294
    if-lez v6, :cond_9c

    .line 296
    iget-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v5

    invoke-static {p2, v4, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9c

    .line 298
    :cond_7d
    if-lez v6, :cond_94

    .line 299
    add-int/lit8 v2, v5, 0x2

    add-int/2addr v2, v6

    invoke-static {p5, v2}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v2

    iput-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 300
    aput-char v3, v2, v0

    .line 301
    add-int/lit8 v3, v0, 0x1

    aput-char v1, v2, v3

    .line 303
    add-int/lit8 v1, v0, 0x2

    invoke-static {p2, v4, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9c

    .line 305
    :cond_94
    invoke-static {p5, v2}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v1

    iput-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 306
    aput-char v3, v1, v0

    .line 309
    .end local v5    # "zeros":I
    .end local v6    # "t":I
    :cond_9c
    :goto_9c
    return-void
.end method

.method private blacklist fillScientific(I[CIIZ)V
    .registers 22
    .param p1, "precision"    # I
    .param p2, "digits"    # [C
    .param p3, "nDigits"    # I
    .param p4, "exp"    # I
    .param p5, "isNegative"    # Z

    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p5

    .line 316
    .local v4, "startIndex":I
    add-int/lit8 v5, p3, -0x1

    move/from16 v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 317
    .local v5, "t":I
    const/4 v8, 0x1

    if-lez v5, :cond_32

    .line 318
    add-int/lit8 v9, v5, 0x2

    invoke-static {v3, v9}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v9

    iput-object v9, v0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 319
    aget-char v10, v1, v7

    aput-char v10, v9, v4

    .line 320
    add-int/lit8 v10, v4, 0x1

    const/16 v11, 0x2e

    aput-char v11, v9, v10

    .line 321
    add-int/lit8 v10, v4, 0x2

    invoke-static {v1, v8, v9, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3c

    .line 323
    :cond_32
    invoke-static {v3, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v9

    iput-object v9, v0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 324
    aget-char v10, v1, v7

    aput-char v10, v9, v4

    .line 328
    :goto_3c
    if-gtz v2, :cond_43

    .line 329
    const/16 v9, 0x2d

    .line 330
    .local v9, "expSign":C
    neg-int v10, v2

    add-int/2addr v10, v8

    .local v10, "e":I
    goto :goto_47

    .line 332
    .end local v9    # "expSign":C
    .end local v10    # "e":I
    :cond_43
    const/16 v9, 0x2b

    .line 333
    .restart local v9    # "expSign":C
    add-int/lit8 v10, v2, -0x1

    .line 336
    .restart local v10    # "e":I
    :goto_47
    const/16 v11, 0x9

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/16 v14, 0x30

    if-gt v10, v11, :cond_5d

    .line 337
    new-array v11, v12, [C

    aput-char v9, v11, v7

    aput-char v14, v11, v8

    add-int/lit8 v7, v10, 0x30

    int-to-char v7, v7

    aput-char v7, v11, v13

    iput-object v11, v0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    goto :goto_8f

    .line 339
    :cond_5d
    const/16 v11, 0x63

    if-gt v10, v11, :cond_74

    .line 340
    new-array v11, v12, [C

    aput-char v9, v11, v7

    div-int/lit8 v7, v10, 0xa

    add-int/2addr v7, v14

    int-to-char v7, v7

    aput-char v7, v11, v8

    rem-int/lit8 v7, v10, 0xa

    add-int/2addr v7, v14

    int-to-char v7, v7

    aput-char v7, v11, v13

    iput-object v11, v0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    goto :goto_8f

    .line 343
    :cond_74
    div-int/lit8 v11, v10, 0x64

    add-int/2addr v11, v14

    int-to-char v11, v11

    .line 344
    .local v11, "hiExpChar":C
    rem-int/lit8 v10, v10, 0x64

    .line 345
    const/4 v15, 0x4

    new-array v15, v15, [C

    aput-char v9, v15, v7

    aput-char v11, v15, v8

    div-int/lit8 v7, v10, 0xa

    add-int/2addr v7, v14

    int-to-char v7, v7

    aput-char v7, v15, v13

    rem-int/lit8 v7, v10, 0xa

    add-int/2addr v7, v14

    int-to-char v7, v7

    aput-char v7, v15, v12

    iput-object v15, v0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    .line 348
    .end local v11    # "hiExpChar":C
    :goto_8f
    return-void
.end method

.method private static blacklist getBuffer()[C
    .registers 1

    .line 54
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->threadLocalCharBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static blacklist valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;
    .registers 6
    .param p0, "d"    # D
    .param p2, "precision"    # I
    .param p3, "form"    # Lsun/misc/FormattedFloatingDecimal$Form;

    .line 36
    sget-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne p3, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 37
    :goto_7
    invoke-static {p0, p1, v0}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(DZ)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    .line 38
    .local v0, "fdConverter":Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;
    new-instance v1, Lsun/misc/FormattedFloatingDecimal;

    invoke-direct {v1, p2, p3, v0}, Lsun/misc/FormattedFloatingDecimal;-><init>(ILsun/misc/FormattedFloatingDecimal$Form;Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;)V

    return-object v1
.end method


# virtual methods
.method public blacklist getExponent()[C
    .registers 2

    .line 114
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    return-object v0
.end method

.method public blacklist getExponentRounded()I
    .registers 2

    .line 106
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public blacklist getMantissa()[C
    .registers 2

    .line 110
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    return-object v0
.end method
