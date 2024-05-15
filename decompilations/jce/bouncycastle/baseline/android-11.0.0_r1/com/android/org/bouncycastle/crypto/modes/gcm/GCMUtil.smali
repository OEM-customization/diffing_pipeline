.class public abstract Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# static fields
.field private static final blacklist E1:I = -0x1f000000

.field private static final blacklist E1L:J = -0x1f00000000000000L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asBytes([I[B)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [B

    .line 45
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 46
    return-void
.end method

.method public static blacklist asBytes([J[B)V
    .registers 3
    .param p0, "x"    # [J
    .param p1, "z"    # [B

    .line 57
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    .line 58
    return-void
.end method

.method public static blacklist asBytes([I)[B
    .registers 3
    .param p0, "x"    # [I

    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 39
    .local v0, "z":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 40
    return-object v0
.end method

.method public static blacklist asBytes([J)[B
    .registers 3
    .param p0, "x"    # [J

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 51
    .local v0, "z":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    .line 52
    return-object v0
.end method

.method public static blacklist asInts([B[I)V
    .registers 3
    .param p0, "x"    # [B
    .param p1, "z"    # [I

    .line 69
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI[I)V

    .line 70
    return-void
.end method

.method public static blacklist asInts([B)[I
    .registers 3
    .param p0, "x"    # [B

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 63
    .local v0, "z":[I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI[I)V

    .line 64
    return-object v0
.end method

.method public static blacklist asLongs([B[J)V
    .registers 3
    .param p0, "x"    # [B
    .param p1, "z"    # [J

    .line 81
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI[J)V

    .line 82
    return-void
.end method

.method public static blacklist asLongs([B)[J
    .registers 3
    .param p0, "x"    # [B

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 75
    .local v0, "z":[J
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI[J)V

    .line 76
    return-object v0
.end method

.method public static blacklist copy([I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 86
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 87
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 88
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 89
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 90
    return-void
.end method

.method public static blacklist copy([J[J)V
    .registers 5
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 94
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 95
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 96
    return-void
.end method

.method public static blacklist divideP([J[J)V
    .registers 15
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 100
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 101
    .local v4, "x1":J
    const/16 v6, 0x3f

    shr-long v7, v1, v6

    .line 102
    .local v7, "m":J
    const-wide/high16 v9, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v9, v7

    xor-long/2addr v1, v9

    .line 103
    shl-long v9, v1, v3

    ushr-long v11, v4, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v0

    .line 104
    shl-long v9, v4, v3

    neg-long v11, v7

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 105
    return-void
.end method

.method public static blacklist multiply([B[B)V
    .registers 4
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .line 109
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v0

    .line 110
    .local v0, "t1":[J
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v1

    .line 111
    .local v1, "t2":[J
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([J[J)V

    .line 112
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([J[B)V

    .line 113
    return-void
.end method

.method public static blacklist multiply([I[I)V
    .registers 21
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 117
    const/4 v0, 0x0

    aget v1, p1, v0

    .local v1, "y0":I
    const/4 v2, 0x1

    aget v3, p1, v2

    .local v3, "y1":I
    const/4 v4, 0x2

    aget v5, p1, v4

    .local v5, "y2":I
    const/4 v6, 0x3

    aget v7, p1, v6

    .line 118
    .local v7, "y3":I
    const/4 v8, 0x0

    .local v8, "z0":I
    const/4 v9, 0x0

    .local v9, "z1":I
    const/4 v10, 0x0

    .local v10, "z2":I
    const/4 v11, 0x0

    .line 120
    .local v11, "z3":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_11
    const/4 v13, 0x4

    if-ge v12, v13, :cond_53

    .line 122
    aget v13, p0, v12

    .line 123
    .local v13, "bits":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_17
    const/16 v15, 0x20

    if-ge v14, v15, :cond_50

    .line 125
    shr-int/lit8 v15, v13, 0x1f

    .local v15, "m1":I
    shl-int/lit8 v13, v13, 0x1

    .line 126
    and-int v16, v1, v15

    xor-int v8, v8, v16

    .line 127
    and-int v16, v3, v15

    xor-int v9, v9, v16

    .line 128
    and-int v16, v5, v15

    xor-int v10, v10, v16

    .line 129
    and-int v16, v7, v15

    xor-int v11, v11, v16

    .line 131
    shl-int/lit8 v16, v7, 0x1f

    shr-int/lit8 v16, v16, 0x8

    .line 132
    .local v16, "m2":I
    ushr-int/lit8 v17, v7, 0x1

    shl-int/lit8 v18, v5, 0x1f

    or-int v7, v17, v18

    .line 133
    ushr-int/lit8 v17, v5, 0x1

    shl-int/lit8 v18, v3, 0x1f

    or-int v5, v17, v18

    .line 134
    ushr-int/lit8 v17, v3, 0x1

    shl-int/lit8 v18, v1, 0x1f

    or-int v3, v17, v18

    .line 135
    ushr-int/lit8 v17, v1, 0x1

    const/high16 v18, -0x1f000000

    and-int v18, v16, v18

    xor-int v1, v17, v18

    .line 123
    .end local v15    # "m1":I
    .end local v16    # "m2":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_17

    .line 120
    .end local v13    # "bits":I
    .end local v14    # "j":I
    :cond_50
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 139
    .end local v12    # "i":I
    :cond_53
    aput v8, p0, v0

    .line 140
    aput v9, p0, v2

    .line 141
    aput v10, p0, v4

    .line 142
    aput v11, p0, v6

    .line 143
    return-void
.end method

.method public static blacklist multiply([J[J)V
    .registers 29
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .line 147
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 148
    .local v4, "x1":J
    aget-wide v6, p1, v0

    .local v6, "y0":J
    aget-wide v8, p1, v3

    .line 149
    .local v8, "y1":J
    const-wide/16 v10, 0x0

    .local v10, "z0":J
    const-wide/16 v12, 0x0

    .local v12, "z1":J
    const-wide/16 v14, 0x0

    .line 151
    .local v14, "z2":J
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "j":I
    :goto_14
    const/16 v3, 0x40

    const/16 v18, 0x3f

    if-ge v0, v3, :cond_49

    .line 153
    shr-long v19, v1, v18

    const/4 v3, 0x1

    .local v19, "m0":J
    shl-long/2addr v1, v3

    .line 154
    and-long v21, v6, v19

    xor-long v10, v10, v21

    .line 155
    and-long v21, v8, v19

    xor-long v12, v12, v21

    .line 157
    shr-long v21, v4, v18

    .local v21, "m1":J
    shl-long/2addr v4, v3

    .line 158
    and-long v23, v6, v21

    xor-long v12, v12, v23

    .line 159
    and-long v23, v8, v21

    xor-long v14, v14, v23

    .line 161
    shl-long v23, v8, v18

    const/16 v3, 0x8

    shr-long v23, v23, v3

    .line 162
    .local v23, "c":J
    const/4 v3, 0x1

    ushr-long v25, v8, v3

    shl-long v17, v6, v18

    or-long v8, v25, v17

    .line 163
    ushr-long v17, v6, v3

    const-wide/high16 v25, -0x1f00000000000000L    # -1.757388200993436E159

    and-long v25, v23, v25

    xor-long v6, v17, v25

    .line 151
    .end local v19    # "m0":J
    .end local v21    # "m1":J
    .end local v23    # "c":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_49
    const/4 v3, 0x1

    .line 166
    .end local v0    # "j":I
    ushr-long v19, v14, v3

    xor-long v19, v14, v19

    const/4 v0, 0x2

    ushr-long v21, v14, v0

    xor-long v19, v19, v21

    const/4 v0, 0x7

    ushr-long v21, v14, v0

    xor-long v19, v19, v21

    xor-long v10, v10, v19

    .line 167
    shl-long v18, v14, v18

    const/16 v0, 0x3e

    shl-long v20, v14, v0

    xor-long v18, v18, v20

    const/16 v0, 0x39

    shl-long v20, v14, v0

    xor-long v18, v18, v20

    xor-long v12, v12, v18

    .line 169
    const/4 v0, 0x0

    aput-wide v10, p0, v0

    .line 170
    const/4 v0, 0x1

    aput-wide v12, p0, v0

    .line 171
    return-void
.end method

.method public static blacklist multiplyP([I)V
    .registers 12
    .param p0, "x"    # [I

    .line 175
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 176
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x1f

    shr-int/lit8 v8, v8, 0x1f

    .line 177
    .local v8, "m":I
    ushr-int/lit8 v9, v1, 0x1

    const/high16 v10, -0x1f000000

    and-int/2addr v10, v8

    xor-int/2addr v9, v10

    aput v9, p0, v0

    .line 178
    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v9, v1, 0x1f

    or-int/2addr v0, v9

    aput v0, p0, v2

    .line 179
    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v2, v3, 0x1f

    or-int/2addr v0, v2

    aput v0, p0, v4

    .line 180
    ushr-int/lit8 v0, v7, 0x1

    shl-int/lit8 v2, v5, 0x1f

    or-int/2addr v0, v2

    aput v0, p0, v6

    .line 181
    return-void
.end method

.method public static blacklist multiplyP([I[I)V
    .registers 13
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 185
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 186
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x1f

    shr-int/lit8 v8, v8, 0x1f

    .line 187
    .local v8, "m":I
    ushr-int/lit8 v9, v1, 0x1

    const/high16 v10, -0x1f000000

    and-int/2addr v10, v8

    xor-int/2addr v9, v10

    aput v9, p1, v0

    .line 188
    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v9, v1, 0x1f

    or-int/2addr v0, v9

    aput v0, p1, v2

    .line 189
    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v2, v3, 0x1f

    or-int/2addr v0, v2

    aput v0, p1, v4

    .line 190
    ushr-int/lit8 v0, v7, 0x1

    shl-int/lit8 v2, v5, 0x1f

    or-int/2addr v0, v2

    aput v0, p1, v6

    .line 191
    return-void
.end method

.method public static blacklist multiplyP([J)V
    .registers 14
    .param p0, "x"    # [J

    .line 195
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 196
    .local v4, "x1":J
    const/16 v6, 0x3f

    shl-long v7, v4, v6

    shr-long/2addr v7, v6

    .line 197
    .local v7, "m":J
    ushr-long v9, v1, v3

    const-wide/high16 v11, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v11, v7

    xor-long/2addr v9, v11

    aput-wide v9, p0, v0

    .line 198
    ushr-long v9, v4, v3

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p0, v3

    .line 199
    return-void
.end method

.method public static blacklist multiplyP([J[J)V
    .registers 15
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 203
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 204
    .local v4, "x1":J
    const/16 v6, 0x3f

    shl-long v7, v4, v6

    shr-long/2addr v7, v6

    .line 205
    .local v7, "m":J
    ushr-long v9, v1, v3

    const-wide/high16 v11, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v11, v7

    xor-long/2addr v9, v11

    aput-wide v9, p1, v0

    .line 206
    ushr-long v9, v4, v3

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 207
    return-void
.end method

.method public static blacklist multiplyP3([J[J)V
    .registers 16
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 211
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 212
    .local v4, "x1":J
    const/16 v6, 0x3d

    shl-long v7, v4, v6

    .line 213
    .local v7, "c":J
    const/4 v9, 0x3

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 214
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 215
    return-void
.end method

.method public static blacklist multiplyP4([J[J)V
    .registers 16
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 219
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 220
    .local v4, "x1":J
    const/16 v6, 0x3c

    shl-long v7, v4, v6

    .line 221
    .local v7, "c":J
    const/4 v9, 0x4

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 222
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 223
    return-void
.end method

.method public static blacklist multiplyP7([J[J)V
    .registers 16
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 227
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 228
    .local v4, "x1":J
    const/16 v6, 0x39

    shl-long v7, v4, v6

    .line 229
    .local v7, "c":J
    const/4 v9, 0x7

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    ushr-long v12, v7, v9

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 230
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 231
    return-void
.end method

.method public static blacklist multiplyP8([I)V
    .registers 12
    .param p0, "x"    # [I

    .line 235
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 236
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x18

    .line 237
    .local v8, "c":I
    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v9, v8

    ushr-int/lit8 v10, v8, 0x1

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x7

    xor-int/2addr v9, v10

    aput v9, p0, v0

    .line 238
    ushr-int/lit8 v0, v3, 0x8

    shl-int/lit8 v9, v1, 0x18

    or-int/2addr v0, v9

    aput v0, p0, v2

    .line 239
    ushr-int/lit8 v0, v5, 0x8

    shl-int/lit8 v2, v3, 0x18

    or-int/2addr v0, v2

    aput v0, p0, v4

    .line 240
    ushr-int/lit8 v0, v7, 0x8

    shl-int/lit8 v2, v5, 0x18

    or-int/2addr v0, v2

    aput v0, p0, v6

    .line 241
    return-void
.end method

.method public static blacklist multiplyP8([I[I)V
    .registers 13
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 245
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 246
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x18

    .line 247
    .local v8, "c":I
    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v9, v8

    ushr-int/lit8 v10, v8, 0x1

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x7

    xor-int/2addr v9, v10

    aput v9, p1, v0

    .line 248
    ushr-int/lit8 v0, v3, 0x8

    shl-int/lit8 v9, v1, 0x18

    or-int/2addr v0, v9

    aput v0, p1, v2

    .line 249
    ushr-int/lit8 v0, v5, 0x8

    shl-int/lit8 v2, v3, 0x18

    or-int/2addr v0, v2

    aput v0, p1, v4

    .line 250
    ushr-int/lit8 v0, v7, 0x8

    shl-int/lit8 v2, v5, 0x18

    or-int/2addr v0, v2

    aput v0, p1, v6

    .line 251
    return-void
.end method

.method public static blacklist multiplyP8([J)V
    .registers 15
    .param p0, "x"    # [J

    .line 255
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 256
    .local v4, "x1":J
    const/16 v6, 0x38

    shl-long v7, v4, v6

    .line 257
    .local v7, "c":J
    const/16 v9, 0x8

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p0, v0

    .line 258
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p0, v3

    .line 259
    return-void
.end method

.method public static blacklist multiplyP8([J[J)V
    .registers 16
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .line 263
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 264
    .local v4, "x1":J
    const/16 v6, 0x38

    shl-long v7, v4, v6

    .line 265
    .local v7, "c":J
    const/16 v9, 0x8

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 266
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 267
    return-void
.end method

.method public static blacklist oneAsBytes()[B
    .registers 3

    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 18
    .local v0, "tmp":[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 19
    return-object v0
.end method

.method public static blacklist oneAsInts()[I
    .registers 3

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 25
    .local v0, "tmp":[I
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    .line 26
    return-object v0
.end method

.method public static blacklist oneAsLongs()[J
    .registers 4

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 32
    .local v0, "tmp":[J
    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 33
    return-object v0
.end method

.method public static blacklist pAsLongs()[J
    .registers 4

    .line 271
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 272
    .local v0, "tmp":[J
    const/4 v1, 0x0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    aput-wide v2, v0, v1

    .line 273
    return-object v0
.end method

.method public static blacklist square([J[J)V
    .registers 22
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 278
    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 279
    .local v0, "t":[J
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    invoke-static {v2, v3, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Interleave;->expand64To128Rev(J[JI)V

    .line 280
    const/4 v2, 0x1

    aget-wide v3, p0, v2

    const/4 v5, 0x2

    invoke-static {v3, v4, v0, v5}, Lcom/android/org/bouncycastle/math/raw/Interleave;->expand64To128Rev(J[JI)V

    .line 282
    aget-wide v3, v0, v1

    .local v3, "z0":J
    aget-wide v6, v0, v2

    .local v6, "z1":J
    aget-wide v8, v0, v5

    .local v8, "z2":J
    const/4 v10, 0x3

    aget-wide v10, v0, v10

    .line 284
    .local v10, "z3":J
    ushr-long v12, v10, v2

    xor-long/2addr v12, v10

    ushr-long v14, v10, v5

    xor-long/2addr v12, v14

    const/4 v14, 0x7

    ushr-long v15, v10, v14

    xor-long/2addr v12, v15

    xor-long/2addr v6, v12

    .line 285
    const/16 v12, 0x3f

    shl-long v15, v10, v12

    const/16 v13, 0x3e

    shl-long v17, v10, v13

    xor-long v15, v15, v17

    const/16 v17, 0x39

    shl-long v18, v10, v17

    xor-long v15, v15, v18

    xor-long/2addr v8, v15

    .line 287
    ushr-long v15, v8, v2

    xor-long/2addr v15, v8

    ushr-long v18, v8, v5

    xor-long v15, v15, v18

    ushr-long v18, v8, v14

    xor-long v14, v15, v18

    xor-long/2addr v3, v14

    .line 288
    shl-long v14, v8, v12

    shl-long v12, v8, v13

    xor-long/2addr v12, v14

    shl-long v14, v8, v17

    xor-long/2addr v12, v14

    xor-long v5, v6, v12

    .line 290
    .end local v6    # "z1":J
    .local v5, "z1":J
    aput-wide v3, p1, v1

    .line 291
    aput-wide v5, p1, v2

    .line 292
    return-void
.end method

.method public static blacklist xor([BI[BII)V
    .registers 8
    .param p0, "x"    # [B
    .param p1, "xOff"    # I
    .param p2, "y"    # [B
    .param p3, "yOff"    # I
    .param p4, "len"    # I

    .line 343
    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_11

    .line 345
    add-int v0, p1, p4

    aget-byte v1, p0, v0

    add-int v2, p3, p4

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_0

    .line 347
    :cond_11
    return-void
.end method

.method public static blacklist xor([BI[BI[BI)V
    .registers 10
    .param p0, "x"    # [B
    .param p1, "xOff"    # I
    .param p2, "y"    # [B
    .param p3, "yOff"    # I
    .param p4, "z"    # [B
    .param p5, "zOff"    # I

    .line 322
    const/4 v0, 0x0

    .line 325
    .local v0, "i":I
    :goto_1
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 326
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 327
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 328
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 330
    const/16 v1, 0x10

    if-lt v0, v1, :cond_46

    .line 331
    return-void

    .line 330
    :cond_46
    goto :goto_1
.end method

.method public static blacklist xor([B[B)V
    .registers 5
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .line 296
    const/4 v0, 0x0

    .line 299
    .local v0, "i":I
    :goto_1
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 300
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 301
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 302
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 304
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2e

    .line 305
    return-void

    .line 304
    :cond_2e
    goto :goto_1
.end method

.method public static blacklist xor([B[BI)V
    .registers 6
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "yOff"    # I

    .line 309
    const/4 v0, 0x0

    .line 312
    .local v0, "i":I
    :goto_1
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 313
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 314
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 315
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 317
    const/16 v1, 0x10

    if-lt v0, v1, :cond_36

    .line 318
    return-void

    .line 317
    :cond_36
    goto :goto_1
.end method

.method public static blacklist xor([B[BII)V
    .registers 6
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "yOff"    # I
    .param p3, "yLen"    # I

    .line 335
    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_f

    .line 337
    aget-byte v0, p0, p3

    add-int v1, p2, p3

    aget-byte v1, p1, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    goto :goto_0

    .line 339
    :cond_f
    return-void
.end method

.method public static blacklist xor([B[B[B)V
    .registers 6
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "z"    # [B

    .line 351
    const/4 v0, 0x0

    .line 354
    .local v0, "i":I
    :goto_1
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 355
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 356
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 357
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 359
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2e

    .line 360
    return-void

    .line 359
    :cond_2e
    goto :goto_1
.end method

.method public static blacklist xor([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 364
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 365
    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 366
    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 367
    const/4 v0, 0x3

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 368
    return-void
.end method

.method public static blacklist xor([I[I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 372
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 373
    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 374
    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 375
    const/4 v0, 0x3

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 376
    return-void
.end method

.method public static blacklist xor([J[J)V
    .registers 7
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .line 380
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 381
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 382
    return-void
.end method

.method public static blacklist xor([J[J[J)V
    .registers 8
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J

    .line 386
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 387
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 388
    return-void
.end method
