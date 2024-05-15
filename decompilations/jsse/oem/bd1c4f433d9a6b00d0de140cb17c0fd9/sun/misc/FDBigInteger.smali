.class public Lsun/misc/FDBigInteger;
.super Ljava/lang/Object;
.source "FDBigInteger.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final LONG_5_POW:[J

.field private static final LONG_MASK:J = 0xffffffffL

.field private static final MAX_FIVE_POW:I = 0x154

.field private static final POW_5_CACHE:[Lsun/misc/FDBigInteger;

.field static final SMALL_5_POW:[I

.field public static final ZERO:Lsun/misc/FDBigInteger;


# instance fields
.field private data:[I

.field private isImmutable:Z

.field private nWords:I

.field private offset:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x154

    const/4 v5, 0x0

    const-class v3, Lsun/misc/FDBigInteger;

    invoke-virtual {v3}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    sput-boolean v3, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    .line 67
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_68

    sput-object v3, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    .line 84
    const/16 v3, 0x1b

    new-array v3, v3, [J

    fill-array-data v3, :array_88

    sput-object v3, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    .line 122
    new-array v3, v6, [Lsun/misc/FDBigInteger;

    sput-object v3, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "i":I
    :goto_24
    sget-object v3, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v3, v3

    if-ge v0, v3, :cond_41

    .line 125
    new-instance v1, Lsun/misc/FDBigInteger;

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget-object v4, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v4, v4, v0

    aput v4, v3, v5

    invoke-direct {v1, v3, v5}, Lsun/misc/FDBigInteger;-><init>([II)V

    .line 126
    .local v1, "pow5":Lsun/misc/FDBigInteger;
    invoke-virtual {v1}, Lsun/misc/FDBigInteger;->makeImmutable()V

    .line 127
    sget-object v3, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    aput-object v1, v3, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 130
    .end local v1    # "pow5":Lsun/misc/FDBigInteger;
    :cond_41
    sget-object v3, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    add-int/lit8 v4, v0, -0x1

    aget-object v2, v3, v4

    .line 131
    .local v2, "prev":Lsun/misc/FDBigInteger;
    :goto_47
    if-ge v0, v6, :cond_58

    .line 132
    sget-object v3, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    const/4 v4, 0x5

    invoke-direct {v2, v4}, Lsun/misc/FDBigInteger;->mult(I)Lsun/misc/FDBigInteger;

    move-result-object v2

    aput-object v2, v3, v0

    .line 133
    invoke-virtual {v2}, Lsun/misc/FDBigInteger;->makeImmutable()V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 139
    :cond_58
    new-instance v3, Lsun/misc/FDBigInteger;

    new-array v4, v5, [I

    invoke-direct {v3, v4, v5}, Lsun/misc/FDBigInteger;-><init>([II)V

    sput-object v3, Lsun/misc/FDBigInteger;->ZERO:Lsun/misc/FDBigInteger;

    .line 143
    sget-object v3, Lsun/misc/FDBigInteger;->ZERO:Lsun/misc/FDBigInteger;

    invoke-virtual {v3}, Lsun/misc/FDBigInteger;->makeImmutable()V

    .line 34
    return-void

    .line 67
    nop

    :array_68
    .array-data 4
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
    .end array-data

    .line 84
    :array_88
    .array-data 8
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
        0x16bcc41e9L
        0x71afd498dL
        0x2386f26fc1L
        0xb1a2bc2ec5L
        0x3782dace9d9L
        0x1158e460913dL
        0x56bc75e2d631L
        0x1b1ae4d6e2ef5L
        0x878678326eac9L
        0x2a5a058fc295edL
        0xd3c21bcecceda1L
        0x422ca8b0a00a425L    # 9.6411383183208E-289
        0x14adf4b7320334b9L
    .end array-data
.end method

.method public constructor <init>(J[CII)V
    .registers 19
    .param p1, "lValue"    # J
    .param p3, "digits"    # [C
    .param p4, "kDigits"    # I
    .param p5, "nDigits"    # I

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v9, 0x0

    iput-boolean v9, p0, Lsun/misc/FDBigInteger;->isImmutable:Z

    .line 208
    add-int/lit8 v9, p5, 0x8

    div-int/lit8 v9, v9, 0x9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 209
    .local v7, "n":I
    new-array v9, v7, [I

    iput-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    .line 210
    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    long-to-int v10, p1

    const/4 v11, 0x0

    aput v10, v9, v11

    .line 211
    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    const/16 v10, 0x20

    ushr-long v10, p1, v10

    long-to-int v10, v10

    const/4 v11, 0x1

    aput v10, v9, v11

    .line 212
    const/4 v9, 0x0

    iput v9, p0, Lsun/misc/FDBigInteger;->offset:I

    .line 213
    const/4 v9, 0x2

    iput v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    .line 214
    move/from16 v3, p4

    .line 215
    .local v3, "i":I
    add-int/lit8 v6, p5, -0x5

    .local v6, "limit":I
    move v4, v3

    .line 217
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_2e
    if-ge v4, v6, :cond_4d

    .line 218
    add-int/lit8 v5, v4, 0x5

    .line 219
    .local v5, "ilim":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-char v9, p3, v4

    add-int/lit8 v8, v9, -0x30

    .local v8, "v":I
    move v4, v3

    .line 220
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_39
    if-ge v4, v5, :cond_46

    .line 221
    mul-int/lit8 v9, v8, 0xa

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-char v10, p3, v4

    add-int/2addr v9, v10

    add-int/lit8 v8, v9, -0x30

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_39

    .line 223
    :cond_46
    const v9, 0x186a0

    invoke-direct {p0, v9, v8}, Lsun/misc/FDBigInteger;->multAddMe(II)V

    goto :goto_2e

    .line 225
    .end local v5    # "ilim":I
    .end local v8    # "v":I
    :cond_4d
    const/4 v2, 0x1

    .line 226
    .local v2, "factor":I
    const/4 v8, 0x0

    .line 227
    .restart local v8    # "v":I
    :goto_4f
    move/from16 v0, p5

    if-ge v4, v0, :cond_60

    .line 228
    mul-int/lit8 v9, v8, 0xa

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-char v10, p3, v4

    add-int/2addr v9, v10

    add-int/lit8 v8, v9, -0x30

    .line 229
    mul-int/lit8 v2, v2, 0xa

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_4f

    .line 231
    :cond_60
    const/4 v9, 0x1

    if-eq v2, v9, :cond_66

    .line 232
    invoke-direct {p0, v2, v8}, Lsun/misc/FDBigInteger;->multAddMe(II)V

    .line 234
    :cond_66
    invoke-direct {p0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    .line 235
    return-void
.end method

.method private constructor <init>([II)V
    .registers 4
    .param p1, "data"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/FDBigInteger;->isImmutable:Z

    .line 186
    iput-object p1, p0, Lsun/misc/FDBigInteger;->data:[I

    .line 187
    iput p2, p0, Lsun/misc/FDBigInteger;->offset:I

    .line 188
    array-length v0, p1

    iput v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    .line 189
    invoke-direct {p0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    .line 190
    return-void
.end method

.method private add(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;
    .registers 18
    .param p1, "other"    # Lsun/misc/FDBigInteger;

    .prologue
    .line 1184
    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v9

    .line 1185
    .local v9, "tSize":I
    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v5

    .line 1186
    .local v5, "oSize":I
    if-lt v9, v5, :cond_30

    .line 1187
    move-object/from16 v0, p0

    .line 1188
    .local v0, "big":Lsun/misc/FDBigInteger;
    move v1, v9

    .line 1189
    .local v1, "bigLen":I
    move-object/from16 v7, p1

    .line 1190
    .local v7, "small":Lsun/misc/FDBigInteger;
    move v8, v5

    .line 1197
    .local v8, "smallLen":I
    :goto_10
    add-int/lit8 v10, v1, 0x1

    new-array v6, v10, [I

    .line 1198
    .local v6, "r":[I
    const/4 v4, 0x0

    .line 1199
    .local v4, "i":I
    const-wide/16 v2, 0x0

    .line 1200
    .local v2, "carry":J
    :goto_17
    if-ge v4, v8, :cond_57

    .line 1201
    iget v10, v0, Lsun/misc/FDBigInteger;->offset:I

    if-ge v4, v10, :cond_37

    const-wide/16 v10, 0x0

    .line 1202
    :goto_1f
    iget v12, v7, Lsun/misc/FDBigInteger;->offset:I

    if-ge v4, v12, :cond_47

    const-wide/16 v12, 0x0

    .line 1201
    :goto_25
    add-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 1203
    long-to-int v10, v2

    aput v10, v6, v4

    .line 1204
    const/16 v10, 0x20

    shr-long/2addr v2, v10

    .line 1200
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1192
    .end local v0    # "big":Lsun/misc/FDBigInteger;
    .end local v1    # "bigLen":I
    .end local v2    # "carry":J
    .end local v4    # "i":I
    .end local v6    # "r":[I
    .end local v7    # "small":Lsun/misc/FDBigInteger;
    .end local v8    # "smallLen":I
    :cond_30
    move-object/from16 v0, p1

    .line 1193
    .restart local v0    # "big":Lsun/misc/FDBigInteger;
    move v1, v5

    .line 1194
    .restart local v1    # "bigLen":I
    move-object/from16 v7, p0

    .line 1195
    .restart local v7    # "small":Lsun/misc/FDBigInteger;
    move v8, v9

    .restart local v8    # "smallLen":I
    goto :goto_10

    .line 1201
    .restart local v2    # "carry":J
    .restart local v4    # "i":I
    .restart local v6    # "r":[I
    :cond_37
    iget-object v10, v0, Lsun/misc/FDBigInteger;->data:[I

    iget v11, v0, Lsun/misc/FDBigInteger;->offset:I

    sub-int v11, v4, v11

    aget v10, v10, v11

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    goto :goto_1f

    .line 1202
    :cond_47
    iget-object v12, v7, Lsun/misc/FDBigInteger;->data:[I

    iget v13, v7, Lsun/misc/FDBigInteger;->offset:I

    sub-int v13, v4, v13

    aget v12, v12, v13

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    goto :goto_25

    .line 1206
    :cond_57
    :goto_57
    if-ge v4, v1, :cond_79

    .line 1207
    iget v10, v0, Lsun/misc/FDBigInteger;->offset:I

    if-ge v4, v10, :cond_69

    const-wide/16 v10, 0x0

    :goto_5f
    add-long/2addr v2, v10

    .line 1208
    long-to-int v10, v2

    aput v10, v6, v4

    .line 1209
    const/16 v10, 0x20

    shr-long/2addr v2, v10

    .line 1206
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 1207
    :cond_69
    iget-object v10, v0, Lsun/misc/FDBigInteger;->data:[I

    iget v11, v0, Lsun/misc/FDBigInteger;->offset:I

    sub-int v11, v4, v11

    aget v10, v10, v11

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    goto :goto_5f

    .line 1211
    :cond_79
    long-to-int v10, v2

    aput v10, v6, v1

    .line 1212
    new-instance v10, Lsun/misc/FDBigInteger;

    const/4 v11, 0x0

    invoke-direct {v10, v6, v11}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v10
.end method

.method private static big5pow(I)Lsun/misc/FDBigInteger;
    .registers 3
    .param p0, "p"    # I

    .prologue
    .line 1421
    sget-boolean v0, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v0, :cond_10

    if-gez p0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1422
    :cond_10
    const/16 v0, 0x154

    if-ge p0, v0, :cond_19

    .line 1423
    sget-object v0, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    aget-object v0, v0, p0

    return-object v0

    .line 1425
    :cond_19
    invoke-static {p0}, Lsun/misc/FDBigInteger;->big5powRec(I)Lsun/misc/FDBigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static big5powRec(I)Lsun/misc/FDBigInteger;
    .registers 5
    .param p0, "p"    # I

    .prologue
    .line 1436
    const/16 v3, 0x154

    if-ge p0, v3, :cond_9

    .line 1437
    sget-object v3, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    aget-object v3, v3, p0

    return-object v3

    .line 1446
    :cond_9
    shr-int/lit8 v1, p0, 0x1

    .line 1447
    .local v1, "q":I
    sub-int v2, p0, v1

    .line 1448
    .local v2, "r":I
    invoke-static {v1}, Lsun/misc/FDBigInteger;->big5powRec(I)Lsun/misc/FDBigInteger;

    move-result-object v0

    .line 1449
    .local v0, "bigq":Lsun/misc/FDBigInteger;
    sget-object v3, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1f

    .line 1450
    sget-object v3, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v3, v3, v2

    invoke-direct {v0, v3}, Lsun/misc/FDBigInteger;->mult(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    return-object v3

    .line 1452
    :cond_1f
    invoke-static {v2}, Lsun/misc/FDBigInteger;->big5powRec(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    invoke-direct {v0, v3}, Lsun/misc/FDBigInteger;->mult(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v3

    return-object v3
.end method

.method private static checkZeroTail([II)I
    .registers 4
    .param p0, "a"    # [I
    .param p1, "from"    # I

    .prologue
    const/4 v1, 0x0

    .line 923
    :cond_1
    if-lez p1, :cond_b

    .line 924
    add-int/lit8 p1, p1, -0x1

    aget v0, p0, p1

    if-eqz v0, :cond_1

    .line 925
    const/4 v0, 0x1

    return v0

    .line 928
    :cond_b
    return v1
.end method

.method private static leftShift([II[IIII)V
    .registers 9
    .param p0, "src"    # [I
    .param p1, "idx"    # I
    .param p2, "result"    # [I
    .param p3, "bitcount"    # I
    .param p4, "anticount"    # I
    .param p5, "prev"    # I

    .prologue
    const/4 v2, 0x0

    .line 421
    :goto_1
    if-lez p1, :cond_11

    .line 422
    shl-int v0, p5, p3

    .line 423
    .local v0, "v":I
    add-int/lit8 v1, p1, -0x1

    aget p5, p0, v1

    .line 424
    ushr-int v1, p5, p4

    or-int/2addr v0, v1

    .line 425
    aput v0, p2, p1

    .line 421
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 427
    .end local v0    # "v":I
    :cond_11
    shl-int v0, p5, p3

    .line 428
    .restart local v0    # "v":I
    aput v0, p2, v2

    .line 429
    return-void
.end method

.method private mult(I)Lsun/misc/FDBigInteger;
    .registers 5
    .param p1, "i"    # I

    .prologue
    .line 1122
    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v1, :cond_5

    .line 1123
    return-object p0

    .line 1125
    :cond_5
    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    .line 1126
    .local v0, "r":[I
    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v1, v2, p1, v0}, Lsun/misc/FDBigInteger;->mult([III[I)V

    .line 1127
    new-instance v1, Lsun/misc/FDBigInteger;

    iget v2, p0, Lsun/misc/FDBigInteger;->offset:I

    invoke-direct {v1, v0, v2}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v1
.end method

.method private mult(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;
    .registers 7
    .param p1, "other"    # Lsun/misc/FDBigInteger;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1154
    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v1, :cond_7

    .line 1155
    return-object p0

    .line 1157
    :cond_7
    invoke-direct {p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v1

    if-ne v1, v3, :cond_16

    .line 1158
    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v1, v1, v2

    invoke-direct {p1, v1}, Lsun/misc/FDBigInteger;->mult(I)Lsun/misc/FDBigInteger;

    move-result-object v1

    return-object v1

    .line 1160
    :cond_16
    iget v1, p1, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v1, :cond_1b

    .line 1161
    return-object p1

    .line 1163
    :cond_1b
    invoke-direct {p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v1

    if-ne v1, v3, :cond_2a

    .line 1164
    iget-object v1, p1, Lsun/misc/FDBigInteger;->data:[I

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lsun/misc/FDBigInteger;->mult(I)Lsun/misc/FDBigInteger;

    move-result-object v1

    return-object v1

    .line 1166
    :cond_2a
    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget v2, p1, Lsun/misc/FDBigInteger;->nWords:I

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 1167
    .local v0, "r":[I
    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget-object v3, p1, Lsun/misc/FDBigInteger;->data:[I

    iget v4, p1, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v1, v2, v3, v4, v0}, Lsun/misc/FDBigInteger;->mult([II[II[I)V

    .line 1168
    new-instance v1, Lsun/misc/FDBigInteger;

    iget v2, p0, Lsun/misc/FDBigInteger;->offset:I

    iget v3, p1, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v2, v3

    invoke-direct {v1, v0, v2}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v1
.end method

.method private static mult([IIII[I)V
    .registers 21
    .param p0, "src"    # [I
    .param p1, "srcLen"    # I
    .param p2, "v0"    # I
    .param p3, "v1"    # I
    .param p4, "dst"    # [I

    .prologue
    .line 1395
    move/from16 v0, p2

    int-to-long v10, v0

    const-wide v12, 0xffffffffL

    and-long v8, v10, v12

    .line 1396
    .local v8, "v":J
    const-wide/16 v2, 0x0

    .line 1397
    .local v2, "carry":J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_d
    move/from16 v0, p1

    if-ge v4, v0, :cond_27

    .line 1398
    aget v5, p0, v4

    int-to-long v10, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    mul-long/2addr v10, v8

    add-long v6, v10, v2

    .line 1399
    .local v6, "product":J
    long-to-int v5, v6

    aput v5, p4, v4

    .line 1400
    const/16 v5, 0x20

    ushr-long v2, v6, v5

    .line 1397
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1402
    .end local v6    # "product":J
    :cond_27
    long-to-int v5, v2

    aput v5, p4, p1

    .line 1403
    move/from16 v0, p3

    int-to-long v10, v0

    const-wide v12, 0xffffffffL

    and-long v8, v10, v12

    .line 1404
    const-wide/16 v2, 0x0

    .line 1405
    const/4 v4, 0x0

    :goto_37
    move/from16 v0, p1

    if-ge v4, v0, :cond_5f

    .line 1406
    add-int/lit8 v5, v4, 0x1

    aget v5, p4, v5

    int-to-long v10, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    aget v5, p0, v4

    int-to-long v12, v5

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    mul-long/2addr v12, v8

    add-long/2addr v10, v12

    add-long v6, v10, v2

    .line 1407
    .restart local v6    # "product":J
    add-int/lit8 v5, v4, 0x1

    long-to-int v10, v6

    aput v10, p4, v5

    .line 1408
    const/16 v5, 0x20

    ushr-long v2, v6, v5

    .line 1405
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 1410
    .end local v6    # "product":J
    :cond_5f
    add-int/lit8 v5, p1, 0x1

    long-to-int v10, v2

    aput v10, p4, v5

    .line 1411
    return-void
.end method

.method private static mult([III[I)V
    .registers 16
    .param p0, "src"    # [I
    .param p1, "srcLen"    # I
    .param p2, "value"    # I
    .param p3, "dst"    # [I

    .prologue
    const-wide v10, 0xffffffffL

    .line 1368
    int-to-long v8, p2

    and-long v6, v8, v10

    .line 1369
    .local v6, "val":J
    const-wide/16 v0, 0x0

    .line 1370
    .local v0, "carry":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, p1, :cond_1e

    .line 1371
    aget v3, p0, v2

    int-to-long v8, v3

    and-long/2addr v8, v10

    mul-long/2addr v8, v6

    add-long v4, v8, v0

    .line 1372
    .local v4, "product":J
    long-to-int v3, v4

    aput v3, p3, v2

    .line 1373
    const/16 v3, 0x20

    ushr-long v0, v4, v3

    .line 1370
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1375
    .end local v4    # "product":J
    :cond_1e
    long-to-int v3, v0

    aput v3, p3, p1

    .line 1376
    return-void
.end method

.method private static mult([II[II[I)V
    .registers 17
    .param p0, "s1"    # [I
    .param p1, "s1Len"    # I
    .param p2, "s2"    # [I
    .param p3, "s2Len"    # I
    .param p4, "dst"    # [I

    .prologue
    .line 746
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_3c

    .line 747
    aget v6, p0, v0

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    .line 748
    .local v4, "v":J
    const-wide/16 v2, 0x0

    .line 749
    .local v2, "p":J
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10
    if-ge v1, p3, :cond_34

    .line 750
    add-int v6, v0, v1

    aget v6, p4, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    aget v8, p2, v1

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 751
    add-int v6, v0, v1

    long-to-int v7, v2

    aput v7, p4, v6

    .line 752
    const/16 v6, 0x20

    ushr-long/2addr v2, v6

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 754
    :cond_34
    add-int v6, v0, p3

    long-to-int v7, v2

    aput v7, p4, v6

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 756
    .end local v1    # "j":I
    .end local v2    # "p":J
    .end local v4    # "v":J
    :cond_3c
    return-void
.end method

.method private multAddMe(II)V
    .registers 15
    .param p1, "iv"    # I
    .param p2, "addend"    # I

    .prologue
    .line 1234
    int-to-long v6, p1

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    .line 1236
    .local v4, "v":J
    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    int-to-long v8, p2

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long v2, v6, v8

    .line 1237
    .local v2, "p":J
    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    long-to-int v6, v2

    const/4 v7, 0x0

    aput v6, v1, v7

    .line 1238
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 1239
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_28
    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v0, v1, :cond_44

    .line 1240
    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v1, v1, v0

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    .line 1241
    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    long-to-int v6, v2

    aput v6, v1, v0

    .line 1242
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 1239
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1244
    :cond_44
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_55

    .line 1245
    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v6, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lsun/misc/FDBigInteger;->nWords:I

    long-to-int v7, v2

    aput v7, v1, v6

    .line 1247
    :cond_55
    return-void
.end method

.method private static multAndCarryBy10([II[I)I
    .registers 13
    .param p0, "src"    # [I
    .param p1, "srcLen"    # I
    .param p2, "dst"    # [I

    .prologue
    .line 1344
    const-wide/16 v0, 0x0

    .line 1345
    .local v0, "carry":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p1, :cond_1d

    .line 1346
    aget v3, p0, v2

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const-wide/16 v8, 0xa

    mul-long/2addr v6, v8

    add-long v4, v6, v0

    .line 1347
    .local v4, "product":J
    long-to-int v3, v4

    aput v3, p2, v2

    .line 1348
    const/16 v3, 0x20

    ushr-long v0, v4, v3

    .line 1345
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1350
    .end local v4    # "product":J
    :cond_1d
    long-to-int v3, v0

    return v3
.end method

.method private multDiffMe(JLsun/misc/FDBigInteger;)J
    .registers 23
    .param p1, "q"    # J
    .param p3, "S"    # Lsun/misc/FDBigInteger;

    .prologue
    .line 1290
    const-wide/16 v4, 0x0

    .line 1291
    .local v4, "diff":J
    const-wide/16 v12, 0x0

    cmp-long v11, p1, v12

    if-eqz v11, :cond_b8

    .line 1292
    move-object/from16 v0, p3

    iget v11, v0, Lsun/misc/FDBigInteger;->offset:I

    move-object/from16 v0, p0

    iget v12, v0, Lsun/misc/FDBigInteger;->offset:I

    sub-int v2, v11, v12

    .line 1293
    .local v2, "deltaSize":I
    if-ltz v2, :cond_46

    .line 1294
    move-object/from16 v0, p3

    iget-object v8, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 1295
    .local v8, "sd":[I
    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 1296
    .local v10, "td":[I
    const/4 v7, 0x0

    .local v7, "sIndex":I
    move v9, v2

    .local v9, "tIndex":I
    :goto_1e
    move-object/from16 v0, p3

    iget v11, v0, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v7, v11, :cond_b8

    .line 1297
    aget v11, v10, v9

    int-to-long v12, v11

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    aget v11, v8, v7

    int-to-long v14, v11

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    mul-long v14, v14, p1

    sub-long/2addr v12, v14

    add-long/2addr v4, v12

    .line 1298
    long-to-int v11, v4

    aput v11, v10, v9

    .line 1299
    const/16 v11, 0x20

    shr-long/2addr v4, v11

    .line 1296
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    .line 1302
    .end local v7    # "sIndex":I
    .end local v8    # "sd":[I
    .end local v9    # "tIndex":I
    .end local v10    # "td":[I
    :cond_46
    neg-int v2, v2

    .line 1303
    move-object/from16 v0, p0

    iget v11, v0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/2addr v11, v2

    new-array v6, v11, [I

    .line 1304
    .local v6, "rd":[I
    const/4 v7, 0x0

    .line 1305
    .restart local v7    # "sIndex":I
    const/4 v3, 0x0

    .line 1306
    .local v3, "rIndex":I
    move-object/from16 v0, p3

    iget-object v8, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 1307
    .restart local v8    # "sd":[I
    :goto_54
    if-ge v3, v2, :cond_73

    move-object/from16 v0, p3

    iget v11, v0, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v7, v11, :cond_73

    .line 1308
    aget v11, v8, v7

    int-to-long v12, v11

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    mul-long v12, v12, p1

    sub-long/2addr v4, v12

    .line 1309
    long-to-int v11, v4

    aput v11, v6, v3

    .line 1310
    const/16 v11, 0x20

    shr-long/2addr v4, v11

    .line 1307
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 1312
    :cond_73
    const/4 v9, 0x0

    .line 1313
    .restart local v9    # "tIndex":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 1314
    .restart local v10    # "td":[I
    :goto_78
    move-object/from16 v0, p3

    iget v11, v0, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v7, v11, :cond_a2

    .line 1315
    aget v11, v10, v9

    int-to-long v12, v11

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    aget v11, v8, v7

    int-to-long v14, v11

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    mul-long v14, v14, p1

    sub-long/2addr v12, v14

    add-long/2addr v4, v12

    .line 1316
    long-to-int v11, v4

    aput v11, v6, v3

    .line 1317
    const/16 v11, 0x20

    shr-long/2addr v4, v11

    .line 1314
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    .line 1319
    :cond_a2
    move-object/from16 v0, p0

    iget v11, v0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/2addr v11, v2

    move-object/from16 v0, p0

    iput v11, v0, Lsun/misc/FDBigInteger;->nWords:I

    .line 1320
    move-object/from16 v0, p0

    iget v11, v0, Lsun/misc/FDBigInteger;->offset:I

    sub-int/2addr v11, v2

    move-object/from16 v0, p0

    iput v11, v0, Lsun/misc/FDBigInteger;->offset:I

    .line 1321
    move-object/from16 v0, p0

    iput-object v6, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 1324
    .end local v2    # "deltaSize":I
    .end local v3    # "rIndex":I
    .end local v6    # "rd":[I
    .end local v7    # "sIndex":I
    .end local v8    # "sd":[I
    .end local v9    # "tIndex":I
    .end local v10    # "td":[I
    :cond_b8
    return-wide v4
.end method

.method private size()I
    .registers 3

    .prologue
    .line 534
    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget v1, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method private trimLeadingZeros()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 370
    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    .line 371
    .local v0, "i":I
    if-lez v0, :cond_20

    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    if-nez v1, :cond_20

    .line 373
    :goto_d
    if-lez v0, :cond_1a

    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-nez v1, :cond_1a

    .line 374
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 376
    :cond_1a
    iput v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    .line 377
    if-nez v0, :cond_20

    .line 378
    iput v3, p0, Lsun/misc/FDBigInteger;->offset:I

    .line 381
    :cond_20
    return-void
.end method

.method public static valueOfMulPow52(JII)Lsun/misc/FDBigInteger;
    .registers 22
    .param p0, "value"    # J
    .param p2, "p5"    # I
    .param p3, "p2"    # I

    .prologue
    .line 289
    sget-boolean v13, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v13, :cond_10

    if-gez p2, :cond_10

    new-instance v13, Ljava/lang/AssertionError;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 290
    :cond_10
    sget-boolean v13, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v13, :cond_20

    if-gez p3, :cond_20

    new-instance v13, Ljava/lang/AssertionError;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 291
    :cond_20
    move-wide/from16 v0, p0

    long-to-int v9, v0

    .line 292
    .local v9, "v0":I
    const/16 v13, 0x20

    ushr-long v14, p0, v13

    long-to-int v10, v14

    .line 293
    .local v10, "v1":I
    shr-int/lit8 v12, p3, 0x5

    .line 294
    .local v12, "wordcount":I
    and-int/lit8 v2, p3, 0x1f

    .line 295
    .local v2, "bitcount":I
    if-eqz p2, :cond_dd

    .line 296
    sget-object v13, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v13, v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_a2

    .line 297
    sget-object v13, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v13, v13, p2

    int-to-long v14, v13

    const-wide v16, 0xffffffffL

    and-long v6, v14, v16

    .line 298
    .local v6, "pow5":J
    int-to-long v14, v9

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    mul-long v4, v14, v6

    .line 299
    .local v4, "carry":J
    long-to-int v9, v4

    .line 300
    const/16 v13, 0x20

    ushr-long/2addr v4, v13

    .line 301
    int-to-long v14, v10

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    mul-long/2addr v14, v6

    add-long/2addr v4, v14

    .line 302
    long-to-int v10, v4

    .line 303
    const/16 v13, 0x20

    ushr-long v14, v4, v13

    long-to-int v11, v14

    .line 304
    .local v11, "v2":I
    if-nez v2, :cond_73

    .line 305
    new-instance v13, Lsun/misc/FDBigInteger;

    const/4 v14, 0x3

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v9, v14, v15

    const/4 v15, 0x1

    aput v10, v14, v15

    const/4 v15, 0x2

    aput v11, v14, v15

    invoke-direct {v13, v14, v12}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v13

    .line 307
    :cond_73
    new-instance v13, Lsun/misc/FDBigInteger;

    const/4 v14, 0x4

    new-array v14, v14, [I

    .line 308
    shl-int v15, v9, v2

    const/16 v16, 0x0

    aput v15, v14, v16

    .line 309
    shl-int v15, v10, v2

    rsub-int/lit8 v16, v2, 0x20

    ushr-int v16, v9, v16

    or-int v15, v15, v16

    const/16 v16, 0x1

    aput v15, v14, v16

    .line 310
    shl-int v15, v11, v2

    rsub-int/lit8 v16, v2, 0x20

    ushr-int v16, v10, v16

    or-int v15, v15, v16

    const/16 v16, 0x2

    aput v15, v14, v16

    .line 311
    rsub-int/lit8 v15, v2, 0x20

    ushr-int v15, v11, v15

    const/16 v16, 0x3

    aput v15, v14, v16

    .line 307
    invoke-direct {v13, v14, v12}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v13

    .line 315
    .end local v4    # "carry":J
    .end local v6    # "pow5":J
    .end local v11    # "v2":I
    :cond_a2
    invoke-static/range {p2 .. p2}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    .line 317
    .local v3, "pow5":Lsun/misc/FDBigInteger;
    if-nez v10, :cond_c9

    .line 318
    iget v13, v3, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v14, v13, 0x1

    if-eqz p3, :cond_c7

    const/4 v13, 0x1

    :goto_af
    add-int/2addr v13, v14

    new-array v8, v13, [I

    .line 319
    .local v8, "r":[I
    iget-object v13, v3, Lsun/misc/FDBigInteger;->data:[I

    iget v14, v3, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v13, v14, v9, v8}, Lsun/misc/FDBigInteger;->mult([III[I)V

    .line 324
    :goto_b9
    new-instance v13, Lsun/misc/FDBigInteger;

    iget v14, v3, Lsun/misc/FDBigInteger;->offset:I

    invoke-direct {v13, v8, v14}, Lsun/misc/FDBigInteger;-><init>([II)V

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v13

    return-object v13

    .line 318
    .end local v8    # "r":[I
    :cond_c7
    const/4 v13, 0x0

    goto :goto_af

    .line 321
    :cond_c9
    iget v13, v3, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v14, v13, 0x2

    if-eqz p3, :cond_db

    const/4 v13, 0x1

    :goto_d0
    add-int/2addr v13, v14

    new-array v8, v13, [I

    .line 322
    .restart local v8    # "r":[I
    iget-object v13, v3, Lsun/misc/FDBigInteger;->data:[I

    iget v14, v3, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v13, v14, v9, v10, v8}, Lsun/misc/FDBigInteger;->mult([IIII[I)V

    goto :goto_b9

    .line 321
    .end local v8    # "r":[I
    :cond_db
    const/4 v13, 0x0

    goto :goto_d0

    .line 326
    .end local v3    # "pow5":Lsun/misc/FDBigInteger;
    :cond_dd
    if-eqz p3, :cond_113

    .line 327
    if-nez v2, :cond_f0

    .line 328
    new-instance v13, Lsun/misc/FDBigInteger;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v9, v14, v15

    const/4 v15, 0x1

    aput v10, v14, v15

    invoke-direct {v13, v14, v12}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v13

    .line 330
    :cond_f0
    new-instance v13, Lsun/misc/FDBigInteger;

    const/4 v14, 0x3

    new-array v14, v14, [I

    .line 331
    shl-int v15, v9, v2

    const/16 v16, 0x0

    aput v15, v14, v16

    .line 332
    shl-int v15, v10, v2

    rsub-int/lit8 v16, v2, 0x20

    ushr-int v16, v9, v16

    or-int v15, v15, v16

    const/16 v16, 0x1

    aput v15, v14, v16

    .line 333
    rsub-int/lit8 v15, v2, 0x20

    ushr-int v15, v10, v15

    const/16 v16, 0x2

    aput v15, v14, v16

    .line 330
    invoke-direct {v13, v14, v12}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v13

    .line 337
    :cond_113
    new-instance v13, Lsun/misc/FDBigInteger;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v9, v14, v15

    const/4 v15, 0x1

    aput v10, v14, v15

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v13
.end method

.method private static valueOfPow2(I)Lsun/misc/FDBigInteger;
    .registers 7
    .param p0, "p2"    # I

    .prologue
    const/4 v4, 0x1

    .line 353
    shr-int/lit8 v1, p0, 0x5

    .line 354
    .local v1, "wordcount":I
    and-int/lit8 v0, p0, 0x1f

    .line 355
    .local v0, "bitcount":I
    new-instance v2, Lsun/misc/FDBigInteger;

    new-array v3, v4, [I

    shl-int/2addr v4, v0

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-direct {v2, v3, v1}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v2
.end method

.method public static valueOfPow52(II)Lsun/misc/FDBigInteger;
    .registers 10
    .param p0, "p5"    # I
    .param p1, "p2"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 251
    if-eqz p0, :cond_40

    .line 252
    if-nez p1, :cond_b

    .line 253
    invoke-static {p0}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    return-object v3

    .line 254
    :cond_b
    sget-object v3, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v3, v3

    if-ge p0, v3, :cond_37

    .line 255
    sget-object v3, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v1, v3, p0

    .line 256
    .local v1, "pow5":I
    shr-int/lit8 v2, p1, 0x5

    .line 257
    .local v2, "wordcount":I
    and-int/lit8 v0, p1, 0x1f

    .line 258
    .local v0, "bitcount":I
    if-nez v0, :cond_24

    .line 259
    new-instance v3, Lsun/misc/FDBigInteger;

    new-array v4, v7, [I

    aput v1, v4, v6

    invoke-direct {v3, v4, v2}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v3

    .line 261
    :cond_24
    new-instance v3, Lsun/misc/FDBigInteger;

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 262
    shl-int v5, v1, v0

    aput v5, v4, v6

    .line 263
    rsub-int/lit8 v5, v0, 0x20

    ushr-int v5, v1, v5

    aput v5, v4, v7

    .line 261
    invoke-direct {v3, v4, v2}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v3

    .line 267
    .end local v0    # "bitcount":I
    .end local v1    # "pow5":I
    .end local v2    # "wordcount":I
    :cond_37
    invoke-static {p0}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    invoke-virtual {v3, p1}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    return-object v3

    .line 270
    :cond_40
    invoke-static {p1}, Lsun/misc/FDBigInteger;->valueOfPow2(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addAndCmp(Lsun/misc/FDBigInteger;Lsun/misc/FDBigInteger;)I
    .registers 21
    .param p1, "x"    # Lsun/misc/FDBigInteger;
    .param p2, "y"    # Lsun/misc/FDBigInteger;

    .prologue
    .line 1029
    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v7

    .line 1030
    .local v7, "xSize":I
    invoke-direct/range {p2 .. p2}, Lsun/misc/FDBigInteger;->size()I

    move-result v12

    .line 1033
    .local v12, "ySize":I
    if-lt v7, v12, :cond_1a

    .line 1034
    move-object/from16 v3, p1

    .line 1035
    .local v3, "big":Lsun/misc/FDBigInteger;
    move-object/from16 v5, p2

    .line 1036
    .local v5, "small":Lsun/misc/FDBigInteger;
    move v2, v7

    .line 1037
    .local v2, "bSize":I
    move v4, v12

    .line 1044
    .local v4, "sSize":I
    :goto_10
    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v6

    .line 1045
    .local v6, "thSize":I
    if-nez v2, :cond_23

    .line 1046
    if-nez v6, :cond_21

    const/4 v13, 0x0

    :goto_19
    return v13

    .line 1039
    .end local v2    # "bSize":I
    .end local v3    # "big":Lsun/misc/FDBigInteger;
    .end local v4    # "sSize":I
    .end local v5    # "small":Lsun/misc/FDBigInteger;
    .end local v6    # "thSize":I
    :cond_1a
    move-object/from16 v3, p2

    .line 1040
    .restart local v3    # "big":Lsun/misc/FDBigInteger;
    move-object/from16 v5, p1

    .line 1041
    .restart local v5    # "small":Lsun/misc/FDBigInteger;
    move v2, v12

    .line 1042
    .restart local v2    # "bSize":I
    move v4, v7

    .restart local v4    # "sSize":I
    goto :goto_10

    .line 1046
    .restart local v6    # "thSize":I
    :cond_21
    const/4 v13, 0x1

    goto :goto_19

    .line 1048
    :cond_23
    if-nez v4, :cond_2c

    .line 1049
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v13

    return v13

    .line 1051
    :cond_2c
    if-le v2, v6, :cond_30

    .line 1052
    const/4 v13, -0x1

    return v13

    .line 1054
    :cond_30
    add-int/lit8 v13, v2, 0x1

    if-ge v13, v6, :cond_36

    .line 1055
    const/4 v13, 0x1

    return v13

    .line 1057
    :cond_36
    iget-object v13, v3, Lsun/misc/FDBigInteger;->data:[I

    iget v14, v3, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    int-to-long v14, v13

    const-wide v16, 0xffffffffL

    and-long v8, v14, v16

    .line 1058
    .local v8, "top":J
    if-ne v4, v2, :cond_59

    .line 1059
    iget-object v13, v5, Lsun/misc/FDBigInteger;->data:[I

    iget v14, v5, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    int-to-long v14, v13

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v8, v14

    .line 1061
    :cond_59
    const/16 v13, 0x20

    ushr-long v14, v8, v13

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_96

    .line 1062
    const-wide/16 v14, 0x1

    add-long/2addr v14, v8

    const/16 v13, 0x20

    ushr-long/2addr v14, v13

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_c2

    .line 1064
    if-ge v2, v6, :cond_73

    .line 1065
    const/4 v13, 0x1

    return v13

    .line 1068
    :cond_73
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v0, p0

    iget v14, v0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    int-to-long v14, v13

    const-wide v16, 0xffffffffL

    and-long v10, v14, v16

    .line 1069
    .local v10, "v":J
    cmp-long v13, v10, v8

    if-gez v13, :cond_8d

    .line 1070
    const/4 v13, -0x1

    return v13

    .line 1072
    :cond_8d
    const-wide/16 v14, 0x1

    add-long/2addr v14, v8

    cmp-long v13, v10, v14

    if-lez v13, :cond_c2

    .line 1073
    const/4 v13, 0x1

    return v13

    .line 1077
    .end local v10    # "v":J
    :cond_96
    add-int/lit8 v13, v2, 0x1

    if-le v13, v6, :cond_9c

    .line 1078
    const/4 v13, -0x1

    return v13

    .line 1081
    :cond_9c
    const/16 v13, 0x20

    ushr-long/2addr v8, v13

    .line 1082
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v0, p0

    iget v14, v0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    int-to-long v14, v13

    const-wide v16, 0xffffffffL

    and-long v10, v14, v16

    .line 1083
    .restart local v10    # "v":J
    cmp-long v13, v10, v8

    if-gez v13, :cond_b9

    .line 1084
    const/4 v13, -0x1

    return v13

    .line 1086
    :cond_b9
    const-wide/16 v14, 0x1

    add-long/2addr v14, v8

    cmp-long v13, v10, v14

    if-lez v13, :cond_c2

    .line 1087
    const/4 v13, 0x1

    return v13

    .line 1090
    .end local v10    # "v":J
    :cond_c2
    invoke-direct {v3, v5}, Lsun/misc/FDBigInteger;->add(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v13

    return v13
.end method

.method public cmp(Lsun/misc/FDBigInteger;)I
    .registers 16
    .param p1, "other"    # Lsun/misc/FDBigInteger;

    .prologue
    const-wide v12, 0xffffffffL

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v10, 0x0

    .line 948
    iget v8, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget v9, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int v2, v8, v9

    .line 949
    .local v2, "aSize":I
    iget v8, p1, Lsun/misc/FDBigInteger;->nWords:I

    iget v9, p1, Lsun/misc/FDBigInteger;->offset:I

    add-int v5, v8, v9

    .line 950
    .local v5, "bSize":I
    if-le v2, v5, :cond_17

    .line 951
    return v7

    .line 952
    :cond_17
    if-ge v2, v5, :cond_1a

    .line 953
    return v6

    .line 955
    :cond_1a
    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    .line 956
    .local v1, "aLen":I
    iget v4, p1, Lsun/misc/FDBigInteger;->nWords:I

    .line 957
    .local v4, "bLen":I
    :cond_1e
    if-lez v1, :cond_3b

    if-lez v4, :cond_3b

    .line 958
    iget-object v8, p0, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v8, v1

    .line 959
    .local v0, "a":I
    iget-object v8, p1, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v4, v4, -0x1

    aget v3, v8, v4

    .line 960
    .local v3, "b":I
    if-eq v0, v3, :cond_1e

    .line 961
    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v10, v3

    and-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-gez v8, :cond_39

    :goto_38
    return v6

    :cond_39
    move v6, v7

    goto :goto_38

    .line 964
    .end local v0    # "a":I
    .end local v3    # "b":I
    :cond_3b
    if-lez v1, :cond_44

    .line 965
    iget-object v6, p0, Lsun/misc/FDBigInteger;->data:[I

    invoke-static {v6, v1}, Lsun/misc/FDBigInteger;->checkZeroTail([II)I

    move-result v6

    return v6

    .line 967
    :cond_44
    if-lez v4, :cond_4e

    .line 968
    iget-object v6, p1, Lsun/misc/FDBigInteger;->data:[I

    invoke-static {v6, v4}, Lsun/misc/FDBigInteger;->checkZeroTail([II)I

    move-result v6

    neg-int v6, v6

    return v6

    .line 970
    :cond_4e
    return v10
.end method

.method public cmpPow52(II)I
    .registers 15
    .param p1, "p5"    # I
    .param p2, "p2"    # I

    .prologue
    .line 992
    if-nez p1, :cond_46

    .line 993
    shr-int/lit8 v4, p2, 0x5

    .line 994
    .local v4, "wordcount":I
    and-int/lit8 v2, p2, 0x1f

    .line 995
    .local v2, "bitcount":I
    iget v5, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget v6, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int v3, v5, v6

    .line 996
    .local v3, "size":I
    add-int/lit8 v5, v4, 0x1

    if-le v3, v5, :cond_12

    .line 997
    const/4 v5, 0x1

    return v5

    .line 998
    :cond_12
    add-int/lit8 v5, v4, 0x1

    if-ge v3, v5, :cond_18

    .line 999
    const/4 v5, -0x1

    return v5

    .line 1001
    :cond_18
    iget-object v5, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v6, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v6, v6, -0x1

    aget v0, v5, v6

    .line 1002
    .local v0, "a":I
    const/4 v5, 0x1

    shl-int v1, v5, v2

    .line 1003
    .local v1, "b":I
    if-eq v0, v1, :cond_3b

    .line 1004
    int-to-long v6, v0

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    int-to-long v8, v1

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_39

    const/4 v5, -0x1

    :goto_38
    return v5

    :cond_39
    const/4 v5, 0x1

    goto :goto_38

    .line 1006
    :cond_3b
    iget-object v5, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v6, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lsun/misc/FDBigInteger;->checkZeroTail([II)I

    move-result v5

    return v5

    .line 1008
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "bitcount":I
    .end local v3    # "size":I
    .end local v4    # "wordcount":I
    :cond_46
    invoke-static {p1}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v5

    invoke-virtual {v5, p2}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v5

    invoke-virtual {p0, v5}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v5

    return v5
.end method

.method public getNormalizationBias()I
    .registers 4

    .prologue
    .line 396
    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v1, :cond_d

    .line 397
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Zero value cannot be normalized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_d
    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    .line 400
    .local v0, "zeros":I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1f

    add-int/lit8 v1, v0, 0x1c

    :goto_1e
    return v1

    :cond_1f
    add-int/lit8 v1, v0, -0x4

    goto :goto_1e
.end method

.method public leftInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;
    .registers 26
    .param p1, "subtrahend"    # Lsun/misc/FDBigInteger;

    .prologue
    .line 782
    sget-boolean v18, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v18, :cond_1b

    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v18

    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1b

    new-instance v18, Ljava/lang/AssertionError;

    const-string/jumbo v19, "result should be positive"

    invoke-direct/range {v18 .. v19}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18

    .line 784
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsun/misc/FDBigInteger;->isImmutable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c8

    .line 785
    new-instance v11, Lsun/misc/FDBigInteger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v11, v0, v1}, Lsun/misc/FDBigInteger;-><init>([II)V

    .line 789
    .local v11, "minuend":Lsun/misc/FDBigInteger;
    :goto_3e
    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v18, v0

    iget v0, v11, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v19, v0

    sub-int v12, v18, v19

    .line 790
    .local v12, "offsetDiff":I
    move-object/from16 v0, p1

    iget-object v15, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 791
    .local v15, "sData":[I
    iget-object v8, v11, Lsun/misc/FDBigInteger;->data:[I

    .line 792
    .local v8, "mData":[I
    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v17, v0

    .line 793
    .local v17, "subLen":I
    iget v10, v11, Lsun/misc/FDBigInteger;->nWords:I

    .line 794
    .local v10, "minLen":I
    if-gez v12, :cond_8d

    .line 796
    sub-int v14, v10, v12

    .line 797
    .local v14, "rLen":I
    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v14, v0, :cond_cc

    .line 798
    neg-int v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v8, v0, v8, v1, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 799
    neg-int v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v8, v0, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 805
    :goto_7f
    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Lsun/misc/FDBigInteger;->offset:I

    .line 806
    move v10, v14

    iput v14, v11, Lsun/misc/FDBigInteger;->nWords:I

    .line 807
    const/4 v12, 0x0

    .line 809
    .end local v14    # "rLen":I
    :cond_8d
    const-wide/16 v4, 0x0

    .line 810
    .local v4, "borrow":J
    move v9, v12

    .line 811
    .local v9, "mIndex":I
    const/16 v16, 0x0

    .local v16, "sIndex":I
    :goto_92
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_de

    if-ge v9, v10, :cond_de

    .line 812
    aget v18, v8, v9

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    aget v20, v15, v16

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    sub-long v18, v18, v20

    add-long v6, v18, v4

    .line 813
    .local v6, "diff":J
    long-to-int v0, v6

    move/from16 v18, v0

    aput v18, v8, v9

    .line 814
    const/16 v18, 0x20

    shr-long v4, v6, v18

    .line 811
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_92

    .line 787
    .end local v4    # "borrow":J
    .end local v6    # "diff":J
    .end local v8    # "mData":[I
    .end local v9    # "mIndex":I
    .end local v10    # "minLen":I
    .end local v11    # "minuend":Lsun/misc/FDBigInteger;
    .end local v12    # "offsetDiff":I
    .end local v15    # "sData":[I
    .end local v16    # "sIndex":I
    .end local v17    # "subLen":I
    :cond_c8
    move-object/from16 v11, p0

    .restart local v11    # "minuend":Lsun/misc/FDBigInteger;
    goto/16 :goto_3e

    .line 801
    .restart local v8    # "mData":[I
    .restart local v10    # "minLen":I
    .restart local v12    # "offsetDiff":I
    .restart local v14    # "rLen":I
    .restart local v15    # "sData":[I
    .restart local v17    # "subLen":I
    :cond_cc
    new-array v13, v14, [I

    .line 802
    .local v13, "r":[I
    neg-int v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v8, v0, v13, v1, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 803
    move-object v8, v13

    iput-object v13, v11, Lsun/misc/FDBigInteger;->data:[I

    goto :goto_7f

    .line 816
    .end local v13    # "r":[I
    .end local v14    # "rLen":I
    .restart local v4    # "borrow":J
    .restart local v9    # "mIndex":I
    .restart local v16    # "sIndex":I
    :cond_de
    :goto_de
    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-eqz v18, :cond_102

    if-ge v9, v10, :cond_102

    .line 817
    aget v18, v8, v9

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v6, v18, v4

    .line 818
    .restart local v6    # "diff":J
    long-to-int v0, v6

    move/from16 v18, v0

    aput v18, v8, v9

    .line 819
    const/16 v18, 0x20

    shr-long v4, v6, v18

    .line 816
    add-int/lit8 v9, v9, 0x1

    goto :goto_de

    .line 821
    .end local v6    # "diff":J
    :cond_102
    sget-boolean v18, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v18, :cond_116

    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-eqz v18, :cond_116

    new-instance v18, Ljava/lang/AssertionError;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18

    .line 823
    :cond_116
    invoke-direct {v11}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    .line 824
    return-object v11
.end method

.method public leftShift(I)Lsun/misc/FDBigInteger;
    .registers 14
    .param p1, "shift"    # I

    .prologue
    const/4 v10, 0x0

    .line 458
    if-eqz p1, :cond_7

    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v9, :cond_8

    .line 459
    :cond_7
    return-object p0

    .line 461
    :cond_8
    shr-int/lit8 v8, p1, 0x5

    .line 462
    .local v8, "wordcount":I
    and-int/lit8 v3, p1, 0x1f

    .line 463
    .local v3, "bitcount":I
    iget-boolean v9, p0, Lsun/misc/FDBigInteger;->isImmutable:Z

    if-eqz v9, :cond_4e

    .line 464
    if-nez v3, :cond_23

    .line 465
    new-instance v9, Lsun/misc/FDBigInteger;

    iget-object v10, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v11, p0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    iget v11, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v11, v8

    invoke-direct {v9, v10, v11}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v9

    .line 467
    :cond_23
    rsub-int/lit8 v4, v3, 0x20

    .line 468
    .local v4, "anticount":I
    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v1, v9, -0x1

    .line 469
    .local v1, "idx":I
    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v5, v9, v1

    .line 470
    .local v5, "prev":I
    ushr-int v6, v5, v4

    .line 472
    .local v6, "hi":I
    if-eqz v6, :cond_49

    .line 473
    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v9, v9, 0x1

    new-array v2, v9, [I

    .line 474
    .local v2, "result":[I
    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    aput v6, v2, v9

    .line 478
    :goto_3b
    iget-object v0, p0, Lsun/misc/FDBigInteger;->data:[I

    invoke-static/range {v0 .. v5}, Lsun/misc/FDBigInteger;->leftShift([II[IIII)V

    .line 479
    new-instance v9, Lsun/misc/FDBigInteger;

    iget v10, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v10, v8

    invoke-direct {v9, v2, v10}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v9

    .line 476
    .end local v2    # "result":[I
    :cond_49
    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    new-array v2, v9, [I

    .restart local v2    # "result":[I
    goto :goto_3b

    .line 482
    .end local v1    # "idx":I
    .end local v2    # "result":[I
    .end local v4    # "anticount":I
    .end local v5    # "prev":I
    .end local v6    # "hi":I
    :cond_4e
    if-eqz v3, :cond_8a

    .line 483
    rsub-int/lit8 v4, v3, 0x20

    .line 484
    .restart local v4    # "anticount":I
    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v9, v9, v10

    shl-int/2addr v9, v3

    if-nez v9, :cond_90

    .line 485
    const/4 v1, 0x0

    .line 486
    .restart local v1    # "idx":I
    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v5, v9, v1

    .line 487
    .restart local v5    # "prev":I
    :goto_5e
    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_76

    .line 488
    ushr-int v7, v5, v4

    .line 489
    .local v7, "v":I
    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v10, v1, 0x1

    aget v5, v9, v10

    .line 490
    shl-int v9, v5, v3

    or-int/2addr v7, v9

    .line 491
    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    aput v7, v9, v1

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 493
    .end local v7    # "v":I
    :cond_76
    ushr-int v7, v5, v4

    .line 494
    .restart local v7    # "v":I
    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    aput v7, v9, v1

    .line 495
    if-nez v7, :cond_84

    .line 496
    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    .line 498
    :cond_84
    iget v9, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lsun/misc/FDBigInteger;->offset:I

    .line 514
    .end local v1    # "idx":I
    .end local v4    # "anticount":I
    .end local v5    # "prev":I
    .end local v7    # "v":I
    :cond_8a
    :goto_8a
    iget v9, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v9, v8

    iput v9, p0, Lsun/misc/FDBigInteger;->offset:I

    .line 515
    return-object p0

    .line 500
    .restart local v4    # "anticount":I
    :cond_90
    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v1, v9, -0x1

    .line 501
    .restart local v1    # "idx":I
    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v5, v9, v1

    .line 502
    .restart local v5    # "prev":I
    ushr-int v6, v5, v4

    .line 503
    .restart local v6    # "hi":I
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    .line 504
    .restart local v2    # "result":[I
    iget-object v0, p0, Lsun/misc/FDBigInteger;->data:[I

    .line 505
    .local v0, "src":[I
    if-eqz v6, :cond_b7

    .line 506
    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget-object v10, p0, Lsun/misc/FDBigInteger;->data:[I

    array-length v10, v10

    if-ne v9, v10, :cond_af

    .line 507
    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v9, v9, 0x1

    new-array v2, v9, [I

    iput-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    .line 509
    :cond_af
    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lsun/misc/FDBigInteger;->nWords:I

    aput v6, v2, v9

    .line 511
    :cond_b7
    invoke-static/range {v0 .. v5}, Lsun/misc/FDBigInteger;->leftShift([II[IIII)V

    goto :goto_8a
.end method

.method public makeImmutable()V
    .registers 2

    .prologue
    .line 1101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/misc/FDBigInteger;->isImmutable:Z

    .line 1102
    return-void
.end method

.method public multBy10()Lsun/misc/FDBigInteger;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 654
    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v2, :cond_6

    .line 655
    return-object p0

    .line 657
    :cond_6
    iget-boolean v2, p0, Lsun/misc/FDBigInteger;->isImmutable:Z

    if-eqz v2, :cond_24

    .line 658
    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 659
    .local v1, "res":[I
    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget-object v3, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v3, v4, v1}, Lsun/misc/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v3

    aput v3, v1, v2

    .line 660
    new-instance v2, Lsun/misc/FDBigInteger;

    iget v3, p0, Lsun/misc/FDBigInteger;->offset:I

    invoke-direct {v2, v1, v3}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v2

    .line 662
    .end local v1    # "res":[I
    :cond_24
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v3, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget-object v4, p0, Lsun/misc/FDBigInteger;->data:[I

    invoke-static {v2, v3, v4}, Lsun/misc/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v0

    .line 663
    .local v0, "p":I
    if-eqz v0, :cond_6a

    .line 664
    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget-object v3, p0, Lsun/misc/FDBigInteger;->data:[I

    array-length v3, v3

    if-ne v2, v3, :cond_51

    .line 665
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v2, v2, v6

    if-nez v2, :cond_5c

    .line 666
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    iget-object v3, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    const/4 v5, 0x1

    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 667
    iget v2, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun/misc/FDBigInteger;->offset:I

    .line 672
    :cond_51
    :goto_51
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v3, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    aput v0, v2, v3

    .line 676
    :goto_5b
    return-object p0

    .line 669
    :cond_5c
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    iget-object v3, p0, Lsun/misc/FDBigInteger;->data:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    goto :goto_51

    .line 674
    :cond_6a
    invoke-direct {p0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    goto :goto_5b
.end method

.method public multByPow52(II)Lsun/misc/FDBigInteger;
    .registers 11
    .param p1, "p5"    # I
    .param p2, "p2"    # I

    .prologue
    .line 709
    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v4, :cond_5

    .line 710
    return-object p0

    .line 712
    :cond_5
    move-object v3, p0

    .line 713
    .local v3, "res":Lsun/misc/FDBigInteger;
    if-eqz p1, :cond_29

    .line 715
    if-eqz p2, :cond_2e

    const/4 v0, 0x1

    .line 716
    .local v0, "extraSize":I
    :goto_b
    sget-object v4, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v4, v4

    if-ge p1, v4, :cond_30

    .line 717
    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v0

    new-array v2, v4, [I

    .line 718
    .local v2, "r":[I
    iget-object v4, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v5, p0, Lsun/misc/FDBigInteger;->nWords:I

    sget-object v6, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v6, v6, p1

    invoke-static {v4, v5, v6, v2}, Lsun/misc/FDBigInteger;->mult([III[I)V

    .line 719
    new-instance v3, Lsun/misc/FDBigInteger;

    .end local v3    # "res":Lsun/misc/FDBigInteger;
    iget v4, p0, Lsun/misc/FDBigInteger;->offset:I

    invoke-direct {v3, v2, v4}, Lsun/misc/FDBigInteger;-><init>([II)V

    .line 727
    .end local v0    # "extraSize":I
    .end local v2    # "r":[I
    .restart local v3    # "res":Lsun/misc/FDBigInteger;
    :cond_29
    :goto_29
    invoke-virtual {v3, p2}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v4

    return-object v4

    .line 715
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "extraSize":I
    goto :goto_b

    .line 721
    :cond_30
    invoke-static {p1}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v1

    .line 722
    .local v1, "pow5":Lsun/misc/FDBigInteger;
    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-direct {v1}, Lsun/misc/FDBigInteger;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    new-array v2, v4, [I

    .line 723
    .restart local v2    # "r":[I
    iget-object v4, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v5, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget-object v6, v1, Lsun/misc/FDBigInteger;->data:[I

    iget v7, v1, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v4, v5, v6, v7, v2}, Lsun/misc/FDBigInteger;->mult([II[II[I)V

    .line 724
    new-instance v3, Lsun/misc/FDBigInteger;

    .end local v3    # "res":Lsun/misc/FDBigInteger;
    iget v4, p0, Lsun/misc/FDBigInteger;->offset:I

    iget v5, v1, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v4, v5

    invoke-direct {v3, v2, v4}, Lsun/misc/FDBigInteger;-><init>([II)V

    .restart local v3    # "res":Lsun/misc/FDBigInteger;
    goto :goto_29
.end method

.method public quoRemIteration(Lsun/misc/FDBigInteger;)I
    .registers 24
    .param p1, "S"    # Lsun/misc/FDBigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 564
    sget-boolean v16, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v16, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsun/misc/FDBigInteger;->isImmutable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_15

    new-instance v16, Ljava/lang/AssertionError;

    const-string/jumbo v17, "cannot modify immutable value"

    invoke-direct/range {v16 .. v17}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v16

    .line 568
    :cond_15
    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v15

    .line 569
    .local v15, "thSize":I
    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v8

    .line 570
    .local v8, "sSize":I
    if-ge v15, v8, :cond_54

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lsun/misc/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v4

    .line 574
    .local v4, "p":I
    if-eqz v4, :cond_50

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lsun/misc/FDBigInteger;->nWords:I

    aput v4, v16, v17

    .line 579
    :goto_4d
    const/16 v16, 0x0

    return v16

    .line 577
    :cond_50
    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    goto :goto_4d

    .line 580
    .end local v4    # "p":I
    :cond_54
    if-le v15, v8, :cond_5f

    .line 581
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v17, "disparate values"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 586
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    div-long v6, v16, v18

    .line 587
    .local v6, "q":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v7, v1}, Lsun/misc/FDBigInteger;->multDiffMe(JLsun/misc/FDBigInteger;)J

    move-result-wide v2

    .line 588
    .local v2, "diff":J
    const-wide/16 v16, 0x0

    cmp-long v16, v2, v16

    if-eqz v16, :cond_11e

    .line 596
    const-wide/16 v10, 0x0

    .line 597
    .local v10, "sum":J
    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v17, v0

    sub-int v13, v16, v17

    .line 599
    .local v13, "tStart":I
    move-object/from16 v0, p1

    iget-object v9, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 600
    .local v9, "sd":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 601
    .local v14, "td":[I
    :goto_bf
    const-wide/16 v16, 0x0

    cmp-long v16, v10, v16

    if-nez v16, :cond_11e

    .line 602
    const/4 v5, 0x0

    .local v5, "sIndex":I
    move v12, v13

    .local v12, "tIndex":I
    :goto_c7
    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v12, v0, :cond_ff

    .line 603
    aget v16, v14, v12

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    aget v18, v9, v5

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v16, v16, v18

    add-long v10, v10, v16

    .line 604
    long-to-int v0, v10

    move/from16 v16, v0

    aput v16, v14, v12

    .line 605
    const/16 v16, 0x20

    ushr-long v10, v10, v16

    .line 602
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_c7

    .line 615
    :cond_ff
    sget-boolean v16, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v16, :cond_119

    const-wide/16 v16, 0x0

    cmp-long v16, v10, v16

    if-eqz v16, :cond_119

    const-wide/16 v16, 0x1

    cmp-long v16, v10, v16

    if-eqz v16, :cond_119

    new-instance v16, Ljava/lang/AssertionError;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v16

    .line 616
    :cond_119
    const-wide/16 v16, 0x1

    sub-long v6, v6, v16

    goto :goto_bf

    .line 622
    .end local v5    # "sIndex":I
    .end local v9    # "sd":[I
    .end local v10    # "sum":J
    .end local v12    # "tIndex":I
    .end local v13    # "tStart":I
    .end local v14    # "td":[I
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lsun/misc/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v4

    .line 623
    .restart local v4    # "p":I
    sget-boolean v16, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v16, :cond_144

    if-eqz v4, :cond_144

    new-instance v16, Ljava/lang/AssertionError;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v16

    .line 624
    :cond_144
    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    .line 625
    long-to-int v0, v6

    move/from16 v16, v0

    return v16
.end method

.method public rightInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;
    .registers 28
    .param p1, "subtrahend"    # Lsun/misc/FDBigInteger;

    .prologue
    .line 851
    sget-boolean v19, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v19, :cond_1b

    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v19

    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b

    new-instance v19, Ljava/lang/AssertionError;

    const-string/jumbo v20, "result should be positive"

    invoke-direct/range {v19 .. v20}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v19

    .line 852
    :cond_1b
    move-object/from16 v11, p0

    .line 853
    .local v11, "minuend":Lsun/misc/FDBigInteger;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lsun/misc/FDBigInteger;->isImmutable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3e

    .line 854
    new-instance v18, Lsun/misc/FDBigInteger;

    move-object/from16 v0, p1

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [I

    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lsun/misc/FDBigInteger;-><init>([II)V

    .end local p1    # "subtrahend":Lsun/misc/FDBigInteger;
    .local v18, "subtrahend":Lsun/misc/FDBigInteger;
    move-object/from16 p1, v18

    .line 856
    .end local v18    # "subtrahend":Lsun/misc/FDBigInteger;
    .restart local p1    # "subtrahend":Lsun/misc/FDBigInteger;
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 857
    .local v12, "offsetDiff":I
    move-object/from16 v0, p1

    iget-object v15, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 858
    .local v15, "sData":[I
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 859
    .local v8, "mData":[I
    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v17, v0

    .line 860
    .local v17, "subLen":I
    move-object/from16 v0, p0

    iget v10, v0, Lsun/misc/FDBigInteger;->nWords:I

    .line 861
    .local v10, "minLen":I
    if-gez v12, :cond_d3

    .line 862
    move v14, v10

    .line 863
    .local v14, "rLen":I
    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_bd

    .line 864
    neg-int v0, v12

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v15, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 865
    neg-int v0, v12

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 871
    :goto_86
    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lsun/misc/FDBigInteger;->offset:I

    .line 872
    sub-int v17, v17, v12

    .line 873
    const/4 v12, 0x0

    .line 888
    :cond_95
    :goto_95
    const/16 v16, 0x0

    .line 889
    .local v16, "sIndex":I
    const-wide/16 v4, 0x0

    .line 890
    .local v4, "borrow":J
    :goto_99
    move/from16 v0, v16

    if-ge v0, v12, :cond_e5

    .line 891
    aget v19, v15, v16

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const-wide/16 v22, 0x0

    sub-long v20, v22, v20

    add-long v6, v20, v4

    .line 892
    .local v6, "diff":J
    long-to-int v0, v6

    move/from16 v19, v0

    aput v19, v15, v16

    .line 893
    const/16 v19, 0x20

    shr-long v4, v6, v19

    .line 890
    add-int/lit8 v16, v16, 0x1

    goto :goto_99

    .line 867
    .end local v4    # "borrow":J
    .end local v6    # "diff":J
    .end local v16    # "sIndex":I
    :cond_bd
    new-array v13, v10, [I

    .line 868
    .local v13, "r":[I
    neg-int v0, v12

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v15, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 869
    move-object v15, v13

    move-object/from16 v0, p1

    iput-object v13, v0, Lsun/misc/FDBigInteger;->data:[I

    goto :goto_86

    .line 875
    .end local v13    # "r":[I
    .end local v14    # "rLen":I
    :cond_d3
    add-int v14, v10, v12

    .line 876
    .restart local v14    # "rLen":I
    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v14, v0, :cond_95

    .line 877
    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Lsun/misc/FDBigInteger;->data:[I

    goto :goto_95

    .line 896
    .restart local v4    # "borrow":J
    .restart local v16    # "sIndex":I
    :cond_e5
    const/4 v9, 0x0

    .local v9, "mIndex":I
    :goto_e6
    if-ge v9, v10, :cond_116

    .line 898
    aget v19, v8, v9

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    aget v19, v15, v16

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    sub-long v20, v20, v22

    add-long v6, v20, v4

    .line 899
    .restart local v6    # "diff":J
    long-to-int v0, v6

    move/from16 v19, v0

    aput v19, v15, v16

    .line 900
    const/16 v19, 0x20

    shr-long v4, v6, v19

    .line 896
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_e6

    .line 902
    .end local v6    # "diff":J
    :cond_116
    sget-boolean v19, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v19, :cond_12a

    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-eqz v19, :cond_12a

    new-instance v19, Ljava/lang/AssertionError;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v19

    .line 904
    :cond_12a
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lsun/misc/FDBigInteger;->nWords:I

    .line 905
    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    .line 906
    return-object p1
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .registers 6

    .prologue
    .line 1487
    iget v3, p0, Lsun/misc/FDBigInteger;->nWords:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [B

    .line 1488
    .local v1, "magnitude":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget v3, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v0, v3, :cond_3e

    .line 1489
    iget-object v3, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v2, v3, v0

    .line 1490
    .local v2, "w":I
    array-length v3, v1

    mul-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 1491
    array-length v3, v1

    mul-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1492
    array-length v3, v1

    mul-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x3

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1493
    array-length v3, v1

    mul-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x4

    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1488
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1495
    .end local v2    # "w":I
    :cond_3e
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1}, Ljava/math/BigInteger;-><init>([B)V

    iget v4, p0, Lsun/misc/FDBigInteger;->offset:I

    mul-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method public toHexString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1463
    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v4, :cond_8

    .line 1464
    const-string/jumbo v4, "0"

    return-object v4

    .line 1466
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget v5, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1467
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_18
    if-ltz v0, :cond_38

    .line 1468
    iget-object v4, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1469
    .local v3, "subStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "j":I
    :goto_26
    const/16 v4, 0x8

    if-ge v1, v4, :cond_32

    .line 1470
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1469
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1472
    :cond_32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 1474
    .end local v1    # "j":I
    .end local v3    # "subStr":Ljava/lang/String;
    :cond_38
    iget v0, p0, Lsun/misc/FDBigInteger;->offset:I

    :goto_3a
    if-lez v0, :cond_45

    .line 1475
    const-string/jumbo v4, "00000000"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    .line 1477
    :cond_45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1506
    invoke-virtual {p0}, Lsun/misc/FDBigInteger;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
