.class Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"

# interfaces
.implements Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ASCIIToBinaryBuffer"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist BIG_10_POW:[D

.field private static final blacklist MAX_SMALL_TEN:I

.field private static final blacklist SINGLE_MAX_SMALL_TEN:I

.field private static final blacklist SINGLE_SMALL_10_POW:[F

.field private static final blacklist SMALL_10_POW:[D

.field private static final blacklist TINY_10_POW:[D


# instance fields
.field blacklist decExponent:I

.field blacklist digits:[C

.field blacklist isNegative:Z

.field blacklist nDigits:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1034
    const-class v0, Lsun/misc/FloatingDecimal;

    .line 1705
    const/16 v0, 0x17

    new-array v0, v0, [D

    fill-array-data v0, :array_2e

    sput-object v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    .line 1714
    const/16 v1, 0xb

    new-array v1, v1, [F

    fill-array-data v1, :array_8e

    sput-object v1, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    .line 1720
    const/4 v2, 0x5

    new-array v3, v2, [D

    fill-array-data v3, :array_a8

    sput-object v3, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    .line 1722
    new-array v2, v2, [D

    fill-array-data v2, :array_c0

    sput-object v2, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    .line 1725
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    .line 1726
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    return-void

    :array_2e
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data

    :array_8e
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
    .end array-data

    :array_a8
    .array-data 8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data

    :array_c0
    .array-data 8
        0x3c9cd2b297d889bcL    # 1.0E-16
        0x3949f623d5a8a733L    # 1.0E-32
        0x32a50ffd44f4a73dL    # 1.0E-64
        0x255bba08cf8c979dL    # 1.0E-128
        0xac8062864ac6f43L    # 1.0E-256
    .end array-data
.end method

.method constructor blacklist <init>(ZI[CI)V
    .registers 5
    .param p1, "negSign"    # Z
    .param p2, "decExponent"    # I
    .param p3, "digits"    # [C
    .param p4, "n"    # I

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    iput-boolean p1, p0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    .line 1043
    iput p2, p0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    .line 1044
    iput-object p3, p0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    .line 1045
    iput p4, p0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    .line 1046
    return-void
.end method


# virtual methods
.method public blacklist doubleValue()D
    .registers 42

    .line 1058
    move-object/from16 v0, p0

    iget v1, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1063
    .local v1, "kDigits":I
    iget-object v2, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/4 v9, 0x0

    aget-char v2, v2, v9

    add-int/lit8 v2, v2, -0x30

    .line 1064
    .local v2, "iValue":I
    const/16 v3, 0x9

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1065
    .local v10, "iDigits":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_18
    if-ge v3, v10, :cond_26

    .line 1066
    mul-int/lit8 v4, v2, 0xa

    iget-object v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v5, v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x30

    .line 1065
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1068
    .end local v3    # "i":I
    :cond_26
    int-to-long v3, v2

    .line 1069
    .local v3, "lValue":J
    move v5, v10

    move-wide v11, v3

    .end local v3    # "lValue":J
    .local v5, "i":I
    .local v11, "lValue":J
    :goto_29
    if-ge v5, v1, :cond_3a

    .line 1070
    const-wide/16 v3, 0xa

    mul-long/2addr v3, v11

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v6, v6, v5

    add-int/lit8 v6, v6, -0x30

    int-to-long v6, v6

    add-long v11, v3, v6

    .line 1069
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 1072
    .end local v5    # "i":I
    :cond_3a
    long-to-double v3, v11

    .line 1073
    .local v3, "dValue":D
    iget v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    sub-int v6, v5, v1

    .line 1080
    .local v6, "exp":I
    iget v7, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const-wide/16 v13, 0x0

    const/16 v8, 0xf

    if-gt v7, v8, :cond_9f

    .line 1091
    if-eqz v6, :cond_96

    cmpl-double v7, v3, v13

    if-nez v7, :cond_4f

    move v15, v2

    goto :goto_97

    .line 1094
    :cond_4f
    if-ltz v6, :cond_81

    .line 1095
    sget v7, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    if-gt v6, v7, :cond_62

    .line 1100
    sget-object v5, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    aget-wide v7, v5, v6

    mul-double/2addr v7, v3

    .line 1101
    .local v7, "rValue":D
    iget-boolean v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v5, :cond_60

    neg-double v13, v7

    goto :goto_61

    :cond_60
    move-wide v13, v7

    :goto_61
    return-wide v13

    .line 1103
    .end local v7    # "rValue":D
    :cond_62
    rsub-int/lit8 v8, v1, 0xf

    .line 1104
    .local v8, "slop":I
    add-int/2addr v7, v8

    if-gt v6, v7, :cond_7f

    .line 1111
    sget-object v5, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    aget-wide v13, v5, v8

    mul-double/2addr v3, v13

    .line 1112
    sub-int v7, v6, v8

    aget-wide v13, v5, v7

    mul-double/2addr v13, v3

    .line 1113
    .local v13, "rValue":D
    iget-boolean v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v5, :cond_7a

    move v15, v2

    move-wide/from16 v16, v3

    .end local v2    # "iValue":I
    .end local v3    # "dValue":D
    .local v15, "iValue":I
    .local v16, "dValue":D
    neg-double v2, v13

    goto :goto_7e

    .end local v15    # "iValue":I
    .end local v16    # "dValue":D
    .restart local v2    # "iValue":I
    .restart local v3    # "dValue":D
    :cond_7a
    move v15, v2

    move-wide/from16 v16, v3

    .end local v2    # "iValue":I
    .end local v3    # "dValue":D
    .restart local v15    # "iValue":I
    .restart local v16    # "dValue":D
    move-wide v2, v13

    :goto_7e
    return-wide v2

    .line 1104
    .end local v13    # "rValue":D
    .end local v15    # "iValue":I
    .end local v16    # "dValue":D
    .restart local v2    # "iValue":I
    .restart local v3    # "dValue":D
    :cond_7f
    move v15, v2

    .line 1118
    .end local v2    # "iValue":I
    .end local v8    # "slop":I
    .restart local v15    # "iValue":I
    goto :goto_a0

    .line 1119
    .end local v15    # "iValue":I
    .restart local v2    # "iValue":I
    :cond_81
    move v15, v2

    .end local v2    # "iValue":I
    .restart local v15    # "iValue":I
    sget v2, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    neg-int v2, v2

    if-lt v6, v2, :cond_a0

    .line 1123
    sget-object v2, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    neg-int v5, v6

    aget-wide v7, v2, v5

    div-double v7, v3, v7

    .line 1124
    .restart local v7    # "rValue":D
    iget-boolean v2, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_94

    neg-double v13, v7

    goto :goto_95

    :cond_94
    move-wide v13, v7

    :goto_95
    return-wide v13

    .line 1091
    .end local v7    # "rValue":D
    .end local v15    # "iValue":I
    .restart local v2    # "iValue":I
    :cond_96
    move v15, v2

    .line 1092
    .end local v2    # "iValue":I
    .restart local v15    # "iValue":I
    :goto_97
    iget-boolean v2, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_9d

    neg-double v7, v3

    goto :goto_9e

    :cond_9d
    move-wide v7, v3

    :goto_9e
    return-wide v7

    .line 1080
    .end local v15    # "iValue":I
    .restart local v2    # "iValue":I
    :cond_9f
    move v15, v2

    .line 1140
    .end local v2    # "iValue":I
    .restart local v15    # "iValue":I
    :cond_a0
    :goto_a0
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/4 v2, 0x1

    if-lez v6, :cond_103

    .line 1141
    const/16 v13, 0x135

    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v18, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-le v5, v13, :cond_b5

    .line 1146
    iget-boolean v2, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_b2

    goto :goto_b4

    :cond_b2
    move-wide/from16 v16, v18

    :goto_b4
    return-wide v16

    .line 1148
    :cond_b5
    and-int/lit8 v5, v6, 0xf

    if-eqz v5, :cond_c0

    .line 1149
    sget-object v5, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v13, v6, 0xf

    aget-wide v13, v5, v13

    mul-double/2addr v3, v13

    .line 1151
    :cond_c0
    shr-int/lit8 v5, v6, 0x4

    move v6, v5

    if-eqz v5, :cond_100

    .line 1153
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_c6
    if-le v6, v2, :cond_d6

    .line 1154
    and-int/lit8 v13, v6, 0x1

    if-eqz v13, :cond_d1

    .line 1155
    sget-object v13, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v13, v13, v5

    mul-double/2addr v3, v13

    .line 1153
    :cond_d1
    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v6, v6, 0x1

    goto :goto_c6

    .line 1164
    :cond_d6
    sget-object v13, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v20, v13, v5

    mul-double v20, v20, v3

    .line 1165
    .local v20, "t":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v14

    if-eqz v14, :cond_fa

    .line 1178
    div-double v7, v3, v7

    .line 1179
    .end local v20    # "t":D
    .local v7, "t":D
    aget-wide v13, v13, v5

    mul-double/2addr v7, v13

    .line 1180
    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v13

    if-eqz v13, :cond_f5

    .line 1181
    iget-boolean v2, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_f2

    goto :goto_f4

    :cond_f2
    move-wide/from16 v16, v18

    :goto_f4
    return-wide v16

    .line 1183
    :cond_f5
    const-wide v20, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1185
    .end local v7    # "t":D
    .restart local v20    # "t":D
    :cond_fa
    move-wide/from16 v3, v20

    .line 1186
    .end local v5    # "j":I
    .end local v20    # "t":D
    move-wide v13, v3

    move v9, v6

    goto/16 :goto_15c

    .line 1151
    :cond_100
    move-wide v13, v3

    move v9, v6

    goto :goto_15c

    .line 1187
    :cond_103
    if-gez v6, :cond_15a

    .line 1188
    neg-int v6, v6

    .line 1189
    const/16 v9, -0x145

    const-wide/high16 v17, -0x8000000000000000L

    if-ge v5, v9, :cond_113

    .line 1194
    iget-boolean v2, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_112

    move-wide/from16 v13, v17

    :cond_112
    return-wide v13

    .line 1196
    :cond_113
    and-int/lit8 v5, v6, 0xf

    if-eqz v5, :cond_11f

    .line 1197
    sget-object v5, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v9, v6, 0xf

    aget-wide v19, v5, v9

    div-double v3, v3, v19

    .line 1199
    :cond_11f
    shr-int/lit8 v5, v6, 0x4

    move v6, v5

    if-eqz v5, :cond_157

    .line 1201
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_125
    if-le v6, v2, :cond_136

    .line 1202
    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_131

    .line 1203
    sget-object v9, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v19, v9, v5

    mul-double v3, v3, v19

    .line 1201
    :cond_131
    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v6, v6, 0x1

    goto :goto_125

    .line 1212
    :cond_136
    sget-object v9, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v19, v9, v5

    mul-double v19, v19, v3

    .line 1213
    .local v19, "t":D
    cmpl-double v21, v19, v13

    if-nez v21, :cond_152

    .line 1226
    mul-double/2addr v7, v3

    .line 1227
    .end local v19    # "t":D
    .restart local v7    # "t":D
    aget-wide v19, v9, v5

    mul-double v7, v7, v19

    .line 1228
    cmpl-double v9, v7, v13

    if-nez v9, :cond_150

    .line 1229
    iget-boolean v2, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_14f

    move-wide/from16 v13, v17

    :cond_14f
    return-wide v13

    .line 1231
    :cond_150
    const-wide/16 v19, 0x1

    .line 1233
    .end local v7    # "t":D
    .restart local v19    # "t":D
    :cond_152
    move-wide/from16 v3, v19

    move-wide v13, v3

    move v9, v6

    goto :goto_15c

    .line 1199
    .end local v5    # "j":I
    .end local v19    # "t":D
    :cond_157
    move-wide v13, v3

    move v9, v6

    goto :goto_15c

    .line 1187
    :cond_15a
    move-wide v13, v3

    move v9, v6

    .line 1244
    .end local v3    # "dValue":D
    .end local v6    # "exp":I
    .local v9, "exp":I
    .local v13, "dValue":D
    :goto_15c
    iget v3, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v4, 0x44c

    if-le v3, v4, :cond_16c

    .line 1245
    const/16 v3, 0x44d

    iput v3, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    .line 1246
    iget-object v3, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/16 v5, 0x31

    aput-char v5, v3, v4

    .line 1248
    :cond_16c
    new-instance v17, Lsun/misc/FDBigInteger;

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    iget v8, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    move-object/from16 v3, v17

    move-wide v4, v11

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lsun/misc/FDBigInteger;-><init>(J[CII)V

    .line 1249
    .local v3, "bigD0":Lsun/misc/FDBigInteger;
    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    iget v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    sub-int/2addr v4, v5

    .line 1251
    .end local v9    # "exp":I
    .local v4, "exp":I
    invoke-static {v13, v14}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    .line 1252
    .local v5, "ieeeBits":J
    neg-int v7, v4

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1253
    .local v7, "B5":I
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1254
    .local v9, "D5":I
    invoke-virtual {v3, v9, v8}, Lsun/misc/FDBigInteger;->multByPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v3

    .line 1255
    invoke-virtual {v3}, Lsun/misc/FDBigInteger;->makeImmutable()V

    .line 1256
    const/4 v8, 0x0

    .line 1257
    .local v8, "bigD":Lsun/misc/FDBigInteger;
    const/16 v16, 0x0

    move/from16 v2, v16

    .line 1262
    .local v2, "prevD2":I
    :goto_198
    const/16 v17, 0x34

    move/from16 v18, v10

    move-wide/from16 v19, v11

    .end local v10    # "iDigits":I
    .end local v11    # "lValue":J
    .local v18, "iDigits":I
    .local v19, "lValue":J
    ushr-long v10, v5, v17

    long-to-int v10, v10

    .line 1263
    .local v10, "binexp":I
    const-wide v11, 0xfffffffffffffL

    and-long/2addr v11, v5

    .line 1264
    .local v11, "bigBbits":J
    if-lez v10, :cond_1ae

    .line 1265
    const-wide/high16 v21, 0x10000000000000L

    or-long v11, v11, v21

    goto :goto_1b9

    .line 1267
    :cond_1ae
    nop

    .line 1268
    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v17

    .line 1269
    .local v17, "leadingZeros":I
    add-int/lit8 v21, v17, -0xb

    .line 1270
    .local v21, "shift":I
    shl-long v11, v11, v21

    .line 1271
    rsub-int/lit8 v10, v21, 0x1

    .line 1273
    .end local v17    # "leadingZeros":I
    .end local v21    # "shift":I
    :goto_1b9
    move/from16 v17, v1

    .end local v1    # "kDigits":I
    .local v17, "kDigits":I
    const/16 v1, -0x3ff

    add-int/2addr v10, v1

    .line 1274
    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v21

    .line 1275
    .local v21, "lowOrderZeros":I
    ushr-long v11, v11, v21

    .line 1276
    add-int/lit8 v22, v10, -0x34

    add-int v1, v22, v21

    .line 1277
    .local v1, "bigIntExp":I
    move/from16 v22, v4

    .end local v4    # "exp":I
    .local v22, "exp":I
    rsub-int/lit8 v4, v21, 0x35

    .line 1288
    .local v4, "bigIntNBits":I
    move/from16 v24, v7

    .line 1289
    .local v24, "B2":I
    move/from16 v25, v9

    .line 1291
    .local v25, "D2":I
    if-ltz v1, :cond_1d5

    .line 1292
    add-int v24, v24, v1

    goto :goto_1d7

    .line 1294
    :cond_1d5
    sub-int v25, v25, v1

    .line 1296
    :goto_1d7
    move/from16 v26, v24

    .line 1300
    .local v26, "Ulp2":I
    move/from16 v27, v9

    const/16 v9, -0x3ff

    .end local v9    # "D5":I
    .local v27, "D5":I
    if-gt v10, v9, :cond_1e4

    .line 1304
    add-int v9, v10, v21

    add-int/lit16 v9, v9, 0x3ff

    .local v9, "hulpbias":I
    goto :goto_1e6

    .line 1306
    .end local v9    # "hulpbias":I
    :cond_1e4
    add-int/lit8 v9, v21, 0x1

    .line 1308
    .restart local v9    # "hulpbias":I
    :goto_1e6
    move/from16 v23, v10

    .end local v10    # "binexp":I
    .local v23, "binexp":I
    add-int v10, v24, v9

    .line 1309
    .end local v24    # "B2":I
    .local v10, "B2":I
    move-wide/from16 v28, v13

    .end local v13    # "dValue":D
    .local v28, "dValue":D
    add-int v13, v25, v9

    .line 1312
    .end local v25    # "D2":I
    .local v13, "D2":I
    move/from16 v24, v9

    move/from16 v14, v26

    .end local v9    # "hulpbias":I
    .end local v26    # "Ulp2":I
    .local v14, "Ulp2":I
    .local v24, "hulpbias":I
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1313
    .local v9, "common2":I
    sub-int/2addr v10, v9

    .line 1314
    sub-int/2addr v13, v9

    .line 1315
    sub-int v26, v14, v9

    .line 1317
    .end local v14    # "Ulp2":I
    .restart local v26    # "Ulp2":I
    invoke-static {v11, v12, v7, v10}, Lsun/misc/FDBigInteger;->valueOfMulPow52(JII)Lsun/misc/FDBigInteger;

    move-result-object v14

    .line 1318
    .local v14, "bigB":Lsun/misc/FDBigInteger;
    if-eqz v8, :cond_206

    if-eq v2, v13, :cond_20b

    .line 1319
    :cond_206
    invoke-virtual {v3, v13}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v8

    .line 1320
    move v2, v13

    .line 1339
    :cond_20b
    invoke-virtual {v14, v8}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v25

    move/from16 v30, v25

    .local v30, "cmpResult":I
    if-lez v25, :cond_23a

    .line 1340
    const/16 v25, 0x1

    .line 1341
    .local v25, "overvalue":Z
    move/from16 v31, v2

    .end local v2    # "prevD2":I
    .local v31, "prevD2":I
    invoke-virtual {v14, v8}, Lsun/misc/FDBigInteger;->leftInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v2

    .line 1342
    .local v2, "diff":Lsun/misc/FDBigInteger;
    move-object/from16 v32, v3

    const/4 v3, 0x1

    .end local v3    # "bigD0":Lsun/misc/FDBigInteger;
    .local v32, "bigD0":Lsun/misc/FDBigInteger;
    if-ne v4, v3, :cond_237

    const/16 v3, -0x3fe

    if-le v1, v3, :cond_236

    .line 1347
    add-int/lit8 v26, v26, -0x1

    .line 1348
    if-gez v26, :cond_232

    .line 1351
    const/16 v26, 0x0

    .line 1352
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v2

    move/from16 v3, v26

    goto :goto_249

    .line 1348
    :cond_232
    const/4 v3, 0x1

    move/from16 v3, v26

    goto :goto_249

    .line 1342
    :cond_236
    const/4 v3, 0x1

    .line 1363
    :cond_237
    move/from16 v3, v26

    goto :goto_249

    .line 1355
    .end local v25    # "overvalue":Z
    .end local v31    # "prevD2":I
    .end local v32    # "bigD0":Lsun/misc/FDBigInteger;
    .local v2, "prevD2":I
    .restart local v3    # "bigD0":Lsun/misc/FDBigInteger;
    :cond_23a
    move/from16 v31, v2

    move-object/from16 v32, v3

    const/4 v3, 0x1

    .end local v2    # "prevD2":I
    .end local v3    # "bigD0":Lsun/misc/FDBigInteger;
    .restart local v31    # "prevD2":I
    .restart local v32    # "bigD0":Lsun/misc/FDBigInteger;
    if-gez v30, :cond_28a

    .line 1356
    const/16 v25, 0x0

    .line 1357
    .restart local v25    # "overvalue":Z
    invoke-virtual {v8, v14}, Lsun/misc/FDBigInteger;->rightInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v2

    move/from16 v3, v26

    .line 1363
    .end local v26    # "Ulp2":I
    .local v2, "diff":Lsun/misc/FDBigInteger;
    .local v3, "Ulp2":I
    :goto_249
    invoke-virtual {v2, v7, v3}, Lsun/misc/FDBigInteger;->cmpPow52(II)I

    move-result v26

    .line 1364
    .end local v30    # "cmpResult":I
    .local v26, "cmpResult":I
    if-gez v26, :cond_250

    .line 1367
    goto :goto_28a

    .line 1368
    :cond_250
    const-wide/16 v33, -0x1

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x1

    if-nez v26, :cond_266

    .line 1371
    and-long v39, v5, v37

    cmp-long v16, v39, v35

    if-eqz v16, :cond_28a

    .line 1372
    if-eqz v25, :cond_261

    goto :goto_263

    :cond_261
    move-wide/from16 v33, v37

    :goto_263
    add-long v5, v5, v33

    goto :goto_28a

    .line 1380
    :cond_266
    if-eqz v25, :cond_269

    goto :goto_26b

    :cond_269
    move-wide/from16 v33, v37

    :goto_26b
    add-long v5, v5, v33

    .line 1381
    cmp-long v30, v5, v35

    if-eqz v30, :cond_28a

    const-wide/high16 v33, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmp-long v30, v5, v33

    if-nez v30, :cond_278

    .line 1382
    goto :goto_28a

    .line 1381
    :cond_278
    move/from16 v1, v17

    move/from16 v10, v18

    move-wide/from16 v11, v19

    move/from16 v4, v22

    move/from16 v9, v27

    move-wide/from16 v13, v28

    move/from16 v2, v31

    move-object/from16 v3, v32

    goto/16 :goto_198

    .line 1388
    .end local v1    # "bigIntExp":I
    .end local v2    # "diff":Lsun/misc/FDBigInteger;
    .end local v3    # "Ulp2":I
    .end local v4    # "bigIntNBits":I
    .end local v9    # "common2":I
    .end local v10    # "B2":I
    .end local v11    # "bigBbits":J
    .end local v13    # "D2":I
    .end local v14    # "bigB":Lsun/misc/FDBigInteger;
    .end local v21    # "lowOrderZeros":I
    .end local v23    # "binexp":I
    .end local v24    # "hulpbias":I
    .end local v25    # "overvalue":Z
    .end local v26    # "cmpResult":I
    :cond_28a
    :goto_28a
    iget-boolean v1, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v1, :cond_291

    .line 1389
    const-wide/high16 v1, -0x8000000000000000L

    or-long/2addr v5, v1

    .line 1391
    :cond_291
    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist floatValue()F
    .registers 31

    .line 1405
    move-object/from16 v0, p0

    iget v1, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1409
    .local v1, "kDigits":I
    iget-object v2, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/4 v9, 0x0

    aget-char v2, v2, v9

    add-int/lit8 v2, v2, -0x30

    .line 1410
    .local v2, "iValue":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_12
    if-ge v3, v1, :cond_20

    .line 1411
    mul-int/lit8 v4, v2, 0xa

    iget-object v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v5, v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x30

    .line 1410
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1413
    .end local v3    # "i":I
    :cond_20
    int-to-float v3, v2

    .line 1414
    .local v3, "fValue":F
    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    sub-int v5, v4, v1

    .line 1421
    .local v5, "exp":I
    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/4 v7, 0x0

    const/4 v8, 0x7

    if-gt v6, v8, :cond_78

    .line 1432
    if-eqz v5, :cond_70

    cmpl-float v6, v3, v7

    if-nez v6, :cond_32

    goto :goto_70

    .line 1434
    :cond_32
    if-ltz v5, :cond_5d

    .line 1435
    sget v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    if-gt v5, v6, :cond_45

    .line 1440
    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    aget v4, v4, v5

    mul-float/2addr v3, v4

    .line 1441
    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_43

    neg-float v4, v3

    goto :goto_44

    :cond_43
    move v4, v3

    :goto_44
    return v4

    .line 1443
    :cond_45
    rsub-int/lit8 v8, v1, 0x7

    .line 1444
    .local v8, "slop":I
    add-int/2addr v6, v8

    if-gt v5, v6, :cond_5c

    .line 1451
    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    aget v6, v4, v8

    mul-float/2addr v3, v6

    .line 1452
    sub-int v6, v5, v8

    aget v4, v4, v6

    mul-float/2addr v3, v4

    .line 1453
    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_5a

    neg-float v4, v3

    goto :goto_5b

    :cond_5a
    move v4, v3

    :goto_5b
    return v4

    .line 1458
    .end local v8    # "slop":I
    :cond_5c
    goto :goto_a6

    .line 1459
    :cond_5d
    sget v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    neg-int v6, v6

    if-lt v5, v6, :cond_a6

    .line 1463
    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    neg-int v6, v5

    aget v4, v4, v6

    div-float/2addr v3, v4

    .line 1464
    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_6e

    neg-float v4, v3

    goto :goto_6f

    :cond_6e
    move v4, v3

    :goto_6f
    return v4

    .line 1433
    :cond_70
    :goto_70
    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_76

    neg-float v4, v3

    goto :goto_77

    :cond_76
    move v4, v3

    :goto_77
    return v4

    .line 1470
    :cond_78
    if-lt v4, v6, :cond_a6

    add-int/2addr v6, v4

    const/16 v8, 0xf

    if-gt v6, v8, :cond_a6

    .line 1480
    int-to-long v6, v2

    .line 1481
    .local v6, "lValue":J
    move v4, v1

    .local v4, "i":I
    :goto_81
    iget v8, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    if-ge v4, v8, :cond_94

    .line 1482
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    iget-object v10, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v10, v10, v4

    add-int/lit8 v10, v10, -0x30

    int-to-long v10, v10

    add-long v6, v8, v10

    .line 1481
    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    .line 1484
    .end local v4    # "i":I
    :cond_94
    long-to-double v9, v6

    .line 1485
    .local v9, "dValue":D
    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    sub-int/2addr v4, v8

    .line 1486
    .end local v5    # "exp":I
    .local v4, "exp":I
    sget-object v5, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    aget-wide v11, v5, v4

    mul-double/2addr v9, v11

    .line 1487
    double-to-float v3, v9

    .line 1488
    iget-boolean v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v5, :cond_a4

    neg-float v5, v3

    goto :goto_a5

    :cond_a4
    move v5, v3

    :goto_a5
    return v5

    .line 1500
    .end local v4    # "exp":I
    .end local v6    # "lValue":J
    .end local v9    # "dValue":D
    .restart local v5    # "exp":I
    :cond_a6
    :goto_a6
    float-to-double v10, v3

    .line 1501
    .local v10, "dValue":D
    if-lez v5, :cond_de

    .line 1502
    const/16 v6, 0x27

    if-le v4, v6, :cond_b7

    .line 1507
    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_b4

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_b6

    :cond_b4
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_b6
    return v4

    .line 1509
    :cond_b7
    and-int/lit8 v4, v5, 0xf

    if-eqz v4, :cond_c2

    .line 1510
    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v6, v5, 0xf

    aget-wide v6, v4, v6

    mul-double/2addr v10, v6

    .line 1512
    :cond_c2
    shr-int/lit8 v4, v5, 0x4

    move v5, v4

    if-eqz v4, :cond_db

    .line 1514
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_c8
    if-lez v5, :cond_d8

    .line 1515
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_d3

    .line 1516
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v6, v6, v4

    mul-double/2addr v10, v6

    .line 1514
    :cond_d3
    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v5, v5, 0x1

    goto :goto_c8

    .line 1519
    .end local v4    # "j":I
    :cond_d8
    move-wide v11, v10

    move v10, v5

    goto :goto_115

    .line 1512
    :cond_db
    move-wide v11, v10

    move v10, v5

    goto :goto_115

    .line 1520
    :cond_de
    if-gez v5, :cond_113

    .line 1521
    neg-int v5, v5

    .line 1522
    const/16 v6, -0x2e

    if-ge v4, v6, :cond_ec

    .line 1527
    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_eb

    const/high16 v7, -0x80000000

    :cond_eb
    return v7

    .line 1529
    :cond_ec
    and-int/lit8 v4, v5, 0xf

    if-eqz v4, :cond_f7

    .line 1530
    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v6, v5, 0xf

    aget-wide v6, v4, v6

    div-double/2addr v10, v6

    .line 1532
    :cond_f7
    shr-int/lit8 v4, v5, 0x4

    move v5, v4

    if-eqz v4, :cond_110

    .line 1534
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_fd
    if-lez v5, :cond_10d

    .line 1535
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_108

    .line 1536
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v6, v6, v4

    mul-double/2addr v10, v6

    .line 1534
    :cond_108
    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v5, v5, 0x1

    goto :goto_fd

    :cond_10d
    move-wide v11, v10

    move v10, v5

    goto :goto_115

    .line 1532
    .end local v4    # "j":I
    :cond_110
    move-wide v11, v10

    move v10, v5

    goto :goto_115

    .line 1520
    :cond_113
    move-wide v11, v10

    move v10, v5

    .line 1541
    .end local v5    # "exp":I
    .local v10, "exp":I
    .local v11, "dValue":D
    :goto_115
    const/4 v4, 0x1

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    double-to-float v6, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 1550
    .end local v3    # "fValue":F
    .local v13, "fValue":F
    iget v3, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v4, 0xc8

    if-le v3, v4, :cond_132

    .line 1551
    const/16 v3, 0xc9

    iput v3, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    .line 1552
    iget-object v3, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/16 v5, 0x31

    aput-char v5, v3, v4

    .line 1554
    :cond_132
    new-instance v14, Lsun/misc/FDBigInteger;

    int-to-long v4, v2

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    iget v8, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    move-object v3, v14

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lsun/misc/FDBigInteger;-><init>(J[CII)V

    .line 1555
    .local v3, "bigD0":Lsun/misc/FDBigInteger;
    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    iget v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    sub-int/2addr v4, v5

    .line 1557
    .end local v10    # "exp":I
    .local v4, "exp":I
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    .line 1558
    .local v5, "ieeeBits":I
    neg-int v6, v4

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1559
    .local v6, "B5":I
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1560
    .local v7, "D5":I
    invoke-virtual {v3, v7, v9}, Lsun/misc/FDBigInteger;->multByPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v3

    .line 1561
    invoke-virtual {v3}, Lsun/misc/FDBigInteger;->makeImmutable()V

    .line 1562
    const/4 v8, 0x0

    .line 1563
    .local v8, "bigD":Lsun/misc/FDBigInteger;
    const/4 v9, 0x0

    .line 1568
    .local v9, "prevD2":I
    :goto_159
    ushr-int/lit8 v10, v5, 0x17

    .line 1569
    .local v10, "binexp":I
    const v14, 0x7fffff

    and-int/2addr v14, v5

    .line 1570
    .local v14, "bigBbits":I
    if-lez v10, :cond_165

    .line 1571
    const/high16 v15, 0x800000

    or-int/2addr v14, v15

    goto :goto_170

    .line 1573
    :cond_165
    nop

    .line 1574
    invoke-static {v14}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v15

    .line 1575
    .local v15, "leadingZeros":I
    add-int/lit8 v16, v15, -0x8

    .line 1576
    .local v16, "shift":I
    shl-int v14, v14, v16

    .line 1577
    rsub-int/lit8 v10, v16, 0x1

    .line 1579
    .end local v15    # "leadingZeros":I
    .end local v16    # "shift":I
    :goto_170
    const/16 v15, -0x7f

    add-int/2addr v10, v15

    .line 1580
    invoke-static {v14}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v16

    .line 1581
    .local v16, "lowOrderZeros":I
    ushr-int v14, v14, v16

    .line 1582
    add-int/lit8 v17, v10, -0x17

    add-int v15, v17, v16

    .line 1583
    .local v15, "bigIntExp":I
    move/from16 v17, v1

    .end local v1    # "kDigits":I
    .local v17, "kDigits":I
    rsub-int/lit8 v1, v16, 0x18

    .line 1594
    .local v1, "bigIntNBits":I
    move/from16 v19, v6

    .line 1595
    .local v19, "B2":I
    move/from16 v20, v7

    .line 1597
    .local v20, "D2":I
    if-ltz v15, :cond_18a

    .line 1598
    add-int v19, v19, v15

    goto :goto_18c

    .line 1600
    :cond_18a
    sub-int v20, v20, v15

    .line 1602
    :goto_18c
    move/from16 v21, v19

    .line 1606
    .local v21, "Ulp2":I
    move/from16 v22, v2

    const/16 v2, -0x7f

    .end local v2    # "iValue":I
    .local v22, "iValue":I
    if-gt v10, v2, :cond_199

    .line 1610
    add-int v2, v10, v16

    add-int/lit8 v2, v2, 0x7f

    .local v2, "hulpbias":I
    goto :goto_19b

    .line 1612
    .end local v2    # "hulpbias":I
    :cond_199
    add-int/lit8 v2, v16, 0x1

    .line 1614
    .restart local v2    # "hulpbias":I
    :goto_19b
    move/from16 v18, v4

    .end local v4    # "exp":I
    .local v18, "exp":I
    add-int v4, v19, v2

    .line 1615
    .end local v19    # "B2":I
    .local v4, "B2":I
    move/from16 v19, v7

    .end local v7    # "D5":I
    .local v19, "D5":I
    add-int v7, v20, v2

    .line 1618
    .end local v20    # "D2":I
    .local v7, "D2":I
    move/from16 v20, v2

    move/from16 v2, v21

    move/from16 v21, v10

    .end local v10    # "binexp":I
    .local v2, "Ulp2":I
    .local v20, "hulpbias":I
    .local v21, "binexp":I
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1619
    .local v10, "common2":I
    sub-int/2addr v4, v10

    .line 1620
    sub-int/2addr v7, v10

    .line 1621
    sub-int/2addr v2, v10

    .line 1623
    move-wide/from16 v23, v11

    move v12, v10

    .end local v10    # "common2":I
    .end local v11    # "dValue":D
    .local v12, "common2":I
    .local v23, "dValue":D
    int-to-long v10, v14

    invoke-static {v10, v11, v6, v4}, Lsun/misc/FDBigInteger;->valueOfMulPow52(JII)Lsun/misc/FDBigInteger;

    move-result-object v10

    .line 1624
    .local v10, "bigB":Lsun/misc/FDBigInteger;
    if-eqz v8, :cond_1c0

    if-eq v9, v7, :cond_1c5

    .line 1625
    :cond_1c0
    invoke-virtual {v3, v7}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v8

    .line 1626
    move v9, v7

    .line 1645
    :cond_1c5
    invoke-virtual {v10, v8}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v11

    move/from16 v25, v11

    move-object/from16 v26, v3

    .end local v3    # "bigD0":Lsun/misc/FDBigInteger;
    .local v25, "cmpResult":I
    .local v26, "bigD0":Lsun/misc/FDBigInteger;
    const/4 v3, 0x1

    if-lez v11, :cond_1ec

    .line 1646
    const/4 v11, 0x1

    .line 1647
    .local v11, "overvalue":Z
    move/from16 v27, v4

    .end local v4    # "B2":I
    .local v27, "B2":I
    invoke-virtual {v10, v8}, Lsun/misc/FDBigInteger;->leftInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v4

    .line 1648
    .local v4, "diff":Lsun/misc/FDBigInteger;
    if-ne v1, v3, :cond_1f5

    const/16 v3, -0x7e

    if-le v15, v3, :cond_1ea

    .line 1653
    add-int/lit8 v2, v2, -0x1

    .line 1654
    if-gez v2, :cond_1e8

    .line 1657
    const/4 v2, 0x0

    .line 1658
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v4

    goto :goto_1f5

    .line 1654
    :cond_1e8
    const/4 v3, 0x1

    goto :goto_1f5

    .line 1648
    :cond_1ea
    const/4 v3, 0x1

    goto :goto_1f5

    .line 1661
    .end local v11    # "overvalue":Z
    .end local v27    # "B2":I
    .local v4, "B2":I
    :cond_1ec
    move/from16 v27, v4

    .end local v4    # "B2":I
    .restart local v27    # "B2":I
    if-gez v25, :cond_224

    .line 1662
    const/4 v11, 0x0

    .line 1663
    .restart local v11    # "overvalue":Z
    invoke-virtual {v8, v10}, Lsun/misc/FDBigInteger;->rightInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v4

    .line 1669
    .local v4, "diff":Lsun/misc/FDBigInteger;
    :cond_1f5
    :goto_1f5
    invoke-virtual {v4, v6, v2}, Lsun/misc/FDBigInteger;->cmpPow52(II)I

    move-result v25

    .line 1670
    if-gez v25, :cond_1fc

    .line 1673
    goto :goto_224

    .line 1674
    :cond_1fc
    const/16 v28, -0x1

    if-nez v25, :cond_20a

    .line 1677
    and-int/lit8 v29, v5, 0x1

    if-eqz v29, :cond_224

    .line 1678
    if-eqz v11, :cond_208

    move/from16 v3, v28

    :cond_208
    add-int/2addr v5, v3

    goto :goto_224

    .line 1686
    :cond_20a
    if-eqz v11, :cond_20e

    move/from16 v3, v28

    :cond_20e
    add-int/2addr v5, v3

    .line 1687
    if-eqz v5, :cond_224

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ne v5, v3, :cond_216

    .line 1688
    goto :goto_224

    .line 1687
    :cond_216
    move/from16 v1, v17

    move/from16 v4, v18

    move/from16 v7, v19

    move/from16 v2, v22

    move-wide/from16 v11, v23

    move-object/from16 v3, v26

    goto/16 :goto_159

    .line 1694
    .end local v1    # "bigIntNBits":I
    .end local v2    # "Ulp2":I
    .end local v4    # "diff":Lsun/misc/FDBigInteger;
    .end local v7    # "D2":I
    .end local v10    # "bigB":Lsun/misc/FDBigInteger;
    .end local v11    # "overvalue":Z
    .end local v12    # "common2":I
    .end local v14    # "bigBbits":I
    .end local v15    # "bigIntExp":I
    .end local v16    # "lowOrderZeros":I
    .end local v20    # "hulpbias":I
    .end local v21    # "binexp":I
    .end local v25    # "cmpResult":I
    .end local v27    # "B2":I
    :cond_224
    :goto_224
    iget-boolean v1, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v1, :cond_22b

    .line 1695
    const/high16 v1, -0x80000000

    or-int/2addr v5, v1

    .line 1697
    :cond_22b
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method