.class public Lsun/misc/FDBigInteger;
.super Ljava/lang/Object;
.source "FDBigInteger.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist LONG_5_POW:[J

.field private static final blacklist LONG_MASK:J = 0xffffffffL

.field private static final blacklist MAX_FIVE_POW:I = 0x154

.field private static final blacklist POW_5_CACHE:[Lsun/misc/FDBigInteger;

.field static final blacklist SMALL_5_POW:[I

.field public static final blacklist ZERO:Lsun/misc/FDBigInteger;


# instance fields
.field private blacklist data:[I

.field private blacklist isImmutable:Z

.field private blacklist nWords:I

.field private blacklist offset:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 34
    nop

    .line 67
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_5e

    sput-object v0, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    .line 84
    const/16 v0, 0x1b

    new-array v0, v0, [J

    fill-array-data v0, :array_7e

    sput-object v0, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    .line 122
    const/16 v0, 0x154

    new-array v1, v0, [Lsun/misc/FDBigInteger;

    sput-object v1, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "i":I
    :goto_1a
    sget-object v2, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_38

    .line 125
    new-instance v3, Lsun/misc/FDBigInteger;

    const/4 v5, 0x1

    new-array v5, v5, [I

    aget v2, v2, v1

    aput v2, v5, v4

    invoke-direct {v3, v5, v4}, Lsun/misc/FDBigInteger;-><init>([II)V

    move-object v2, v3

    .line 126
    .local v2, "pow5":Lsun/misc/FDBigInteger;
    invoke-virtual {v2}, Lsun/misc/FDBigInteger;->makeImmutable()V

    .line 127
    sget-object v3, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    aput-object v2, v3, v1

    .line 128
    nop

    .end local v2    # "pow5":Lsun/misc/FDBigInteger;
    add-int/lit8 v1, v1, 0x1

    .line 129
    goto :goto_1a

    .line 130
    :cond_38
    sget-object v2, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    .line 131
    .local v2, "prev":Lsun/misc/FDBigInteger;
    :goto_3e
    if-ge v1, v0, :cond_50

    .line 132
    sget-object v3, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    const/4 v5, 0x5

    invoke-direct {v2, v5}, Lsun/misc/FDBigInteger;->mult(I)Lsun/misc/FDBigInteger;

    move-result-object v5

    move-object v2, v5

    aput-object v5, v3, v1

    .line 133
    invoke-virtual {v2}, Lsun/misc/FDBigInteger;->makeImmutable()V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 139
    .end local v1    # "i":I
    .end local v2    # "prev":Lsun/misc/FDBigInteger;
    :cond_50
    new-instance v0, Lsun/misc/FDBigInteger;

    new-array v1, v4, [I

    invoke-direct {v0, v1, v4}, Lsun/misc/FDBigInteger;-><init>([II)V

    sput-object v0, Lsun/misc/FDBigInteger;->ZERO:Lsun/misc/FDBigInteger;

    .line 143
    invoke-virtual {v0}, Lsun/misc/FDBigInteger;->makeImmutable()V

    .line 144
    return-void

    nop

    :array_5e
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

    :array_7e
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

.method public constructor blacklist <init>(J[CII)V
    .registers 15
    .param p1, "lValue"    # J
    .param p3, "digits"    # [C
    .param p4, "kDigits"    # I
    .param p5, "nDigits"    # I

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/FDBigInteger;->isImmutable:Z

    .line 208
    add-int/lit8 v1, p5, 0x8

    div-int/lit8 v1, v1, 0x9

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 209
    .local v1, "n":I
    new-array v3, v1, [I

    iput-object v3, p0, Lsun/misc/FDBigInteger;->data:[I

    .line 210
    long-to-int v4, p1

    aput v4, v3, v0

    .line 211
    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 212
    iput v0, p0, Lsun/misc/FDBigInteger;->offset:I

    .line 213
    iput v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    .line 214
    move v0, p4

    .line 215
    .local v0, "i":I
    add-int/lit8 v2, p5, -0x5

    .line 217
    .local v2, "limit":I
    :goto_25
    if-ge v0, v2, :cond_46

    .line 218
    add-int/lit8 v3, v0, 0x5

    .line 219
    .local v3, "ilim":I
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    aget-char v0, p3, v0

    add-int/lit8 v0, v0, -0x30

    move v8, v4

    move v4, v0

    move v0, v8

    .line 220
    .restart local v0    # "i":I
    .local v4, "v":I
    :goto_32
    if-ge v0, v3, :cond_3f

    .line 221
    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .local v7, "i":I
    aget-char v0, p3, v0

    add-int/2addr v6, v0

    add-int/lit8 v4, v6, -0x30

    move v0, v7

    goto :goto_32

    .line 223
    .end local v7    # "i":I
    .restart local v0    # "i":I
    :cond_3f
    const v6, 0x186a0

    invoke-direct {p0, v6, v4}, Lsun/misc/FDBigInteger;->multAddMe(II)V

    .line 224
    .end local v3    # "ilim":I
    goto :goto_25

    .line 225
    .end local v4    # "v":I
    :cond_46
    const/4 v3, 0x1

    .line 226
    .local v3, "factor":I
    const/4 v4, 0x0

    .line 227
    .restart local v4    # "v":I
    :goto_48
    if-ge v0, p5, :cond_57

    .line 228
    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .restart local v7    # "i":I
    aget-char v0, p3, v0

    add-int/2addr v6, v0

    add-int/lit8 v4, v6, -0x30

    .line 229
    mul-int/lit8 v3, v3, 0xa

    move v0, v7

    goto :goto_48

    .line 231
    .end local v7    # "i":I
    .restart local v0    # "i":I
    :cond_57
    if-eq v3, v5, :cond_5c

    .line 232
    invoke-direct {p0, v3, v4}, Lsun/misc/FDBigInteger;->multAddMe(II)V

    .line 234
    :cond_5c
    invoke-direct {p0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    .line 235
    return-void
.end method

.method private constructor blacklist <init>([II)V
    .registers 4
    .param p1, "data"    # [I
    .param p2, "offset"    # I

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

.method private blacklist add(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;
    .registers 19
    .param p1, "other"    # Lsun/misc/FDBigInteger;

    .line 1184
    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v0

    .line 1185
    .local v0, "tSize":I
    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v1

    .line 1186
    .local v1, "oSize":I
    if-lt v0, v1, :cond_11

    .line 1187
    move-object/from16 v2, p0

    .line 1188
    .local v2, "big":Lsun/misc/FDBigInteger;
    move v3, v0

    .line 1189
    .local v3, "bigLen":I
    move-object/from16 v4, p1

    .line 1190
    .local v4, "small":Lsun/misc/FDBigInteger;
    move v5, v1

    .local v5, "smallLen":I
    goto :goto_17

    .line 1192
    .end local v2    # "big":Lsun/misc/FDBigInteger;
    .end local v3    # "bigLen":I
    .end local v4    # "small":Lsun/misc/FDBigInteger;
    .end local v5    # "smallLen":I
    :cond_11
    move-object/from16 v2, p1

    .line 1193
    .restart local v2    # "big":Lsun/misc/FDBigInteger;
    move v3, v1

    .line 1194
    .restart local v3    # "bigLen":I
    move-object/from16 v4, p0

    .line 1195
    .restart local v4    # "small":Lsun/misc/FDBigInteger;
    move v5, v0

    .line 1197
    .restart local v5    # "smallLen":I
    :goto_17
    add-int/lit8 v6, v3, 0x1

    new-array v6, v6, [I

    .line 1198
    .local v6, "r":[I
    const/4 v7, 0x0

    .line 1199
    .local v7, "i":I
    const-wide/16 v8, 0x0

    .line 1200
    .local v8, "carry":J
    :goto_1e
    const-wide v13, 0xffffffffL

    if-ge v7, v5, :cond_57

    .line 1201
    iget v15, v2, Lsun/misc/FDBigInteger;->offset:I

    if-ge v7, v15, :cond_2c

    const-wide/16 v11, 0x0

    goto :goto_34

    :cond_2c
    iget-object v11, v2, Lsun/misc/FDBigInteger;->data:[I

    sub-int v12, v7, v15

    aget v11, v11, v12

    int-to-long v11, v11

    and-long/2addr v11, v13

    .line 1202
    :goto_34
    iget v15, v4, Lsun/misc/FDBigInteger;->offset:I

    if-ge v7, v15, :cond_3e

    move v15, v0

    move/from16 v16, v1

    const-wide/16 v0, 0x0

    goto :goto_49

    :cond_3e
    iget-object v10, v4, Lsun/misc/FDBigInteger;->data:[I

    sub-int v15, v7, v15

    aget v10, v10, v15

    move v15, v0

    move/from16 v16, v1

    .end local v0    # "tSize":I
    .end local v1    # "oSize":I
    .local v15, "tSize":I
    .local v16, "oSize":I
    int-to-long v0, v10

    and-long/2addr v0, v13

    :goto_49
    add-long/2addr v11, v0

    add-long/2addr v8, v11

    .line 1203
    long-to-int v0, v8

    aput v0, v6, v7

    .line 1204
    const/16 v0, 0x20

    shr-long/2addr v8, v0

    .line 1200
    add-int/lit8 v7, v7, 0x1

    move v0, v15

    move/from16 v1, v16

    goto :goto_1e

    .end local v15    # "tSize":I
    .end local v16    # "oSize":I
    .restart local v0    # "tSize":I
    .restart local v1    # "oSize":I
    :cond_57
    move v15, v0

    move/from16 v16, v1

    .line 1206
    .end local v0    # "tSize":I
    .end local v1    # "oSize":I
    .restart local v15    # "tSize":I
    .restart local v16    # "oSize":I
    :goto_5a
    if-ge v7, v3, :cond_75

    .line 1207
    iget v0, v2, Lsun/misc/FDBigInteger;->offset:I

    if-ge v7, v0, :cond_63

    const-wide/16 v0, 0x0

    goto :goto_6b

    :cond_63
    iget-object v1, v2, Lsun/misc/FDBigInteger;->data:[I

    sub-int v0, v7, v0

    aget v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v13

    :goto_6b
    add-long/2addr v8, v0

    .line 1208
    long-to-int v0, v8

    aput v0, v6, v7

    .line 1209
    const/16 v0, 0x20

    shr-long/2addr v8, v0

    .line 1206
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    .line 1211
    :cond_75
    long-to-int v0, v8

    aput v0, v6, v3

    .line 1212
    new-instance v0, Lsun/misc/FDBigInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v0
.end method

.method private static blacklist big5pow(I)Lsun/misc/FDBigInteger;
    .registers 2
    .param p0, "p"    # I

    .line 1421
    nop

    .line 1422
    const/16 v0, 0x154

    if-ge p0, v0, :cond_a

    .line 1423
    sget-object v0, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    aget-object v0, v0, p0

    return-object v0

    .line 1425
    :cond_a
    invoke-static {p0}, Lsun/misc/FDBigInteger;->big5powRec(I)Lsun/misc/FDBigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist big5powRec(I)Lsun/misc/FDBigInteger;
    .registers 6
    .param p0, "p"    # I

    .line 1436
    const/16 v0, 0x154

    if-ge p0, v0, :cond_9

    .line 1437
    sget-object v0, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    aget-object v0, v0, p0

    return-object v0

    .line 1446
    :cond_9
    shr-int/lit8 v0, p0, 0x1

    .line 1447
    .local v0, "q":I
    sub-int v1, p0, v0

    .line 1448
    .local v1, "r":I
    invoke-static {v0}, Lsun/misc/FDBigInteger;->big5powRec(I)Lsun/misc/FDBigInteger;

    move-result-object v2

    .line 1449
    .local v2, "bigq":Lsun/misc/FDBigInteger;
    sget-object v3, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v4, v3

    if-ge v1, v4, :cond_1d

    .line 1450
    aget v3, v3, v1

    invoke-direct {v2, v3}, Lsun/misc/FDBigInteger;->mult(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    return-object v3

    .line 1452
    :cond_1d
    invoke-static {v1}, Lsun/misc/FDBigInteger;->big5powRec(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/misc/FDBigInteger;->mult(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist checkZeroTail([II)I
    .registers 3
    .param p0, "a"    # [I
    .param p1, "from"    # I

    .line 923
    :cond_0
    if-lez p1, :cond_a

    .line 924
    add-int/lit8 p1, p1, -0x1

    aget v0, p0, p1

    if-eqz v0, :cond_0

    .line 925
    const/4 v0, 0x1

    return v0

    .line 928
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist leftShift([II[IIII)V
    .registers 8
    .param p0, "src"    # [I
    .param p1, "idx"    # I
    .param p2, "result"    # [I
    .param p3, "bitcount"    # I
    .param p4, "anticount"    # I
    .param p5, "prev"    # I

    .line 421
    :goto_0
    if-lez p1, :cond_10

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
    .end local v0    # "v":I
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 427
    :cond_10
    shl-int v0, p5, p3

    .line 428
    .restart local v0    # "v":I
    const/4 v1, 0x0

    aput v0, p2, v1

    .line 429
    return-void
.end method

.method private blacklist mult(I)Lsun/misc/FDBigInteger;
    .registers 5
    .param p1, "i"    # I

    .line 1122
    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v0, :cond_5

    .line 1123
    return-object p0

    .line 1125
    :cond_5
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    .line 1126
    .local v1, "r":[I
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    invoke-static {v2, v0, p1, v1}, Lsun/misc/FDBigInteger;->mult([III[I)V

    .line 1127
    new-instance v0, Lsun/misc/FDBigInteger;

    iget v2, p0, Lsun/misc/FDBigInteger;->offset:I

    invoke-direct {v0, v1, v2}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v0
.end method

.method private blacklist mult(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;
    .registers 7
    .param p1, "other"    # Lsun/misc/FDBigInteger;

    .line 1154
    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v0, :cond_5

    .line 1155
    return-object p0

    .line 1157
    :cond_5
    invoke-direct {p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    .line 1158
    iget-object v0, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v0, v0, v1

    invoke-direct {p1, v0}, Lsun/misc/FDBigInteger;->mult(I)Lsun/misc/FDBigInteger;

    move-result-object v0

    return-object v0

    .line 1160
    :cond_16
    iget v0, p1, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v0, :cond_1b

    .line 1161
    return-object p1

    .line 1163
    :cond_1b
    invoke-direct {p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v0

    if-ne v0, v2, :cond_2a

    .line 1164
    iget-object v0, p1, Lsun/misc/FDBigInteger;->data:[I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lsun/misc/FDBigInteger;->mult(I)Lsun/misc/FDBigInteger;

    move-result-object v0

    return-object v0

    .line 1166
    :cond_2a
    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget v1, p1, Lsun/misc/FDBigInteger;->nWords:I

    add-int v2, v0, v1

    new-array v2, v2, [I

    .line 1167
    .local v2, "r":[I
    iget-object v3, p0, Lsun/misc/FDBigInteger;->data:[I

    iget-object v4, p1, Lsun/misc/FDBigInteger;->data:[I

    invoke-static {v3, v0, v4, v1, v2}, Lsun/misc/FDBigInteger;->mult([II[II[I)V

    .line 1168
    new-instance v0, Lsun/misc/FDBigInteger;

    iget v1, p0, Lsun/misc/FDBigInteger;->offset:I

    iget v3, p1, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v1, v3

    invoke-direct {v0, v2, v1}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v0
.end method

.method private static blacklist mult([IIII[I)V
    .registers 20
    .param p0, "src"    # [I
    .param p1, "srcLen"    # I
    .param p2, "v0"    # I
    .param p3, "v1"    # I
    .param p4, "dst"    # [I

    .line 1395
    move/from16 v0, p1

    move/from16 v1, p2

    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 1396
    .local v2, "v":J
    const-wide/16 v6, 0x0

    .line 1397
    .local v6, "carry":J
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_e
    const/16 v9, 0x20

    if-ge v8, v0, :cond_20

    .line 1398
    aget v10, p0, v8

    int-to-long v10, v10

    and-long/2addr v10, v4

    mul-long/2addr v10, v2

    add-long/2addr v10, v6

    .line 1399
    .local v10, "product":J
    long-to-int v12, v10

    aput v12, p4, v8

    .line 1400
    ushr-long v6, v10, v9

    .line 1397
    .end local v10    # "product":J
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 1402
    .end local v8    # "j":I
    :cond_20
    long-to-int v8, v6

    aput v8, p4, v0

    .line 1403
    move/from16 v8, p3

    int-to-long v10, v8

    and-long v2, v10, v4

    .line 1404
    const-wide/16 v6, 0x0

    .line 1405
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2b
    if-ge v10, v0, :cond_44

    .line 1406
    add-int/lit8 v11, v10, 0x1

    aget v11, p4, v11

    int-to-long v11, v11

    and-long/2addr v11, v4

    aget v13, p0, v10

    int-to-long v13, v13

    and-long/2addr v13, v4

    mul-long/2addr v13, v2

    add-long/2addr v11, v13

    add-long/2addr v11, v6

    .line 1407
    .local v11, "product":J
    add-int/lit8 v13, v10, 0x1

    long-to-int v14, v11

    aput v14, p4, v13

    .line 1408
    ushr-long v6, v11, v9

    .line 1405
    .end local v11    # "product":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    .line 1410
    .end local v10    # "j":I
    :cond_44
    add-int/lit8 v4, v0, 0x1

    long-to-int v5, v6

    aput v5, p4, v4

    .line 1411
    return-void
.end method

.method private static blacklist mult([III[I)V
    .registers 14
    .param p0, "src"    # [I
    .param p1, "srcLen"    # I
    .param p2, "value"    # I
    .param p3, "dst"    # [I

    .line 1368
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1369
    .local v0, "val":J
    const-wide/16 v4, 0x0

    .line 1370
    .local v4, "carry":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a
    if-ge v6, p1, :cond_1c

    .line 1371
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v7, v4

    .line 1372
    .local v7, "product":J
    long-to-int v9, v7

    aput v9, p3, v6

    .line 1373
    const/16 v9, 0x20

    ushr-long v4, v7, v9

    .line 1370
    .end local v7    # "product":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 1375
    .end local v6    # "i":I
    :cond_1c
    long-to-int v2, v4

    aput v2, p3, p1

    .line 1376
    return-void
.end method

.method private static blacklist mult([II[II[I)V
    .registers 19
    .param p0, "s1"    # [I
    .param p1, "s1Len"    # I
    .param p2, "s2"    # [I
    .param p3, "s2Len"    # I
    .param p4, "dst"    # [I

    .line 746
    move/from16 v0, p3

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    move v2, p1

    if-ge v1, v2, :cond_34

    .line 747
    aget v3, p0, v1

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 748
    .local v3, "v":J
    const-wide/16 v7, 0x0

    .line 749
    .local v7, "p":J
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_12
    if-ge v9, v0, :cond_2c

    .line 750
    add-int v10, v1, v9

    aget v10, p4, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    aget v12, p2, v9

    int-to-long v12, v12

    and-long/2addr v12, v5

    mul-long/2addr v12, v3

    add-long/2addr v10, v12

    add-long/2addr v7, v10

    .line 751
    add-int v10, v1, v9

    long-to-int v11, v7

    aput v11, p4, v10

    .line 752
    const/16 v10, 0x20

    ushr-long/2addr v7, v10

    .line 749
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 754
    .end local v9    # "j":I
    :cond_2c
    add-int v5, v1, v0

    long-to-int v6, v7

    aput v6, p4, v5

    .line 746
    .end local v3    # "v":J
    .end local v7    # "p":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 756
    .end local v1    # "i":I
    :cond_34
    return-void
.end method

.method private blacklist multAddMe(II)V
    .registers 14
    .param p1, "iv"    # I
    .param p2, "addend"    # I

    .line 1234
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1236
    .local v0, "v":J
    iget-object v4, p0, Lsun/misc/FDBigInteger;->data:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    int-to-long v8, p2

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    .line 1237
    .local v6, "p":J
    long-to-int v8, v6

    aput v8, v4, v5

    .line 1238
    const/16 v4, 0x20

    ushr-long v5, v6, v4

    .line 1239
    .end local v6    # "p":J
    .local v5, "p":J
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1a
    iget v8, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v7, v8, :cond_2d

    .line 1240
    iget-object v8, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v9, v8, v7

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long/2addr v9, v0

    add-long/2addr v5, v9

    .line 1241
    long-to-int v9, v5

    aput v9, v8, v7

    .line 1242
    ushr-long/2addr v5, v4

    .line 1239
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 1244
    .end local v7    # "i":I
    :cond_2d
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_3c

    .line 1245
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v3, v8, 0x1

    iput v3, p0, Lsun/misc/FDBigInteger;->nWords:I

    long-to-int v3, v5

    aput v3, v2, v8

    .line 1247
    :cond_3c
    return-void
.end method

.method private static blacklist multAndCarryBy10([II[I)I
    .registers 10
    .param p0, "src"    # [I
    .param p1, "srcLen"    # I
    .param p2, "dst"    # [I

    .line 1344
    const-wide/16 v0, 0x0

    .line 1345
    .local v0, "carry":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p1, :cond_1c

    .line 1346
    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    add-long/2addr v3, v0

    .line 1347
    .local v3, "product":J
    long-to-int v5, v3

    aput v5, p2, v2

    .line 1348
    const/16 v5, 0x20

    ushr-long v0, v3, v5

    .line 1345
    .end local v3    # "product":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1350
    .end local v2    # "i":I
    :cond_1c
    long-to-int v2, v0

    return v2
.end method

.method private blacklist multDiffMe(JLsun/misc/FDBigInteger;)J
    .registers 21
    .param p1, "q"    # J
    .param p3, "S"    # Lsun/misc/FDBigInteger;

    .line 1290
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-wide/16 v2, 0x0

    .line 1291
    .local v2, "diff":J
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_8f

    .line 1292
    iget v4, v1, Lsun/misc/FDBigInteger;->offset:I

    iget v5, v0, Lsun/misc/FDBigInteger;->offset:I

    sub-int/2addr v4, v5

    .line 1293
    .local v4, "deltaSize":I
    const/16 v5, 0x20

    const-wide v6, 0xffffffffL

    if-ltz v4, :cond_3a

    .line 1294
    iget-object v8, v1, Lsun/misc/FDBigInteger;->data:[I

    .line 1295
    .local v8, "sd":[I
    iget-object v9, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 1296
    .local v9, "td":[I
    const/4 v10, 0x0

    .local v10, "sIndex":I
    move v11, v4

    .local v11, "tIndex":I
    :goto_20
    iget v12, v1, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v10, v12, :cond_39

    .line 1297
    aget v12, v9, v11

    int-to-long v12, v12

    and-long/2addr v12, v6

    aget v14, v8, v10

    int-to-long v14, v14

    and-long/2addr v14, v6

    mul-long v14, v14, p1

    sub-long/2addr v12, v14

    add-long/2addr v2, v12

    .line 1298
    long-to-int v12, v2

    aput v12, v9, v11

    .line 1299
    shr-long/2addr v2, v5

    .line 1296
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_20

    .line 1301
    .end local v8    # "sd":[I
    .end local v9    # "td":[I
    .end local v10    # "sIndex":I
    .end local v11    # "tIndex":I
    :cond_39
    goto :goto_8f

    .line 1302
    :cond_3a
    neg-int v4, v4

    .line 1303
    iget v8, v0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/2addr v8, v4

    new-array v8, v8, [I

    .line 1304
    .local v8, "rd":[I
    const/4 v9, 0x0

    .line 1305
    .local v9, "sIndex":I
    const/4 v10, 0x0

    .line 1306
    .local v10, "rIndex":I
    iget-object v11, v1, Lsun/misc/FDBigInteger;->data:[I

    .line 1307
    .local v11, "sd":[I
    :goto_44
    if-ge v10, v4, :cond_5a

    iget v12, v1, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v9, v12, :cond_5a

    .line 1308
    aget v12, v11, v9

    int-to-long v12, v12

    and-long/2addr v12, v6

    mul-long v12, v12, p1

    sub-long/2addr v2, v12

    .line 1309
    long-to-int v12, v2

    aput v12, v8, v10

    .line 1310
    shr-long/2addr v2, v5

    .line 1307
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_44

    .line 1312
    :cond_5a
    const/4 v12, 0x0

    .line 1313
    .local v12, "tIndex":I
    iget-object v13, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 1314
    .local v13, "td":[I
    :goto_5d
    iget v14, v1, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v9, v14, :cond_7f

    .line 1315
    aget v14, v13, v12

    int-to-long v14, v14

    and-long/2addr v14, v6

    aget v5, v11, v9

    move/from16 v16, v4

    .end local v4    # "deltaSize":I
    .local v16, "deltaSize":I
    int-to-long v4, v5

    and-long/2addr v4, v6

    mul-long v4, v4, p1

    sub-long/2addr v14, v4

    add-long/2addr v2, v14

    .line 1316
    long-to-int v4, v2

    aput v4, v8, v10

    .line 1317
    const/16 v4, 0x20

    shr-long/2addr v2, v4

    .line 1314
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v10, 0x1

    move v5, v4

    move/from16 v4, v16

    goto :goto_5d

    .line 1319
    .end local v16    # "deltaSize":I
    .restart local v4    # "deltaSize":I
    :cond_7f
    move/from16 v16, v4

    .end local v4    # "deltaSize":I
    .restart local v16    # "deltaSize":I
    iget v4, v0, Lsun/misc/FDBigInteger;->nWords:I

    add-int v4, v4, v16

    iput v4, v0, Lsun/misc/FDBigInteger;->nWords:I

    .line 1320
    iget v4, v0, Lsun/misc/FDBigInteger;->offset:I

    sub-int v4, v4, v16

    iput v4, v0, Lsun/misc/FDBigInteger;->offset:I

    .line 1321
    iput-object v8, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 1324
    .end local v8    # "rd":[I
    .end local v9    # "sIndex":I
    .end local v10    # "rIndex":I
    .end local v11    # "sd":[I
    .end local v12    # "tIndex":I
    .end local v13    # "td":[I
    .end local v16    # "deltaSize":I
    :cond_8f
    :goto_8f
    return-wide v2
.end method

.method private blacklist size()I
    .registers 3

    .line 534
    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget v1, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method private blacklist trimLeadingZeros()V
    .registers 4

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
    :goto_c
    if-lez v0, :cond_19

    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-nez v1, :cond_19

    .line 374
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 376
    :cond_19
    iput v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    .line 377
    if-nez v0, :cond_20

    .line 378
    const/4 v1, 0x0

    iput v1, p0, Lsun/misc/FDBigInteger;->offset:I

    .line 381
    :cond_20
    return-void
.end method

.method public static blacklist valueOfMulPow52(JII)Lsun/misc/FDBigInteger;
    .registers 23
    .param p0, "value"    # J
    .param p2, "p5"    # I
    .param p3, "p2"    # I

    .line 289
    move-wide/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 290
    nop

    .line 291
    long-to-int v4, v0

    .line 292
    .local v4, "v0":I
    const/16 v5, 0x20

    ushr-long v6, v0, v5

    long-to-int v6, v6

    .line 293
    .local v6, "v1":I
    shr-int/lit8 v7, v3, 0x5

    .line 294
    .local v7, "wordcount":I
    and-int/lit8 v8, v3, 0x1f

    .line 295
    .local v8, "bitcount":I
    if-eqz v2, :cond_a4

    .line 296
    sget-object v13, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v14, v13

    if-ge v2, v14, :cond_6f

    .line 297
    aget v13, v13, v2

    int-to-long v13, v13

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    .line 298
    .local v13, "pow5":J
    int-to-long v10, v4

    and-long/2addr v10, v15

    mul-long/2addr v10, v13

    .line 299
    .local v10, "carry":J
    long-to-int v4, v10

    .line 300
    ushr-long/2addr v10, v5

    .line 301
    move-wide/from16 v17, v10

    .end local v10    # "carry":J
    .local v17, "carry":J
    int-to-long v9, v6

    and-long/2addr v9, v15

    mul-long/2addr v9, v13

    add-long v9, v9, v17

    .line 302
    .end local v17    # "carry":J
    .local v9, "carry":J
    long-to-int v6, v9

    .line 303
    move-wide v15, v13

    .end local v13    # "pow5":J
    .local v15, "pow5":J
    ushr-long v12, v9, v5

    long-to-int v5, v12

    .line 304
    .local v5, "v2":I
    if-nez v8, :cond_46

    .line 305
    new-instance v12, Lsun/misc/FDBigInteger;

    const/4 v13, 0x3

    new-array v13, v13, [I

    const/4 v11, 0x0

    aput v4, v13, v11

    const/4 v11, 0x1

    aput v6, v13, v11

    const/4 v11, 0x2

    aput v5, v13, v11

    invoke-direct {v12, v13, v7}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v12

    .line 307
    :cond_46
    const/4 v11, 0x0

    new-instance v12, Lsun/misc/FDBigInteger;

    const/4 v13, 0x4

    new-array v13, v13, [I

    shl-int v14, v4, v8

    aput v14, v13, v11

    shl-int v11, v6, v8

    rsub-int/lit8 v14, v8, 0x20

    ushr-int v14, v4, v14

    or-int/2addr v11, v14

    const/4 v14, 0x1

    aput v11, v13, v14

    shl-int v11, v5, v8

    rsub-int/lit8 v14, v8, 0x20

    ushr-int v14, v6, v14

    or-int/2addr v11, v14

    const/4 v14, 0x2

    aput v11, v13, v14

    rsub-int/lit8 v11, v8, 0x20

    ushr-int v11, v5, v11

    const/4 v14, 0x3

    aput v11, v13, v14

    invoke-direct {v12, v13, v7}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v12

    .line 315
    .end local v5    # "v2":I
    .end local v9    # "carry":J
    .end local v15    # "pow5":J
    :cond_6f
    invoke-static/range {p2 .. p2}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v5

    .line 317
    .local v5, "pow5":Lsun/misc/FDBigInteger;
    if-nez v6, :cond_87

    .line 318
    iget v9, v5, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v10, v9, 0x1

    if-eqz v3, :cond_7d

    const/4 v11, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v11, 0x0

    :goto_7e
    add-int/2addr v10, v11

    new-array v10, v10, [I

    .line 319
    .local v10, "r":[I
    iget-object v11, v5, Lsun/misc/FDBigInteger;->data:[I

    invoke-static {v11, v9, v4, v10}, Lsun/misc/FDBigInteger;->mult([III[I)V

    goto :goto_98

    .line 321
    .end local v10    # "r":[I
    :cond_87
    iget v9, v5, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v10, v9, 0x2

    if-eqz v3, :cond_8f

    const/4 v11, 0x1

    goto :goto_90

    :cond_8f
    const/4 v11, 0x0

    :goto_90
    add-int/2addr v10, v11

    new-array v10, v10, [I

    .line 322
    .restart local v10    # "r":[I
    iget-object v11, v5, Lsun/misc/FDBigInteger;->data:[I

    invoke-static {v11, v9, v4, v6, v10}, Lsun/misc/FDBigInteger;->mult([IIII[I)V

    .line 324
    :goto_98
    new-instance v9, Lsun/misc/FDBigInteger;

    iget v11, v5, Lsun/misc/FDBigInteger;->offset:I

    invoke-direct {v9, v10, v11}, Lsun/misc/FDBigInteger;-><init>([II)V

    invoke-virtual {v9, v3}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v9

    return-object v9

    .line 326
    .end local v5    # "pow5":Lsun/misc/FDBigInteger;
    .end local v10    # "r":[I
    :cond_a4
    if-eqz v3, :cond_d6

    .line 327
    if-nez v8, :cond_b7

    .line 328
    new-instance v5, Lsun/misc/FDBigInteger;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v4, v9, v10

    const/4 v10, 0x1

    aput v6, v9, v10

    invoke-direct {v5, v9, v7}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v5

    .line 330
    :cond_b7
    const/4 v10, 0x0

    new-instance v5, Lsun/misc/FDBigInteger;

    const/4 v9, 0x3

    new-array v9, v9, [I

    shl-int v11, v4, v8

    aput v11, v9, v10

    shl-int v10, v6, v8

    rsub-int/lit8 v11, v8, 0x20

    ushr-int v11, v4, v11

    or-int/2addr v10, v11

    const/4 v12, 0x1

    aput v10, v9, v12

    rsub-int/lit8 v10, v8, 0x20

    ushr-int v10, v6, v10

    const/4 v13, 0x2

    aput v10, v9, v13

    invoke-direct {v5, v9, v7}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v5

    .line 337
    :cond_d6
    const/4 v12, 0x1

    const/4 v13, 0x2

    new-instance v5, Lsun/misc/FDBigInteger;

    new-array v9, v13, [I

    const/4 v10, 0x0

    aput v4, v9, v10

    aput v6, v9, v12

    invoke-direct {v5, v9, v10}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v5
.end method

.method private static blacklist valueOfPow2(I)Lsun/misc/FDBigInteger;
    .registers 7
    .param p0, "p2"    # I

    .line 353
    shr-int/lit8 v0, p0, 0x5

    .line 354
    .local v0, "wordcount":I
    and-int/lit8 v1, p0, 0x1f

    .line 355
    .local v1, "bitcount":I
    new-instance v2, Lsun/misc/FDBigInteger;

    const/4 v3, 0x1

    new-array v4, v3, [I

    shl-int/2addr v3, v1

    const/4 v5, 0x0

    aput v3, v4, v5

    invoke-direct {v2, v4, v0}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v2
.end method

.method public static blacklist valueOfPow52(II)Lsun/misc/FDBigInteger;
    .registers 10
    .param p0, "p5"    # I
    .param p1, "p2"    # I

    .line 251
    if-eqz p0, :cond_3e

    .line 252
    if-nez p1, :cond_9

    .line 253
    invoke-static {p0}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v0

    return-object v0

    .line 254
    :cond_9
    sget-object v0, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v1, v0

    if-ge p0, v1, :cond_35

    .line 255
    aget v0, v0, p0

    .line 256
    .local v0, "pow5":I
    shr-int/lit8 v1, p1, 0x5

    .line 257
    .local v1, "wordcount":I
    and-int/lit8 v2, p1, 0x1f

    .line 258
    .local v2, "bitcount":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_22

    .line 259
    new-instance v5, Lsun/misc/FDBigInteger;

    new-array v3, v3, [I

    aput v0, v3, v4

    invoke-direct {v5, v3, v1}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v5

    .line 261
    :cond_22
    new-instance v5, Lsun/misc/FDBigInteger;

    const/4 v6, 0x2

    new-array v6, v6, [I

    shl-int v7, v0, v2

    aput v7, v6, v4

    rsub-int/lit8 v4, v2, 0x20

    ushr-int v4, v0, v4

    aput v4, v6, v3

    invoke-direct {v5, v6, v1}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v5

    .line 267
    .end local v0    # "pow5":I
    .end local v1    # "wordcount":I
    .end local v2    # "bitcount":I
    :cond_35
    invoke-static {p0}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v0

    return-object v0

    .line 270
    :cond_3e
    invoke-static {p1}, Lsun/misc/FDBigInteger;->valueOfPow2(I)Lsun/misc/FDBigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addAndCmp(Lsun/misc/FDBigInteger;Lsun/misc/FDBigInteger;)I
    .registers 24
    .param p1, "x"    # Lsun/misc/FDBigInteger;
    .param p2, "y"    # Lsun/misc/FDBigInteger;

    .line 1029
    move-object/from16 v0, p0

    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v1

    .line 1030
    .local v1, "xSize":I
    invoke-direct/range {p2 .. p2}, Lsun/misc/FDBigInteger;->size()I

    move-result v2

    .line 1033
    .local v2, "ySize":I
    if-lt v1, v2, :cond_13

    .line 1034
    move-object/from16 v3, p1

    .line 1035
    .local v3, "big":Lsun/misc/FDBigInteger;
    move-object/from16 v4, p2

    .line 1036
    .local v4, "small":Lsun/misc/FDBigInteger;
    move v5, v1

    .line 1037
    .local v5, "bSize":I
    move v6, v2

    .local v6, "sSize":I
    goto :goto_19

    .line 1039
    .end local v3    # "big":Lsun/misc/FDBigInteger;
    .end local v4    # "small":Lsun/misc/FDBigInteger;
    .end local v5    # "bSize":I
    .end local v6    # "sSize":I
    :cond_13
    move-object/from16 v3, p2

    .line 1040
    .restart local v3    # "big":Lsun/misc/FDBigInteger;
    move-object/from16 v4, p1

    .line 1041
    .restart local v4    # "small":Lsun/misc/FDBigInteger;
    move v5, v2

    .line 1042
    .restart local v5    # "bSize":I
    move v6, v1

    .line 1044
    .restart local v6    # "sSize":I
    :goto_19
    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v7

    .line 1045
    .local v7, "thSize":I
    const/4 v8, 0x1

    if-nez v5, :cond_24

    .line 1046
    if-nez v7, :cond_23

    const/4 v8, 0x0

    :cond_23
    return v8

    .line 1048
    :cond_24
    if-nez v6, :cond_2b

    .line 1049
    invoke-virtual {v0, v3}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v8

    return v8

    .line 1051
    :cond_2b
    const/4 v9, -0x1

    if-le v5, v7, :cond_2f

    .line 1052
    return v9

    .line 1054
    :cond_2f
    add-int/lit8 v10, v5, 0x1

    if-ge v10, v7, :cond_34

    .line 1055
    return v8

    .line 1057
    :cond_34
    iget-object v10, v3, Lsun/misc/FDBigInteger;->data:[I

    iget v11, v3, Lsun/misc/FDBigInteger;->nWords:I

    sub-int/2addr v11, v8

    aget v10, v10, v11

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    .line 1058
    .local v10, "top":J
    if-ne v6, v5, :cond_4e

    .line 1059
    iget-object v14, v4, Lsun/misc/FDBigInteger;->data:[I

    iget v15, v4, Lsun/misc/FDBigInteger;->nWords:I

    sub-int/2addr v15, v8

    aget v14, v14, v15

    int-to-long v14, v14

    and-long/2addr v14, v12

    add-long/2addr v10, v14

    .line 1061
    :cond_4e
    const/16 v14, 0x20

    ushr-long v15, v10, v14

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    const-wide/16 v19, 0x1

    if-nez v15, :cond_7b

    .line 1062
    add-long v15, v10, v19

    ushr-long v14, v15, v14

    cmp-long v14, v14, v17

    if-nez v14, :cond_96

    .line 1064
    if-ge v5, v7, :cond_65

    .line 1065
    return v8

    .line 1068
    :cond_65
    iget-object v14, v0, Lsun/misc/FDBigInteger;->data:[I

    iget v15, v0, Lsun/misc/FDBigInteger;->nWords:I

    sub-int/2addr v15, v8

    aget v14, v14, v15

    int-to-long v14, v14

    and-long/2addr v12, v14

    .line 1069
    .local v12, "v":J
    cmp-long v14, v12, v10

    if-gez v14, :cond_73

    .line 1070
    return v9

    .line 1072
    :cond_73
    add-long v19, v10, v19

    cmp-long v9, v12, v19

    if-lez v9, :cond_7a

    .line 1073
    return v8

    .line 1075
    .end local v12    # "v":J
    :cond_7a
    goto :goto_96

    .line 1077
    :cond_7b
    add-int/lit8 v15, v5, 0x1

    if-le v15, v7, :cond_80

    .line 1078
    return v9

    .line 1081
    :cond_80
    ushr-long/2addr v10, v14

    .line 1082
    iget-object v14, v0, Lsun/misc/FDBigInteger;->data:[I

    iget v15, v0, Lsun/misc/FDBigInteger;->nWords:I

    sub-int/2addr v15, v8

    aget v14, v14, v15

    int-to-long v14, v14

    and-long/2addr v12, v14

    .line 1083
    .restart local v12    # "v":J
    cmp-long v14, v12, v10

    if-gez v14, :cond_8f

    .line 1084
    return v9

    .line 1086
    :cond_8f
    add-long v19, v10, v19

    cmp-long v9, v12, v19

    if-lez v9, :cond_96

    .line 1087
    return v8

    .line 1090
    .end local v12    # "v":J
    :cond_96
    :goto_96
    invoke-direct {v3, v4}, Lsun/misc/FDBigInteger;->add(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v8

    invoke-virtual {v0, v8}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v8

    return v8
.end method

.method public blacklist cmp(Lsun/misc/FDBigInteger;)I
    .registers 16
    .param p1, "other"    # Lsun/misc/FDBigInteger;

    .line 948
    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget v1, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v0, v1

    .line 949
    .local v0, "aSize":I
    iget v1, p1, Lsun/misc/FDBigInteger;->nWords:I

    iget v2, p1, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v1, v2

    .line 950
    .local v1, "bSize":I
    const/4 v2, 0x1

    if-le v0, v1, :cond_e

    .line 951
    return v2

    .line 952
    :cond_e
    const/4 v3, -0x1

    if-ge v0, v1, :cond_12

    .line 953
    return v3

    .line 955
    :cond_12
    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    .line 956
    .local v4, "aLen":I
    iget v5, p1, Lsun/misc/FDBigInteger;->nWords:I

    .line 957
    .local v5, "bLen":I
    :goto_16
    if-lez v4, :cond_38

    if-lez v5, :cond_38

    .line 958
    iget-object v6, p0, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v4, v4, -0x1

    aget v6, v6, v4

    .line 959
    .local v6, "a":I
    iget-object v7, p1, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    .line 960
    .local v7, "b":I
    if-eq v6, v7, :cond_37

    .line 961
    int-to-long v8, v6

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    int-to-long v12, v7

    and-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-gez v8, :cond_36

    move v2, v3

    :cond_36
    return v2

    .line 963
    .end local v6    # "a":I
    .end local v7    # "b":I
    :cond_37
    goto :goto_16

    .line 964
    :cond_38
    if-lez v4, :cond_41

    .line 965
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    invoke-static {v2, v4}, Lsun/misc/FDBigInteger;->checkZeroTail([II)I

    move-result v2

    return v2

    .line 967
    :cond_41
    if-lez v5, :cond_4b

    .line 968
    iget-object v2, p1, Lsun/misc/FDBigInteger;->data:[I

    invoke-static {v2, v5}, Lsun/misc/FDBigInteger;->checkZeroTail([II)I

    move-result v2

    neg-int v2, v2

    return v2

    .line 970
    :cond_4b
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist cmpPow52(II)I
    .registers 19
    .param p1, "p5"    # I
    .param p2, "p2"    # I

    .line 992
    move-object/from16 v0, p0

    move/from16 v1, p2

    if-nez p1, :cond_3b

    .line 993
    shr-int/lit8 v2, v1, 0x5

    .line 994
    .local v2, "wordcount":I
    and-int/lit8 v3, v1, 0x1f

    .line 995
    .local v3, "bitcount":I
    iget v4, v0, Lsun/misc/FDBigInteger;->nWords:I

    iget v5, v0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v5, v4

    .line 996
    .local v5, "size":I
    add-int/lit8 v6, v2, 0x1

    const/4 v7, 0x1

    if-le v5, v6, :cond_15

    .line 997
    return v7

    .line 998
    :cond_15
    add-int/lit8 v6, v2, 0x1

    const/4 v8, -0x1

    if-ge v5, v6, :cond_1b

    .line 999
    return v8

    .line 1001
    :cond_1b
    iget-object v6, v0, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v9, v4, -0x1

    aget v9, v6, v9

    .line 1002
    .local v9, "a":I
    shl-int v10, v7, v3

    .line 1003
    .local v10, "b":I
    if-eq v9, v10, :cond_35

    .line 1004
    int-to-long v11, v9

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    move v15, v9

    .end local v9    # "a":I
    .local v15, "a":I
    int-to-long v8, v10

    and-long/2addr v8, v13

    cmp-long v4, v11, v8

    if-gez v4, :cond_34

    const/4 v7, -0x1

    :cond_34
    return v7

    .line 1006
    .end local v15    # "a":I
    .restart local v9    # "a":I
    :cond_35
    sub-int/2addr v4, v7

    invoke-static {v6, v4}, Lsun/misc/FDBigInteger;->checkZeroTail([II)I

    move-result v4

    return v4

    .line 1008
    .end local v2    # "wordcount":I
    .end local v3    # "bitcount":I
    .end local v5    # "size":I
    .end local v9    # "a":I
    .end local v10    # "b":I
    :cond_3b
    invoke-static/range {p1 .. p1}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v2

    return v2
.end method

.method public blacklist getNormalizationBias()I
    .registers 3

    .line 396
    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-eqz v0, :cond_17

    .line 399
    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    .line 400
    .local v0, "zeros":I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_14

    add-int/lit8 v1, v0, 0x1c

    goto :goto_16

    :cond_14
    add-int/lit8 v1, v0, -0x4

    :goto_16
    return v1

    .line 397
    .end local v0    # "zeros":I
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero value cannot be normalized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist leftInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;
    .registers 20
    .param p1, "subtrahend"    # Lsun/misc/FDBigInteger;

    .line 782
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 784
    iget-boolean v2, v0, Lsun/misc/FDBigInteger;->isImmutable:Z

    if-eqz v2, :cond_18

    .line 785
    new-instance v2, Lsun/misc/FDBigInteger;

    iget-object v3, v0, Lsun/misc/FDBigInteger;->data:[I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iget v4, v0, Lsun/misc/FDBigInteger;->offset:I

    invoke-direct {v2, v3, v4}, Lsun/misc/FDBigInteger;-><init>([II)V

    .local v2, "minuend":Lsun/misc/FDBigInteger;
    goto :goto_1a

    .line 787
    .end local v2    # "minuend":Lsun/misc/FDBigInteger;
    :cond_18
    move-object/from16 v2, p0

    .line 789
    .restart local v2    # "minuend":Lsun/misc/FDBigInteger;
    :goto_1a
    iget v3, v1, Lsun/misc/FDBigInteger;->offset:I

    iget v4, v2, Lsun/misc/FDBigInteger;->offset:I

    sub-int/2addr v3, v4

    .line 790
    .local v3, "offsetDiff":I
    iget-object v4, v1, Lsun/misc/FDBigInteger;->data:[I

    .line 791
    .local v4, "sData":[I
    iget-object v5, v2, Lsun/misc/FDBigInteger;->data:[I

    .line 792
    .local v5, "mData":[I
    iget v6, v1, Lsun/misc/FDBigInteger;->nWords:I

    .line 793
    .local v6, "subLen":I
    iget v7, v2, Lsun/misc/FDBigInteger;->nWords:I

    .line 794
    .local v7, "minLen":I
    if-gez v3, :cond_49

    .line 796
    sub-int v8, v7, v3

    .line 797
    .local v8, "rLen":I
    array-length v9, v5

    const/4 v10, 0x0

    if-ge v8, v9, :cond_38

    .line 798
    neg-int v9, v3

    invoke-static {v5, v10, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 799
    neg-int v9, v3

    invoke-static {v5, v10, v9, v10}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_41

    .line 801
    :cond_38
    new-array v9, v8, [I

    .line 802
    .local v9, "r":[I
    neg-int v11, v3

    invoke-static {v5, v10, v9, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    move-object v5, v9

    iput-object v9, v2, Lsun/misc/FDBigInteger;->data:[I

    .line 805
    .end local v9    # "r":[I
    :goto_41
    iget v9, v1, Lsun/misc/FDBigInteger;->offset:I

    iput v9, v2, Lsun/misc/FDBigInteger;->offset:I

    .line 806
    move v7, v8

    iput v8, v2, Lsun/misc/FDBigInteger;->nWords:I

    .line 807
    const/4 v3, 0x0

    .line 809
    .end local v8    # "rLen":I
    :cond_49
    const-wide/16 v8, 0x0

    .line 810
    .local v8, "borrow":J
    move v10, v3

    .line 811
    .local v10, "mIndex":I
    const/4 v11, 0x0

    .local v11, "sIndex":I
    :goto_4d
    const/16 v12, 0x20

    const-wide v13, 0xffffffffL

    if-ge v11, v6, :cond_78

    if-ge v10, v7, :cond_78

    .line 812
    aget v15, v5, v10

    int-to-long v0, v15

    and-long/2addr v0, v13

    aget v15, v4, v11

    move/from16 v17, v3

    move-object/from16 v16, v4

    .end local v3    # "offsetDiff":I
    .end local v4    # "sData":[I
    .local v16, "sData":[I
    .local v17, "offsetDiff":I
    int-to-long v3, v15

    and-long/2addr v3, v13

    sub-long/2addr v0, v3

    add-long/2addr v0, v8

    .line 813
    .local v0, "diff":J
    long-to-int v3, v0

    aput v3, v5, v10

    .line 814
    shr-long v8, v0, v12

    .line 811
    .end local v0    # "diff":J
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, v16

    move/from16 v3, v17

    goto :goto_4d

    .end local v16    # "sData":[I
    .end local v17    # "offsetDiff":I
    .restart local v3    # "offsetDiff":I
    .restart local v4    # "sData":[I
    :cond_78
    move/from16 v17, v3

    move-object/from16 v16, v4

    .line 816
    .end local v3    # "offsetDiff":I
    .end local v4    # "sData":[I
    .end local v11    # "sIndex":I
    .restart local v16    # "sData":[I
    .restart local v17    # "offsetDiff":I
    :goto_7c
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_91

    if-ge v10, v7, :cond_91

    .line 817
    aget v0, v5, v10

    int-to-long v0, v0

    and-long/2addr v0, v13

    add-long/2addr v0, v8

    .line 818
    .restart local v0    # "diff":J
    long-to-int v3, v0

    aput v3, v5, v10

    .line 819
    shr-long v8, v0, v12

    .line 816
    .end local v0    # "diff":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_7c

    .line 821
    :cond_91
    nop

    .line 823
    invoke-direct {v2}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    .line 824
    return-object v2
.end method

.method public blacklist leftShift(I)Lsun/misc/FDBigInteger;
    .registers 16
    .param p1, "shift"    # I

    .line 458
    if-eqz p1, :cond_b1

    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v0, :cond_8

    goto/16 :goto_b1

    .line 461
    :cond_8
    shr-int/lit8 v1, p1, 0x5

    .line 462
    .local v1, "wordcount":I
    and-int/lit8 v8, p1, 0x1f

    .line 463
    .local v8, "bitcount":I
    iget-boolean v2, p0, Lsun/misc/FDBigInteger;->isImmutable:Z

    if-eqz v2, :cond_4b

    .line 464
    if-nez v8, :cond_23

    .line 465
    new-instance v0, Lsun/misc/FDBigInteger;

    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v3, p0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iget v3, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v3, v1

    invoke-direct {v0, v2, v3}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v0

    .line 467
    :cond_23
    rsub-int/lit8 v9, v8, 0x20

    .line 468
    .local v9, "anticount":I
    add-int/lit8 v10, v0, -0x1

    .line 469
    .local v10, "idx":I
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v11, v2, v10

    .line 470
    .local v11, "prev":I
    ushr-int v12, v11, v9

    .line 472
    .local v12, "hi":I
    if-eqz v12, :cond_37

    .line 473
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [I

    .line 474
    .local v3, "result":[I
    aput v12, v3, v0

    move-object v0, v3

    goto :goto_3a

    .line 476
    .end local v3    # "result":[I
    :cond_37
    new-array v3, v0, [I

    move-object v0, v3

    .line 478
    .local v0, "result":[I
    :goto_3a
    move v3, v10

    move-object v4, v0

    move v5, v8

    move v6, v9

    move v7, v11

    invoke-static/range {v2 .. v7}, Lsun/misc/FDBigInteger;->leftShift([II[IIII)V

    .line 479
    new-instance v2, Lsun/misc/FDBigInteger;

    iget v3, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v3, v1

    invoke-direct {v2, v0, v3}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v2

    .line 482
    .end local v0    # "result":[I
    .end local v9    # "anticount":I
    .end local v10    # "idx":I
    .end local v11    # "prev":I
    .end local v12    # "hi":I
    :cond_4b
    if-eqz v8, :cond_ab

    .line 483
    rsub-int/lit8 v9, v8, 0x20

    .line 484
    .restart local v9    # "anticount":I
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    shl-int/2addr v3, v8

    if-nez v3, :cond_83

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "idx":I
    aget v2, v2, v0

    .line 487
    .local v2, "prev":I
    :goto_5a
    iget v3, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_70

    .line 488
    ushr-int v3, v2, v9

    .line 489
    .local v3, "v":I
    iget-object v4, p0, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v5, v0, 0x1

    aget v2, v4, v5

    .line 490
    shl-int v5, v2, v8

    or-int/2addr v3, v5

    .line 491
    aput v3, v4, v0

    .line 487
    .end local v3    # "v":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 493
    :cond_70
    ushr-int v4, v2, v9

    .line 494
    .local v4, "v":I
    iget-object v5, p0, Lsun/misc/FDBigInteger;->data:[I

    aput v4, v5, v0

    .line 495
    if-nez v4, :cond_7c

    .line 496
    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lsun/misc/FDBigInteger;->nWords:I

    .line 498
    :cond_7c
    iget v3, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lsun/misc/FDBigInteger;->offset:I

    .line 499
    .end local v0    # "idx":I
    .end local v2    # "prev":I
    .end local v4    # "v":I
    goto :goto_ab

    .line 500
    :cond_83
    add-int/lit8 v10, v0, -0x1

    .line 501
    .restart local v10    # "idx":I
    aget v11, v2, v10

    .line 502
    .restart local v11    # "prev":I
    ushr-int v12, v11, v9

    .line 503
    .restart local v12    # "hi":I
    iget-object v3, p0, Lsun/misc/FDBigInteger;->data:[I

    .line 504
    .local v3, "result":[I
    iget-object v13, p0, Lsun/misc/FDBigInteger;->data:[I

    .line 505
    .local v13, "src":[I
    if-eqz v12, :cond_a1

    .line 506
    array-length v2, v2

    if-ne v0, v2, :cond_99

    .line 507
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    move-object v3, v2

    iput-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    .line 509
    :cond_99
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    aput v12, v3, v0

    move-object v0, v3

    goto :goto_a2

    .line 505
    :cond_a1
    move-object v0, v3

    .line 511
    .end local v3    # "result":[I
    .local v0, "result":[I
    :goto_a2
    move-object v2, v13

    move v3, v10

    move-object v4, v0

    move v5, v8

    move v6, v9

    move v7, v11

    invoke-static/range {v2 .. v7}, Lsun/misc/FDBigInteger;->leftShift([II[IIII)V

    .line 514
    .end local v0    # "result":[I
    .end local v9    # "anticount":I
    .end local v10    # "idx":I
    .end local v11    # "prev":I
    .end local v12    # "hi":I
    .end local v13    # "src":[I
    :cond_ab
    :goto_ab
    iget v0, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lsun/misc/FDBigInteger;->offset:I

    .line 515
    return-object p0

    .line 459
    .end local v1    # "wordcount":I
    .end local v8    # "bitcount":I
    :cond_b1
    :goto_b1
    return-object p0
.end method

.method public blacklist makeImmutable()V
    .registers 2

    .line 1101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/misc/FDBigInteger;->isImmutable:Z

    .line 1102
    return-void
.end method

.method public blacklist multBy10()Lsun/misc/FDBigInteger;
    .registers 7

    .line 654
    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v0, :cond_5

    .line 655
    return-object p0

    .line 657
    :cond_5
    iget-boolean v1, p0, Lsun/misc/FDBigInteger;->isImmutable:Z

    if-eqz v1, :cond_1d

    .line 658
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    .line 659
    .local v1, "res":[I
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    invoke-static {v2, v0, v1}, Lsun/misc/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v2

    aput v2, v1, v0

    .line 660
    new-instance v0, Lsun/misc/FDBigInteger;

    iget v2, p0, Lsun/misc/FDBigInteger;->offset:I

    invoke-direct {v0, v1, v2}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v0

    .line 662
    .end local v1    # "res":[I
    :cond_1d
    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    invoke-static {v1, v0, v1}, Lsun/misc/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v0

    .line 663
    .local v0, "p":I
    if-eqz v0, :cond_51

    .line 664
    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    array-length v3, v2

    if-ne v1, v3, :cond_46

    .line 665
    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    if-nez v4, :cond_3e

    .line 666
    sub-int/2addr v1, v5

    iput v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v2, v5, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 667
    iget v1, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v1, v5

    iput v1, p0, Lsun/misc/FDBigInteger;->offset:I

    goto :goto_46

    .line 669
    :cond_3e
    array-length v1, v2

    add-int/2addr v1, v5

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    .line 672
    :cond_46
    :goto_46
    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/misc/FDBigInteger;->nWords:I

    aput v0, v1, v2

    goto :goto_54

    .line 674
    :cond_51
    invoke-direct {p0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    .line 676
    :goto_54
    return-object p0
.end method

.method public blacklist multByPow52(II)Lsun/misc/FDBigInteger;
    .registers 11
    .param p1, "p5"    # I
    .param p2, "p2"    # I

    .line 709
    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v0, :cond_5

    .line 710
    return-object p0

    .line 712
    :cond_5
    move-object v1, p0

    .line 713
    .local v1, "res":Lsun/misc/FDBigInteger;
    if-eqz p1, :cond_4b

    .line 715
    if-eqz p2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 716
    .local v2, "extraSize":I
    :goto_d
    sget-object v3, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v4, v3

    if-ge p1, v4, :cond_27

    .line 717
    add-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v2

    new-array v4, v4, [I

    .line 718
    .local v4, "r":[I
    iget-object v5, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v3, v3, p1

    invoke-static {v5, v0, v3, v4}, Lsun/misc/FDBigInteger;->mult([III[I)V

    .line 719
    new-instance v0, Lsun/misc/FDBigInteger;

    iget v3, p0, Lsun/misc/FDBigInteger;->offset:I

    invoke-direct {v0, v4, v3}, Lsun/misc/FDBigInteger;-><init>([II)V

    move-object v1, v0

    goto :goto_4b

    .line 721
    .end local v4    # "r":[I
    :cond_27
    invoke-static {p1}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v0

    .line 722
    .local v0, "pow5":Lsun/misc/FDBigInteger;
    iget v3, p0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-direct {v0}, Lsun/misc/FDBigInteger;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    new-array v3, v3, [I

    .line 723
    .local v3, "r":[I
    iget-object v4, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v5, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget-object v6, v0, Lsun/misc/FDBigInteger;->data:[I

    iget v7, v0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v4, v5, v6, v7, v3}, Lsun/misc/FDBigInteger;->mult([II[II[I)V

    .line 724
    new-instance v4, Lsun/misc/FDBigInteger;

    iget v5, p0, Lsun/misc/FDBigInteger;->offset:I

    iget v6, v0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v5, v6

    invoke-direct {v4, v3, v5}, Lsun/misc/FDBigInteger;-><init>([II)V

    move-object v1, v4

    .line 727
    .end local v0    # "pow5":Lsun/misc/FDBigInteger;
    .end local v2    # "extraSize":I
    .end local v3    # "r":[I
    :cond_4b
    :goto_4b
    invoke-virtual {v1, p2}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist quoRemIteration(Lsun/misc/FDBigInteger;)I
    .registers 24
    .param p1, "S"    # Lsun/misc/FDBigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 564
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 568
    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v2

    .line 569
    .local v2, "thSize":I
    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v3

    .line 570
    .local v3, "sSize":I
    if-ge v2, v3, :cond_28

    .line 573
    iget-object v4, v0, Lsun/misc/FDBigInteger;->data:[I

    iget v5, v0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v4, v5, v4}, Lsun/misc/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v4

    .line 574
    .local v4, "p":I
    if-eqz v4, :cond_23

    .line 575
    iget-object v5, v0, Lsun/misc/FDBigInteger;->data:[I

    iget v6, v0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lsun/misc/FDBigInteger;->nWords:I

    aput v4, v5, v6

    goto :goto_26

    .line 577
    :cond_23
    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    .line 579
    :goto_26
    const/4 v5, 0x0

    return v5

    .line 580
    .end local v4    # "p":I
    :cond_28
    if-gt v2, v3, :cond_b9

    .line 586
    iget-object v4, v0, Lsun/misc/FDBigInteger;->data:[I

    iget v5, v0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iget-object v8, v1, Lsun/misc/FDBigInteger;->data:[I

    iget v9, v1, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v6

    div-long/2addr v4, v8

    .line 587
    .local v4, "q":J
    invoke-direct {v0, v4, v5, v1}, Lsun/misc/FDBigInteger;->multDiffMe(JLsun/misc/FDBigInteger;)J

    move-result-wide v8

    .line 588
    .local v8, "diff":J
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_a7

    .line 596
    const-wide/16 v12, 0x0

    .line 597
    .local v12, "sum":J
    iget v14, v1, Lsun/misc/FDBigInteger;->offset:I

    iget v15, v0, Lsun/misc/FDBigInteger;->offset:I

    sub-int/2addr v14, v15

    .line 599
    .local v14, "tStart":I
    iget-object v15, v1, Lsun/misc/FDBigInteger;->data:[I

    .line 600
    .local v15, "sd":[I
    iget-object v6, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 601
    .local v6, "td":[I
    :goto_59
    cmp-long v7, v12, v10

    if-nez v7, :cond_a2

    .line 602
    const/4 v7, 0x0

    .local v7, "sIndex":I
    move/from16 v18, v14

    move/from16 v10, v18

    .local v10, "tIndex":I
    :goto_62
    iget v11, v0, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v10, v11, :cond_8c

    .line 603
    aget v11, v6, v10

    move/from16 v19, v2

    .end local v2    # "thSize":I
    .local v19, "thSize":I
    int-to-long v1, v11

    const-wide v16, 0xffffffffL

    and-long v1, v1, v16

    aget v11, v15, v7

    move-wide/from16 v20, v8

    .end local v8    # "diff":J
    .local v20, "diff":J
    int-to-long v8, v11

    and-long v8, v8, v16

    add-long/2addr v1, v8

    add-long/2addr v12, v1

    .line 604
    long-to-int v1, v12

    aput v1, v6, v10

    .line 605
    const/16 v1, 0x20

    ushr-long/2addr v12, v1

    .line 602
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-wide/from16 v8, v20

    goto :goto_62

    .end local v19    # "thSize":I
    .end local v20    # "diff":J
    .restart local v2    # "thSize":I
    .restart local v8    # "diff":J
    :cond_8c
    move/from16 v19, v2

    move-wide/from16 v20, v8

    const-wide v16, 0xffffffffL

    .line 615
    .end local v2    # "thSize":I
    .end local v7    # "sIndex":I
    .end local v8    # "diff":J
    .end local v10    # "tIndex":I
    .restart local v19    # "thSize":I
    .restart local v20    # "diff":J
    nop

    .line 616
    const-wide/16 v1, 0x1

    sub-long/2addr v4, v1

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-wide/from16 v8, v20

    const-wide/16 v10, 0x0

    goto :goto_59

    .line 601
    .end local v19    # "thSize":I
    .end local v20    # "diff":J
    .restart local v2    # "thSize":I
    .restart local v8    # "diff":J
    :cond_a2
    move/from16 v19, v2

    move-wide/from16 v20, v8

    .end local v2    # "thSize":I
    .end local v8    # "diff":J
    .restart local v19    # "thSize":I
    .restart local v20    # "diff":J
    goto :goto_ab

    .line 588
    .end local v6    # "td":[I
    .end local v12    # "sum":J
    .end local v14    # "tStart":I
    .end local v15    # "sd":[I
    .end local v19    # "thSize":I
    .end local v20    # "diff":J
    .restart local v2    # "thSize":I
    .restart local v8    # "diff":J
    :cond_a7
    move/from16 v19, v2

    move-wide/from16 v20, v8

    .line 622
    .end local v2    # "thSize":I
    .end local v8    # "diff":J
    .restart local v19    # "thSize":I
    .restart local v20    # "diff":J
    :goto_ab
    iget-object v1, v0, Lsun/misc/FDBigInteger;->data:[I

    iget v2, v0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v1, v2, v1}, Lsun/misc/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v1

    .line 623
    .local v1, "p":I
    nop

    .line 624
    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    .line 625
    long-to-int v2, v4

    return v2

    .line 581
    .end local v1    # "p":I
    .end local v4    # "q":J
    .end local v19    # "thSize":I
    .end local v20    # "diff":J
    .restart local v2    # "thSize":I
    :cond_b9
    move/from16 v19, v2

    .end local v2    # "thSize":I
    .restart local v19    # "thSize":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "disparate values"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist rightInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;
    .registers 20
    .param p1, "subtrahend"    # Lsun/misc/FDBigInteger;

    .line 851
    move-object/from16 v0, p1

    .line 852
    move-object/from16 v1, p0

    .line 853
    .local v1, "minuend":Lsun/misc/FDBigInteger;
    iget-boolean v2, v0, Lsun/misc/FDBigInteger;->isImmutable:Z

    if-eqz v2, :cond_18

    .line 854
    new-instance v2, Lsun/misc/FDBigInteger;

    iget-object v3, v0, Lsun/misc/FDBigInteger;->data:[I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iget v4, v0, Lsun/misc/FDBigInteger;->offset:I

    invoke-direct {v2, v3, v4}, Lsun/misc/FDBigInteger;-><init>([II)V

    move-object v0, v2

    .line 856
    .end local p1    # "subtrahend":Lsun/misc/FDBigInteger;
    .local v0, "subtrahend":Lsun/misc/FDBigInteger;
    :cond_18
    iget v2, v1, Lsun/misc/FDBigInteger;->offset:I

    iget v3, v0, Lsun/misc/FDBigInteger;->offset:I

    sub-int/2addr v2, v3

    .line 857
    .local v2, "offsetDiff":I
    iget-object v3, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 858
    .local v3, "sData":[I
    iget-object v4, v1, Lsun/misc/FDBigInteger;->data:[I

    .line 859
    .local v4, "mData":[I
    iget v5, v0, Lsun/misc/FDBigInteger;->nWords:I

    .line 860
    .local v5, "subLen":I
    iget v6, v1, Lsun/misc/FDBigInteger;->nWords:I

    .line 861
    .local v6, "minLen":I
    if-gez v2, :cond_45

    .line 862
    move v7, v6

    .line 863
    .local v7, "rLen":I
    array-length v8, v3

    const/4 v9, 0x0

    if-ge v7, v8, :cond_35

    .line 864
    neg-int v8, v2

    invoke-static {v3, v9, v3, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    neg-int v8, v2

    invoke-static {v3, v9, v8, v9}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_3e

    .line 867
    :cond_35
    new-array v8, v7, [I

    .line 868
    .local v8, "r":[I
    neg-int v10, v2

    invoke-static {v3, v9, v8, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 869
    move-object v3, v8

    iput-object v8, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 871
    .end local v8    # "r":[I
    :goto_3e
    iget v8, v1, Lsun/misc/FDBigInteger;->offset:I

    iput v8, v0, Lsun/misc/FDBigInteger;->offset:I

    .line 872
    sub-int/2addr v5, v2

    .line 873
    const/4 v2, 0x0

    .line 874
    .end local v7    # "rLen":I
    goto :goto_51

    .line 875
    :cond_45
    add-int v7, v6, v2

    .line 876
    .restart local v7    # "rLen":I
    array-length v8, v3

    if-lt v7, v8, :cond_51

    .line 877
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    move-object v3, v8

    iput-object v8, v0, Lsun/misc/FDBigInteger;->data:[I

    .line 888
    .end local v7    # "rLen":I
    :cond_51
    :goto_51
    const/4 v7, 0x0

    .line 889
    .local v7, "sIndex":I
    const-wide/16 v8, 0x0

    .line 890
    .local v8, "borrow":J
    :goto_54
    const/16 v10, 0x20

    const-wide v11, 0xffffffffL

    if-ge v7, v2, :cond_75

    .line 891
    const-wide/16 v13, 0x0

    aget v15, v3, v7

    move-object/from16 v16, v1

    move/from16 p1, v2

    .end local v1    # "minuend":Lsun/misc/FDBigInteger;
    .end local v2    # "offsetDiff":I
    .local v16, "minuend":Lsun/misc/FDBigInteger;
    .local p1, "offsetDiff":I
    int-to-long v1, v15

    and-long/2addr v1, v11

    sub-long/2addr v13, v1

    add-long/2addr v13, v8

    .line 892
    .local v13, "diff":J
    long-to-int v1, v13

    aput v1, v3, v7

    .line 893
    shr-long v8, v13, v10

    .line 890
    .end local v13    # "diff":J
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, p1

    move-object/from16 v1, v16

    goto :goto_54

    .line 896
    .end local v16    # "minuend":Lsun/misc/FDBigInteger;
    .end local p1    # "offsetDiff":I
    .restart local v1    # "minuend":Lsun/misc/FDBigInteger;
    .restart local v2    # "offsetDiff":I
    :cond_75
    move-object/from16 v16, v1

    move/from16 p1, v2

    .end local v1    # "minuend":Lsun/misc/FDBigInteger;
    .end local v2    # "offsetDiff":I
    .restart local v16    # "minuend":Lsun/misc/FDBigInteger;
    .restart local p1    # "offsetDiff":I
    const/4 v1, 0x0

    .local v1, "mIndex":I
    :goto_7a
    if-ge v1, v6, :cond_96

    .line 898
    aget v2, v4, v1

    int-to-long v13, v2

    and-long/2addr v13, v11

    aget v2, v3, v7

    move-object v15, v4

    move/from16 v17, v5

    .end local v4    # "mData":[I
    .end local v5    # "subLen":I
    .local v15, "mData":[I
    .local v17, "subLen":I
    int-to-long v4, v2

    and-long/2addr v4, v11

    sub-long/2addr v13, v4

    add-long/2addr v13, v8

    .line 899
    .restart local v13    # "diff":J
    long-to-int v2, v13

    aput v2, v3, v7

    .line 900
    shr-long v8, v13, v10

    .line 896
    .end local v13    # "diff":J
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object v4, v15

    move/from16 v5, v17

    goto :goto_7a

    .end local v15    # "mData":[I
    .end local v17    # "subLen":I
    .restart local v4    # "mData":[I
    .restart local v5    # "subLen":I
    :cond_96
    move-object v15, v4

    move/from16 v17, v5

    .line 902
    .end local v1    # "mIndex":I
    .end local v4    # "mData":[I
    .end local v5    # "subLen":I
    .restart local v15    # "mData":[I
    .restart local v17    # "subLen":I
    nop

    .line 904
    iput v7, v0, Lsun/misc/FDBigInteger;->nWords:I

    .line 905
    invoke-direct {v0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    .line 906
    return-object v0
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 6

    .line 1487
    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 1488
    .local v0, "magnitude":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v1, v2, :cond_3e

    .line 1489
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v2, v2, v1

    .line 1490
    .local v2, "w":I
    array-length v3, v0

    mul-int/lit8 v4, v1, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    .line 1491
    array-length v3, v0

    mul-int/lit8 v4, v1, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1492
    array-length v3, v0

    mul-int/lit8 v4, v1, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x3

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1493
    array-length v3, v0

    mul-int/lit8 v4, v1, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x4

    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1488
    .end local v2    # "w":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1495
    .end local v1    # "i":I
    :cond_3e
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iget v2, p0, Lsun/misc/FDBigInteger;->offset:I

    mul-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toHexString()Ljava/lang/String;
    .registers 7

    .line 1463
    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v0, :cond_7

    .line 1464
    const-string v0, "0"

    return-object v0

    .line 1466
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v0, v2

    const/16 v2, 0x8

    mul-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v1

    .line 1467
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_35

    .line 1468
    iget-object v3, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1469
    .local v3, "subStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "j":I
    :goto_25
    if-ge v4, v2, :cond_2f

    .line 1470
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1469
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 1472
    .end local v4    # "j":I
    :cond_2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    .end local v3    # "subStr":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 1474
    .end local v1    # "i":I
    :cond_35
    iget v1, p0, Lsun/misc/FDBigInteger;->offset:I

    .restart local v1    # "i":I
    :goto_37
    if-lez v1, :cond_41

    .line 1475
    const-string v2, "00000000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    add-int/lit8 v1, v1, -0x1

    goto :goto_37

    .line 1477
    .end local v1    # "i":I
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1506
    invoke-virtual {p0}, Lsun/misc/FDBigInteger;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
