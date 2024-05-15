.class public Lcom/android/org/bouncycastle/math/raw/Interleave;
.super Ljava/lang/Object;
.source "Interleave.java"


# static fields
.field private static final blacklist M32:J = 0x55555555L

.field private static final blacklist M64:J = 0x5555555555555555L

.field private static final blacklist M64R:J = -0x5555555555555556L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist expand16to32(I)I
    .registers 3
    .param p0, "x"    # I

    .line 66
    const v0, 0xffff

    and-int/2addr p0, v0

    .line 67
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p0

    const v1, 0xff00ff

    and-int p0, v0, v1

    .line 68
    shl-int/lit8 v0, p0, 0x4

    or-int/2addr v0, p0

    const v1, 0xf0f0f0f

    and-int p0, v0, v1

    .line 69
    shl-int/lit8 v0, p0, 0x2

    or-int/2addr v0, p0

    const v1, 0x33333333

    and-int p0, v0, v1

    .line 70
    shl-int/lit8 v0, p0, 0x1

    or-int/2addr v0, p0

    const v1, 0x55555555

    and-int p0, v0, v1

    .line 71
    return p0
.end method

.method public static blacklist expand32to64(I)J
    .registers 8
    .param p0, "x"    # I

    .line 78
    ushr-int/lit8 v0, p0, 0x8

    xor-int/2addr v0, p0

    const v1, 0xff00

    and-int/2addr v0, v1

    .local v0, "t":I
    shl-int/lit8 v1, v0, 0x8

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 79
    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v1, p0

    const v2, 0xf000f0

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x4

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 80
    ushr-int/lit8 v1, p0, 0x2

    xor-int/2addr v1, p0

    const v2, 0xc0c0c0c

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x2

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 81
    ushr-int/lit8 v1, p0, 0x1

    xor-int/2addr v1, p0

    const v2, 0x22222222

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x1

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 83
    ushr-int/lit8 v1, p0, 0x1

    int-to-long v1, v1

    const-wide/32 v3, 0x55555555

    and-long/2addr v1, v3

    const/16 v5, 0x20

    shl-long/2addr v1, v5

    int-to-long v5, p0

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public static blacklist expand64To128(J[JI)V
    .registers 12
    .param p0, "x"    # J
    .param p2, "z"    # [J
    .param p3, "zOff"    # I

    .line 90
    const/16 v0, 0x10

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, 0xffff0000L

    and-long/2addr v1, v3

    .local v1, "t":J
    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 91
    const/16 v0, 0x8

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0xff000000ff00L

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 92
    const/4 v0, 0x4

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0xf000f000f000f0L

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 93
    const/4 v0, 0x2

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0xc0c0c0c0c0c0c0cL

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 94
    const/4 v0, 0x1

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0x2222222222222222L

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 96
    const-wide v3, 0x5555555555555555L    # 1.1945305291614955E103

    and-long v5, p0, v3

    aput-wide v5, p2, p3

    .line 97
    add-int/lit8 v5, p3, 0x1

    ushr-long v6, p0, v0

    and-long/2addr v3, v6

    aput-wide v3, p2, v5

    .line 98
    return-void
.end method

.method public static blacklist expand64To128Rev(J[JI)V
    .registers 12
    .param p0, "x"    # J
    .param p2, "z"    # [J
    .param p3, "zOff"    # I

    .line 104
    const/16 v0, 0x10

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, 0xffff0000L

    and-long/2addr v1, v3

    .local v1, "t":J
    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 105
    const/16 v0, 0x8

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0xff000000ff00L

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 106
    const/4 v0, 0x4

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0xf000f000f000f0L

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 107
    const/4 v0, 0x2

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0xc0c0c0c0c0c0c0cL

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 108
    const/4 v0, 0x1

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0x2222222222222222L

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 110
    const-wide v3, -0x5555555555555556L

    and-long v5, p0, v3

    aput-wide v5, p2, p3

    .line 111
    add-int/lit8 v5, p3, 0x1

    shl-long v6, p0, v0

    and-long/2addr v3, v6

    aput-wide v3, p2, v5

    .line 112
    return-void
.end method

.method public static blacklist expand8to16(I)I
    .registers 2
    .param p0, "x"    # I

    .line 57
    and-int/lit16 p0, p0, 0xff

    .line 58
    shl-int/lit8 v0, p0, 0x4

    or-int/2addr v0, p0

    and-int/lit16 p0, v0, 0xf0f

    .line 59
    shl-int/lit8 v0, p0, 0x2

    or-int/2addr v0, p0

    and-int/lit16 p0, v0, 0x3333

    .line 60
    shl-int/lit8 v0, p0, 0x1

    or-int/2addr v0, p0

    and-int/lit16 p0, v0, 0x5555

    .line 61
    return p0
.end method

.method public static blacklist shuffle(I)I
    .registers 4
    .param p0, "x"    # I

    .line 118
    ushr-int/lit8 v0, p0, 0x8

    xor-int/2addr v0, p0

    const v1, 0xff00

    and-int/2addr v0, v1

    .local v0, "t":I
    shl-int/lit8 v1, v0, 0x8

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 119
    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v1, p0

    const v2, 0xf000f0

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x4

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 120
    ushr-int/lit8 v1, p0, 0x2

    xor-int/2addr v1, p0

    const v2, 0xc0c0c0c

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x2

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 121
    ushr-int/lit8 v1, p0, 0x1

    xor-int/2addr v1, p0

    const v2, 0x22222222

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x1

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 122
    return p0
.end method

.method public static blacklist shuffle(J)J
    .registers 9
    .param p0, "x"    # J

    .line 129
    const/16 v0, 0x10

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, 0xffff0000L

    and-long/2addr v1, v3

    .local v1, "t":J
    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 130
    const/16 v0, 0x8

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0xff000000ff00L

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 131
    const/4 v0, 0x4

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0xf000f000f000f0L

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 132
    const/4 v0, 0x2

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0xc0c0c0c0c0c0c0cL

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 133
    const/4 v0, 0x1

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0x2222222222222222L

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 134
    return-wide p0
.end method

.method public static blacklist shuffle2(I)I
    .registers 4
    .param p0, "x"    # I

    .line 141
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    const v1, 0xaa00aa

    and-int/2addr v0, v1

    .local v0, "t":I
    shl-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 142
    ushr-int/lit8 v1, p0, 0xe

    xor-int/2addr v1, p0

    const v2, 0xcccc

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0xe

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 143
    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v1, p0

    const v2, 0xf000f0

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x4

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 144
    ushr-int/lit8 v1, p0, 0x8

    xor-int/2addr v1, p0

    const v2, 0xff00

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x8

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 145
    return p0
.end method

.method public static blacklist unshuffle(I)I
    .registers 4
    .param p0, "x"    # I

    .line 152
    ushr-int/lit8 v0, p0, 0x1

    xor-int/2addr v0, p0

    const v1, 0x22222222

    and-int/2addr v0, v1

    .local v0, "t":I
    shl-int/lit8 v1, v0, 0x1

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 153
    ushr-int/lit8 v1, p0, 0x2

    xor-int/2addr v1, p0

    const v2, 0xc0c0c0c

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x2

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 154
    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v1, p0

    const v2, 0xf000f0

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x4

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 155
    ushr-int/lit8 v1, p0, 0x8

    xor-int/2addr v1, p0

    const v2, 0xff00

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x8

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 156
    return p0
.end method

.method public static blacklist unshuffle(J)J
    .registers 9
    .param p0, "x"    # J

    .line 163
    const/4 v0, 0x1

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, 0x2222222222222222L

    and-long/2addr v1, v3

    .local v1, "t":J
    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 164
    const/4 v0, 0x2

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0xc0c0c0c0c0c0c0cL

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 165
    const/4 v0, 0x4

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0xf000f000f000f0L

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 166
    const/16 v0, 0x8

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0xff000000ff00L

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 167
    const/16 v0, 0x10

    ushr-long v3, p0, v0

    xor-long/2addr v3, p0

    const-wide v5, 0xffff0000L

    and-long v1, v3, v5

    shl-long v3, v1, v0

    xor-long/2addr v3, v1

    xor-long/2addr p0, v3

    .line 168
    return-wide p0
.end method

.method public static blacklist unshuffle2(I)I
    .registers 4
    .param p0, "x"    # I

    .line 175
    ushr-int/lit8 v0, p0, 0x8

    xor-int/2addr v0, p0

    const v1, 0xff00

    and-int/2addr v0, v1

    .local v0, "t":I
    shl-int/lit8 v1, v0, 0x8

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 176
    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v1, p0

    const v2, 0xf000f0

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x4

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 177
    ushr-int/lit8 v1, p0, 0xe

    xor-int/2addr v1, p0

    const v2, 0xcccc

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0xe

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 178
    ushr-int/lit8 v1, p0, 0x7

    xor-int/2addr v1, p0

    const v2, 0xaa00aa

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 179
    return p0
.end method
