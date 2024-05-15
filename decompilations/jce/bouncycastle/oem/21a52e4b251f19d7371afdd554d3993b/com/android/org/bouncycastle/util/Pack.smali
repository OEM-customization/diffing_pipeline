.class public abstract Lcom/android/org/bouncycastle/util/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bigEndianToInt([BI)I
    .registers 4
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 19
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    .line 20
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 21
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 22
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public static blacklist bigEndianToInt([BI[I)V
    .registers 5
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 30
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 31
    add-int/lit8 p1, p1, 0x4

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public static blacklist bigEndianToLong([BI)J
    .registers 10
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 68
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    .line 69
    .local v0, "hi":I
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    .line 70
    .local v1, "lo":I
    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    int-to-long v6, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static blacklist bigEndianToLong([BI[J)V
    .registers 6
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [J

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 77
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v1

    aput-wide v1, p2, v0

    .line 78
    add-int/lit8 p1, p1, 0x8

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public static blacklist bigEndianToShort([BI)S
    .registers 4
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 12
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 13
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 14
    int-to-short v1, v0

    return v1
.end method

.method public static blacklist intToBigEndian(I[BI)V
    .registers 4
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 44
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 45
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 46
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 47
    add-int/lit8 p2, p2, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 48
    return-void
.end method

.method public static blacklist intToBigEndian([I[BI)V
    .registers 5
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 61
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 62
    add-int/lit8 p2, p2, 0x4

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method public static blacklist intToBigEndian(I)[B
    .registers 3
    .param p0, "n"    # I

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 38
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 39
    return-object v0
.end method

.method public static blacklist intToBigEndian([I)[B
    .registers 3
    .param p0, "ns"    # [I

    .line 52
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 53
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 54
    return-object v0
.end method

.method public static blacklist intToLittleEndian(I[BI)V
    .registers 4
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 178
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 179
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 180
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 181
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 182
    return-void
.end method

.method public static blacklist intToLittleEndian([I[BI)V
    .registers 5
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 195
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 196
    add-int/lit8 p2, p2, 0x4

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method public static blacklist intToLittleEndian(I)[B
    .registers 3
    .param p0, "n"    # I

    .line 171
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 172
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 173
    return-object v0
.end method

.method public static blacklist intToLittleEndian([I)[B
    .registers 3
    .param p0, "ns"    # [I

    .line 186
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 187
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 188
    return-object v0
.end method

.method public static blacklist littleEndianToInt([BI)I
    .registers 4
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 120
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 121
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 122
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 123
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 124
    return v0
.end method

.method public static blacklist littleEndianToInt([BI[I)V
    .registers 5
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 131
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 132
    add-int/lit8 p1, p1, 0x4

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public static blacklist littleEndianToInt([BI[III)V
    .registers 8
    .param p0, "bs"    # [B
    .param p1, "bOff"    # I
    .param p2, "ns"    # [I
    .param p3, "nOff"    # I
    .param p4, "count"    # I

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_10

    .line 140
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, p2, v1

    .line 141
    add-int/lit8 p1, p1, 0x4

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public static blacklist littleEndianToInt([BII)[I
    .registers 6
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "count"    # I

    .line 147
    new-array v0, p2, [I

    .line 148
    .local v0, "ns":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_11

    .line 150
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 151
    add-int/lit8 p1, p1, 0x4

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 153
    .end local v1    # "i":I
    :cond_11
    return-object v0
.end method

.method public static blacklist littleEndianToLong([BI)J
    .registers 10
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 202
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    .line 203
    .local v0, "lo":I
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    .line 204
    .local v1, "hi":I
    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    int-to-long v6, v0

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static blacklist littleEndianToLong([BI[J)V
    .registers 6
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [J

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 211
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v1

    aput-wide v1, p2, v0

    .line 212
    add-int/lit8 p1, p1, 0x8

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public static blacklist littleEndianToLong([BI[JII)V
    .registers 9
    .param p0, "bs"    # [B
    .param p1, "bsOff"    # I
    .param p2, "ns"    # [J
    .param p3, "nsOff"    # I
    .param p4, "nsLen"    # I

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_10

    .line 220
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 221
    add-int/lit8 p1, p1, 0x8

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public static blacklist littleEndianToShort([BI)S
    .registers 4
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 113
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 114
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 115
    int-to-short v1, v0

    return v1
.end method

.method public static blacklist longToBigEndian(J[BI)V
    .registers 6
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I

    .line 91
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 92
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 93
    return-void
.end method

.method public static blacklist longToBigEndian([J[BI)V
    .registers 6
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 106
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 107
    add-int/lit8 p2, p2, 0x8

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method public static blacklist longToBigEndian(J)[B
    .registers 4
    .param p0, "n"    # J

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 85
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 86
    return-object v0
.end method

.method public static blacklist longToBigEndian([J)[B
    .registers 3
    .param p0, "ns"    # [J

    .line 97
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 98
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    .line 99
    return-object v0
.end method

.method public static blacklist longToLittleEndian(J[BI)V
    .registers 6
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I

    .line 234
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 235
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 236
    return-void
.end method

.method public static blacklist longToLittleEndian([JII[BI)V
    .registers 8
    .param p0, "ns"    # [J
    .param p1, "nsOff"    # I
    .param p2, "nsLen"    # I
    .param p3, "bs"    # [B
    .param p4, "bsOff"    # I

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_f

    .line 258
    add-int v1, p1, v0

    aget-wide v1, p0, v1

    invoke-static {v1, v2, p3, p4}, Lcom/android/org/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 259
    add-int/lit8 p4, p4, 0x8

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public static blacklist longToLittleEndian([J[BI)V
    .registers 6
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 249
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 250
    add-int/lit8 p2, p2, 0x8

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method public static blacklist longToLittleEndian(J)[B
    .registers 4
    .param p0, "n"    # J

    .line 227
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 228
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 229
    return-object v0
.end method

.method public static blacklist longToLittleEndian([J)[B
    .registers 3
    .param p0, "ns"    # [J

    .line 240
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 241
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 242
    return-object v0
.end method

.method public static blacklist shortToLittleEndian(S[BI)V
    .registers 4
    .param p0, "n"    # S
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 165
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 166
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 167
    return-void
.end method

.method public static blacklist shortToLittleEndian(S)[B
    .registers 3
    .param p0, "n"    # S

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 159
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    .line 160
    return-object v0
.end method
