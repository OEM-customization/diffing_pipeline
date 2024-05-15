.class public Lsun/misc/FormattedFloatingDecimal;
.super Ljava/lang/Object;
.source "FormattedFloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/FormattedFloatingDecimal$1;,
        Lsun/misc/FormattedFloatingDecimal$Form;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I

.field private static final threadLocalCharBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private decExponentRounded:I

.field private exponent:[C

.field private mantissa:[C


# direct methods
.method private static synthetic -getsun-misc-FormattedFloatingDecimal$FormSwitchesValues()[I
    .registers 3

    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->-sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->-sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lsun/misc/FormattedFloatingDecimal$Form;->values()[Lsun/misc/FormattedFloatingDecimal$Form;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->-sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/misc/FormattedFloatingDecimal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    .line 46
    new-instance v0, Lsun/misc/FormattedFloatingDecimal$1;

    invoke-direct {v0}, Lsun/misc/FormattedFloatingDecimal$1;-><init>()V

    .line 45
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->threadLocalCharBuffer:Ljava/lang/ThreadLocal;

    .line 30
    return-void
.end method

.method private constructor <init>(ILsun/misc/FormattedFloatingDecimal$Form;Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;)V
    .registers 16
    .param p1, "precision"    # I
    .param p2, "form"    # Lsun/misc/FormattedFloatingDecimal$Form;
    .param p3, "fdConverter"    # Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    .prologue
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

    move-result-object v2

    .line 64
    .local v2, "digits":[C
    invoke-interface {p3, v2}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->getDigits([C)I

    move-result v3

    .line 65
    .local v3, "nDigits":I
    invoke-interface {p3}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->getDecimalExponent()I

    move-result v4

    .line 67
    .local v4, "decExp":I
    invoke-interface {p3}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->isNegative()Z

    move-result v5

    .line 68
    .local v5, "isNegative":Z
    invoke-static {}, Lsun/misc/FormattedFloatingDecimal;->-getsun-misc-FormattedFloatingDecimal$FormSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8e

    .line 100
    sget-boolean v0, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    if-nez v0, :cond_46

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :pswitch_3e
    move v10, v4

    .line 71
    .local v10, "exp":I
    iput v4, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    move-object v0, p0

    move v1, p1

    .line 72
    invoke-direct/range {v0 .. v5}, Lsun/misc/FormattedFloatingDecimal;->fillCompatible(I[CIIZ)V

    .line 102
    .end local v10    # "exp":I
    :cond_46
    :goto_46
    return-void

    .line 75
    :pswitch_47
    add-int v0, v4, p1

    invoke-static {v4, v2, v3, v0}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I[CII)I

    move-result v10

    .restart local v10    # "exp":I
    move-object v6, p0

    move v7, p1

    move-object v8, v2

    move v9, v3

    move v11, v5

    .line 76
    invoke-direct/range {v6 .. v11}, Lsun/misc/FormattedFloatingDecimal;->fillDecimal(I[CIIZ)V

    .line 77
    iput v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    goto :goto_46

    .line 80
    .end local v10    # "exp":I
    :pswitch_58
    add-int/lit8 v0, p1, 0x1

    invoke-static {v4, v2, v3, v0}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I[CII)I

    move-result v10

    .restart local v10    # "exp":I
    move-object v6, p0

    move v7, p1

    move-object v8, v2

    move v9, v3

    move v11, v5

    .line 81
    invoke-direct/range {v6 .. v11}, Lsun/misc/FormattedFloatingDecimal;->fillScientific(I[CIIZ)V

    .line 82
    iput v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    goto :goto_46

    .line 85
    .end local v10    # "exp":I
    :pswitch_69
    invoke-static {v4, v2, v3, p1}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I[CII)I

    move-result v10

    .line 88
    .restart local v10    # "exp":I
    add-int/lit8 v0, v10, -0x1

    const/4 v1, -0x4

    if-lt v0, v1, :cond_76

    add-int/lit8 v0, v10, -0x1

    if-lt v0, p1, :cond_83

    .line 90
    :cond_76
    add-int/lit8 p1, p1, -0x1

    move-object v6, p0

    move v7, p1

    move-object v8, v2

    move v9, v3

    move v11, v5

    .line 91
    invoke-direct/range {v6 .. v11}, Lsun/misc/FormattedFloatingDecimal;->fillScientific(I[CIIZ)V

    .line 97
    :goto_80
    iput v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    goto :goto_46

    .line 94
    :cond_83
    sub-int/2addr p1, v10

    move-object v6, p0

    move v7, p1

    move-object v8, v2

    move v9, v3

    move v11, v5

    .line 95
    invoke-direct/range {v6 .. v11}, Lsun/misc/FormattedFloatingDecimal;->fillDecimal(I[CIIZ)V

    goto :goto_80

    .line 68
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_47
        :pswitch_69
        :pswitch_58
    .end packed-switch
.end method

.method private static applyPrecision(I[CII)I
    .registers 12
    .param p0, "decExp"    # I
    .param p1, "digits"    # [C
    .param p2, "nDigits"    # I
    .param p3, "prec"    # I

    .prologue
    const/16 v7, 0x31

    const/4 v6, 0x1

    const/16 v3, 0x39

    const/16 v5, 0x30

    const/4 v4, 0x0

    .line 121
    if-ge p3, p2, :cond_c

    if-gez p3, :cond_d

    .line 123
    :cond_c
    return p0

    .line 125
    :cond_d
    if-nez p3, :cond_21

    .line 128
    aget-char v2, p1, v4

    const/16 v3, 0x35

    if-lt v2, v3, :cond_1d

    .line 129
    aput-char v7, p1, v4

    .line 130
    invoke-static {p1, v6, p2, v5}, Ljava/util/Arrays;->fill([CIIC)V

    .line 131
    add-int/lit8 v2, p0, 0x1

    return v2

    .line 133
    :cond_1d
    invoke-static {p1, v4, p2, v5}, Ljava/util/Arrays;->fill([CIIC)V

    .line 134
    return p0

    .line 137
    :cond_21
    aget-char v1, p1, p3

    .line 138
    .local v1, "q":I
    const/16 v2, 0x35

    if-lt v1, v2, :cond_4c

    .line 139
    move v0, p3

    .line 140
    .local v0, "i":I
    add-int/lit8 v0, p3, -0x1

    aget-char v1, p1, v0

    .line 141
    if-ne v1, v3, :cond_41

    .line 142
    :goto_2e
    if-ne v1, v3, :cond_37

    if-lez v0, :cond_37

    .line 143
    add-int/lit8 v0, v0, -0x1

    aget-char v1, p1, v0

    goto :goto_2e

    .line 145
    :cond_37
    if-ne v1, v3, :cond_41

    .line 147
    aput-char v7, p1, v4

    .line 148
    invoke-static {p1, v6, p2, v5}, Ljava/util/Arrays;->fill([CIIC)V

    .line 149
    add-int/lit8 v2, p0, 0x1

    return v2

    .line 152
    :cond_41
    add-int/lit8 v2, v1, 0x1

    int-to-char v2, v2

    aput-char v2, p1, v0

    .line 153
    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2, p2, v5}, Ljava/util/Arrays;->fill([CIIC)V

    .line 157
    .end local v0    # "i":I
    :goto_4b
    return p0

    .line 155
    :cond_4c
    invoke-static {p1, p3, p2, v5}, Ljava/util/Arrays;->fill([CIIC)V

    goto :goto_4b
.end method

.method private static create(ZI)[C
    .registers 5
    .param p0, "isNegative"    # Z
    .param p1, "size"    # I

    .prologue
    .line 249
    if-eqz p0, :cond_c

    .line 250
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [C

    .line 251
    .local v0, "r":[C
    const/16 v1, 0x2d

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 252
    return-object v0

    .line 254
    .end local v0    # "r":[C
    :cond_c
    new-array v1, p1, [C

    return-object v1
.end method

.method private fillCompatible(I[CIIZ)V
    .registers 18
    .param p1, "precision"    # I
    .param p2, "digits"    # [C
    .param p3, "nDigits"    # I
    .param p4, "exp"    # I
    .param p5, "isNegative"    # Z

    .prologue
    .line 164
    if-eqz p5, :cond_44

    const/4 v5, 0x1

    .line 165
    .local v5, "startIndex":I
    :goto_3
    if-lez p4, :cond_9a

    const/16 v8, 0x8

    move/from16 v0, p4

    if-ge v0, v8, :cond_9a

    .line 167
    move/from16 v0, p4

    if-ge p3, v0, :cond_46

    .line 168
    sub-int v3, p4, p3

    .line 169
    .local v3, "extraZeros":I
    add-int v8, p3, v3

    add-int/lit8 v8, v8, 0x2

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 170
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v9, 0x0

    invoke-static {p2, v9, v8, v5, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 171
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v9, v5, p3

    add-int v10, v5, p3

    add-int/2addr v10, v3

    const/16 v11, 0x30

    invoke-static {v8, v9, v10, v11}, Ljava/util/Arrays;->fill([CIIC)V

    .line 172
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v9, v5, p3

    add-int/2addr v9, v3

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    .line 173
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v9, v5, p3

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x30

    aput-char v10, v8, v9

    .line 246
    .end local v3    # "extraZeros":I
    :cond_43
    :goto_43
    return-void

    .line 164
    .end local v5    # "startIndex":I
    :cond_44
    const/4 v5, 0x0

    .restart local v5    # "startIndex":I
    goto :goto_3

    .line 174
    :cond_46
    move/from16 v0, p4

    if-ge v0, p3, :cond_77

    .line 175
    sub-int v8, p3, p4

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 176
    .local v6, "t":I
    add-int/lit8 v8, p4, 0x1

    add-int/2addr v8, v6

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 177
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v9, 0x0

    move/from16 v0, p4

    invoke-static {p2, v9, v8, v5, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 178
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v9, v5, p4

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    .line 179
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v9, v5, p4

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p4

    invoke-static {p2, v0, v8, v9, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_43

    .line 181
    .end local v6    # "t":I
    :cond_77
    add-int/lit8 v8, p3, 0x2

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 182
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v9, 0x0

    invoke-static {p2, v9, v8, v5, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 183
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v9, v5, p3

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    .line 184
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v9, v5, p3

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x30

    aput-char v10, v8, v9

    goto :goto_43

    .line 186
    :cond_9a
    if-gtz p4, :cond_122

    const/4 v8, -0x3

    move/from16 v0, p4

    if-le v0, v8, :cond_122

    .line 187
    move/from16 v0, p4

    neg-int v8, v0

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 188
    .local v7, "zeros":I
    add-int v8, p1, p4

    invoke-static {p3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 190
    .restart local v6    # "t":I
    if-lez v7, :cond_ec

    .line 191
    add-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v6

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 192
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/16 v9, 0x30

    aput-char v9, v8, v5

    .line 193
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x1

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    .line 194
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x2

    add-int/lit8 v10, v5, 0x2

    add-int/2addr v10, v7

    const/16 v11, 0x30

    invoke-static {v8, v9, v10, v11}, Ljava/util/Arrays;->fill([CIIC)V

    .line 195
    if-lez v6, :cond_43

    .line 197
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x2

    add-int/2addr v9, v7

    const/4 v10, 0x0

    invoke-static {p2, v10, v8, v9, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto/16 :goto_43

    .line 199
    :cond_ec
    if-lez v6, :cond_111

    .line 200
    add-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v6

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 201
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/16 v9, 0x30

    aput-char v9, v8, v5

    .line 202
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x1

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    .line 204
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x2

    const/4 v10, 0x0

    invoke-static {p2, v10, v8, v9, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto/16 :goto_43

    .line 206
    :cond_111
    const/4 v8, 0x1

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 207
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/16 v9, 0x30

    aput-char v9, v8, v5

    goto/16 :goto_43

    .line 210
    .end local v6    # "t":I
    .end local v7    # "zeros":I
    :cond_122
    const/4 v8, 0x1

    if-le p3, v8, :cond_167

    .line 211
    add-int/lit8 v8, p3, 0x1

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 212
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v9, 0x0

    aget-char v9, p2, v9

    aput-char v9, v8, v5

    .line 213
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x1

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    .line 214
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x2

    add-int/lit8 v10, p3, -0x1

    const/4 v11, 0x1

    invoke-static {p2, v11, v8, v9, v10}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 222
    :goto_148
    if-gtz p4, :cond_188

    const/4 v4, 0x1

    .line 223
    .local v4, "isNegExp":Z
    :goto_14b
    if-eqz v4, :cond_18a

    .line 224
    move/from16 v0, p4

    neg-int v8, v0

    add-int/lit8 v1, v8, 0x1

    .line 225
    .local v1, "e":I
    const/4 v2, 0x1

    .line 231
    .local v2, "expStartIntex":I
    :goto_153
    const/16 v8, 0x9

    if-gt v1, v8, :cond_18e

    .line 232
    const/4 v8, 0x1

    invoke-static {v4, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    .line 233
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    add-int/lit8 v9, v1, 0x30

    int-to-char v9, v9

    aput-char v9, v8, v2

    goto/16 :goto_43

    .line 216
    .end local v1    # "e":I
    .end local v2    # "expStartIntex":I
    .end local v4    # "isNegExp":Z
    :cond_167
    const/4 v8, 0x3

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 217
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v9, 0x0

    aget-char v9, p2, v9

    aput-char v9, v8, v5

    .line 218
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x1

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    .line 219
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x2

    const/16 v10, 0x30

    aput-char v10, v8, v9

    goto :goto_148

    .line 222
    :cond_188
    const/4 v4, 0x0

    .restart local v4    # "isNegExp":Z
    goto :goto_14b

    .line 227
    :cond_18a
    add-int/lit8 v1, p4, -0x1

    .line 228
    .restart local v1    # "e":I
    const/4 v2, 0x0

    .restart local v2    # "expStartIntex":I
    goto :goto_153

    .line 234
    :cond_18e
    const/16 v8, 0x63

    if-gt v1, v8, :cond_1af

    .line 235
    const/4 v8, 0x2

    invoke-static {v4, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    .line 236
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    div-int/lit8 v9, v1, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    aput-char v9, v8, v2

    .line 237
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    add-int/lit8 v9, v2, 0x1

    rem-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v9

    goto/16 :goto_43

    .line 239
    :cond_1af
    const/4 v8, 0x3

    invoke-static {v4, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    .line 240
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    div-int/lit8 v9, v1, 0x64

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    aput-char v9, v8, v2

    .line 241
    rem-int/lit8 v1, v1, 0x64

    .line 242
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    add-int/lit8 v9, v2, 0x1

    div-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v9

    .line 243
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    add-int/lit8 v9, v2, 0x2

    rem-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v9

    goto/16 :goto_43
.end method

.method private fillDecimal(I[CIIZ)V
    .registers 14
    .param p1, "precision"    # I
    .param p2, "digits"    # [C
    .param p3, "nDigits"    # I
    .param p4, "exp"    # I
    .param p5, "isNegative"    # Z

    .prologue
    const/16 v6, 0x2e

    const/16 v7, 0x30

    const/4 v4, 0x0

    .line 263
    if-eqz p5, :cond_21

    const/4 v0, 0x1

    .line 264
    .local v0, "startIndex":I
    :goto_8
    if-lez p4, :cond_4d

    .line 266
    if-ge p3, p4, :cond_23

    .line 267
    invoke-static {p5, p4}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 268
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    invoke-static {p2, v4, v3, v0, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 269
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v4, v0, p3

    add-int v5, v0, p4

    invoke-static {v3, v4, v5, v7}, Ljava/util/Arrays;->fill([CIIC)V

    .line 309
    :cond_20
    :goto_20
    return-void

    .line 263
    .end local v0    # "startIndex":I
    :cond_21
    const/4 v0, 0x0

    .restart local v0    # "startIndex":I
    goto :goto_8

    .line 274
    :cond_23
    sub-int v3, p3, p4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 275
    .local v1, "t":I
    if-lez v1, :cond_4b

    add-int/lit8 v3, v1, 0x1

    :goto_2d
    add-int/2addr v3, p4

    invoke-static {p5, v3}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 276
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    invoke-static {p2, v4, v3, v0, p4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 280
    if-lez v1, :cond_20

    .line 281
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v4, v0, p4

    aput-char v6, v3, v4

    .line 282
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v4, v0, p4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p2, p4, v3, v4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_20

    :cond_4b
    move v3, v4

    .line 275
    goto :goto_2d

    .line 285
    .end local v1    # "t":I
    :cond_4d
    if-gtz p4, :cond_20

    .line 286
    neg-int v3, p4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 287
    .local v2, "zeros":I
    add-int v3, p1, p4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 289
    .restart local v1    # "t":I
    if-lez v2, :cond_8c

    .line 290
    add-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    invoke-static {p5, v3}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 291
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    aput-char v7, v3, v0

    .line 292
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v5, v0, 0x1

    aput-char v6, v3, v5

    .line 293
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v2

    invoke-static {v3, v5, v6, v7}, Ljava/util/Arrays;->fill([CIIC)V

    .line 294
    if-lez v1, :cond_20

    .line 296
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    invoke-static {p2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_20

    .line 298
    :cond_8c
    if-lez v1, :cond_aa

    .line 299
    add-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    invoke-static {p5, v3}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 300
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    aput-char v7, v3, v0

    .line 301
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v5, v0, 0x1

    aput-char v6, v3, v5

    .line 303
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v5, v0, 0x2

    invoke-static {p2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto/16 :goto_20

    .line 305
    :cond_aa
    const/4 v3, 0x1

    invoke-static {p5, v3}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 306
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    aput-char v7, v3, v0

    goto/16 :goto_20
.end method

.method private fillScientific(I[CIIZ)V
    .registers 14
    .param p1, "precision"    # I
    .param p2, "digits"    # [C
    .param p3, "nDigits"    # I
    .param p4, "exp"    # I
    .param p5, "isNegative"    # Z

    .prologue
    .line 315
    if-eqz p5, :cond_4e

    const/4 v3, 0x1

    .line 316
    .local v3, "startIndex":I
    :goto_3
    add-int/lit8 v5, p3, -0x1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 317
    .local v4, "t":I
    if-lez v4, :cond_50

    .line 318
    add-int/lit8 v5, v4, 0x2

    invoke-static {p5, v5}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v5

    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 319
    iget-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v6, 0x0

    aget-char v6, p2, v6

    aput-char v6, v5, v3

    .line 320
    iget-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v6, v3, 0x1

    const/16 v7, 0x2e

    aput-char v7, v5, v6

    .line 321
    iget-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v6, v3, 0x2

    const/4 v7, 0x1

    invoke-static {p2, v7, v5, v6, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 328
    :goto_2f
    if-gtz p4, :cond_5f

    .line 329
    const/16 v1, 0x2d

    .line 330
    .local v1, "expSign":C
    neg-int v5, p4

    add-int/lit8 v0, v5, 0x1

    .line 336
    .local v0, "e":I
    :goto_36
    const/16 v5, 0x9

    if-gt v0, v5, :cond_64

    .line 337
    const/4 v5, 0x3

    new-array v5, v5, [C

    const/4 v6, 0x0

    aput-char v1, v5, v6

    .line 338
    const/16 v6, 0x30

    const/4 v7, 0x1

    aput-char v6, v5, v7

    add-int/lit8 v6, v0, 0x30

    int-to-char v6, v6

    const/4 v7, 0x2

    aput-char v6, v5, v7

    .line 337
    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    .line 348
    :goto_4d
    return-void

    .line 315
    .end local v0    # "e":I
    .end local v1    # "expSign":C
    .end local v3    # "startIndex":I
    .end local v4    # "t":I
    :cond_4e
    const/4 v3, 0x0

    .restart local v3    # "startIndex":I
    goto :goto_3

    .line 323
    .restart local v4    # "t":I
    :cond_50
    const/4 v5, 0x1

    invoke-static {p5, v5}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v5

    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    .line 324
    iget-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v6, 0x0

    aget-char v6, p2, v6

    aput-char v6, v5, v3

    goto :goto_2f

    .line 332
    :cond_5f
    const/16 v1, 0x2b

    .line 333
    .restart local v1    # "expSign":C
    add-int/lit8 v0, p4, -0x1

    .restart local v0    # "e":I
    goto :goto_36

    .line 339
    :cond_64
    const/16 v5, 0x63

    if-gt v0, v5, :cond_81

    .line 340
    const/4 v5, 0x3

    new-array v5, v5, [C

    const/4 v6, 0x0

    aput-char v1, v5, v6

    .line 341
    div-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    const/4 v7, 0x1

    aput-char v6, v5, v7

    rem-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    const/4 v7, 0x2

    aput-char v6, v5, v7

    .line 340
    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    goto :goto_4d

    .line 343
    :cond_81
    div-int/lit8 v5, v0, 0x64

    add-int/lit8 v5, v5, 0x30

    int-to-char v2, v5

    .line 344
    .local v2, "hiExpChar":C
    rem-int/lit8 v0, v0, 0x64

    .line 345
    const/4 v5, 0x4

    new-array v5, v5, [C

    const/4 v6, 0x0

    aput-char v1, v5, v6

    .line 346
    const/4 v6, 0x1

    aput-char v2, v5, v6

    div-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    const/4 v7, 0x2

    aput-char v6, v5, v7

    rem-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    const/4 v7, 0x3

    aput-char v6, v5, v7

    .line 345
    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    goto :goto_4d
.end method

.method private static getBuffer()[C
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->threadLocalCharBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;
    .registers 6
    .param p0, "d"    # D
    .param p2, "precision"    # I
    .param p3, "form"    # Lsun/misc/FormattedFloatingDecimal$Form;

    .prologue
    .line 37
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne p3, v1, :cond_f

    const/4 v1, 0x1

    :goto_5
    invoke-static {p0, p1, v1}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(DZ)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    .line 38
    .local v0, "fdConverter":Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;
    new-instance v1, Lsun/misc/FormattedFloatingDecimal;

    invoke-direct {v1, p2, p3, v0}, Lsun/misc/FormattedFloatingDecimal;-><init>(ILsun/misc/FormattedFloatingDecimal$Form;Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;)V

    return-object v1

    .line 37
    .end local v0    # "fdConverter":Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;
    :cond_f
    const/4 v1, 0x0

    goto :goto_5
.end method


# virtual methods
.method public getExponent()[C
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    return-object v0
.end method

.method public getExponentRounded()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMantissa()[C
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    return-object v0
.end method
